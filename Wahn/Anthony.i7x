Version 1 of Anthony by Wahn begins here.
[Version 1 - Put into its own file]

Section 1 - NPC

[ HP states of Anthony                                                         ]
[   0: starting state                                                          ]
[   1: about to give a reward for returning Wendy to a player he never met     ]
[   2: talked to the player                                                    ]
[   3: about to give a reward for returning Wendy to a player he met before    ]
[   4: gave the player his reward for returning Wendy                          ]
[   5: player helped Shawn & Duke and got rewarded                             ]
[   6: player got told about the missing Finn                                  ]

[ libido of Anthony                                                            ]
[   0: no sex with the player yet                                              ]
[   1: reward sex with the player                                              ]

[ FinnTrackingProgress                                   ]
[   0: not found any tracks yet                          ]
[   1: found the tracks, didn't follow                   ]
[   2: found the tracks, followed                        ]
[   3: Finn rescued, no sex                              ]
[   4: Finn rescued, player fucked him                   ]
[   5: Finn rescued, centaur fucked him                  ]
[  99: Finn's dead                                       ]
[ 100: Finn joined the stables                           ]

to AnthonyQuestlog:
	if HP of Anthony is:
		-- 1:
			say "[bold type]Farm Quests: [roman type]I've found Wendy the missing cow and returned her to the farm. Corbin mentioned a reward, so seeking out the farm's seems a good idea.";
		-- 2:
			say "[bold type]Farm Quests: [roman type]I've met Anthony, the owner of the farm. He has asked me to find their missing cow Wendy. She'll likely be somewhere out in the dry plains.";
		-- 3:
			say "[bold type]Farm Quests: [roman type]I've found Wendy the missing cow and returned her to the farm. Time to check back with Anthony about the reward he mentioned.";
		-- 4:
			if HP of Duke < 2:
				say "[bold type]Farm Quests: [roman type]I've found Wendy the missing cow and returned her to the farm, getting a reward from Anthony for the trouble. Maybe there are other things he needs help with besides this...";
			else if HP of Duke < 10:
				say "[bold type]Farm Quests: [roman type]Duke, one of the shepherds on the farm, needs my help. He wants to turn his lover Shawn back from the feral ram he has become. Collecting a few clumps of tained wool from other anthro sheep in the city might help with that.";
			else if HP of Duke > 9:
				say "[bold type]Farm Quests: [roman type]I've helped reunite the shepherds in anthro form, earning their thanks. Anthony will want to learn about these good news too.";
		-- 5:
			say "[bold type]Farm Quests: [roman type]I've helped Anthony twice now, both with his missing cow and the gay couple of shepherds. Still, there could be more to do around the farm...";
		-- 6:
			if FinnTrackingProgress is 0:
				say "[bold type]Farm Quests: [roman type]Anthony told me about a missing farmhand called Finn. There should hopefully be some trace or tracks of the [bold type]missing farm hand[roman type] to find near the farm in the dry plains.";
			else if FinnTrackingProgress < 3:
				say "[bold type]Farm Quests: [roman type]Some tracks that I found indicate Finn was abducted, but I haven't followed them yet. Might be a good idea to get back out there and search for the [bold type]missing farm hand[roman type] quickly, while the trail is fresh.";
			else if FinnTrackingProgress is 3:
				say "[bold type]Farm Quests: [roman type]I rescued Finn and brought him back to the farm safely. Anthony will want to know about this development.";
			else if FinnTrackingProgress is 4:
				say "[bold type]Farm Quests: [roman type]I rescued Finn and had some fun with him too. He is now safely back at the farm. Anthony will want to know about this development.";
			else if FinnTrackingProgress is 5:
				say "[bold type]Farm Quests: [roman type]I rescued Finn and brought him back to the farm, only a little bit worse for the wear after that centaur fucked him. He is now safely back at the farm. Anthony will want to know about this development.";
			else if FinnTrackingProgress is 99:
				say "[bold type]Farm Quests: [roman type]My rescue-attempt for Finn failed. There is little left but to return to Anthony and tell him his missing farmhand Finn is dead.";
			else if FinnTrackingProgress is 100:
				say "[bold type]Farm Quests: [roman type]I found Finn, but in the end he was taken away to the Stables Hotel. Nothing much left to do now except telling Anthony that he won't see him again.";
		-- 7:
			say "[bold type]Farm Quests: [roman type]I've informed Anthony about what became of Finn. Looks like that was the last quest he has right now, but there might be more things to do at the farm in the future...";

Anthony is a man. The HP of Anthony is normally 0. Anthony is in Farmhouse Main Room.
The description of Anthony is "[AnthonyDesc]".
The conversation of Anthony is { "Mew!" }.
The icon of Anthony is Figure of Anthony_clothed_icon.

instead of sniffing Anthony:
	say "Anthony has a pleasant animalistic smell. Clearly male and somewhat spicy, you almost have to hold yourself back from getting too close and pushing your nose into his lustrous fur.";

to say AnthonyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Anthony] <- DEBUG[line break]";
	say "     Anthony McDermott is a tall anthro anteater in a kilt, with a light and slender build and the characteristic elongated head and narrow snout of a giant anteater. He has large brown eyes and expressive, flexible ears on top of his head, plus a beautiful mane of brown hair down to the midst of his back. One lock of his mane hangs down over his brow, giving him a somewhat dashing appearance.";
	say "     The young man's body is covered in lustrous and silky fur, with most of it light brown to blond and pretty short, showing off the fit shape and light muscles of his upper body, abs, legs and (you assume) crotch. Meanwhile, his forearms and lower legs have longer, almost purely blond hair covering them, and the very long prehensile tail behind him looks pretty big with the thick and darker brown fur along its length.";
	say "     Another thing of note are the long and curved claws on his hands and feet, longer than the fingers themselves. Looking at them makes you recall something you once read about a regular giant anteater being able to kill a jaguar in a stand-up fight...";

instead of conversing the Anthony:
	project the figure of Anthony_face_icon;
	say "     What do you want to talk to him about? [bold type]You could chat with him a bit [link](1)[as]1[end link], ask if there are any problems you could help with [link](2)[as]2[end link], or just change your mind and not say anything [link](3)[as]3[end link]?[roman type][line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to chat with him, [link]2[end link] to offer your help, or [link]3[end link] to break off the conversation.";
	if calcnumber is 1: [chat]
		say "     Chatting a bit about this and that, you finally come to the topic of [one of]Anthony's kilt. He laughs as you bring up the unconventional piece of clothing, running a hand over its fabric. 'Yeah, I know - it feels strange to be wearing a skirt - ok, kilt - all the time. Not that I have any choice - imagine trying to pull a pair of pants over those...' He nods down to the long curved claws on his feet. 'I ripped three pairs of jeans after I transformed until I remembered this thing. Thank god grandmother insisted on all of us men wearing 'traditional' outfits when my older sister married a few years back.'[or]the farm itself. Anthony explains 'This land has been in my family for generations. I spent quite a few summer holidays out here as a kid. Just a few months before all this...' *he raises one of his furred arms and clicks the claws against each other* 'happened, my grandfather died, leaving all of it to me and I moved here for good. I was just getting the hang of making everything work all right when the world got crazy. Since then, all us humans have become something else and various animals started acting strange. And then there's that strange grass, growing fast and actively trying to destroy things...'[or]the plains. Anthony says 'Crazy stuff, the grass out there. I mean, the farm was on the far edge of the city, pretty thinly built up with farmland and a few wooded areas around - now it's all just that endless sea of grass, with all the other buildings already collapsed and gone.'[at random]";
	else if calcnumber is 2: [help]
		say "     Anthony smiles as you offer your help, putting his hand on your shoulder - carefully, because of his claws. 'Thanks a lot, we really can use the help.' His eyes get a faraway expression as he thinks for a moment, trying to find the right job for you to do.";
		if HP of Anthony < 4:
			say "     'You've been around in the area and further into the city, so could you please have a look out for a cow - a regular, untransformed one. Some of our cows ran off when a critter broke through the fence and frightened them, and we still haven't found one of our best producers. Really hope she's all right. Her name is Wendy and she's very docile and peaceful. If you do find her, just calm her down, talk to her a bit and she'll follow you so you can bring her back here.'";
			say "     He looks to you with a hopeful expression, then continues with 'There's a reward too. If you bring Wendy back, I can give you a bag of food - farm-fresh and guaranteed infection free.'";
		else if HP of Anthony is 4:
			if HP of Duke < 10: [not helped yet]
				say "     'You're pretty resourceful and often out in the city, aren't you? Maybe you could find a way to help Shawn and Duke - they're shepherds, really nice guys and hard workers. Just go out to the meadow after dark and you'll see what's going on, ok?'";
			else: [helped the shepherds]
				say "     'I was gonna ask you to help out Shawn and Duke, but you already did that, didn't you? I'm glad you could help them. It'd have been terrible if Duke lost his boyfriend forever to these damned nanites. Let me give you a reward for your help.' With that, the anthro anteater starts turning to go into the kitchen and grab another tasty treat for you.";
				LineBreak;
				say "     [bold type]Do you wait patiently for him to get you some food, or would you rather pull him against yourself for a kiss and a more 'personal' reward?[roman type]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Wait.";
				say "     ([link]N[as]n[end link]) - Pull him in.";
				if player consents:
					LineBreak;
					say "     Calmly waiting for him, you accept a carrying bag of fresh fruit and thank Anthony.";
					increase carried of food by 4;
				else:
					LineBreak;
					say "     [AnthonyRewardSex]";
				now HP of Anthony is 5;
		else if HP of Anthony is 5:
			say "     'One of the farmhands has gone missing and I could really use someone experienced with the dangers of the city to go looking for him. You see, my guys regularly patrol the outskirts of the farm and fields, always on the lookout for roving beasts or a new growth burst of the creeping grass - but early this morning, Finn didn't come back. Being a horseman like the others he's pretty strong and fast too, so I - I didn't think something like this could happen. Not here, so close to my family farm. Something terrible must have gotten to him.'";
			say "     Anthony scrapes his claws against each other in a move that betrays his anxiousness, then adds, 'Just the thought of one of my workers, out there all alone with a slobbering beast wanting to gnaw his bones, or something...' Falling silent, he stops the hand-movements a second later, then gives a sigh. 'Everyone here is my responsibility as the owner of this farm. I'm half-minded to go out with you, but then I would be abandoning the rest to look for one man. Who knows what might happen if I'm not here to lead them. I don't think the farm would last long without coordination. Just days ago, we had a behemoth deciding he wanted to move in...'";
			LineBreak;
			say "     He looks to you with a hopeful expression, then continues with 'There's a reward too. If you bring Finn back, I can give you a bag of food - farm-fresh and guaranteed infection free[if libido of Anthony > 0] - or... something more intimate, if you prefer[end if]. Just find our [bold type]missing farm hand[roman type] quickly please!'";
			now Missing Farm Hand is not resolved;
		else:
			say "     Clicking his claws together thoughtfully, he finally says 'I'll have to get back to you on that later, not sure what would be right for your skill-set at the moment. Just sending you to milk cows would be a waste of your time...' (further quests remain to be written - please have patience)";
	else if calcnumber is 3: [break off talking]
		say "     You wave Anthony off and excuse yourself.";

instead of fucking the Anthony:
	project the figure of Anthony_face_icon;
	say "     Anthony looks at you with interest as you make him your amorous offer, then sighs and shakes his head. 'I'd love to take you up on that, but right now isn't such a good time, sorry. With all the things that I have to worry about, sudden emergencies coming up and so on, I... can't just take time off right now. People on the farm count on me and grandfather would spin in his grave if I started fucking around with someone before sorting out the problems we have.'";

instead of going northwest from Central Farm Square while (HP of Anthony is 0 or HP of Anthony is 1 or HP of Anthony is 3 or HP of Anthony is 4 or HP of Anthony is 5):
	move player to Farmhouse Main Room;
	if graphics is true:
		project the figure of Anthony_face_icon;
	if HP of Anthony is 0: [first meeting, no reward for Wendy yet]
		say "     Entering the farmhouse, you find yourself in a large main room that combines the living and dining area. Sitting on a leather couch in the front part of the room, leaning forward to write on a notebook on the coffee table next to it, you see a lean, humanoid anteater. The young man stands up as he notices you, walking over to you and offering you his clawed hand in greeting. After introducing himself as Anthony McDermott, owner of the farm, he smiles and continues with 'Nice to see that not everyone out there has devolved into horny beasts. You're welcome to stay here with us for a while, if you want, though we can't offer any food or water, I hope you understand.'";
		now HP of Anthony is 2;
	else if HP of Anthony is 1: [he never met the player before]
		say "     Entering the farmhouse, you find yourself in a large main room that combines the living and dining area. Sitting on a leather couch in the front part of the room, leaning forward to write on a notebook on the coffee table next to it, you see a lean, humanoid anteater. The young man stands up as he notices you, walking over to you and offering you his clawed hand in greeting. After introducing himself as Anthony McDermott, owner of the farm, he smiles and continues with 'Nice to see that not everyone out there has devolved into horny beasts. You're welcome to stay here with us for a while, if you want, though we can't offer any food or water, I hope you understand.'";
		LineBreak;
		say "     Nodding, you bring up the cow you found and led back to the farm. A visibly relieved Anthony puts his long arms around you, giving you an exuberant hug. Realizing a moment later that you don't really know him and might not like this, he lets you go, giving you a clap in camaraderie on the shoulder instead. 'Thank you, thank you. I had feared she'd just be lost out there, alone, maybe eaten. That's a big worry of my mind. Here, let me give you a reward for your efforts.' With that, the anthro anteater walks over into the kitchen, packing a carrying bag with fresh fruit for you, then handing it over with a smile.";
		increase carried of food by 4;
		now HP of Anthony is 4;
	else if HP of Anthony is 3: [met the player before]
		say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about the cow you found and led back to the farm. Visibly relieved, he puts his long arms around you, giving you an exuberant hug. Realizing a moment later that you don't really know him all that well and might not like this, he lets you go, giving you a clap in camaraderie on the shoulder instead. 'Thank you, thank you. I had feared she'd just be lost out there, alone, maybe eaten. That's a big worry off my mind. Here, let me give you a reward for your efforts.' With that, the anthro anteater walks over into the kitchen, packing a carrying bag with fresh fruit for you, then handing it over with a smile.";
		increase carried of food by 4;
		now HP of Anthony is 4;
	else if HP of Anthony is 4 and HP of Duke > 9:
		say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about Shawn's transformation from feral sheep to a more human form. Very happy to hear about that, he gives you a beaming smile and claps you on the shoulder in camaraderie. 'Thank you, thank you. I'm glad you could help them. It'd have been terrible if Duke lost his boyfriend forever to these damned nanites. Let me give you a reward for your help.' With that, the anthro anteater starts turning to go into the kitchen and grab another tasty treat for you.";
		LineBreak;
		say "     [bold type]Do you wait patiently for him to get you some food, or would you rather pull him against yourself for a kiss and a more 'personal' reward?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Food.";
		say "     ([link]N[as]n[end link]) - 'Personal' reward.";
		if player consents:
			LineBreak;
			say "     Calmly waiting for him, you accept a carrying bag of fresh fruit and thank Anthony.";
			increase carried of food by 4;
		else:
			LineBreak;
			say "[AnthonyRewardSex]";
		now HP of Anthony is 5;
	else if HP of Anthony is 6 and FinnTrackingProgress > 2:
		if FinnTrackingProgress < 90: [Finn got saved]
			say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about Finn's abduction by the horsemen and the fact that you've brought his farmhand back. Very happy to hear about that, he gives you a beaming smile and claps you on the shoulder in camaraderie. 'Thank you, thank you. I'm so glad you found him.' With that, the anthro anteater starts turning to go into the kitchen and grab another tasty treat for you.";
			LineBreak;
			say "     [bold type]Do you wait patiently for him to get you some food, or would you rather pull him against yourself for a kiss and a more 'personal' reward?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Food.";
			say "     ([link]N[as]n[end link]) - 'Personal' reward.";
			if player consents:
				LineBreak;
				say "     Calmly waiting for him, you accept a carrying bag of fresh fruit and thank Anthony.";
				increase carried of food by 4;
			else:
				LineBreak;
				say "[AnthonyRewardSex]";
		else if FinnTrackingProgress is 99: [Finn is dead]
			say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about Finn's abduction by the horsemen and its tragic conclusion. The farmhand won't be back, that's for sure. The friendly anteater is shocked at such dire news, raising a hand to cover his mouth. Tears well up in his eyes as he looks away, deep in thought. A long moment later, he takes a shuddering breath and gulps, then wipes his face with the backs of both clawed hands. Anthony murmurs something that might have been, 'Pull yourself together, everyone depends on you,' then sighs and focuses back on you. 'Thank you, for... at least trying to save him. I - I got to be alone right now, think about how I'll tell the men.' You leave the farmhouse after that, walking out onto the open square in the middle of the farm buildings.";
			move player to Central Farm Square;
		else if FinnTrackingProgress is 100: [Finn joined the stables]
			say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about Finn's abduction by the horsemen and the fact that he joined their numbers in the end. The friendly anteater is visibly deflated at such news and gives a deep sigh. 'I - um, I hope he'll be happy there. Thank you for at least the knowledge what happened to him. I'll get you some food.' With that, the anthro anteater trots over to the kitchen and soon hands you a small bag with fresh fruit.";
			increase carried of food by 2;
		now HP of Anthony is 7;
		if "Farm Quests" is listed in OpenQuests of player:
			remove "Farm Quests" from OpenQuests of player;
			add "Farm Quests" to CompletedQuests of player;

[
	else if HP of Anthony is 5 and HP of Selena is 1 and SelenaDelivery - turns > 16:
		say "     Entering the main room of the farmhouse, you are greeted by Anthony, who says, 'Hello my friend. Could I maybe ask you for a report about the newest spread of creatures out in the plains? We have to keep informed so we're not hit out of the blue when some new type of creature appears or any group expands their territory into the plains. So if -' His words are interrupted by a high-pitched voice calling out, 'Uncle Anthony! Can I ride one of the horses, today?' A small, spotted catgirl in an oversized t-shirt bounces into the room as she says the last words, which leads over to an 'Eep' as she notices you in the room too. Lightning-quick, the little feline flits to a spot behind Anthony, peeking out from behind him at you.";
		now HP of Anthony is 6;
		if XP of Selena is 1: [player lifted blanket, Selena vaguely remembers player]
			say "     The tawny kitten tilts her head to the side, her eyes wide with wonder. She looks up to him, gently tugging on his kilt as she speaks in a soft voice. 'Uncle Anthony? Who is that?'";
		else if XP of Selena is 0: [player didn't lift blanket, no memories of player]
			say "     She grips his clothes a little tighter, [if facename of player is in infections of CanineList]ducking back behind him with a whimper[else]looking up at him in concern.";
		say "     Anthony looks behind his back, then says in a calming tone, 'Don't worry, kitten. [if player is female]She[else]He[end if]'s a friend. Even saved Wendy from the creatures out in the plains. You got nothing to fear from [if player is female]her[else]him[end if]. Why don't you go and introduce yourself. That's only polite, you know.";
		say "     You do your best to give a friendly smile, and...";
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Charisma Check)[line break]";
		if dice + bonus >= 19:
			say "     ...she seems to be a little uncomfortable, but the kitten does step out from behind Anthony, walking forward towards you. The girl looks down, playing with the hem of her shirt as she stammers out, 'I-I'm Selena. It... it's nice to meet you, [if player is female]Miss[else]Sir[end if].'";
		else:
			say "     ...but it doesn't seem to be enough. She stays behind Anthony and gives a tiny wave. The little girl says, 'I'm S-Selena,' and ducks back behind her guardian, her tail now the only visible part of her.";
		say "     'There, that wasn't so hard, was it?' Anthony says and tousles Selena's hair affectionately. Then he crouches down beside the young catgirl and continues in a more apologetic tone, 'As for the horses - I'm afraid not, kitten. We've got a... a number of mares now, out in the paddock, but Lucifer won't let anyone really get at them. That mustang is pretty dangerous for anyone to deal with - especially a little girl. But I'm sure Corbin will give you a piggyback ride if you ask him nicely...'";
		WaitLineBreak;
		say "     As Selena perks up and tenses to rush off at once, Anthony stops her with an arm around her midriff. 'Wait a minute - did you do your homework, little lady? Everyone needs to know how to read, so playtime is only after you're done for the day.' The spotted kitten looks up at the farmer, pleading with her big olive eyes. 'But Uncle Anthony... I like it when you read to me...' Anthony gives her a smile and strokes the little feline's cheek, then says, 'And I love reading stories for you, kitten. But... I won't be with you all the time everywhere you go, and you will need to understand things for yourself at some point. Now be a good girl and do your reading, okay?'";
		say "     Her ears droop at this, but Selena nods, giving him one last hug before trudging out of the room, briefly glancing at you before she disappears through the doorway. Waiting a few seconds after watching Selena walk out of the room, Anthony calls after her, 'I can see the shadow of your tail on the wall, little lady. Don't eavesdrop, that's not nice. And please go do your homework. Now.' After a little huff that can be heard through the open door, there is only silence. Something tells you she's gone now, but that anthro kitten walks on pretty quiet paws...";
		WaitLineBreak;
		say "     Anthony clears his throat, then says, 'Hard to believe she's the kitten that got left at our gate only some short days ago. Growing up in jumps, large and small. Well, that's the new world I guess.' He shrugs and looks back over to the door through which Selena left, a smile playing over his lips. 'She's a sweet girl, and I'm glad to have her. One has to watch out a bit with her though - she can think up the wildest things to do. I'd appreciate it if you could try to rein her in a bit if you see her planning some hijinks on the farm grounds. Ha - a typical feline... let's just make sure that curiosity doesn't lead this kitty astray...'";
		now HP of Selena is 2;
		now libido of Selena is 5;   [neutral start]
]

to say AnthonyRewardSex:
	project the figure of Anthony_naked_icon;
	if libido of Anthony is 0: [first time]
		say "     Quickly stepping forward, you put a hand on Anthony's arm and pull him against you, finding his lips with yours. The sudden kiss startles him at first, but he quickly gets into it and eagerly replies, sliding an arm around you while making out. After some hot and hungry kisses, the giant anteater comes back up for air and pants 'So you want... something else as your reward, I gather?', looking down towards your crotch as he does so. Before you can do anything more than nod, he starts to pull off your clothes, guiding you step by step towards the nearest couch as he does so. Soon, you're completely naked and find yourself softly pushed to sit down and lean back, with Anthony kneeling between your legs. 'Just relax and enjoy,' he says in a seductive voice, smiling up at you as he sticks out his long, long tongue and leans forward.";
		WaitLineBreak;
		if player is male:
			say "     Anthony is very careful as he handles your manhood and balls with his clawed hands, gently rubbing while his tongue plays over your skin with a feathery light touch. He spends some time teasing your balls, wrapping his tongue around one then the other and lightly squeezing them, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your soon fully hard cock. It's a strange but very pleasant feeling to have him play his long but thin tongue over your erection, then wrap around it and tug on it in a pretty stimulating fashion. Overwhelmed by the novel sensations of having this anthro anteater jerk you off with his tongue, you moan and lean your head backwards, savoring the pleasure he gives you.";
			say "     After a while of just licking and squeezing your manhood, Anthony moves on to giving you a more regular blowjob and slides his lips over your pole, taking it into his tight and narrow muzzle. It's good that anteaters have no teeth, otherwise you doubt that your cock would even have fit, as tightly as he's got his lips stretched around your shaft. Bobbing up and down in the pretty amazing blowjob he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
			WaitLineBreak;
			say "     Arousal quickly mounting higher and higher from Anthony's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to cum rises in your bells. You moan that you're close, which only has the giant anteater speed up more, lips still tightly wrapped around your shaft as you blow your load. He eagerly swallows spurt after spurt of your cum, even milking the very last drops from your soon softening cock, then sits down on the couch next to you and moans 'Hmm, you're tasty' while licking his lips. After leaning in for a kiss, he continues 'I wish I had time to do this more often...'";
		else if player is female:
			say "     Anthony is very careful as he caresses your crotch with his clawed hands, gently pulling apart your nether lips while his tongue plays over its folds with a feathery light touch. He spends some time just licking your outermost lips, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your clit and inner labia. It's a strange but very pleasant feeling to have him play his long but thin tongue over your privates, then dip into your vagina and explore inside. Overwhelmed by the novel sensations of having this anthro anteater tease and lick the inner walls of your pussy, you moan and lean your head backwards, savoring the pleasure he gives you.";
			say "     After a while of gentle licking and soft poking, Anthony pulls back a bit, then puts his lips to your clitoris and really concentrates on that, nibbling on it and brushing over it with the tip of his tongue. Head against your crotch in the pretty amazing cunnilingus he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
			WaitLineBreak;
			say "     Arousal quickly mounting higher and higher from Anthony's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the giant anteater speed up more, pushing his long tongue even deeper into your vagina than before and finding all new spots to caress and tease. Moments later, you moan loudly, orgasming from the continued stimulation, femcum squirting from your pussy and hitting Anthony right on his long muzzle. He eagerly puts his lips to your sex, catching and swallowing it all after the first splash, then licks his muzzle clean with his long tongue and sits down on the couch next to you. 'Hmm, you're tasty,' he moans and leans in for a kiss before continuing 'I wish I had time to do this more often...'";
		else:
			say "     Anthony is very careful as he caresses your crotch with his clawed hands, gently stroking your genderless but still sensitive skin and playing over it with a feathery light touch with his tongue. He spends some time just licking your pubic area, then snakes his tongue down between your legs to brush against your back door and tease it a bit before returning to your crotch. Dealing with your sexless state without any hesitation, he's creative in the ways he tickles, licks and strokes you, giving you a very pleasant feeling. While his head is against your crotch in the pretty amazing oral attention he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
			WaitLineBreak;
			say "     Arousal quickly mounting higher and higher from Anthony's gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the giant anteater speed up more, and moments later a feeling of bliss floods your body and you shake in orgasm. He continues pleasing you until your climax abates, then sits down on the couch next to you. 'Hmm, you're tasty,' he moans and leans in for a kiss before continuing 'I wish I had time to do this more often...'";
		if libido of Anthony is 0:
			now libido of Anthony is 1; [had reward sex before]
	else:
		say "     Quickly stepping forward, you put a hand on Anthony's arm and pull him against you, finding his lips with yours. The sudden kiss startles him at first, but he quickly gets into it and eagerly replies, sliding an arm around you while making out. After some hot and hungry kisses, the giant anteater comes back up for air and pants 'So you want... something else as your reward, I gather?', looking down towards your crotch as he does so.";
		WaitLineBreak;
		say "[AnthonySexMenu]";

to say AnthonySexMenu:
	project the figure of Anthony_naked_icon;
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Anthony please you with his long tongue";
	now sortorder entry is 1;
	now description entry is "Enjoy some breathtaking tongue-action with the anteater";
	[
	choose a blank row in table of fucking options;
	now title entry is "Suck Anthony's dick";
	now sortorder entry is 2;
	now description entry is "Kneel down and get your lips around that shapely dick of his";
	]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked in the ass by Anthony";
		now sortorder entry is 3;
		now description entry is "Ask the sexy anteater to fuck you";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Anthony's shaft in your pussy";
		now sortorder entry is 4;
		now description entry is "Ask the sexy anteater to fuck you";
	[
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Anthony";
		now sortorder entry is 5;
		now description entry is "Take the anteater's ass for a ride";
	]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Let Anthony please you with his long tongue"):
					say "[AnthonySex1]";
				if (nam is "Suck Anthony's dick"):
					say "[AnthonySex2]";
				if (nam is "Get fucked in the ass by Anthony"):
					say "[AnthonySex3]";
				if (nam is "Take Anthony's shaft in your pussy"):
					say "[AnthonySex4]";
				if (nam is "Fuck Anthony"):
					say "[AnthonySex5]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the tall anteater, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AnthonySex1: [oral on the player]
	say "     Smiling at your eagerness to be taken care of by him, Anthony starts to pull off your clothes, guiding you step by step towards the nearest couch as he does so. Soon, you're completely naked and find yourself softly pushed to sit down and lean back, with the anteater kneeling between your legs. 'Just relax and enjoy,' he says in a seductive voice, winking at you as he sticks out his long, long tongue and leans forward.";
	LineBreak;
	if player is male:
		say "     Anthony is very careful as he handles your manhood and balls with his clawed hands, gently rubbing while his tongue plays over your skin with a feathery light touch. He spends some time teasing your balls, wrapping his tongue around one then the other and lightly squeezing them, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your soon fully hard cock. It's a strange but very pleasant feeling to have him play his long but thin tongue over your erection, then wrap around it and tug on it in a pretty stimulating fashion. Overwhelmed by the novel sensations of having this anthro anteater jerk you off with his tongue, you moan and lean your head backwards, savoring the pleasure he gives you.";
		say "     After a while of just licking and squeezing your manhood, Anthony moves on to giving you a more regular blowjob and slides his lips over your pole, taking it into his tight and narrow muzzle. It's good that anteaters have no teeth, otherwise you doubt that your cock would even have fit, as tightly as he's got his lips stretched around your shaft. Bobbing up and down in the pretty amazing blowjob he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
		WaitLineBreak;
		say "     Arousal quickly mounting higher and higher from Anthony's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to cum rises in your bells. You moan that you're close, which only has the giant anteater speed up more, lips still tightly wrapped around your shaft as you blow your load. He eagerly swallows spurt after spurt of your cum, even milking the very last drops from your soon softening cock, then sits down on the couch next to you and moans 'Hmm, you're tasty' while licking his lips. After leaning in for a kiss, he continues 'I wish I had time to do this more often...'";
	else if player is female:
		say "     Anthony is very careful as he caresses your crotch with his clawed hands, gently pulling apart your nether lips while his tongue plays over its folds with a feathery light touch. He spends some time just licking your outermost lips, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your clit and inner labia. It's a strange but very pleasant feeling to have him play his long but thin tongue over your privates, then dip into your vagina and explore inside. Overwhelmed by the novel sensations of having this anthro anteater tease and lick the inner walls of your pussy, you moan and lean your head backwards, savoring the pleasure he gives you.";
		say "     After a while of gentle licking and soft poking, Anthony pulls back a bit, then puts his lips to your clitoris and really concentrates on that, nibbling on it and brushing over it with the tip of his tongue. Head against your crotch in the pretty amazing cunnilingus he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
		WaitLineBreak;
		say "     Arousal quickly mounting higher and higher from Anthony's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the giant anteater speed up more, pushing his long tongue even deeper into your vagina than before and finding all new spots to caress and tease. Moments later, you moan loudly, orgasming from the continued stimulation, femcum squirting from your pussy and hitting Anthony right on his long muzzle. He eagerly puts his lips to your sex, catching and swallowing it all after the first splash, then licks his muzzle clean with his long tongue and sits down on the couch next to you. 'Hmm, you're tasty,' he moans and leans in for a kiss before continuing 'I wish I had time to do this more often...'";
	else:
		say "     Anthony is very careful as he caresses your crotch with his clawed hands, gently stroking your genderless but still sensitive skin and playing over it with a feathery light touch with his tongue. He spends some time just licking your pubic area, then snakes his tongue down between your legs to brush against your back door and tease it a bit before returning to your crotch. Dealing with your sexless state without any hesitation, he's creative in the ways he tickles, licks and strokes you, giving you a very pleasant feeling. While his head is against your crotch in the pretty amazing oral attention he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
		WaitLineBreak;
		say "     Arousal quickly mounting higher and higher from Anthony's gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the giant anteater speed up more, and moments later a feeling of bliss floods your body and you shake in orgasm. He continues pleasing you until your climax abates, then sits down on the couch next to you. 'Hmm, you're tasty,' he moans and leans in for a kiss before continuing 'I wish I had time to do this more often...'";

to say AnthonySex2: [oral on Anthony]
	say "     A";

to say AnthonySex3: [player ass fucked]
	setmonster "Giant Anteater";
	choose row monster from the table of random critters;
	say "     Smiling at your eagerness to be taken care of by him, Anthony brings his long muzzle to your mouth and kisses you, sliding his tongue inside for a playful bit of tongue-wrestling. Then the giant anteater starts to strip you naked in a swift but gentle manner. While he slides his long claws under the fabric to pull each piece of clothing off, he guides you step by step towards the nearest couch. Soon, you're completely naked and find yourself softly pushed to sit down and lean back, with the slender male crouching down between your legs. 'Just relax and enjoy,' he says in a seductive voice, winking at you as he sticks out his long, long tongue and leans forward.";
	say "     The soft, luscious fur on Anthony's forearms brushes the insides of your legs as the anteater moves to hook his claws under your thighs, then lifts them up, baring your ass with spread buttocks. Then he lowers his head and rubs the long curve of his muzzle up and down between your cheeks, giving your pucker a playful lick each time he passes it. The teasing touches and stroking have you moaning in no time, prompting the young man to look up at you and give a beaming smile, followed by, 'You like that, don't you? Wait till you see what's next...' With that said, Anthony moves to kneel and lowers his upper body some more, bringing his muzzle against your back door in an all new angle.";
	WaitLineBreak;
	say "     His long, thin tongue slips out between the anteater's lips and pushes in against the ring of your pucker, wiggling inside with ease. And it doesn't stop there, going deeper and deeper until he does the unbelievable - Anthony actually LICKS your prostate - making you throw your head back in a lust-filled gasp as you melt into the sofa. With the tip of your partner's very talented tongue flicking over your most sensitive spot inside, you at first barely register the next trick up Anthony's sleeve - at least until he presses the tip of his muzzle forward more strongly and nudges apart the pretty relaxed ring of your pucker. You can't help but moan loudly at the fact that his muzzle is thin enough to 'fuck' you with, sliding in and out a few inches while he keeps lapping your prostate.";
	say "     Anthony does his very best to please you, only pulling out from time to time to catch his breath, then getting right back to this unconventional way of having sex. After a quite pleasant little while of doing so, he takes things to an all new level by starting to hum loudly with his muzzle inside you. With all the stimulation already having put you very close to an orgasm, the vibration of Anthony's muzzle is enough to push you over the edge for good. Bucking your hips towards the anteater, you shout out in climax while [if player is herm]your cock sends spurts of cum spraying over your chest and your pussy starts gushing femcum, which plasters Anthony's forelock against his muzzle and trickles down all over it[else if player is male]your cock sends spurts of cum spraying over your chest, painting it in white streaks[end if].";
	WaitLineBreak;
	say "     Showing dedication to his task, Anthony keeps stimulating your prostate all the way through your orgasm and even after, making sure that your arousal never dips too low even after your spurts of cum slowly ebb off. Then eventually, he raises his head and flicks that amazing tongue forward to lick up some of the cum sticking to your chest, smiling as he brings it to his mouth and tastes your essence. 'Ready for round two?' the slender male asks next and you give a nod and happy moan as your reply, which prompts Anthony to raise himself up on his knees, then lean over your relaxed form. Looking down at what bumps hotly against your buttocks at that move, you see that his tongue isn't the only thing quite long on this tall anteater - Anthony is hung with a very respectable piece of man-meat, its length standing proudly erect under a small bush of blond pubic hair.";
	say "     Your partner doesn't mince any more words, instead bringing his cock to your still slightly gaping opening right away and lining himself up with it. Then he thrusts into you in a smooth movement, filling the void left by his tongue earlier with something much thicker and harder this time. The young man expertly keeps going until he bumps your prostate with his tip, then gives some quick little jabs against it. The sensations drive you wild, bucking into the cushions of the sofa and wrapping your legs around him. Pleased with this reaction, Anthony leans forward and kisses you on the mouth, making out with you while his dick slowly sinks even deeper, brushing past the prostate and burying itself inside you until his balls bump against your buttocks. 'You feel great to be in,' the anteater says in a husky tone in between kisses, then begins to slide in and out in a fast tempo.";
	WaitLineBreak;
	say "     Anthony gives you an impressive demonstration that he's got experience with more than just oral pleasure and also really knows what to do with that long cock of his. While making out with you, the anteater fucks you with long strokes, pumping his manhood into your eager hole. Meanwhile, he strokes your body, letting his hands and long claws brush softly over your skin and teasing you with gentle strokes of the fluffy fur covering his forearms. All in all, you're putty in his hands, very well taken care of by the soft-spoken, skillful lover. The young man who inherited this farm fucks you with relish on a sofa in his living-room, not even registering a horseman coming to the door at some point, looking in on the two of you and giving an amused snort. The man leaves after watching for a short while, his issue seemingly not important enough to disturb the boss.";
	say "     Being fucked by the thin yet surprisingly strong anteater, moaning in lust with every solid thrust of his large cock, you're once again pushed to higher and higher levels of arousal, filling the farmhouse with the lewd sounds of loud sex. Soon, you're wrapping your legs around his hips and pull your anthro partner deeper inside you to scratch the steadily rising itch only he can fill, then shout in completion as a sharp thrust against your prostate makes you see stars and cum! With your balls churning, yet another load of fresh cum splatters all over your chest, soaking your skin in wet streaks. As your inner muscles twitch with each further spurt, tightening around your partner's rock-hard manhood, Anthony follows you into sweet oblivion just a few heart-beats later, grunting as his load is deposited deep in your stretched passage.";
	say "     [mimpregchance]";
	WaitLineBreak;
	say "     The thin and lanky anteater sinks down on top of you, exhaustion reducing him to just holding on to you and panting for a few moments as the build-up of sexual energy abates with his orgasm. When he catches his breath a short while later and pushes himself up on bony elbows, the young man gives you a pleased smile, then rubs the side of his elongated muzzle against your neck in an affectionate gesture. 'I trust that this was a proper reward for such a selfless hero as yourself,' he quips good-heartedly, then kisses your mouth before slowly withdrawing from your cum-filled asshole. With a last caress over your stretched-out body, so very gentle despite the long claws on his hands, Anthony then stands up and goes to grab his kilt. Fixing it up around his hips, the anteater says, 'That was a lot of fun! How I wish we could just keep going, but... duty calls.'";

to say AnthonySex4: [player pussy fucked]
	setmonster "Giant Anteater";
	choose row monster from the table of random critters;
	say "     Smiling at your eagerness to be taken care of by him, Anthony brings his long muzzle to your mouth and kisses you, sliding his tongue inside for a playful bit of tongue-wrestling. Then the giant anteater starts to strip you naked in a swift but gentle manner. While he slides his long claws under the fabric to pull each piece of clothing off, he guides you step by step towards the nearest couch. Soon, you're completely naked and find yourself softly pushed to sit down and lean back, with the slender male crouching down between your legs. 'Just relax and enjoy,' he says in a seductive voice, winking at you as he sticks out his long, long tongue and leans forward.";
	say "     The soft, luscious fur on Anthony's forearms brushes the insides of your legs as the anteater moves to hook his claws under your thighs, then spreads and lifts them, baring your wet pussy. Then he lowers his head and rubs the long curve of his muzzle up and down between your nether lips, giving your sensitive clit a playful lick each time he passes it. The teasing touches and stroking have you moaning in no time, prompting the young man to look up at you and give a beaming smile, followed by, 'You like that, don't you? Wait till you see what's next...' With that said, Anthony moves to kneel on the ground and lowers his upper body some more, bringing his muzzle against your pussy in an all new angle.";
	WaitLineBreak;
	say "     His long, thin tongue slips out between the anteater's lips and pushes in between your spread nether lips, wiggling into your pussy with ease. And it doesn't stop there, going deeper and deeper until he does the unbelievable - Anthony actually LICKS your g-spot - making you throw your head back in a lust-filled gasp as he teases the usually so elusive pleasure center. With the tip of your partner's very talented tongue flicking over your most sensitive spot inside, you at first barely register the next trick up Anthony's sleeve - at least until he presses the tip of his muzzle forward more strongly and nudges apart your glistening folds. You can't help but moan loudly at the fact that his muzzle is thin enough to 'fuck' you with, sliding in and out a few inches while he keeps lapping your g-spot.";
	say "     Anthony does his very best to please you, only pulling out from time to time to catch his breath, then getting right back to this unconventional way of having sex. After a quite pleasant little while of doing so, he takes things to an all new level by starting to hum loudly with his muzzle inside you. With all the stimulation already having put you very close to an orgasm, the vibration of Anthony's muzzle is enough to push you over the edge for good. Bucking your hips towards the anteater, you shout out in climax while [if player is herm]your cock sends spurts of cum spraying over your chest and your pussy starts gushing femcum, which plasters Anthony's forelock against his muzzle and trickles down all over it[else if player is male]your cock sends spurts of cum spraying over your chest, painting it in white streaks[else]your pussy starts gushing femcum, which plasters Anthony's forelock against his muzzle and trickles down all over it[end if].";
	WaitLineBreak;
	say "     Showing dedication to his task, Anthony keeps wiggling his tongue inside your trembling pussy all the way through your orgasm and even after, making sure that your arousal never dips too low even after your [if player is male]spurts of cum[else]waves of pleasure[end if] slowly ebb off. Then eventually, he raises his head and flicks that amazing tongue forward to lick up some of the [if player is male]cum sticking to your chest[else]femcum glistening on your pubic mound[end if], smiling as he brings it to his mouth and tastes your essence. 'Ready for round two?' the slender male asks next and you give a nod and happy moan as your reply, which prompts Anthony to raise himself up on his knees, then lean over your relaxed form. Looking down at what bumps hotly against your buttocks at that move, you see that his tongue isn't the only thing quite long on this tall anteater - Anthony is hung with a very respectable piece of man-meat, its length standing proudly erect under a small bush of blond pubic hair.";
	say "     Your partner doesn't mince any more words, instead bringing his cock to your still slightly gaping opening right away and lining himself up with it. Then he thrusts into you in a smooth movement, filling the void left by his tongue earlier with something much thicker and harder this time. The young man expertly keeps going until he bumps your g-spot with his tip, then gives some quick little jabs against it. The sensations drive you wild, bucking into the cushions of the sofa and wrapping your legs around him. Pleased with this reaction, Anthony leans forward and kisses you on the mouth, making out with you while his dick slowly sinks even deeper, burying itself inside you until his balls bump against your buttocks and the soft fuzz of his pubes brushes against your clit. 'You feel great to be in,' the anteater says in a husky tone in between kisses, then begins to slide in and out in a fast tempo.";
	WaitLineBreak;
	say "     Anthony gives you an impressive demonstration that he's got experience with more than just oral pleasure and also really knows what to do with that long cock of his. While making out with you, the anteater fucks you with long strokes, pumping his manhood into your eager hole. Meanwhile, he strokes your body, letting his hands and long claws brush softly over your skin and teasing you with gentle strokes of the fluffy fur covering his forearms. All in all, you're putty in his hands, very well taken care of by the soft-spoken, skillful lover. The young man who inherited this farm fucks you with relish on a sofa in his living-room, not even registering a horseman coming to the door at some point, looking in on the two of you and giving an amused snort. The man leaves after watching for a short while, his issue seemingly not important enough to disturb the boss.";
	say "     Being fucked by the thin yet surprisingly strong anteater, moaning in lust with every solid thrust of his large cock, you're once again pushed to higher and higher levels of arousal, filling the farmhouse with the lewd sounds of loud sex. Soon, you're wrapping your legs around his hips and pull your anthro partner deeper inside you to scratch the steadily rising itch only he can fill, then shout in completion as a sharp thrust nudges your cervix, making you see stars and cum explosively! [if player is male]With your balls churning, yet another load of fresh cum splatters all over your chest, soaking your skin in wet streaks.[else]With your whole body trembling, another load of femcum covers Anthony's shaft in slick wetness. As your inner muscles twitch with each further moment of joy, tightening around your partner's rock-hard manhood, Anthony follows you into sweet oblivion just a few heart-beats later, grunting as his load is deposited deep in your stretched passage, splashing directly on the opening of your womb.";
	say "     [fimpregchance]";
	WaitLineBreak;
	say "     The thin and lanky anteater sinks down on top of you, exhaustion reducing him to just holding on to you and panting for a few moments as the build-up of sexual energy abates with his orgasm. When he catches his breath a short while later and pushes himself up on bony elbows, the young man gives you a pleased smile, then rubs the side of his elongated muzzle against your neck in an affectionate gesture. 'I trust that this was a proper reward for such a selfless hero as yourself,' he quips good-heartedly, then kisses your mouth before slowly withdrawing from your cum-filled pussy. With a last caress over your stretched-out body, so very gentle despite the long claws on his hands, Anthony then stands up and goes to grab his kilt. Fixing it up around his hips, the anteater says, 'That was a lot of fun! How I wish we could just keep going, but... duty calls.'";

to say AnthonySex5: [fuck Anthony]
	say "     A";

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Giant Anteater";
	now attack entry is "<This infection should not fight>";
	now defeated entry is "<This infection should not fight>";
	now victory entry is "<This infection should not fight>";
	now desc entry is "<This infection should not fight>";
	now face entry is "<noninfective>";
	now body entry is "<noninfective>";
	now skin entry is "<noninfective>";
	now tail entry is "<noninfective>";
	now cock entry is "<noninfective>";
	now face change entry is "<noninfective>";
	now body change entry is "<noninfective>";
	now skin change entry is "<noninfective>";
	now ass change entry is "<noninfective>";
	now cock change entry is "<noninfective>";
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male";         [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 35;              [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4;              [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6;             [ Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere";     [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10;     [ Length infection will make cock grow to if cocks]
	now cock width entry is 2;       [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2;          [ Number of Breasts infection will give you. ]
	now breast size entry is 0;      [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;     [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 8;       [ Width of female sex infection will try and give you ]
	now libido entry is 40;          [ Amount player Libido will go up if defeated ]
	now loot entry is "";            [ Loot monster drops, ]
	now lootchance entry is 0;       [ Chance of loot dropping 0-100 ]
	now scale entry is 3;            [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender";
	now type entry is "anteater";    [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;        [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;    [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;   [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "";       [ Row used to designate any special combat features, "default" for standard combat. ]

Anthony ends here.
