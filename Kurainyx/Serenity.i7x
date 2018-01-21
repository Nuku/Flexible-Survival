Version 1 of Serenity by Kurainyx begins here.
[Version 1 - Created Serenity]
"Adds a female naga npc to Flexible Survival"

[  HP of Serenity                                            ]
[  0: Never met                                              ]
[  1: Finished first encounter with Serenity                 ]
[  2: Moved Serenity to Grey Abbey                           ]
[  3: Had first talk with Serenity in bunker. Ready for sex  ]
[  100: Removed Serenity from game                           ]

Section 1 - Serenity in Dry Plains

Naga Hybrid is a situation.
The sarea of Naga Hybrid is "Plains".
Serenity is a woman. The HP of Serenity is normally 0.

when play begins:
	add Naga Hybrid to badspots of girl;
	add Naga Hybrid to badspots of furry;

Instead of resolving a Naga Hybrid:
	if HP of Serenity is 0:			[First encounter]
		say "     You freeze when you hear the distinctive sound of a rattlesnake's tail from behind. Slowly turning around, you see that instead of an ordinary snake, a naga is staring right at you from a short distance away, its bodily curves and facial features showing that it is female. In her 'standing' position, she is easily several feet taller than most people, and that does not include the rest of her long, snake-like body that trails behind her. A hood expands from the sides of her head, and her body is covered with a few white and black scales, but the majority of them are a brown that is similar in color to the dirt of the surrounding area, which helps explain how she managed to sneak up on you. At the end of her tail, you can see and hear the telltale rattle that initially caught your attention, which suggests that she is a hybrid between a rattlesnake and a cobra. Around her neck is a silver necklace in the shape of a heart with a snake coiled around it.";
		say "     'And what have we here? I seem to have stumbled upon a lost traveler,' the naga remarks in a teasing tone, her forked tongue flicking out. She begins to rattle her tail in a constant beat as she slowly slithers toward you with a confident smirk. 'Do not worry. I am not here to fight. In fact, why don't you let me take care of you for a while? Let me embrace you, and I will help you forget your worries.' Even though the naga truly seems to not be violent, there is still an obvious danger behind her offer, and yet, there is something about her enticing words and the oddly soothing rattling that tempts you to let this sultry serpent have her way with you.";
		say "     [bold type]Do you stay with the naga?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Submit to the naga hybrid.";
		say "     ([link]N[as]n[end link]) - Run away from the snake.";
		if the player consents:			[Serenity hypnotizes player and makes them eat her pussy. She takes one food or water and gets player off with her hands, but players with nothing get nothing]
			say "     [PlainsSerenitySubmit]";
		else:			[Run away from the snake]
			say "     Shaking off your daze, you realize that this naga is trying to hypnotize you with her rattle. Given the snake's ability, trying to fight her would be unwise, so you hastily run in the opposite direction. A quick glance back reveals the reptile's surprised face; however, her shock turns into a scowl a second later when she comes after you. Fortunately, you are able to outrun her, and combined with your headstart, the naga eventually gives up her chase as you leave her far behind.";
		now HP of Serenity is 1;
		now Large Cave is unresolved;
	else if HP of Serenity is 1:			[Repeatable encounter]
		say "     Hearing a familiar rattling, you quickly turn around to find the naga hybrid from before. 'Fancy meeting you again,' the female snake greets as she sashays toward you, her heart-shaped necklace swinging along with her body. 'Perhaps it is merely a coincidence that we cross paths again.' Her mouth twists into a devilish smirk. 'Or perhaps you are the one who is unable to resist gazing upon me again. Whatever the reason, I will be glad to have you.' You shiver as the rattle tail sounds its hypnotic rhythm again.";
		say "     [bold type]Do you stay with the naga?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Submit to the naga hybrid.";
		say "     ([link]N[as]n[end link]) - Run away from the snake.";
		if the player consents:			[Serenity hypnotizes player and makes them eat her pussy. She takes one food or water and gets player off with her hands, but players with nothing get nothing]
			say "     [PlainsSerenitySubmit]";
		else:			[Run away from the snake]
			say "     Shrugging off the snake's influence, you flee from the naga before she can bring you into her embrace.";
	else if carried of Lockbox > 0:			[Have lockbox]
		say "     You spot the familiar naga from before, her back toward you as she wanders through the landscape. Looks like you are the one who has the element of surprise this time. With the lockbox from the cave in your possession, you have a feeling that your interactions with the snake will change once you reveal that you have something that very likely belongs to her.";
		say "     [bold type]Should you try to talk to the snake?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get the naga's attention.";
		say "     ([link]N[as]n[end link]) - Don't confront the naga now.";
		if the player consents:
			say "     You call out to the naga, who promptly turns her head in your direction. Even from far away, you can almost see the cocky smirk on her face as she heads toward you. 'Am I so enticing that my prey is starting to come to me?' she asks when you are close enough. When you tell her that you have something that she might be interested in, she chuckles. 'And my prey is even offering me gifts. What a delightful turn of events,' the cheeky reptile teases. Fishing out the lockbox and holding it up, all traces of the naga's arrogance and smugness is replaced with shock. 'Wh-where did you get that?' the surprised hybrid asks softly. You tell her about the cave you explored, as well as your suspicions about how the lockbox belongs to her. 'Yes, it does belong to me,' the scaled-woman says, holding out her necklace to show that it indeed matches the symbol on the lockbox. 'I had lost it quite some time ago. Please, I-' She moves toward you but freezes when you instinctively take a step back.";
			say "     The naga stares at you for a few seconds with fearful eyes, as though you are about to run away. Eventually, she says, 'I... I know that I have wronged you, and you have every right to be suspicious of me, but I promise you that this is not one of my tricks. I figured that someone had taken my lockbox, so I've been going after anyone I encounter in the hopes that I might find it again. And now that it's right in front of me...' She sighs mournfully and looks at you with pleading eyes. 'I'm afraid that I have nothing to trade for it except for my gratitude and a vow to never bother you again. Just...' The naga's voice quivers, and she bows deeply. 'Please, I've been searching for that lockbox for so long, and it is very precious to me. I beg of you, please let me have it.' Despite the hybrid's intimidating form, right now, she looks so vulnerable. It really does seem like that she is genuinely telling you the truth.";
			say "     [bold type]Do you return the naga's lockbox?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Give the naga her stuff back.";
			say "     ([link]N[as]n[end link]) - It's yours now. Finders keepers.";
			if the player consents:			[Serenity is given lockbox, and player can choose to let her leave the game or invite her back to the bunker]
				say "     The naga raises her head when she hears you approach, and a warm, grateful smile spreads across her face when you allow her to take back her coveted treasure. 'Thank you. I suppose I, at the very least, owe you my name. I'm Serenity,' she says, slowly extending a hand, which you shake as you introduce yourself. 'You don't know how much returning this means to me.' The now-friendly snake glances down at the lockbox. 'On second thought, I do need to check if everything is still here, so would you like to see what all the fuss is about?' Accepting the invitation, you watch as Serenity shifts her body, placing the lockbox on her coils, as though they were a makeshift table. She then fiddles with her necklace until the tip of a key pops out of the bottom, which she promptly uses to open the lockbox, revealing a stack of photographs.";
				say "     Serenity carefully flips through the photos while you look at them from the side. Many of them are pictures of a man and a woman, most likely a couple, but some of them include a second, younger woman in the group. Serenity holds up one of the pictures with the trio and points to the younger woman. 'As you might have guessed, that's me,' she informs. 'Well, the me before all of this crazy stuff. The other two are my parents.' As the hybrid continues to look through the pictures, you notice that all of the pictures are dated back by at least a few years, so you ask why there doesn't seem to be any recent photos. Serenity's breath hitches from your question. 'Oh, um, well, that's because... My parents... They're not around anymore...' She stops to take a deep breath. 'I was away on a trip at the time... There was a car accident and...' With a sigh, she puts the photos back into the lockbox and gently closes the lid. 'You can see why this lockbox means so much to me.'";
				say "     Serenity closes her eyes, no doubt recalling memories of her parents, and you stay silent out of respect. After a while, the naga opens up her eyes and stands back up, securely tucking the lockbox under an arm. 'Thank you for giving this back to me[if player is not defaultnamed], [name of player][end if]. I will never forget this.' You ask Serenity what she is going to do now, and she answers, 'Since you returned what I've been looking for, I have no reason to stay in this area. Food and water are not exactly easy to come by out here, which is why I had to resort to [italic type]persuading[roman type] others into giving me their supplies. Hopefully, I'll find someplace safe with plenty of stuff to scavenge so that I can wait for things to calm down.'";
				say "     [bold type]Do you tell Serenity about your bunker?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Invite Serenity to stay with you.";
				say "     ([link]N[as]n[end link]) - Let Serenity go.";
				if the player consents:			[Serenity moves into Grey Abbey]
					say "     Serenity smiles when you tell her about the bunker in The Grey Abbey, pleased that you have a safe place of your own. However, one of her brows rise with intrigue when you invite her to stay with you. 'First you return my prized possession, and now you want to take me to your home?' The naga lets out a mock gasp and smirks. 'One might think that you are trying to seduce me. How scandalous.' The coy snake's smile softens into a genuine one. 'In all seriousness though, that is very generous of you. If you truly will have me, then I will be more than happy to move in with you and keep you company.'";
					now HP of Serenity is 2;
					move Serenity to Grey Abbey 2F;
					move player to Grey Abbey 2F;
				else:			[Serenity leaves the Dry Plains and the game]
					say "     You wish Serenity good luck on her journey, and to your surprise, she leans toward you, planting a gentle kiss on your cheek, followed by a playful lick with her forked tongue. 'And good luck to you too[if player is not defaultnamed], [name of player][end if],' Serenity bids. As you part ways with your naga friend, likely for the last time, you are glad that, despite all of the chaos in the city, you still have the mindset to brighten someone's life.";
					say "[bold type]Your good deed has increased your sanity by 20![roman type][line break]";
					increase humanity of player by 20;
					now HP of Serenity is 100;
			else:			[Serenity ambushes the player, steals the lockbox, and leaves the game]
				say "     'I see...' the naga says, looking up at you stone-faced when you reject her plea. 'I suppose that I should have expected your answer, given our previous interactions.' The snake watches you put the lockbox away, not making a single move. You start walking away, but you only make it a few steps before you are knocked to the ground from behind. Snake coils swiftly wrap around you, and you gasp in pain when they begin to squeeze your trapped body. 'I didn't want to do this, but you left me no choice,' the snake-woman coldly states as she tightens her grip even more. Just as it feels like your bones are about to be reduced to dust, you are dropped onto the ground in a pitiful heap. With you writhing in agony, your attacker takes back her lockbox and leaves without a word. Eventually, you are able to get up and hobble away to recover from your injuries. You doubt that you will be seeing the naga again.";
				decrease HP of player by 30;
				now HP of Serenity is 100;
			decrease carried of Lockbox by 1;
			now Naga Hybrid is resolved;
		else:
			say "     Not knowing how the naga would react, you decide to just slip away unnoticed. You doubt that it will be too much trouble to find her again if you do reconsider showing her the lockbox.";


to say PlainsSerenitySubmit:		[Player hypnotized, gives cunnilingus, and recieves a handjob if they have food or water]
	say "     You are not sure if it is out of your own volition, the naga's glamour, or a combination of both that makes you decide to stay with the serpent. Your head becomes more and more muddled as each shake of the rattle melts away your thoughts. You find yourself unable, or maybe even unwilling, to move when the naga slithers up to you and tilts your head toward her face with a finger. 'What a lovely sight,' she croons, inspecting your enthralled state. 'All that it took was a little of my music to make you my prey, and the best part is...' she smirks deviously, 'we have only just begun.' The naga's finger teasingly brushes across your cheek as she slithers around your left side and returns in front of you from the right, her long body forming a circle around you. Cupping her hands around your head, you watch as the hybrid's hood stretches out until she is all that you can see. 'You are doing so well, my prey. Just keep your eyes on me and listen to my words. In return, I will show you blisssss.'"; 
	say "     The domineering naga hisses out the last word, and combined with a loud shake of her rattle, you shiver as you fall even deeper into her power. Your body goes lax, offering no resistance when the serpent's tail begins twisting around your legs. 'Doesn't it feel nice?' she asks sweetly. 'My coils are so soft and warm. You want me to wrap you up in them, don't you?' You nod immediately, finding only truth in the snake's claim as her coils rise up your body. 'There we go, all nice and snug,' the naga says when only your face is left uncovered by her body. 'If only you could see yourself now. Trapped by a fearsome snake that could easily crush you.' You gasp when her grip tightens, but it only lasts a second before returning to the gentle hug. 'But I am a generous woman. I only want to hold you in a way that no one else can. Aren't I such a kind mistress to you?' You nod in agreement. 'And don't you think that your mistress deserves a little something in return?' Again, you nod. 'I'm glad that you agree...'";
	WaitLineBreak;
	say "     One of the serpent's hands slips down her body and towards a slit. Using her two fingers, she spreads the slit open, revealing her pussy. Shifting her coils, she moves your captive body right up to her cunt, and instructs, 'Do be a dear and repay your mistress.' Knowing what is needed, you begin licking the snake's folds with your tongue. The naga hisses in satisfaction while you eagerly pleasure her, exploring every inch of her crevice, along with the occasional suck on her clit. You know that your mistress is approaching the edge when her moans become louder, and her hold on you tightens. Despite the increasing discomfort, you dutifully continue your task. You plunge your tongue deeply into the naga, hitting her most pleasurable spots, before finishing the snake off with one final suckle on the clit. The coils clench down on you, but fortunately not crushingly so, when the hybrid reaches her climax. Femcum gushes into your face, and you hastily open your mouth wide to drink your mistress's juices.";
	say "     'Mmm, that was simply divine, my prey,' the naga compliments, her grip on you returning to normal while her coils shift to let you see her satisfied face. 'And you look so much better like this. Tell me, did you enjoy pleasing me? Did the sight of me achieving my release excite you?' The hybrid leans in to whisper into your ear, 'Are you perhaps even lusting to have a little relief of your own? I can give you what you desire. With just a few touches, I can give you pleasure beyond your imagination. Does that not sound wonderful to you?' You nod fervently and whimper with need as the snake's seductive words and the smell of her femcum lights a fire in your lower half. 'I thought so,' the naga says with a chuckle. 'However, don't you think it would be fair if we kept things even between us? Perhaps you could let me search your belongings to find a suitable payment for my services.' You vehemently comply to the demand, allowing the snake to divest you of your backpack.";
	WaitLineBreak;
	if carried of food > 1:
		say "     The snake takes a few moments to rifle through your backpack. 'This shall do nicely,' she says, pulling out a can of food and setting it to the side for later. 'Dealing with my prey is hungry work. Be glad that I only require one package from you. Now, to keep up my end of the bargain.' The naga's coils pull you close toward her chest, and they shift to allow her hands to peel away your clothes.";
		say "[PlainsSerenityHand]";
		say "     [bold type]The naga took a can of food from you.[roman type][line break]";
		decrease carried of food by 1;
	else if carried of water bottle > 1:
		say "     The snake takes a few moments to rifle through your backpack. 'This shall do nicely,' she says, pulling out a bottle of water and setting it to the side for later. 'Dealing with my prey is thirsty work. Be glad that I only require one bottle from you. Now, to keep up my end of the bargain.' The naga's coils pull you close toward her chest, and they shift to allow her hands to peel away your clothes.";
		say "[PlainsSerenityHand]";
		say "     [bold type]The naga took a bottle of water from you.[roman type][line break]";
		decrease carried of water bottle by 1;
	else:		[no snu-snu for the poor]
		say "     The snake takes a few moments to rifle through your backpack, and to your horror, she looks up at you with a frown. 'It seems that you have nothing that interests me.' You plead for the naga to help you, but she merely shakes her head and unwinds her coils from you, gently dropping you onto your feet. 'Dealing with my prey is hungry work. I am not running a charity operation here.' You bow your head in disappointment, but the hybrid lifts your gaze back up to her smirking face. 'That just means you know that you should be carrying plenty of supplies for the next time you submit to me. I look forward to you being my prey again.' With that, the captivating reptile slithers off. It takes a few minutes before the naga's hypnosis wears off, but the unquenched fire in your loins remains as you resume your exploration.";
		increase libido of player by 30;


to say PlainsSerenityHand:		[Handjob for player if they had food or water]
	if cocks of player > 0:
		say "     The hybrid gently grabs [if cocks of player > 1]one of your cocks[else]your cock[end if] in her hand and begins pumping up and down, eliciting a moan from you. 'Yes, that's it. My hand is all that I need to bring you to ecstasy,' she croons. 'You will enjoy it so much that you will come find me again and again, just for my simple touch.' You are already leaking pre, slickening the serpent's grip so that her fingers glide across your penis, sending jolts of pleasure through your body. Still trapped in the naga's embrace, you are unable to do anything when you feel your climax draw near, only for it to be denied when the teasing hand stops. The pattern of working you up and then denying your release repeats, and your pleas fall on deaf ears while the snake looks at you with an almost sadistic glee. Finally, after what seems like an eternity, the naga gives you what you want and pumps her hand at a feverish pace. You scream in rapturous delight as your cum spurts out, spraying onto the dirt and parts of the snake's coils.";
		WaitLineBreak;
		say "     Your exhausted body is gently lowered to the ground as the coils unwind from you, and you watch while the snake holds up one of her cum-stained fingers up to her mouth, her long, forked tongue flicking out to lick up some of your fluids. 'Mmm, what a delightful taste my prey has,' the naga remarks before sticking the finger into her mouth, letting you get a clear view of her seductively licking and sucking the appendage. By the time she finishes [italic type]cleaning[roman type] the rest of her hand, you can almost feel a fire growing in your loins again. 'Do be sure to have more gifts for the next time you are ready to submit to me. I look forward to you being my prey again.' With that, the captivating reptile waves goodbye and slithers off. It takes a few minutes before the naga's hypnosis wears off, and after gathering your stuff, you resume your exploration.";
	else if cunts of player > 0:
		say "     The hybrid gently sinks her fingers into [if cunts of player > 1]one of your cunts[else]your cunt[end if] and begins pumping up and down, eliciting a moan from you. 'Yes, that's it. My hand is all that I need to bring you to ecstasy,' she croons. 'You will enjoy it so much that you will come find me again and again, just for my simple touch.' You are already dripping, slickening the serpent's grip so that her fingers glide in and out of your pussy, sending jolts of pleasure through your body. Still trapped in the naga's embrace, you are unable to do anything when you feel your climax draw near, only for it to be denied when the teasing hand stops. The pattern of working you up and then denying your release repeats, and your pleas fall on deaf ears while the snake looks at you with an almost sadistic glee. Finally, after what seems like an eternity, the naga gives you what you want and pumps her hand at a feverish pace. You scream in rapturous delight as your femcum spurts out, spraying onto the dirt and parts of the snake's coils.";
		WaitLineBreak;
		say "     Your exhausted body is gently lowered to the ground as the coils unwind from you, and you watch while the snake holds up one of her femcum-stained fingers up to her mouth, her long, forked tongue flicking out to lick up some of your fluids. 'Mmm, what a delightful taste my prey has,' the naga remarks before sticking the finger into her mouth, letting you get a clear view of her seductively licking and sucking the appendage. By the time she finishes [italic type]cleaning[roman type] the rest of her hand, you can almost feel a fire growing in your loins again. 'Do be sure to have more gifts for the next time you are ready to submit to me. I look forward to you being my prey again.' With that, the captivating reptile waves goodbye and slithers off. It takes a few minutes before the naga's hypnosis wears off, and after gathering your stuff, you resume your exploration.";
	else:
		say "     The naga quirks a brow when she gazes upon your bare nethers, but she takes your absence of equipment in stride as she begins licking her fingers while she moves the both of you so that you are facing away from her. You gasp when the hybrid gently sinks her fingers into your ass and begins pumping them in and out, eliciting a moan from you. 'Yes, that's it. My hand is all that I need to bring you to ecstasy,' she croons. 'You will enjoy it so much that you will come find me again and again, just for my simple touch.' Her thrusts become faster, sending jolts of pleasure through your body. Still trapped in the naga's embrace, you are unable to do anything when you feel yourself reaching the height of euphoria, only for it to taper out when the teasing hand stops. The pattern of working you up and then denying you repeats, and your pleas fall on deaf ears while the snake looks at you with an almost sadistic glee. Finally, after what seems like an eternity, the naga gives you what you want and plunges her hand deep inside of you. You release a scream of rapturous delight as your body shakes and shudders in ecstasy within the confines of the hybrid's coils.";
		WaitLineBreak;
		say "     Your exhausted body is gently lowered to the ground as the coils unwind from you. 'Do be sure to have more gifts for the next time you are ready to submit to me. I look forward to you being my prey again.' With that, the captivating reptile waves goodbye and slithers off. It takes a few minutes before the naga's hypnosis wears off, and after gathering your stuff, you resume your exploration.";


Section 2 - Large Cave


Large Cave is a situation. It is resolved.
The sarea of Large Cave is "Plains".

Instead of resolving Large Cave:
	say "     You come across a large cave that is about two or three stories tall. Small holes on the ceiling allow [if daytimer is day]sunlight to illuminate[else]the moon to dimly light up[end if] the interior. The path is straight for only a short distance before it curves to the left, meaning that you will have to enter the cave to explore its depths. However, you hesitate to proceed inside, and for good reason. The area reeks of sex, and judging by the huge patches of dried cum painting the cave's walls, it seems that this is likely the home of a large beast. Still, there's a decent chance that you might be able to find something of interest inside.";
	say "     [bold type]Should you go inside the cave?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go exploring.";
	say "     ([link]N[as]n[end link]) - Play it safe.";
	if the player consents:			[Exploring the cave]
		say "     You carefully venture into the cave, moving quietly and keeping alert for any surprise attacks. There are no branching paths as you explore the cave, and after a few minutes, you find yourself walking into a large cavern. With even more cum markings all over the place, you believe that you have found the lair of the mysterious beast, who seems to be out at the moment. At first glance, you don't see anything that really catches your eye, but a quick circle of the chamber reveals a camping tent partially hidden behind some rubble. Unfortunately, the tent and any potentially useful items inside of it have been drenched in the beast's cum at some point in time, and you really do not want to sift through the infected mess. At least there’s a backpack to the side that managed to escape unscathed.";
		say "     With no sign of any danger, you search the backpack, finding it packed with shiny objects, trophies, and various trinkets. It seems that the owner of this camp was either a looter or a thief, and they likely had to abandon this backpack when the current occupant moved into the cave. While it is tempting to keep the small fortune worth of stuff, they have little practical use in helping you survive the nanite-infested city and would just add unnecessary weight to lug around. Discarding the valuables, you dig through the rest of the backpack and find useful supplies in the form of some food and water, which you set aside to take later. Near the bottom of the backpack, you find a lockbox that has a picture of a heart with a snake around it on the cover. Staring at the decoration because it looks familiar, it takes a moment for you to recall that the mysterious rattlesnake and cobra hybrid was wearing a necklace with the same symbol. You try to open the container, but unsurprisingly, it looks like you need a key to unlock it.";
		if hermaphrodite is banned:		[Skip behemoth fight]
			say "     Not wanting to stick around in case the cave's occupant comes back, you hastily stuff the lockbox and supplies into your bag and beat a hasty retreat, making it outside without issue. As you resume your exploring, you wonder if the lockbox truly belonged to the naga hybrid, and if it did, maybe you could strike a bargain with her.";
			say "     [bold type]You found 2 cans of food, 2 bottles of water, and a Lockbox[roman type][line break]";
			increase carried of food by 2;
			increase carried of water bottle by 2;
		else:
			say "     Suddenly, you hear thundering footsteps coming from the entrance to the cavern, and you hastily stuff the lockbox into your backpack. Peeking out from behind the rubble, you gasp when a behemoth comes lumbering in. While the monster doesn't notice you at first, it does when you accidentally knock over a rock as you try to sneak out. The behemoth gets up and turns to you with a menacing growl, intent on dealing with your intrusion.";
			challenge "Behemoth";
			if fightoutcome >= 10 and fightoutcome <= 19:			[Won against the behemoth]
				say "     With the behemoth dealt with, you are free to continue your search. You find nothing else of valuable in the camp, so you pack away the supplies that you had almost forgotten when the behemoth interrupted you. Suddenly, the behemoth begins to stir. Not wanting to stick around in case the beast is ready for another round, you hastily stuff the lockbox and supplies into your bag and beat a hasty retreat, making it outside without issue. As you resume your exploring, you wonder if the lockbox truly belongs to the naga hybrid, and if it did, maybe you could strike a bargain with her.";
				say "     [bold type]You found 2 cans of food, 2 bottles of water, and a Lockbox[roman type][line break]";
				increase carried of food by 2;
				increase carried of water bottle by 2;
			if fightoutcome >= 20 and fightoutcome <= 29:			[Lost to behemoth]
				say "     Covered in behemoth fluids and recovering from your loss, you remember the food and water still laying on the cave floor, forgotten during your tussle with the beast. At least you had managed to safely stow the lockbox before you were taken away. As you resume your exploring, you wonder if the lockbox truly belongs to the naga hybrid, and if it did, maybe you could strike a bargain with her.";
				say "     [bold type]You found a Lockbox[roman type][line break]";
			if fightoutcome >= 30:			[Fled from behemoth]
				say "     Managing to get away from the behemoth, you exit the cave, relieved to see that the beast did not care to chase after you. However, you then remember the food and water still laying on the cave floor, forgotten during your tussle with the behemoth. While you are disappointed that you lost some valuable supplies, at least you had managed to safely stow the lockbox before you fled. As you resume your exploring, you wonder if the lockbox truly belongs to the naga hybrid, and if it did, maybe you could strike a bargain with her.";
				say "     [bold type]You found a Lockbox[roman type][line break]";
		increase carried of Lockbox by 1;
		now Large Cave is resolved;
		now HP of Serenity is 2;
	else:			[Did not go into the cave]
		say "     Erring on the side of caution, you turn away from the cave. Maybe you can try your luck when you are better prepared.";


Section 3 - Lockbox

Table of Game Objects (continued)
name	desc	weight	object
"Lockbox"	"     It's a simple lockbox, and on its cover is a picture of a silver heart with a snake coiled around it. You don't have the key to unlock it."	5	Lockbox

Lockbox is a grab object. it is part of the player. It is not temporary.

instead of using Lockbox:
	say "     You try and pry the lockbox open, but it refuses to open.";


Section 4 - Serenity in the Grey Abbey Library

The description of Serenity is "[Serenitydesc]".
The conversation of Serenity is { "Snek Stuff" }.
The scent of the Serenity is "Serenity smells faintly of the dry sand and vegetation from where you had first met her, mixed with a subtle, alluring musk. The naga eyes you with amusement while you smell her and comments, 'I see that you can't get enough of me.";

to say Serenitydesc:
	say "     Serenity occupies a spot right in front of a large window, probably because her snake form enjoys basking in the sun. She is lounging atop of an assortment of pillows and cushions while she reads a book from the downstairs library, the silver necklace of a snake wrapped around a heart hanging from her neck. Her winding body is able to wrap up any but the largest people that dare to cross her path, but right now, it is curled behind her, forming a makeshift pillow for her head. She is covered in mostly sandy-brown scales with the occasional black or white ones, and on the insides of her hood, you can see a big, black spot on either side of her head with rings of brown and white around them, almost looking like a second pair of eyes. The end of her tail lays to the side, occasionally flicking and sounding the entrancing rattle that you have become acquainted with. You notice when Serenity's gaze shifts to you, and one of her hands slides down her body to a slit, which she briefly opens to show a teasing peek at her cunt.";

Instead of conversing the Serenity:
	if HP of Serenity < 3:		[First talk in abbey]
		say "     Serenity smiles at your approach, and she puts her book away as she sits up. 'I must thank you again for taking me in[if player is not defaultnamed], [name of player][end if]. This place is wonderful, and I already feel safer than I have been since this whole mess started. I still find it a bit hard to believe how you managed to do so much for me in such little time, especially given my... first impression. Please understand that I had to deal with many unsavory or dangerous types while I was out there, looking for my lockbox. I am grateful that you looked past that and reached out to me, and I apologize for my initial hostility. I will do my best to make my stay here worthwhile for you.'";
		say "     A mischievous glint gleams in the snake's eyes as she dons her familiar cocky smirk. 'And now that we have dispensed with the pleasantries, let's talk about the [italic type]services[roman type] that I can provide you. If it wasn't obvious enough, I specialize in hypnosis.' Serenity emphasizes her point with a shake of her rattletail. 'Used correctly, I can make our time together very enjoyable. And before you ask, no, I will not be using it to turn you into a slave for my pleasure. Well, at least not permanently. You can also be sure that I will make good use of my...' The naga pauses to run her hand along a segment of her serpentine form, 'bodily features. To put it simply, I will bring you pleasure by having you surrender your body and mind to me.' Serenity's domineering smirk softens into a gentle smile. 'That being said, I understand that my preferences might not be appealing to you, perhaps even frightening, but do try and give it a shot. I promise that I will take the utmost care with you.'";
		now HP of Serenity is 3;
	else:
		say "Serenity smiles at your approach, and she puts her book away as she sits up. 'Hello there[if player is not defaultnamed], [name of player][end if]. Is there something you would like to talk about?'";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Her hybrid form";
		now sortorder entry is 1;
		now description entry is "Ask Serenity how she ended up like this";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Her hypnosis";
		now sortorder entry is 2;
		now description entry is "Ask Serenity how she learned hypnosis";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Nevermind[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Her hybrid form":
						say "[SerenityTalk1]";
					if nam is "Her hypnosis":
						say "[SerenityTalk2]";
					wait for any key;
			else if calcnumber is 100:
				say "Break off the conversation?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the naga, shaking your head slightly. Serenity shrugs and returns to reading her book.";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say SerenityTalk1: [Ask how she became a naga hybrid]
	say "     'I've been fascinated by snakes since I was a child, so it's not a surprise that I became an ophiologist, aka, a snake biologist,' Serenity explains. 'When all of the weird stuff began happening, I was studying rattlesnakes not far from where you found me, which easily explains how I became like this.' When you ask why she also has a hood like a cobra snake, she answers, 'My rattlesnake study was actually a part of a series of trips to observe snakes from different regions. Before I came to this city, I was in India, looking at king cobras, and along with having bunch of their samples on me when the changes began to happen, it was enough to turn me into the lovely piece of work you see before you. In addition, I'm also guessing that being a hybrid of two snake species is the reason for my increased stature. As you might suspect, living with this form has been both educational and thrilling for me.'";

to say SerenityTalk2: [Ask where she learned hypnosis]
	say "     'Interested in my hypnotic abilities, hmm? Perhaps you would like a first hand demonstration?' Serenity asks with a chuckle. 'I'm kidding. I suppose I should first tell you that I've had an interest in hypnosis for quite a long time, but it wasn't until college that I really started getting into it. I met several others who were interested in hypnosis, and we ended up making a sort of unofficial club to help deal with the stresses of college. We experimented with all sorts of techniques, and even though the best we could do was a mild trance, we still had a bunch of fun. We went our separate ways after graduation, and I was too busy to try pursuing more hypnosis stuff. That is, until I turned into this form. It was by accident when I found out that my new rattletail is a splendid attention grabber, not to mention having quite the sexy body. Combined with the stuff I learned in that little club of ours, and, well, you saw what I was doing with it when we first met.'";

instead of fucking the Serenity:
	if HP of Serenity < 3:		[Try to have snek sex before talking to her]
		say "     Serenity stares at you with an amused grin when you propose to have some sex with her. With a playful roll of her eyes, she says, 'I am aware of how unresistable I am to you, but perhaps you could hold your libido in check for a few minutes so that we can talk about my new living arrangement with you.'";
	else if (lastfuck of Serenity - turns < 6): [Had sex in the last 18 hours = 6 turns]
		say "     'As tempting as it is to play with you again, bending you to my whim is tiring work,' Serenity says. 'Let me rest a bit more, and I suggest that you do the same. You're going to need it.'";
	else:
		say "     Serenity's eyes light up with glee when you tell her that you want to play. 'Excellent, I knew that you couldn't stay away from me, and I promise that I'll take good care of you.' A coil wraps around one of your legs and playfully tugs you in the direction of the naga while her enchanting tail rattles softly.";
		say "[SerenitySexMenu]";

to say SerenitySexMenu:
	LineBreak;
	say "     What will you do with Serenity?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Penetrate Serenity's pussy";
		now sortorder entry is 1;
		now description entry is "Serenity takes your cock into her cunt";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give cunnilingus";
	now sortorder entry is 2;
	now description entry is "Serenity has you service her cunt";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
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
				setmonster "Naga Hybrid";
				if nam is "Penetrate Serenity's pussy":
					say "[SerenitySex1]";
				if nam is "Give cunnilingus":
					say "[SerenitySex2]";
				now lastfuck of Serenity is turns;
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     Serenity lets out a disappointed sigh when you change your mind, and after a few pulls, you free your leg out of her coil and step back.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SerenitySex1:		[Serenity takes your cock into her cunt]
	say "     [SerenitySexIntro]";
	say "     A devious smirk spread across Serenity's face when she feels something prodding one of her lower coils. More specifically, the coil over your groin area. 'How naughty. Does being trapped by a snake excite you that much?' She moves her sinuous body so that your lower half is brought out, revealing your rock-hard [if cocks of player > 1]shafts[else]shaft[end if]. The shiver from your body being suddenly exposed is noticed as Serenity says, 'Aww, is a part of you cold? I know the perfect place to warm it right back up.' The smirking serpent maneuvers you onto your back, cushioned by both her coils and the pillows underneath it, while she looms over you, spreading her slit with one hand to reveal her inviting pussy. Keeping you immobilized, the naga brushes her folds along the tip of your [if cocks of player > 1]biggest cock[else]cock[end if], the tingling sensations making you squirm with need.";
	say "     'You are mere moments away from entering my warm, inviting depths,' Serenity says, continuing to tease your needy [cock of player] rod. 'You can already imagine how my inner walls will caress you, surrounding your happy little member and milking it until you give me every last drop of your delicious cum.' Enticed by her words, you try to buck your hips up to penetrate your captor, but her hold keeps you in check. 'Eager, aren't we? Just remember, the ultimate reward of this coupling is [italic type]my[roman type] pleasure, and you will not be satisfied until I am.' The reptilian temptress grins at your fervent agreement, and she then slowly lowers herself, hissing in satisfaction at the same time you moan loudly when she takes in your [if cocks of player > 1]biggest cock[else]cock[end if]. 'Doesn't that feel marvelous?' Serenity asks huskily while she steadily rocks her hips, the walls of her pussy rubbing your stiff shaft.";
	WaitLineBreak;
	say "     The snake's sensual movements knead and massage your [cock of player] cock, attacking every inch of it from every angle. Her snatch hugs your dick tighter than the coils around your body, the velvet-like walls dragging across your rod, and you almost black out from the wave of pleasure that floods your mind. 'S-such a wonderful look, the look of true happiness,' Serenity comments, her composure faltering from her own derived enjoyment. Despite reaching the verge of climax, your desire to please your scaly lover takes precedence, and you find yourself bucking your body up in time with her thrusts, driving your cock further into the snake, your efforts rewarding you with a gasp of pleasure from the naga. Pushed over her own edge, Serenity promptly throws her poised demeanor aside and grabs the back of your head with her hands, mashing her lips against yours. Her forked tongue slips into your mouth, the prehensile limb exploring every inch before it intertwines with your tongue, making yet another part of you submit to her.";
	say "     Wrapped in a passionate kiss with each other, the two of you continue to pound your hips together, sinking your cock deeper and deeper into the naga's pussy. You don't last much longer before you both reach your respective climaxes. Serenity's hold on you tightens, both her coils and her vagina, as your cock explodes with pleasure, painting her insides with your [cum load size of player] cum. You continue to kiss the naga as her inner walls squeeze your twitching dick in an attempt to draw out every last drop of your essence. Finally, the both of you come down from your highs, and Serenity draws back her head, a serene smile upon her face despite her heavy panting. 'That was simply divine,' she remarks, gently caressing your cheek with her hand. 'And now, it is time for you to rest. Sleep now, my dear[if player is not defaultnamed] [name of player][end if], and when you wake, you will be back to your wonderful self.' Following the suggestion, both out of your own need and because it was Serenity's command, you close your eyes and drift off to sleep.";
	say "     [SerenitySexOutro]";

to say SerenitySex2:		[Serenity has you service her cunt]
	say "     [SerenitySexIntro]";
	say "     Serenity maneuvers you downwards until you are inches away from her slit. With one hand, she spreads her slit open, revealing the pink abyss that is her pussy. A wave of her musk hits you, urging you to dive right on in and taste the tantalizing cunt. 'A marvelous sight, isn't it?' the naga says, watching how you can't take your eyes off of her glorious folds. 'I know that you want to worship it, and you will, in a moment. For now, I just want you to take a deep breath.' You do as you're instructed, and you end up getting another lungful of the heady snake musk. 'Yes, that's it,' Serenity croons. 'Take in my scent. Let it wash over you, enter you. Revel in it so that you learn to adore it because I assure you, it will become very familiar to you as we spend our time together.' Basking in the naga's essence, your hypnosis-induced mind is clouded even further, making you lust for only one thing. Seeing your need, Serenity leans back and waves a hand over her cunt. 'Now, you are ready.'";
	say "     The coils around your body loosen slightly, allowing you to rush forward and plant your face into the snake's canal. The wonderful musk only grows stronger with proximity, igniting your own arousal to maddening levels, but your lust is trumped by the desire to drag your tongue across every inch of the seductive snake's snatch to both pleasure the naga and for you to drink in the succulent juices. 'Feel my embrace. Explore every inch of me. Savor my taste on your tongue. Relish in the pleasure that you're giving me,' Serenity intones, her voice clearly echoing in your mind despite your noisy slurps. 'You adore the attention I lavish upon you, and you adore tending to me. My needs are great, and you are the only one who can satisfy them. ' Spurred by the seductive words, you drive your face deeper into the warm folds, intent on finding the naga's most sensitive spots. Even when you pull back for your air, your ceaseless ministrations flick and tease her clit before you dive right back in.";
	WaitLineBreak;
	say "     'You are doing a splendid job,' your serpentine lover coos as she pets your head, the loving gesture only increasing your drive to tend to the sexy reptile. 'Your devotion is admirable, but there's no need for you to neglect yourself. Your commitment to me has left you needing your own release. Feel free to tend to yourself, if you think that you can continue your duty to me.' Serenity slides the coil that is over your crotch away, revealing your [if cocks of player > 0]rock-hard cock[else if cunts of player > 0]own cunt dripping with arousal[else]body quivering with need[end if]. Given permission, you reach a hand down to your [if cocks of player > 0]rod[else if cunts of player > 0]pussy[else]rear[end if]. Your heightened arousal makes your self-service drive you wild, which you channel into worshipping the pussy of the serpent. Between your hand and the satisfaction of pleasing the one who brought you to this state, your body floods with euphoria, and you strive to push the both of you over the edge.";
	say "     Eventually, your loving licks interspersed with sucking on the naga's clit brings Serenity to orgasm, her musky honey splashing onto your face as she hisses in satisfaction. The intoxicating aroma from the snake femcum is overwhelming, and you reach your climax as well, your [if cocks of player > 0]cock spurting out cum onto the serpent's scales[else if cunts of player > 0]own femcum spurting onto the serpent's scales[else]body spasming from the pleasure[end if]. With your ministrations coming to a halt, you are slowly dragged away from the captivating cunt and raised towards Serenity's face, who then playfully flicks her tongue over your face. 'That was simply divine,' she remarks, gently licking away her juices off of you. 'And now, it is time for you to rest. Sleep now, my dear[if player is not defaultnamed] [name of player][end if], and when you wake, you will be back to your wonderful self.' Following the suggestion, both out of your own need and because it was Serenity's command, you close your eyes and drift off to sleep.";
	say "     [SerenitySexOutro]";

to say SerenitySexIntro:		[Intros before sex scene]
	say "     'Off with your clothes then. You won't be needing them, as I will be the one who will keep you warm,' Serenity instructs eagerly. Shedding your clothes, you barely have time to put them aside before she pulls you closer with her tail as her coils start circling both of your legs. You gasp at the feeling of the soft, scaly flesh sliding across your body as more and more of you is covered by the naga until the coils rest at your neck, her rattle tail resting right beside your head. 'You look lovely, [if player is not defaultnamed][name of player][else]dear[end if]. All wrapped up like a gift for me,' Serenity teases, her head drawing close to you. 'I'm going to have so much fun playing with you, and all you have to do is [italic type]relax[roman type].' The sexy serpent hisses the last word into your ear at the same time her tail rattles into the other, and the two-pronged attack on your hearing leaves your mind open to the snake.";
	say "     'It's just you and me now,' Serenity says, her voice and rattling seeming to come from all directions. 'Be a [if cocks of player > 0]good boy[else if cunts of player > 0]good girl[else]dear[end if] and pay close attention to my voice, alright?' You nod without hesitation, prompting the entrancing snake to continue. 'Now, take a deep breath. Forget your responsibilities. Forget your worries. Forget your fears. Empty your mind of everything except my guiding words and our desire for each other. I only want to care for you, to give you pleasure beyond imagination, and all that I ask is for you to obey my commands. Submit yourself to me, and I will show you blisssss.' Again, Serenity hisses into your ear along with a powerful shake of her tail, ingraining her will into your malleable mind, and the world fades away as you sink into the naga's embrace, both literally and figuratively.";
	WaitLineBreak;

to say SerenitySexOutro:		[Outros after sex scene]
	WaitLineBreak;
	say "     When you come to, you find yourself in a dark place, and when you try to shift around, you're unable to move anything but your head. As your eyes start to adjust, you notice tiny shafts of light coming into the chamber through small cracks and slits all around you. That's when you see that Serenity has fully wrapped you up from head to toe, completely encasing you, but that soon ends when the topmost coils unravel, revealing a smirking naga right in front of you. 'I see that somebody has finally decided to wake up. I suppose that you want me to let you go now, but I'm not sure that I want to. You feel so good in my coils. But alas...' Serenity gives you a playful squeeze before she lets the rest of you go, albeit reluctantly. As you are about to move away, Serenity gives you a kiss on the cheek, one born of love and care, rather than lust. 'I hope that you enjoyed our time together. Come back when you want to play with me again.'";


Section 5 - Infection

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Naga Hybrid";
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 28;
	now dex entry is 14;
	now sta entry is 24;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 250;                [ How many HP has the monster got? ]
	now lev entry is 20;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 30;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now cocks entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 14;
	now cock width entry is 8;         [ Size of balls ]
	now breasts entry is 2;            [ Number of nipples. ]
	now breast size entry is 0;        [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 95;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, ]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "caprine";
	now type entry is "demon";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Serenity ends here.