Version 1 of NPC Interactions by Wahn begins here.
[Version 1 - More fun with all kinds of NPCs]

instead of navigating Grey Abbey Library while (Xerxes is in Grey Abbey Library and Snow is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[XerxesSnowInteraction]";

instead of going up from Bunker while (Xerxes is in Grey Abbey Library and Snow is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[XerxesSnowInteraction]";

to say XerxesSnowInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - XERXES/SNOW[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [playing ball]
			say "     Coming into the library, you see Snow playing with Xerxes, throwing a tennis ball for your pet to chase and bring back to her. It's nice to see them interact in a relatively normal way - or at least normal enough, if one ignores the fact that it's an anthro squirrel and a naked, human-shaped dog. Still, in this sex-crazy city, it's refreshing to just see someone play instead of humping away behind every corner. You watch them have their fun for a moment, then turn back to other things.";
		-- 2: [following the squirrel]
			if lust of Xerxes >= 4:[awesome/intelligent Xerxes]
				say "     Entering the library, you see Snow coming from between the shelves, carrying a stack of books to the small side room where she set up her workshop. As she does so, Xerxes jumps up from where he was lounging on a nearby sofa and chases after her, playfully trying to catch her long, fluffy tail. Snow gives a sigh as she feels the human dog's hand brush against her fur in his second attempt to grab the tail, and she raises the appendage higher as she turns to face Xerxes. 'You really were a dog once, weren't you? Can't resist chasing the big squirrel, hm?' she says, giving the naked teenage human a stare that stops him in his tracks and prompts Xerxes to murmur a quiet 'Sorry'.";
				say "     But then a smile creeps over Snow's face and she chuckles, 'Oh well, it's your nature and I know you only wanna play. Guess there are worse things to be followed around by an Adonis-like hunk who doesn't understand the concept of clothes.' Snow steps forward to pat Xerxes head affectionately, then says, 'Fine, come along doggie - you can sit on my mattress and be pretty for me to look at while I work, as long as you behave.' Your human dog gives an affirmative whine and says, 'Xerxes gonna be good,' then happily follows Snow into her workshop.";
			else:
				say "     Entering the library, you see Snow coming from between the shelves, carrying a stack of books to the small side room where she set up her workshop. As she does so, Xerxes jumps up from where he was lounging on a nearby sofa and chases after her, playfully trying to catch her long, fluffy tail. Snow gives a sigh as she feels the human dog's face brush up against her fur in his second attempt to take the tail into his mouth, and she raises the appendage higher as she turns to face Xerxes. 'You really were a dog once, weren't you? Can't resist chasing the big squirrel, hm?' she says, giving the naked teenage human a stare that stops him in his tracks.";
				say "     But then a smile creeps over Snow's face and she chuckles, 'Oh well, it's your nature and I know you only wanna play. Guess there are worse things to be followed around by an Adonis-like hunk who doesn't understand the concept of clothes.' Snow steps forward to pat Xerxes head affectionately, then says, 'Fine, come along doggie - you can sit on my mattress and be pretty for me to look at while I work, as long as you behave.' Your human dog gives an affirmative whine and happily follows Snow into her workshop.";

instead of navigating Grey Abbey Library while (Helen is in Grey Abbey Library and Snow is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[HelenSnowInteraction]";

instead of going up from Bunker while (Helen is in Grey Abbey Library and Snow is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[HelenSnowInteraction]";

to say HelenSnowInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - HELEN/SNOW[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [playing ball]
			say "     Coming into the library, you see Snow playing with Helen, throwing a tennis ball for your pet to chase and bring back to her. It's nice to see them interact in a relatively normal way - or at least normal enough, if one ignores the fact that it's an anthro squirrel and a naked, human-shaped dog. Still, in this sex-crazy city, it's refreshing to just see someone play instead of humping away behind every corner. You watch them have their fun for a moment, then turn back to other things.";
		-- 2:
			if lust of Helen >= 4:[awesome/intelligent Helen]
				say "     Entering the library, you see Snow coming from between the shelves, carrying a stack of books to the small side room where she set up her workshop. As she does so, Helen jumps up from where she was lounging on a nearby sofa and chases after her, playfully trying to catch her long, fluffy tail. Snow gives a sigh as she feels the human dog's hand brush against her fur in his second attempt to grab the tail, and she raises the appendage higher as she turns to face Helen. 'You really were a dog once, weren't you? Can't resist chasing the big squirrel, hm?' she says, giving the naked teenage human a stare that stops her in her tracks and prompts Helen to murmur a quiet 'Sorry'.";
				say "     But then a smile creeps over Snow's face and she chuckles, 'Oh well, it's your nature and I know you only wanna play. Guess there are worse things to be followed around by a beautiful young woman who doesn't understand the concept of clothes.' Snow steps forward to pat Helen's head affectionately, then says, 'Fine, come along doggie - you can sit on my mattress and be pretty for me to look at while I work, as long as you behave.' Your human dog gives an affirmative whine and says, 'Helen gonna be good,' then happily follows Snow into her workshop.";
			else:
				say "     Entering the library, you see Snow coming from between the shelves, carrying a stack of books to the small side room where she set up her workshop. As she does so, Helen jumps up from where she was lounging on a nearby sofa and chases after her, playfully trying to catch her long, fluffy tail. Snow gives a sigh as she feels the human dog's face brush up against her fur in her second attempt to take the tail into her mouth, and she raises the appendage higher as she turns to face Helen. 'You really were a dog once, weren't you? Can't resist chasing the big squirrel, hm?' she says, giving the naked teenage human a stare that stops her in her tracks.";
				say "     But then a smile creeps over Snow's face and she chuckles, 'Oh well, it's your nature and I know you only wanna play. Guess there are worse things to be around by a beautiful young woman who doesn't understand the concept of clothes.' Snow steps forward to pat Helen's head affectionately, then says, 'Fine, come along doggie - you can sit on my mattress and be pretty for me to look at while I work, as long as you behave.' Your human dog gives an affirmative whine and happily follows Snow into her workshop.";

instead of navigating Grey Abbey Library while (Amy is in Grey Abbey Library and HP of Amy > 1 and Snow is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[AmySnowInteraction]";

instead of going up from Bunker while (Amy is in Grey Abbey Library and HP of Amy > 1 and Snow is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[AmySnowInteraction]";

to say AmySnowInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - AMY/SNOW[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [telling stories]
			say "     Entering the library, you spot Snow any Amy sitting together on one of the sofas between the bookshelves. Curious as you are, you wander closer to them and listen in for a moment - it's mostly a pretty innocent conversation, with Snow telling stories from before and Amy asking questions as she listens intently, her tail wagging happily. There are a few stories in which Snow tells a bit racier stuff about her previous boyfriends, but even that is pretty tame, compared to what's going on out on the streets every day now. In the end, you just leave the two of them to have their girl-talk in peace.";
		-- 2: [workshop lessons]
			say "     Entering the library, you hear voices come from the small side room in which Snow has her workshop set up. Curious, you walk over to check out what is going on and find Amy and Snow inside, with the big squirrel just explaining something to the attentively listening husky. While the young woman then starts to loosen a screw of the item on the workbench in front of her, Snow turns her head to look at you and gives a nod in greeting. Then she says, 'Our sexy little doggie here isn't half bad with a wrench and screwdriver. Give her half a year of lectures and she could be up with the best of [']em - me, for example.' Snow smiles as Amy gives a shy 'Thank you' to answer her praise, then tells you 'Don't let us keep you from doing any other stuff - we're gonna be busy for quite a while, until Amy can take apart and assemble this blindfolded...'";

instead of navigating Grey Abbey Library while (Amy is in Grey Abbey Library and HP of Amy > 1 and Felinoid companion is tamed and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[AmyFelinoidInteraction]";

instead of going up from Bunker while (Amy is in Grey Abbey Library and HP of Amy > 1 and Felinoid companion is tamed and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[AmyFelinoidInteraction]";

to say AmyFelinoidInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - AMY/FELINOID[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [cuddling]
			say "     Entering the library, you spot Amy sitting on one of the numerous sofas, with Klauz stretched out on it beside her and his head and paws resting on her lap so she can stroke his fur. Your feral companion may be a strange creature with almost irresistible musk to help him claim any female - or male - that he wants, but deep inside, he also is a pretty big cat with the usual needs and likes. Sometimes even a lusty predator like him simply wants to be stroked and comforted. So for now, he is just dozing peacefully on that sofa, his purr rumbling like an idling motor as he enjoys Amy's attention. The young husky herself is pretty happy in being together with him like this, even going so far as to forgetting about the book she must have been reading before, which now lies beside her on the sofa as she strokes the felinoid with both hands.";
		-- 2: [cleaning]
			say "     Entering the library, you spot Amy sitting on one of the numerous sofas, reading a book while Klauz sits beside her and is licking his own fur, including moistening a paw and rubbing behind the ears. Before long, the big cat is done with his task and starts to lick Amy too, making her giggle and rub under his chin. The felinoid keeps going for a while, just slow enough so that Amy won't get distracted from her book completely. You can't really tell if it's just meant as a gesture of affection or if he simply wants to spread his scent all over the husky and frighten off any other contenders for her.";


instead of navigating Grey Abbey Library while (Amy is in Grey Abbey Library and Alexandra is in Grey Abbey Library and HP of Amy > 1 and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[AmyAlexandraInteraction]";

instead of going up from Bunker while (Amy is in Grey Abbey Library and Alexandra is in Grey Abbey Library and HP of Amy > 1 and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[AmyAlexandraInteraction]";

to say AmyAlexandraInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - AMY/ALEXANDRA[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [talking about reading]
			say "     Entering the library, you spot Amy sitting on a nearby sofa, head bent over a book in her hand-paws. As you start walking closer to her to say hello, someone else steps up to the young husky before you - it's Alexandra, your doberwoman bitch. For once showing less of a 'tough bitch' attitude, the former cop comes to stand before Amy and asks, 'What are you reading, gorgeous?' Laying down the book onto her lap, Amy gives a smile and replies, 'It's the Count of Monte Christo. A really gripping story about this man, who...' Lounging beside Amy on the sofa, Alexandra indulges the young woman's excited retelling of story, up to the point where she is in reading it and with Amy's thoughts on what might happen next.";
			say "     Nodding, half to Amy as she finishes her tale and half to herself, Alexandra says, 'You know, I also loved to read, when I was a girl. So many great stories to be experienced between the pages. But... when I became a cop, duty always took precedence and I barely had time anymore, always looking for overtime.' The doberwoman's eyes wander over the bookshelves all around, then she says '...well, screw that. I'm not that foolish idealist anymore and with only a bit of guarding to do... and of course serving the boss with all [if Player is purefemale]her[else]his[end if] sexual needs, there's more than enough time for me to spend on myself. Keep reading what you want and don't let anyone but the boss or me talk you out of it - I'm gonna start doing the same.' With that, the doberwoman gives Amy a nod and stands up, striding between two long bookshelves.";
		-- 2: [talking about parents]
			say "     Entering the library, you spot Amy sitting on one of the numerous sofas, with her back against Alexandra, whose arms are curled around the husky's waist while they talk. Curious about what topic, you step up a bit closer and overhear the doberwoman say, 'So your mother is a total whore, you were born after a gangbang and then brought here by the boss? Shit, you've almost had it as bad as me - my parents were crooks and criminals. So here we are, a born slut and a tamed slut, both in training. Guess the apple doesn't fall too far from the tree.' Then she tightens her embrace around Amy and pulls her close, before continuing with 'Bah, screw everyone else - now we have the boss, and each other.' Alexandra rubs her muzzle against Amy's neck and says, 'You hear that, girl? If anyone but the boss gives you even a hint of trouble - I'll kick the shit out of them. Least thing I can do...'";

instead of navigating Grey Abbey Library while (Carl is in Grey Abbey 2F and HP of Carl > 9 and Xerxes is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[CarlXerxesInteraction]";

instead of going up from Bunker while (Carl is in Grey Abbey 2F and HP of Carl > 9 and Xerxes is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[CarlXerxesInteraction]";

to say CarlXerxesInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - CARL/XERXES[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [playing ball]
			if HP of Carl is 10: [normal Carl]
				say "     Entering the library, you suddenly see a tennis ball fly past your nose, instantly followed by Xerxes and Carl dashing after it on all fours. Your human dog just keeps going, totally focused on the ball, while Carl skids to a stop and gets to his feet, a sheepish expression on his face. 'Oh - er... hi,' he says, looking at you before returning his attention to Xerxes, who finally catches the ball and starts to carry it over in his teeth. 'You must be wondering what we - what I am doing. Well, Xerxes came to me with that ball and wanted to play...' In that moment, the buck-naked teenage human arrives at your side, sitting down and obediently offering his [if Player is purefemale]mistress[else]master[end if] the tennis ball. Carl continues while you take the toy from Xerxes, 'You can't believe how tempted I was to run after that thing myself when I threw it for him. So... I did, after a few times. It's really quite a bit of fun to just let go for a while, feel the ground under all four paws as you chase something.'";
				say "     Both your eyes drop to the yellow ball in your hand, bearing obvious bite-marks from sharper teeth than Xerxes in his human form can call his own. Carl clears his throat, then continues with, 'I'm not going feral on you, if that's your worry. Just a bit of fun - running and chasing. Xerxes has a bit of a lead in experience as a dog, but... well, I'm the one with paws here so it's a close thing mostly.' Weighing the ball in your hand, you can't help but agree - given what most of the other infected are doing out in the city, playing around like a dog really is pretty unremarkable. A smile spreads over your face as you look at first the husky soldier, then the human dog... and shake the hand with the ball to draw their attention to it. Then you fling the tennis ball with some force, making it fly, then bounce along an aisle between the bookshelves. Your two canine friends dash after it without delay, hands and claws scrabbling on the carpet.";
			else if HP of Carl is 30: [subby Carl]
				say "     Entering the library, you suddenly see a tennis ball fly past your nose, instantly followed by Xerxes and Carl dashing after it on all fours. Your human dog just keeps going, totally focused on the ball, while Carl skids to a stop and gets to his feet, a sheepish expression on his face. 'Sorry Alpha,' he says, looking at the ground at your feet before returning his attention to Xerxes, who finally catches the ball and starts to carry it over in his teeth. 'I really didn't want to hit you or anything. It's just that Xerxes came to me with that ball and wanted to play...' In that moment, the buck-naked teenage human arrives at your side, sitting down and obediently offering his [if Player is purefemale]mistress[else]master[end if] the tennis ball. Carl continues while you take the toy from Xerxes, 'You can't believe how tempted I was to run after that thing myself when I threw it for him. So... I did. It's really quite a bit of fun to just let go for a while, feel the ground under all four paws as you chase something.'";
				say "     Both your eyes drop to the yellow ball in your hand, bearing obvious bite-marks from sharper teeth than Xerxes in his human form can call his own. Carl clears his throat, then continues with, 'I'm not going feral on you, Alpha. Just a bit of fun - running and chasing. Xerxes has a bit of a lead in experience as a dog, but... well, I'm the one with paws here so it's a close thing mostly.' Weighing the ball in your hand, you can't help but agree - given what most of the other infected are doing out in the city, playing around like a dog really is pretty unremarkable. A smile spreads over your face as you look at first the husky soldier, then the human dog... and shake the hand with the ball to draw their attention to it. Then you fling the tennis ball with some force, making it fly, then bounce along an aisle between the bookshelves. Your two canine friends dash after it without delay, hands and claws scrabbling on the carpet.";
		-- 2:
			if HP of Carl is 10: [normal Carl]
				say "     Entering the library, you see Carl crouched down next to Xerxes mattress, filling the human dog's feeding bowl from a sack of kibble. Beside that, he also fills a big cereal bowl for himself, then sets the sack down on the ground. Xerxes is well-trained enough to patiently wait for the husky to take his bowl and stand up, only then starting to hungrily eat the dried food. Meanwhile, Carl starts to pick up kibble out of his own bowl, throwing them into his muzzle to crunch them with sharp teeth. As he sees you standing nearby, the soldier says, 'You know, dog food isn't as bad as I always imagined as a human. Well, that or it's just made to fit my new taste buds. It really is quite tasty.' Still eating out of the bowl, he then walks up the stairs to finish his meal at his watch post.";
			else if HP of Carl is 30: [subby Carl]
				say "     Entering the library, you see Carl crouched down next to Xerxes mattress, filling the human dog's feeding bowl from a sack of kibble. Beside that, he also fills a big cereal bowl for himself, then sets the sack down on the ground. Xerxes is well-trained enough to patiently wait for the husky to take his bowl and stand up, only then starting to hungrily eat the dried food. Meanwhile, Carl starts to pick up kibble out of his own bowl, throwing them into his muzzle to crunch them with sharp teeth. As he sees you standing nearby, the soldier lowers his head and says, 'Hello, Alpha. I was just feeding your pet... and myself. I'm gonna get back on watch now.' Still eating out of the bowl, he then walks up the stairs to finish his meal at his watch post.";

instead of navigating Grey Abbey Library while (Carl is in Grey Abbey 2F and HP of Carl > 9 and Helen is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[CarlHelenInteraction]";

instead of going up from Bunker while (Carl is in Grey Abbey 2F and HP of Carl > 9 and Helen is in Grey Abbey Library and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[CarlHelenInteraction]";

to say CarlHelenInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - CARL/HELEN[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [playing ball]
			if HP of Carl is 10: [normal Carl]
				say "     Entering the library, you suddenly see a tennis ball fly past your nose, instantly followed by Helen and Carl dashing after it on all fours. Your human dog just keeps going, totally focused on the ball, while Carl skids to a stop and gets to his feet, a sheepish expression on his face. 'Oh - er... hi,' he says, looking at you before returning his attention to Helen, who finally catches the ball and starts to carry it over in her teeth. 'You must be wondering what we - what I am doing. Well, Helen came to me with that ball and wanted to play...' In that moment, the buck-naked teenage human arrives at your side, sitting down and obediently offering her [if Player is purefemale]mistress[else]master[end if] the tennis ball. Carl continues while you take the toy from Helen, 'You can't believe how tempted I was to run after that thing myself when I threw it for her. So... I did, after a few times. It's really quite a bit of fun to just let go for a while, feel the ground under all four paws as you chase something.'";
				say "     Both your eyes drop to the yellow ball in your hand, bearing obvious bite-marks from sharper teeth than Helen in her human form can call her own. Carl clears his throat, then continues with, 'I'm not going feral on you, if that's your worry. Just a bit of fun - running and chasing. Helen has a bit of a lead in experience as a dog, but... well, I'm the one with paws here so it's a close thing mostly.' Weighing the ball in your hand, you can't help but agree - given what most of the other infected are doing out in the city, playing around like a dog really is pretty unremarkable. A smile spreads over your face as you look at first the husky soldier, then the human dog... and shake the hand with the ball to draw their attention to it. Then you fling the tennis ball with some force, making it fly, then bounce along an aisle between the bookshelves. Your two canine friends dash after it without delay, hands and claws scrabbling on the carpet.";
			else if HP of Carl is 30: [subby Carl]
				say "     Entering the library, you suddenly see a tennis ball fly past your nose, instantly followed by Helen and Carl dashing after it on all fours. Your human dog just keeps going, totally focused on the ball, while Carl skids to a stop and gets to his feet, a sheepish expression on his face. 'Sorry Alpha,' he says, looking at the ground at your feet before returning his attention to Helen, who finally catches the ball and starts to carry it over in her teeth. 'I didn't want to hit you or anything. It's just that Helen came to me with that ball and wanted to play...' In that moment, the buck-naked teenage human arrives at your side, sitting down and obediently offering her [if Player is purefemale]mistress[else]master[end if] the tennis ball. Carl continues while you take the toy from Helen, 'You can't believe how tempted I was to run after that thing myself when I threw it for her. So... I did. It's really quite a bit of fun to just let go for a while, feel the ground under all four paws as you chase something.'";
				say "     Both your eyes drop to the yellow ball in your hand, bearing obvious bite-marks from sharper teeth than Helen in her human form can call her own. Carl clears his throat, then continues with, 'I'm not going feral on you, Alpha. Just a bit of fun - running and chasing. Helen has a bit of a lead in experience as a dog, but... well, I'm the one with paws here so it's a close thing mostly.' Weighing the ball in your hand, you can't help but agree - given what most of the other infected are doing out in the city, playing around like a dog really is pretty unremarkable. A smile spreads over your face as you look at first the husky soldier, then the human dog... and shake the hand with the ball to draw their attention to it. Then you fling the tennis ball with some force, making it fly, then bounce along an aisle between the bookshelves. Your two canine friends dash after it without delay, hands and claws scrabbling on the carpet.";
		-- 2: [feeding the dogs]
			if HP of Carl is 10: [normal Carl]
				say "     Entering the library, you see Carl crouched down next to Helen's mattress, filling the human dog's feeding bowl from a sack of kibble. Beside that, he also fills a big cereal bowl for himself, then sets the sack down on the ground. Helen is well-trained enough to patiently wait for the husky to take his bowl and stand up, only then starting to hungrily eat the dried food. Meanwhile, Carl starts to pick up kibble out of his own bowl, throwing them into his muzzle to crunch them with sharp teeth. As he sees you standing nearby, the soldier says, 'You know, dog food isn't as bad as I always imagined as a human. Well, that or it's just made to fit my new taste buds. It really is quite tasty.' Still eating out of the bowl, he then walks up the stairs to finish his meal at his watch post.";
			else if HP of Carl is 30: [subby Carl]
				say "     Entering the library, you see Carl crouched down next to Helen's mattress, filling the human dog's feeding bowl from a sack of kibble. Beside that, he also fills a big cereal bowl for himself, then sets the sack down on the ground. Helen is well-trained enough to patiently wait for the husky to take his bowl and stand up, only then starting to hungrily eat the dried food. Meanwhile, Carl starts to pick up kibble out of his own bowl, throwing them into his muzzle to crunch them with sharp teeth. As he sees you standing nearby, the soldier lowers his head and says, 'Hello, Alpha. I was just feeding your pet... and myself. I'm gonna get back on watch now.' Still eating out of the bowl, he then walks up the stairs to finish his meal at his watch post.";


instead of navigating Grey Abbey Library while (Carl is in Grey Abbey 2F and HP of Carl > 9 and David is in Bunker and a random chance of 1 in 8 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[CarlDavidInteraction]";

instead of going up from Bunker while (Carl is in Grey Abbey 2F and HP of Carl > 9 and David is in Bunker and a random chance of 1 in 8 succeeds):
	move player to Grey Abbey Library;
	say "[CarlDavidInteraction]";

to say CarlDavidInteraction:
	if debugactive is 1:
		say "     DEBUG: NPC INTERACTION WALKIN - CARL/DAVID[line break]";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [talking]
			say "     Entering the library, you see Carl and David sitting together in one of the reading groups, regaling each other with loudly told stories about their experiences in the military, from basic training on till right now. Mentally adding in a couple of ice-cold beers and of course making Carl a human, this scene would have fit very well into the world before the nanite infection spread. It's nice to see that at least some people are able to keep their wits and do not go feral, even with everything that's been going on. You leave the two men to chat in peace, not wanting to disturb them.";
		-- 2: [training]
			say "     Just as you pull open the door to enter the library, Carl and David pass it, both dressed in shots and loose-sleeved shirts. They're jogging, from the looks of it, following the walls of the main library room in a big circuit. Something to be expected, being soldiers and all - they've got to keep in shape somehow. As they go along, the two of them chat merrily with each other, strengthening the bond that springs from being two soldiers brought together by crazy circumstances.";

NPC Interactions ends here.
