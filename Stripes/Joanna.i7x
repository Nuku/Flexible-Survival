Version 5 of Joanna by Stripes begins here.
[Version 4 - Pre-plant Joanna content]
[Version 5 - Spreading Flowers event added - Gherod]

"Adds a Kinkajou-Plant NPC named Joanna to the Flexible Survival game"

[
[ HP of Joanna      ]
[ 0 = never met     ]
[ 1 = saved         ] = joannatalk = 0   //  joannaharoldtalk is 1   //  lust of joanna is 0
[ 2 = had oral/handjob            ] = 2+ joannatalk = 1  //  lust of joanna is 0
[ 3 = had sex                     ] lust = 0
[ 4 = more sex                    ] lust = 0
[ 5 = more sex                    ]
[ 6 = refused her seed on initial offer ] = joannaoffernum = 1  //  lust of joanna is 3+
[ 7 = accepted her seed ] = lust of joanna is 3+
[ 8 = studying documents for her quest ]
[ 9 = being herself between stages]
[10 = synthesizing materials]
[11 = waiting for news from Medea]
[12 = quest resolved]

[ 90 = helped w/dogs          ] Dog Chase resolved, joannadogsaved is true, Palomino is known
[ 91 = asked Harold about her ]
[ 92 = chat w/Joanna          ]


[ lust of Joanna     ]
[ 0 = no plant exam  ]
[ 1 = had plant exam ]
[ 2 = drank Joanna's juice - transition ]
[ 3 = drank Joanna's juice ]
]

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Overrun Garden	"Overrun Garden"

Overrun Garden is a situation.
ResolveFunction of Overrun Garden is "[ResolveEvent Overrun Garden]". The level of Overrun Garden is 10.
Sarea of Overrun Garden is "High".
when play begins:
	add Overrun Garden to badspots of HermList;
	add Overrun Garden to BadSpots of FemaleList;

to say ResolveEvent Overrun Garden:
	if HP of Joanna is 0:
		say "     In a courtyard between a cluster of office buildings, you spot a small garden park. It seems the plant-life has overrun the garden, with oversized flowers and numerous vines. You are about the head that way to give it a closer look when you spot some motion at the edge of the park. Stepping into the park from between two buildings comes a slender, female creature. She has short brown fur, long brown hair and a very long tail. At first you think her perhaps some kind of monkey, but change your mind as you watch her further. After struggling to recall the animal's name, it comes to you. A kinkajou, a South American creature that feeds on honey and nectar. Sounds safe enough. And she still has some clothes on, so she could even be a survivor, though it's hard to tell at the moment.";
	else:
		say "     In a courtyard between a cluster of office buildings, you spot a small garden park. It seems the plant-life has overrun the garden, with oversized flowers and numerous vines. You are about the head that way to give it a closer look when you spot some motion at the edge of the park. Stepping into the park from between two buildings comes a slender, female creature. She has short brown fur, long brown hair and a very long tail. You recognize her to be Joanna, the girl from the club.";
	WaitLineBreak;
	say "     You spot some motion in the branches near her as she starts climbing up to get at the flowers for their nectar. Realizing too late that it is the branches themselves which moved, you call out to her in warning. Vines lash out and grab the kinkajou woman, coiling around her and restraining her with ease[if plantdefeat > 0]. This plant creature seems related to the one that put its seed in you, but much larger and stronger. The seed in your belly starts to stir as well so you'd best be careful[else]. This plant creature seems quite extensive and very strong[end if]. Its tendrils grab at her clothes and pull them apart as if they were paper.";
	WaitLineBreak;
	say "     [if HP of Joanna >= 90]Joanna[else]The kinkajou[end if] is held spread-eagle, restrained by the powerful plant and several bulbous fruits shaped like cocks are moved into position. As she screams, one is pushed into her muzzle, stifling the cries which soon turn into moans. Another pair of tentacles move to her hips, one spreading her pussy open and the other driving into her ass. As you watch, the tentacles pump into her restrained body, which not can't help but writhe in pleasure from whatever fluids it's pumping into her.";
	WaitLineBreak;
	say "     Beyond just arousing her, the fluids start to transform her, turning her fur green and her darker face to a bright red like the plant's flowers. The powerful plant and the large volumes of corrupting fluids work to change her quickly, altering her further. As a second and third pussy form between her legs, they are quickly filled with the tentacles as well, adding to her sounds of pleasure. As her three pussies are being filled, a large cock forms, which then splits and grows out into four spurting tentacle cocks with a pair swollen bulbs for balls beneath. More tendrils, as if knowing this change has been induced, move in and engulf them in sucking crimson flowers.";
	WaitLineBreak;
	say "     You find yourself growing aroused by the strange assault you're witnessing, too fascinated to consider trying to stop it. That is, until you see the tentacles pulling [if HP of Joanna >= 90]Joanna[else]her[end if] towards a large, vaginal flower. The flower is more than large enough to engulf her entirely, and by the way the little tendrils inside it are waving around in anticipation, that's clearly what is planned. Too lost in the lustful pleasures of the plant's assault on her changing body and numerous genitalia, the transforming woman is unaware of the peril she is being drawn towards. If you're going to do anything to help her, it must be now before she's engulfed in the flower.";
	say "     [bold type]Shall you charge to her rescue or wait to watch how it ends?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Charge to the rescue.";
	say "     ([link]N[as]n[end link]) - Wait to watch how it ends.";
	if Player consents:
		LineBreak;
		say "     Wanting to save [if HP of Joanna >= 90]Joanna[else]the poor woman[end if], you charge in with a scream, hoping to pull her free of the tentacles before it's too late. Noticing your charge, she takes in her situation and starts trying to struggle, but can do little. As you begin pulling vines from her, she's able to resist more and manages to pull out the cock-shaped fruits from her pussies with a loud orgasm each time. Angered by your interference with its prey, plant tentacles move in to strike you[if plantdefeat > 0] even as your own seed stirs anew[end if].";
		LineBreak;
		now inasituation is true;
		setmonster "Parasitic Plant";
		choose row MonsterID from the Table of Random Critters;
		let debit be 0;
		if HardMode is true and level of Player > 10, let debit be level of Player - 10;
		now dex entry is 16 + ( debit / 5 );
		now HP entry is 100 + ( debit * 6 );
		now monsterHP is 100 + ( debit * 6 );
		now lev entry is 10 + debit;
		now wdam entry is 9 + ( ( 2 * debit ) / 5 );
		if plantdefeat is 0: [encounter yet to fight it]
			say "     This odd vegetation has spread its vines and tentacles across the garden and is hanging its phallic fruit and flowers from the large tree as temptation for its victims. It is quite large, making you wonder how this horrifying plant grew so large. You try to push your way past the vines to get at the cluster at its base, but one of the large vines manages to grab you and hold you briefly. Another one bursts from the soft soil and strikes, forcing itself into your [if Player is female]cunt[else]ass[end if]! You grab at it and pull, only to find the cock-like tip swelling inside you like a knot. It is soon large enough that you can't dislodge it without a fight, or a good running start might let you break the vine if you try to flee. You are quite certain you'll share the girl's fate should you lose, fed to and transformed by this giant plant.";
		else:	[already seeded by another]
			say "     This odd vegetation has spread its vines and tentacles across the garden as is hanging its phallic fruit and flowers from the large tree as temptation to its victims. It is much larger than the others you've seen and faced in the past for some reason. You try to push your way past the vines to get at the cluster at its base when you suddenly feel another twist in your belly and the seed in your [if Player is female]womb[else]gut[end if] pushes out a root of its own, burrowing into the soil as it responds to the larger plant. It squirms inside you, fighting to pull you down even as you fight the tentacles, severely hampering you in this fight. You will have a hard fight ahead of you if you don't pull out the vine and make a run for it. You are quite certain you'll share the girl's fate should you lose, fed to and transformed by this giant plant.";
			now HP of Player is ( 3 * ( HP of Player + 1 ) ) / 4;
		challenge "Parasitic Plant";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     As your struggles cease, the vines truss you up tightly. Captured, you have become a second victim for this giant plant monster.";
			say "[losejoannafight]";
			now Resolution of Overrun Garden is 2; [lost]
		else if fightoutcome >= 30: [fled]
			say "     Having had enough, you manage to pull free of the plant, breaking the vine and escaping, leaving [if HP of Joanna >= 90]Joanna[else]the girl[end if] screaming as she's pulled into the large flower. She struggles for a time, but the plant subdues her and encloses her in the rather vaginal flower. You are quite certain there'll be nothing left of her but another of these parasitic plants to set root nearby. Well, at least you tried to help.";
			now HP of Joanna is 0;
			now Resolution of Overrun Garden is 3; [fled]
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Fighting off the plant's vines, you are able to break off the one buried deep inside you, allowing you to press onwards.";
			say "     Your struggle with the plant is quite difficult, but you persist, tearing roots and smashing flowers as you struggle to get reach the main body of the plant. During your fight, [if HP of Joanna >= 90]Joanna[else]the kinkajou[end if] is able to break free because you've destroyed enough of the vines and she makes a break for it. For a moment, you think she's left you all alone, but you hear a small engine choking to start. Looking away from the large, torn bags of fertilizer at the plant's base as you make it there, you spot her coming out of a small gardening shed wielding a gas powered hedge trimmer with a wild look in her eyes. You tackle the vines, holding them taut as she slashes through them, splattering their green juices out. She slashes at the plant's base, slowly cutting through it as you keep the last of the vines off her until it's sawed clean through and you both collapse, panting for breath after your life or death fight.";
			WaitLineBreak;
			move Joanna to Flower Garden;
			move player to Flower Garden;
			AddNavPoint Flower Garden;
			say "     After a short rest, [if HP of Joanna >= 90]Joanna[else]she[end if] rolls over beside you and hugs you tightly, then kisses you softly on the cheek. 'Oh, thanks for coming to save me. I... that plant... plant?' she starts upright, noticing her changes. The plant's assault on her has left her partially a plant, with green fur over her body and her feet growing tendrils and roots. Her large eyes, like her face and the flowers blossoming in her hair, are a vibrant red, beautifully contrasting with her verdant fur. There is a little green around her eyes, much like eye shadow. Her groin, as you saw earlier, has quite dramatically changed, now having a quartet of long cock tendrils with a swollen pair of bulbs for balls. Beneath those, she has a trio of slick pussies shaped like lovely orchids[if daytimer is day]. She stretches her arms wide and sighs in pleasure, taking in the sunlight, turning slowly as her roots automatically dig into the soft soil and have to be pulled out with each step[end if].";
			WaitLineBreak;
			say "     'And I was just getting used to being a kinkajou,' she says with a soft giggle, walking slowly around the garden, smelling the large flowers and diving her tongue into them to enjoy their nectar. 'Mmm... this looks like a lovely garden. The perfect place for a lovely flower like me, don't you think?' she asks with a grin. '[if HP of Joanna >= 90]Be sure to tell Harold and the others at the Palomino that I'm okay[else]My name is Joanna[end if]. You're welcome to visit here again whenever you like, my brave hero,' she adds, running a green finger slowly down your chest and smiling as she sensually runs her foot-long tongue across your neck.";
			now HP of Joanna is 1;
			now lust of Joanna is 0;
			now Resolution of Overrun Garden is 1; [helped and won]
	else:
		LineBreak;
		say "     Deciding not to risk it, you are drawn to continue watching. As she's pulled closer, you watch [if HP of Joanna >= 90]Joanna[else]her[end if] arch her back in climax as the plant creature cums inside her, pumping her full of fluids from all directions. Her belly swells up as more of the sticky white sap is sprayed onto her body while her freshly made balls drain their cum to feed the hungry flowers milking at her new cocks. As she's lowered into the flower, she only starts to realize what's happening as the large tentacles withdraw, but by then, the smaller tendrils are all around her, holding her bloated body inside the flower as it starts closing around her. She tries to hold the petals open, but her strength wanes quickly and soon she's tightly enclosed. There is a brief struggle, then the big flower is still and the tentacles, fruits and flowers move back into their positions, waiting to lure in their next victim. You are quite certain there'll be nothing left of [if HP of Joanna >= 90]Joanna[else]the girl[end if] but another of these parasitic plants to set root nearby. You move on, ";
		if Player is kinky:
			say "your kinky urges pleased and greatly aroused by the scene you just witnessed.";
			increase morale of Player by 3;
			increase Libido of Player by 25;
			if HP of Joanna >= 90, SanLoss 10;
		else:
			say "strangely disturbed and yet aroused by the scene you just witnessed.";
			increase Libido of Player by 10;
			if HP of Joanna >= 90, SanLoss 10;
		if Libido of Player > 100, now Libido of Player is 100;
		now HP of Joanna is 0; [resets Joanna]
		now Resolution of Overrun Garden is 99; [watched]
	now inasituation is false;
	now joannaharoldtalk is 1;
	now Overrun Garden is resolved;

to say losejoannafight:
	say "     Held by the steely vines, you can feel them probing at your body. When the vine in your [if Player is female]cunt[else]ass[end if] throbs painfully large, you cry out in a mix of pain and pleasure. Your open mouth is quickly filled by one of the bulbous fruits and sticky sap flows into your mouth[if Player is not female]. Another finds its way into your ass, spreading you open wide[end if]. It is sticky and sweet and makes you more passive[if Cunt Count of Player > 1]. Having more cunts to fill, more vines and bulbous fruits push into you, making you moan in delight[end if]. All your available holes are filled with pumping, thrusting, leaking tendrils that stuff you over and over again. They start pulling you towards one of the large, vaginal flowers. The slender, white tendrils rise up and start waving around, as if in anticipation, but you no longer care about what's coming, too lost in the drugged pleasure as your belly[if Player is female] and womb[end if] swells with the plant's sweet sap.";
	say "     Some motion beside you draws your eyes to the transforming kinkajou woman as the flower is closing around her swollen body. She still tries to struggle a little, foolishly pushing against the closing petals. Why would anyone want to stop this? It just feels so wonderful. Released into the flower, the white tendrils wrap around you and slide all over your body. These are lovely caresses as you start to drift off to sleep while the plant's nectar flows over you and more tendrils slip into your body from every orifice, bonding with you. You cum repeatedly through this experience, even as you're passing out.";
	[puts Parasitic Plant as lead monster for infection]
	setmonster "Parasitic Plant" silently;
	turn the Player into a "Parasitic Plant" silently; [NOTE: Avoid attributeinfect output in a game over (@Stadler#3007)]
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
		follow the sex change rule;
	now humanity of Player is 0;
	now Libido of Player is 100;
	now thirst of Player is 0;
	now hunger of Player is 0;
	trigger ending "You got Planted";
	end the story saying "You were consumed by the giant parasitic plant.";
	now battleground is "void"; [blocks a post-event fight]
	wait for any key;
	follow the turnpass rule;
	stop the action;

Section 2 - Infection Spread Questline

[Player helps Joanna fulfill her wish after accepting her seed, to find a way to spread her strain around and over to the other side of the borders.]
[Her HP must be 7 in order for this to trigger.]

Table of GameEventIDs (continued)
Object	Name
Spreading Flowers	"Spreading Flowers"

Spreading Flowers is a situation.
ResolveFunction of Spreading Flowers is "".
Sarea of Spreading Flowers is "Nowhere".

JoannaSFTimer is a number that varies. [@Tag:NotSaved]
JoannaSFTimer is usually 20000.

instead of navigating Flower Garden while (HP of Joanna is 7 and resolution of Spreading Flowers is 0): [first time]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     As you approach Joanna this time, she seems deeply in thought, staring at the void and mumbling to herself. Your kinkajou friend doesn't even see or hear you enter, which would make one wonder what's taking her mind so thoroughly. There's worry in her expression, but at the same time, she seems intrigued about something. You suppose you could either inquire her about it, or leave her to her own thoughts and come back later, to proceed with whatever you had in mind with her.";
	SFquestion1;

instead of navigating Flower Garden while (HP of Joanna is 7 and resolution of Spreading Flowers is 1 and a random chance of 1 in 5 succeeds): [second time onwards while player doesn't accept or refuse the quest]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     As you approach Joanna this time, she seems deeply in thought, like the other time, staring at the void and mumbling to herself. Your kinkajou friend doesn't even see or hear you enter, which would make one wonder what's taking her mind so thoroughly. There's worry in her expression, but at the same time, she seems intrigued about something. You suppose you could either inquire her about it, or leave her to her own thoughts and come back later, to proceed with whatever you had in mind with her.";
	SFquestion1;

to SFquestion1:
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Ask her about it.";
	say "     ([link]N[as]n[end link]) - Leave and return later."; [postpone it]
	if Player consents:
		LineBreak;
		say "     You make your presence obvious as you continue to walk towards her, which she notices soon enough. Slightly startled, she greets you with a nervous smile. 'Oh, sweetie! You're there! Didn't hear you coming in...' there is hesitation in her voice for brief moments, but eventually, she ends up turning completely towards you and explain what's going on. 'You know... I've been thinking about something.' she informs you, and you already knew as much, then makes another pause before continuing 'Well, firstly... What do you think of this? I'm talking about my plant features, and those I have offered to you... Do you truly enjoy them?' Her question seems like an indirect way of starting some other subject, but you're given your time to respond with your most sincere input on the matter. She might not feel inclined to continue if your answer is negative, so beware of what you tell her...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Of course you love them! They're the best thing ever!";
		say "     ([link]N[as]n[end link]) - Give her your take on it, but use soft words.";
		if player consents:
			LineBreak;
			say "     Eagerly, you let her know how much you adore her plant-like features and how fun they are to play with, besides how beautiful they look on her, which fills Joanna's eyes with joy. 'You really think so?! I was so worried you wouldn't appreciate them the way I do...! Eventually... Oh, sweetie, I'm so glad you like them!' she tells you, her plant stems moving around excitedly, though it looks like she's going to follow up on your response with something else in her mind. 'You see, I ask you this because I've been wondering... Isn't it so wonderful to be like me? Look at all this, all the fun that we had thanks to all these tendrils and stems...! What if... We could spread this strain around the world, let others feel how it is like to be this beautiful?' Seems like your kinkajou friend wants to find a way to spread her infection strain to other creatures and people, though would that be wise? Do you want to hear more about this plan, or shut her down right now and never speak of it again?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Might as well listen to her idea, now.";
			say "     ([link]N[as]n[end link]) - You won't hear anything more of this crazy idea!";
			if player consents:
				LineBreak;
				say "     You encourage her to continue, intrigued by her idea. She leans on closer to you as you pay utmost attention. 'Well, I've been thinking... There should be a way, right? Though sadly we don't have access to a parasitic plant anymore, we can't get its strain right off the bat... We'd have to craft one! But I have no idea how to make it effective...' she explains, making a pause before continuing, 'You see, I don't want it to instantaneously transform people and creatures who come in contact with it, I want it to linger for a while and then sprout and blossom when it's ready! This would also help spreading it further... My idea is putting it in something people would use for fun, like sex toys!' Sounds like she has been thinking about it for quite some time now, though you're clueless regarding where to start or what to do, even.";
				WaitLineBreak;
				say "     'Have you been to the Trevor laboratories, yet? I've overheard something that could be of our interest. Some kind of research on hybrid infections they were performing, or something, to counter effects from another infection in order to delay them, or to create hybrids, maybe? Well, it's two things we need! They must be somewhere inside the sealed labs, as most secret experiments... I can't go there myself for obvious reasons...' she says, shifting her look at her own rooted feet, buried in the soil, 'So... I thought you could maybe... Search their database? Try to get some information on how they're making it? That would help us a lot...' she asks you with a pleading look, hopeful that you will accept her request. 'This is just an idea, obviously... I don't know if we can do it as I visualize, but it would be fun to try. Don't worry if you don't want to do it, though... I understand it's risky and why you wouldn't want to spread an infection...' It even seems like she's preparing for a negative answer! What will you do, now that you know of her thoughts?";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Follow her plan and fulfill her wish.";
				say "     ([link]N[as]n[end link]) - This is risky and reckless, tell her you won't do it.";
				if player consents:
					LineBreak;
					say "     With a nod, you happen to accept her request, telling her you'll do what you can, which makes the kinkajou girl almost burst out of happiness. 'Really?! Oh, I can't thank you enough! I mean, I can let you rest in my garden, fondle and stuff you for hours and hours if that's what you want as reward, I think...' she adds, laughing with joy. 'Though do be careful! I've heard horrible things from that place... Strange things happen, and there are multiple dangerous creatures in there, things that went very very wrong... Just be careful, okay?' she warns you, concerned about your well being. You thank her for her kindness and promise you'll be back with something worth your time. 'Thank you so much, really! I promise I'll reward you with lots and lots of love, my hero!' Nodding, you prepare yourself to leave. However, you wonder how she would have known any of this...";
					say "     Now, [bold type]you have to get in the Trevor Labs and seek some clues in the sealed area[roman type]. It won't be easy, though. As Joanna said, many dangers roam that area, so you have to be prepared for especially strange and disturbing results of previous [bold type]hybrid experimentations.[roman type][line break]";
					now Hybrid Experimentations is active;
					now resolution of Spreading Flowers is 2; [to the Trevor Labs]
				else:
					LineBreak;
					say "     Frankly, this entire plan seems nuts. While you commend her for a smart line of thought, it really is too risky to continue this idea. Messing with the sealed grounds under the Trevor building is the last thing you want to do, not to mention the consequences there would be from spreading such a dangerously clever infection to the rest of the world! 'Yes... I get it. It's okay. Like I said it was just an idea, I know I can't ask you that much. Well, at least I've got it out of my chest. Thank you, sweetie.' she replies, though with clear disappointment in her face. While she no longer talks about it, she's happy to interact with you like before. Looks like this subject has been resolved, in one way or another.";
					now resolution of Spreading Flowers is 99; [ended the quest here]
			else:
				LineBreak;
				say "     Shaking your head, you tell her that it would be going too far. Infections like hers must be restrained, not spread around like she suggested, as fun as it may be to become a hybrid plant creature. 'Ow... You really think so? Not even mine?' Instantly, you stop her. You don't want her to think you dislike her own features, but you do make a thorough explanation about it not being for everyone. 'Oh, I guess that makes some sense... It's just that you said they were beautiful and I thought... Well, nevermind, you're probably right. Thank you for your honesty, sweetie...' she says, with a clear disappointed expression in her face. While she no longer talks about it, she's happy to interact with you like before. Looks like this subject has been resolved, in one way or another.";
				now resolution of Spreading Flowers is 99; [ended the quest here]
		else:
			Linebreak;
			say "     Without getting into any significant details, you tell her while it's nice to have fun with her unique features, they do seem quite restrictive regarding the 'host' - pointing out her rooted feet, for example - and that she'd probably be faring better without them, though not without saying that you like her either way. Joanna listens to you, and gives you a contemplative look. 'You do have a point... Honestly I think this is fun, and I'm used to being a plant, it's quite fun...! But... maybe it's not for everyone, right? Well, nevermind, then. Thank you for your honesty.' she says, with a somewhat disappointed expression. Was it that she had something in her mind regarding her plant features? Regardless, you'll never know, now... Though she is happy to talk and interact with you the same way as before.";
			now resolution of Spreading Flowers is 99; [ended the quest here]
	else:
		LineBreak;
		say "     Figuring you shouldn't disturb her for the moment, you decide to come back a tad later, once she has collected all of her thoughts. After walking around outside for a bit, you let her notice you entering, and she seems [']normal['] now.";
		if resolution of Spreading Flowers is 0:
			now resolution of Spreading Flowers is 1; [event postponed, now will trigger by chance]

Section 2-1 - Into the Trevor Labs

Table of GameEventIDs (continued)
Object	Name
Hybrid Experimentations	"Hybrid Experimentations"

Hybrid Experimentations is a situation.
ResolveFunction of Hybrid Experimentations is "[ResolveEvent Hybrid Experimentations]". Hybrid Experimentations is inactive.
Sarea of Hybrid Experimentations is "Sealed".

to say ResolveEvent Hybrid Experimentations:
	if resolution of Hybrid Experimentations is 0:
		say "     In your search for anything that would lead you towards the infection experimentations for Joanna's request, you glance around and check every corner, unexplored space and unopened door. The fact that this is a dark place with dangerous menaces lurking around every turn makes it more difficult for you, as it forces you to be extra careful in order to not bump into any atrocities along the way, translating into a significant delay. Every bit of strange noise makes you jump out of scare, chills running down your spine and creates the possibility for a fight. Despite your efforts, you find nothing on these parts, no matter how thoroughly you search. This only leaves the deeper, darker areas of the sealed laboratories... You had hoped to not have to get in there, but it looks like you need to if you want another shot at finding any clues about this mysterious research.";
		say "     Surely, you wouldn't know of such thing. The fact a kinkajou woman, who was recently turned into a plant for being too curious, got her hands on such data is, by itself, a mystery. There seems to be things you don't know about her, just like about the Trevor Labs and their experimental failures that ended in grotesque and disturbing horrors, which are now only making your life more difficult. These are all thoughts in your mind to keep you focused on your task, or rather, to not make you fear this place any more than you should. But it is really unsettling that the entire area is locked down, even darker and that random noises and shapes jump out unpredictably. Wiping out the cold sweat on your forehead, you bolster up some courage and start exploring again, searching through every room you can find for some sort of archives room, or a computer room... They must have physical copies, or at least reports... Something that serves as functional data! You hope...";
		WaitLineBreak;
		say "     Continuing on through the darker corridors, you lean on a wall so you can get a grip at where you're going. It's rather pitch black up ahead... Even if you could find some sort of archive, you wouldn't be able to read anything. This is going to be a huge problem, as even the power here is cut, no matter what. But you can't just give up, can you? There must be something here, after all... And by the time you run through all these thoughts, you come across a closed door, which is locked but a little fragile. Shouldn't be too hard to force it open. Would you like to go for it? [bold type]Might be dangerous[roman type] to do so if you're not ready to defend yourself against any unexpected horror that could be in your way!";
		LineBreak;
		HEquestion1;
	else if resolution of Hybrid Experimentations > 0: [2nd time]
		say "     While exploring the sealed area on the lower levels of the Trevor building, you come across the path that rings a bell in your memory. There is still the matter of Joanna's request, which remained unsolved. Now that you know the location where you could potentially find something worth your time and effort, it shouldn't be difficult to retrace your steps back there. Should you go through the door right now? [bold type]Might be dangerous[roman type] to do so if you're not ready to defend yourself against [if resolution of Hybrid Experimentations is 1]any unexpected horror that could be in your way[else]the tentacle horror you failed to beat previously[end if]![line break]";
		LineBreak;
		HEquestion1;

to HEquestion1:
	say "     ([link]Y[as]y[end link]) - Risk it for the sake of your quest!";
	say "     ([link]N[as]n[end link]) - Better not... yet.";
	if player consents:
		LineBreak;
		if resolution of Hybrid Experimentations < 2:
			say "     Your assumptions about the door's condition proves to be true once you push it with more effort than you really needed, making it hit a shelf rather violently. This causes several boxes and dossiers to fall over and a lot of noise echoing through the place! Immediately, you enter the room and close the broken door behind you, though you start thinking this was a bad idea...";
			say "     The room has a dim light, probably a lamp working on reserve power, and it's way deeper than it appear at the first sight. There are green tubes with creatures inside that you've never seen before, most of them dormant and immobilized. You're not even sure if they ever lived... But then, not shortly after, you can see a distorted shape emerging in front of you. It's a shadow from your perspective, though it doesn't look human nor beast-like at first, your only clue being a massive cluster of tentacles stretching towards you...! It looks like you'll have to fight it if you want to gain access to anything in here.";
			HEtentaclehorrorfight;
		else:
			say "     Knowing what awaits you in the other side of the room, you bolster up some courage before pushing the door open. The room looks the same, a dimming light barely illuminating its contents, though your time of being able to look at it is limited, as your well known foe is awaiting you, tentacles stretching towards you hungrier than ever. You'll have to defeat it if you want access to anything in here.";
			HEtentaclehorrorfight;
	else:
		Linebreak;
		say "     Thinking twice, you're not ready yet for this kind of adventure. There's too much unknown danger for you to face with so little preparation, and you can always return here. Nobody comes down here, anyway, and Joanna is happy to wait what time is necessary as long as you manage to get back safely.";
		if resolution of Hybrid Experimentations < 2:
			now resolution of Hybrid Experimentations is 1;

to HEtentaclehorrorfight: [victory and loss scenes intended to be the same as a normal fight]
	now inasituation is false;
	challenge "Tentacle Horror";
	now inasituation is true;
	if fightoutcome >= 20 and fightoutcome <= 29: [lost]
		WaitLineBreak;
		say "     Well, as long as that beast takes hold of the room, there won't be a way to get in there and search it safely. You'll have to defeat it and make it go away if you want to proceed with your quest. This only proves to you that the research they made here was, indeed, dangerous. Though it never hurts to prepare yourself some more.";
		now Resolution of Hybrid Experimentations is 2; [kicked out or fled]
	else if fightoutcome >= 30: [fled]
		say "     Having had enough, full of regret, you manage to pull away from the menacing tentacles and escape the room. Phew, that was a close one... However, you haven't managed to get anything from there. As long as that beast takes hold of the room, there won't be a way to get in there and search it safely. You'll have to defeat it and make it go away if you want to proceed with your quest. This only proves to you that the research they made here was, indeed, dangerous. Though it never hurts to prepare yourself some more.";
		now Resolution of Hybrid Experimentations is 2; [kicked out or fled]
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		WaitLineBreak;
		say "     After a long and exhausting battle, you managed to tire the tentacles enough to force them into a temporary rest, you hope. Just what is this that you fought?! And all the other creatures? You're sure you're never been to this area of the sealed laboratories, and that means there's something to uncover here. Without any further ado, you rush towards anything that can look like files and archives which could be of use to you. There's a lot, and with just enough light to see the letters, you're able to find some reports. Giving them a quick read, you learn that this was a secret experimentation performed around the time of the nanite outbreak, which is a shady fact. There's a date from which you can conclude this, but as to how and why this has been a thing, you can't find much. They had, however, success in mixing the infection strains, but they rarely ever had the wanted results, as you can observe with everything that's around you...";
		say "     Though, you'll still need to look around actual data you can use. These empirical documents will help, sure, but the researchers must have kept some kind of journal around, maybe? Whatever the case may be, you search through the room until you can find something that could work to aid Joanna in her purpose. In the shelves you find more documents, but they're mostly gibberish to you, and you can't understand a whole lot of it. It seems like they are drafts of previous theories? But you're not so sure... Well, the advantage here is that you can carry a lot of this with you, so you grab whatever you can find that makes even if just a mild suggestion of what you're seeking. And while you're collecting readable data, you come across a dossier labeled as an updated version of the official theory. You just know this has to be it! It's a heavy and big one, but you have to bring it over, together with the extra documents, [bold type]to your kinkajou friend, back at the Flower Garden[roman type] this immediate instant.";
		WaitLineBreak;
		say "     Upon arriving back at the laboratories, you do your best at hiding your loot, so that nobody asks you any questions. Luckily, Orthas seems busy with something, she just nods at you as you walk away, breathing in relief.";
		now Resolution of Spreading Flowers is 3; [successful]
		now Hybrid Experimentations is resolved;

Section 2-3 - Delivering the Documents

instead of navigating Flower Garden while (HP of Joanna is 7 and resolution of Spreading Flowers is 3): [proceeding with the quest]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     Keeping a low profile, you manage to arrive at the Flower Garden without drawing too much attention on yourself. Joanna was expecting you, as she notices you coming in almost immediately, letting out an audible sigh of relief. 'You're back! Thank goodness... I hope you didn't stumble across any abomination in that cursed place...' she says, before you rush to give her everything you've caught. 'Official reports from the scientists, research documents... Oh! What is this? You found their theory model?!' Joanna is talking about the big and heavy dossier you brought, which apparently was the most important one out of everything else in there. 'This is exactly what I needed! Oh, sweetie... I can't thank you enough!' She hugs you tight for a few seconds, so very happy for what you did for her.";
	say "     'How about we celebrate? You sure look like you could use a relaxing time...' she asks, her stalks and plant tendrils waving around, eager to touch you.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Pick something fun to do with Joanna.";
	say "     ([link]N[as]n[end link]) - You're not in the mood for sex, right now.";
	if player consents:
		LineBreak;
		say "     Nodding, you approach your kinkajou lover and give her a kiss, considering your options...";
		wait for any key;
		say "[joannaselection]";
		WaitLineBreak;
		say "     After you two have had your fun, Joanna turns to you with a smile on her face. 'That was great... As always, you're my savior!' You tell her how satisfying you found this moment with her together, especially after having beaten that tentacle horror back there, though you probably shouldn't have mentioned that, as her expression turns into utmost worry. 'Oh, no! I hope that creature didn't give you any trouble... You better have a rest, now! I'll be looking at what you've got me for a while, to see if I can make some sense out of this and formulate a next step... Let me know if you need anything, okay dear?' she informs you, still concerned about your condition, but you assure her. For now, all you have to do is wait until she's finished putting everything together.";
	else:
		LineBreak;
		say "     Shaking your head, you tell her you're too tired to do anything, mentioning that tentacle horror you had to fight back, which turns her expression to utmost worry. 'Oh, no! I hope that creature didn't give you any trouble... That's okay, then! Have your rest. I'll be looking at what you've got me for a while, to see if I can make some sense out of this and formulate a next step... Let me know if you need anything, okay dear?' she informs you, still concerned about your condition, but you assure her. For now, all you have to do is wait until she's finished putting everything together.";
	now HP of Joanna is 8; [she'll be studying the material thoroughly]
	now JoannaSFTimer is turns; [time until the next stage]

Section 2-4 - Gathering Materials

instead of navigating Flower Garden while (HP of Joanna is 8 and JoannaSFTimer - turns > 9): [proceeding with the quest after she formulated a plan]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	now HP of Joanna is 9;
	now Resolution of Spreading Flowers is 4; [next stage]
	say "     When arriving back at the Flower Garden, you immediately hear Joanna calling for you with eagerness. 'Hello! Glad to see you're back! I have something new!' she shouts from her spot, waving and urging you to come over. With clear evidence that she's excited for something, probably a new discovery from the documents you provided her, you walk to her place with a questioning look. 'After all this time I've spent reading through the texts, I think I already know what to do next!' [']Think['] isn't a very reassuring word, but you stand ready to listen to her plan, this time. 'So, given the fact they actually used genetic recombination technology to perform these experiments, I think I am able to do the same with mine. But I need materials...' She's saying she needs actual genetic material to work with, so you're predicting something alike your previous mission...";
	if Resolution of Dog Walking is 2: [Quest takes a different route, directly towards the Awesome Trees]
		say "     'Oh, it's nothing dangerous, this time! And I know exactly what to look for.' she says, with a bright smile on her face. Maybe you can rest assured.";
		SFAltPath;
	else: [Human Dogs it is]
		say "     'Oh, it's nothing dangerous, this time! I mean, at least I think so... If I knew where to find what I need, I would be more certain. Say... Have you, per any chance, come across someone with a [bold type]reversed human condition[roman type]?' That's one certainly unique expression, though she doesn't stop there and explains it further. 'I mean, someone who [bold type]wasn't human before[roman type], but was [bold type]turned into a human[roman type] after the nanite outbreak? Like, I know about the Awesome Trees in the Urban Forest which have some sort of human element in their infection strain, but that's not what I'm looking for right now... I mean, we'll get there, eventually!' she explains, making a pause to catch her breath, as she is talking really fast,  'Okay, one thing at a time... I need to understand how exactly it works, so I need someone who is now a human, but wasn't before... Ugh, am I being clear enough?' asks the plant-girl, out of frustration for not being able to explain herself properly.";
		say "     You understood that she needs some sort of subject who has been turned into a human while not having been one in the past, but you fail to understand its goal, as she hasn't been clear on that point, so you ask her about that some more. 'So, what I'm trying to do is to put my own biological essence in an infection strain, but if it manifested instantaneously, it would never make it out of the quarantined zone! I need to develop a delayed strain that won't be noticed upon receiving it, only much later. I think I know how to mix them together, but I need to run some tests with this specific... genetic material. You know... milk them off their juices. These who turned into humans, I mean.' Now with a somewhat clearer explanation, you thank her for it. After some extra brief chatting, you let her know you got what you need to do and will be on your way, to which she happily nods.";
		WaitLineBreak;
		say "     Now, all that is left to do is to look for someone that would do the job... [if HP of Xerxes > 0 or HP of Helen > 0]Wait, you do have a human dog in your library! And you're the owner! Things just got a lot easier, now, because that's just what you needed, given Joanna's description.[else]";

to say XerxesSFHarvest:
	say "     Looking at your human dog, you know you've got just the person to give Joanna in order to continue her request. Would you like to bring Xerxes along with you for whatever she has in mind?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Bring Xerxes to Joanna.";
	say "     ([link]N[as]n[end link]) - Not right now.";
	if player consents:
		LineBreak;
		say "     He definitely sounds eager to hear you say that you're going for a walk. Without any further ado, you set things up and bring your human dog to the Flower Garden, where Joanna is awaiting you.";
		move player to Flower Garden;
		say "     As you arrive, you notice the kinkajou woman slightly distracted, tending to her own personal garden. Carefully to not startle her, you approach her spot slowly, trying to make her see you, however Xerxes is not very keen on waiting. He storms ahead, barking at Joanna, and of course, her roots nearly jump off the ground with a yell. 'What?! A dog? O-oh... W-what is this? This isn't a dog!' she says, questioning herself with each word, as you can see in her perplexed face. 'Is this a...' You confirm her suspicions, that Xerxes is, indeed, a dog turned human. 'Oh my... He has grown into quite a handsome man, hasn't he? Surely he must be...' she takes a pause to catch her breath before continuing, 'a very pleasant acquisition, right?' She turns to you while Xerxes sniffs her all over, panting out of excitement, though he sneezes at one of the flowers, which makes Joanna giggle. 'He is still a dog, after all...' she says, lowering herself to pet your human dog, getting her face licked in the process.";
		say "     His muscular body is enough to support an almost vertical posture, and you can tell your kinkajou friend gets somewhat aroused at the sight of a full-fledged man with a much noticeable boner showing her so much affection. It is obvious that he liked Joanna. The whole show leaves you blushing at least a little. 'We should proceed to do something more fun, then, right boy?' She asks Xerxes, who looks back at you with pleading eyes. You weren't thinking of saying no, anyway, so a nod is all you need to approve of whatever Joanna has in mind. 'This will be fun, I promise! I just need some of his seed, and I know just the way to acquire it...' she comments, with a rather giggly smile.";
		XerxesHarvest1;
		WaitLineBreak;
		say "     'That should be quite enough, for now. Thank you so much, my hero! You have no idea how much this means to me...' She says, with a bright smile on her face as Xerxes returns to your side, climbing onto you for a lick... Well, his way of saying [']thanks[']. You give him a pat on the head as you let Joanna know you'll always be here for her, but it's also time to ask what is going to happen next. 'Now I'll have to rest for a bit, then analyze this sample I've just collected from your human dog. I have to think about what we need later.' she informs you, still slightly beaten from the action. 'Thank you, once more. Oh, and if you want to bring Xerxes again for some more fun, feel free! I quite enjoyed this, myself.'";
		say "     With her proposition in mind, you know there won't be a problem in bringing Xerxes again for another cum collecting session, if you want. As for her requests, you'll have to wait until she comes up with something else. Just try to come back later, give her enough time to synthesize her gains.";
		now resolution of Spreading Flowers is 5; [on the way to next stage]
	else:
		LineBreak;
		say "     You consider it, but it's better to postpone that, for now. You've got other things to do first, maybe.";

to say XerxesHarvest:
	say "     Given how fun the last session with Joanna was, you consider bringing Xerxes along with you for another go. As soon as you tell him where you're going, he jumps out of excitement, barking loudly and coming to give you a lick on the face. With this being a clear [']yes['] as response, you set everything up to bring him to the Flower Garden, where your kinkajou friend will be.";
	say "     As you arrive, you notice the kinkajou woman slightly distracted, tending to her own personal garden. Carefully to not startle her, you approach her spot slowly, trying to make her see you, however Xerxes is not very keen on waiting. He storms ahead, barking at Joanna, and of course, her roots nearly jump off the ground with a yell. 'Oh, it's my hero with his good boy! You startled me again...!' she admits, but giggling happily as Xerxes basically throws himself at her. 'Came for another session with me? I can't express my gratitude enough, sweetie... It's best that we get started, then?' Eager to see the show and knowing how good it will feel for your companion, you let her make preparations.";
	XerxesHarvest1;
	WaitLineBreak;
	say "     'Well, that was quite fun!' She says, with a bright smile on her face as Xerxes returns to your side, climbing onto you for a lick... Well, his way of saying [']thanks[']. You give him a pat on the head as you let Joanna know you enjoyed your time, but it's time to return to the library. 'Very well, my lovelies. I suppose I'll take a well deserved rest, myself. Feel free to visit me anytime!' She tells you, throwing you a kiss before waving as you walk towards the exit. Your human dog follows behind, more satisfied than ever.";

to say HelenSFHarvest:
	say "     Looking at your human dog, you know you've got just the person to give Joanna in order to continue her request. Would you like to bring Helen along with you for whatever she has in mind?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Bring Helen to Joanna.";
	say "     ([link]N[as]n[end link]) - Not right now.";
	if player consents:
		LineBreak;
		say "     She definitely sounds eager to hear you say that you're going for a walk. Without any further ado, you set things up and bring your human dog to the Flower Garden, where Joanna is awaiting you.";
		move player to Flower Garden;
		say "     As you arrive, you notice the kinkajou woman slightly distracted, tending to her own personal garden. Carefully to not startle her, you approach her spot slowly, trying to make her see you, however Helen is not very keen on waiting. She storms ahead, barking at Joanna, and of course, her roots nearly jump off the ground with a yell. 'What?! A dog? O-oh... W-what is this? This isn't a dog!' she says, questioning herself with each word, as you can see in her perplexed face. 'Is this a...' You confirm her suspicions, that Helen is, indeed, a dog turned human. 'Oh my... She has grown into quite a gorgeous woman, hasn't she? Surely she must be...' she takes a pause to catch her breath before continuing, 'a very pleasant acquisition, right?' She turns to you while Helen sniffs her all over, panting out of excitement, though she sneezes at one of the flowers, which makes Joanna giggle. 'She is still a dog, after all...' she says, lowering herself to pet your human dog, getting her face licked in the process.";
		say "     Her fully developed human body is enough to support an almost vertical posture, and you can tell your kinkajou friend gets somewhat aroused at the sight of a full-fledged woman with quite the pair of tits showing her so much affection. It is obvious that she liked Joanna. The whole show leaves you blushing at least a little. 'We should proceed to do something more fun, then, right girl?' She asks Helen, who looks back at you with pleading eyes. You weren't thinking of saying no, anyway, so a nod is all you need to approve of whatever Joanna has in mind. 'This will be fun, I promise! I just need some of her feminine juices, and I know just the way to acquire them...' she comments, with a rather giggly smile.";
		HelenHarvest1;
		WaitLineBreak;
		say "     'That should be quite enough, for now. Thank you so much, my hero! You have no idea how much this means to me...' She says, with a bright smile on her face as Helen returns to your side, climbing onto you for a lick... Well, her way of saying [']thanks[']. You give her a pat on the head as you let Joanna know you'll always be here for her, but it's also time to ask what is going to happen next. 'Now I'll have to rest for a bit, then analyze this sample I've just collected from your human dog. I have to think about what we need later.' she informs you, still slightly beaten from the action. 'Thank you, once more. Oh, and if you want to bring Helen again for some more fun, feel free! I quite enjoyed this, myself.'";
		say "     With her proposition in mind, you know there won't be a problem in bringing Helen again for another juice collecting session, if you want. As for her requests, you'll have to wait until she comes up with something else. Just try to come back later, give her enough time to synthesize her gains.";
		now resolution of Spreading Flowers is 5; [on the way to next stage]
	else:
		say "     You consider it, but it's better to postpone that, for now. You've got other things to do first, maybe.";

to say HelenHarvest:
	say "     Given how fun the last session with Joanna was, you consider bringing Helen along with you for another go. As soon as you tell her where you're going, she jumps out of excitement, barking loudly and coming to give you a lick on the face. With this being a clear [']yes['] as response, you set everything up to bring her to the Flower Garden, where your kinkajou friend will be.";
	say "     As you arrive, you notice the kinkajou woman slightly distracted, tending to her own personal garden. Carefully to not startle her, you approach her spot slowly, trying to make her see you, however Helen is not very keen on waiting. She storms ahead, barking at Joanna, and of course, her roots nearly jump off the ground with a yell. 'Oh, it's my hero with his good girl! You startled me again...!' she admits, but giggling happily as Helen basically throws herself at her. 'Came for another session with me? I can't express my gratitude enough, sweetie... It's best that we get started, then?' Eager to see the show and knowing how good it will feel for your companion, you let her make preparations.";
	HelenHarvest1;
	say "     'Well, that was quite fun!' She says, with a bright smile on her face as Helen returns to your side, climbing onto you for a lick... Well, her way of saying [']thanks[']. You give her a pat on the head as you let Joanna know you enjoyed your time, but it's time to return to the library. 'Very well, my lovelies. I suppose I'll take a well deserved rest, myself. Feel free to visit me anytime!' She tells you, throwing you a kiss before waving as you walk towards the exit. Your human dog follows behind, more satisfied than ever.";

to XerxesHarvest1:
	say "     As things are already getting hot in here, it doesn't take much for the session to begin. Joanna's tendrils are already eager to get involved in the action, and are soon slipping past and around Xerxes with tenderness, caressing his every sensitive spot. With the human dog's boner in reach, she stretches her hand over the length of his shaft and makes a gentle push towards herself, effectively causing your pet to climb on top of her and against the foliage behind them. 'Hope you enjoy the warmth of my lovely flowers, you good boy!' she says to him, encouraging Xerxes to slip his manhood inside one of her many pussy flowers as one of her cock tendrils caress his human pucker. The entire display sends heat waves over your body, undeniably arousing you as you watch them going at it.";
	say "     The whole scene is beautiful, in its way. Maybe it's the entire scenario on the background, or how different this interaction is from what you usually see outside. Here, in this peaceful garden, you could easily forget the outbreak, and right now, you could enjoy a - apart from the plant-like extensions of Joanna being living sexual organs - pretty normal sex activity, a rare sight in these days. 'Hon, you can come lay down next to me, if you want...' says Joanna, almost in moans as your human dog begins pushing his cock in her flowery cunt. You decide to walk over her and do as she recommended, so you can have a better look at her many endowments and womanhoods being filled and fucked by your pet.";
	WaitLineBreak;
	say "     She gives you her hand, which you grab onto, feeling her squeeze her fists as he groans in pleasure. Though, there's something else you can feel up, so you reach for her boob, which is quite close to you at this point, to provide her with some additional stimulation. 'Ooh, that feels so good, sweetie...' With her words of encouragement, you tease her sizable tits as Xerxes keeps fucking her with his usual canine energy, pounding back and forth against the kinkajou woman. You also take the chance to give your companion a pet in his head and behind the ears, which bring a huge smile on his face and more eager to fuck Joanna. 'This is great... more fun that I hoped! Aah...' Returning you hand to her chest makes her stutter during her talking, and you're quite sure both of them are reaching their limits.";
	say "     Hearing your pet panting, you know he's close, so you encourage him to continue. Joanna herself can't really endure such dedicated love from your human dog, and soon she's warning you that she's getting there. 'I'm really on the edge now...! Aahh...!' Amidst her moaning and groaning, you notice her tendrils rubbing intensely against Xerxes['] back and rear, engorged in excitement, her breathing getting faster and more intense... Then she grabs his arms and lets out an audible moan as she hits her orgasm. Your human dog nearly howls at the same time as he, too, hits his climax, pumping a large quantity of his own seed into her. The kinkajou's cock tendrils make some mess too by themselves, even when left out of the action. Now it's all up to her flowers to soak up on all the genetic material they can store...";
	WaitLineBreak;
	say "     After such an intense fuck, both lie down, Xerxes on top of her, taking his deserved brief rest. You keep them company as they catch their breath, laying next to them and caressing both of your most beloved companions...";
	NPCSexAftermath Joanna receives "PussyFuck" from Xerxes;
	now lastfuck of joanna is turns;

to HelenHarvest1:
	say "     As things are already getting hot in here, it doesn't take much for the session to begin. Joanna's tendrils are already eager to get involved in the action, and are soon slipping past and around Helen with tenderness, caressing her every sensitive spot. With the human dog's pussy in reach of her many plant cocks, the kinkajou makes a gentle pull towards herself, taking Helen for an embrace as one of the tendrils begin to push against her womanhood. Joanna leans herself against the foliage behind, their tits brushing against each other. 'I hope you enjoy the girth of my stems, you good girl!' she says to her, encouraging Helen to give herself completely to the cock tendrils, her labia stretched around one of them as it keeps pushing in. The entire display sends heat waves over your body, undeniably arousing you as you watch them going at it.";
	say "     The whole scene is beautiful, in its way. Maybe it's the entire scenario on the background, or how different this interaction is from what you usually see outside. Here, in this peaceful garden, you could easily forget the outbreak, and right now, you could enjoy a - apart from the plant-like extensions of Joanna being living sexual organs - pretty normal sex activity, a rare sight in these days. 'Hon, you can come lay down next to me, if you want...' says Joanna, almost in moans as your human dog keeps taking her plant-like extensions in herself. You decide to walk over her and do as she recommended, so you can have a better look at her many endowments caressing and fucking your pet.";
	WaitLineBreak;
	say "     The kinkajou woman gives you her hand, which you grab onto, feeling her squeeze her fists as he groans in pleasure. Though, there's something else you can feel up, so you reach for their boobs, which are quite close to you at this point, to provide them both with some additional stimulation. 'Ooh, that feels so good, sweetie...' With her words of encouragement, you tease her sizable tits, as well as Helen's, while Joanna keeps fucking her with her tendrils, pounding back and forth against the human dog. Your caresses bring a lusty, yet happy smile on your pet, as she keeps taking it in her cunt like the good girl she is. 'This is great... more fun that I hoped! Aah...' moans Joanna, as you keep feeling them both up, making her stutter during her talking, and you're quite sure both of them are reaching their limits.";
	say "     Hearing your pet panting, you know she's close, so you encourage them to continue. Joanna herself can't really endure such dedicated love from your human dog, and soon she's warning you that she's getting there. 'I'm really on the edge now...! Aahh...!' Amidst her moaning and groaning, you notice her tendrils rubbing intensely against Helen's insides, engorged in excitement, her breathing getting faster and more intense... Then she grabs her arms and lets out an audible moan as she hits her orgasm. Your human dog nearly howls at the same time as she, too, hits her climax. The kinkajou's cock tendrils make a lot of mess over themselves, as one of them keeps pumping precious plant seed inside Helen. Now it's all up to her stems to soak up on all the genetic material they can store...";
	WaitLineBreak;
	say "     After such an intense fuck, both lie down, Helen on top of her, taking her deserved brief rest. You keep them company as they catch their breath, laying next to them and caressing both of your most beloved companions...";
	NPCSexAftermath Helen receives "PussyFuck" from Joanna;
	now lastfuck of joanna is turns;

to SFAltPath:
	say "     'Say... Have you, per any chance, come across someone, or something, with an [bold type]infection strain that turns you human[roman type]? I know about the [bold type]Awesome Trees[roman type], so maybe... we should start there?' That is certainly one peculiar request, and you cannot help yourself but to ask why. 'Well, it is quite self-explainatory, isn't it? Awesome Tree's fruits turn people into ordinary looking humans, so looking into it could provide me the means to do what I intend to do with my own strain. Isn't that wonderful? I think so!' It seems quite simple as to why she wants to take a look at this specific creature, and you're sure there are plenty of them around the [bold type]Urban Forest[roman type]";
	say "     But no matter how simply it seems, you still fail to understand its goal, as she hasn't been clear on that point, so you ask her about that some more. 'So, what I'm trying to do is to put my own biological essence in an infection strain, but if it manifested instantaneously, it would never make it out of the quarantined zone! I need to develop a delayed strain that won't be noticed upon receiving it, only much later. I think I know how to mix them together, but I need to run some tests with their organic and genetic material. Could you be a dearie and bring me [bold type]each type of their fruits, which is one awesome fruit, one awesomer fruit and one awesomest fruit[roman type], as well as a single [bold type]vial of the Awesome Tree[roman type]? Just in case. I think you can get a nanite collector at Zephyr labs if you don't have one.' After she is done explaining herself and the specifics of your task, you thank her for it. After some extra brief chatting, you let her know you got what you need to do and will be on your way, to which she happily nods.";
	now Resolution of Spreading Flowers is 7; [Alternative Awesome Tree path]

instead of navigating Flower Garden while (Resolution of Spreading Flowers is 4 and Resolution of Dog Walking is 2): [proceeded with the quest, but screwed up Mike's meeting]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     After that encounter you had with the stag walking the humans on a leash, you return to Joanna with maybe a clue in mind. She sees you coming in, with an hopeful expression. 'Oh? You found humans behaving like dogs? That doesn't sound very right, does it?' She asks, with clear concern in her face. 'And how is this important for us?' You explain her what happened, and how you happened to attack him in an attempt to free the humans, but unfortunately, you had no luck, as they were quite loyal to their owner. It really sounds like you are talking about dogs. 'Are you sure those weren't... Oh no! You shouldn't have attacked him! He could have what we needed!' Intrigued, you further question Joanna about this. 'Because those could very well have been human dogs! I mean, dogs turned human! We never know! But since the owner is not happy with you, I doubt we could get something out of it...' She eyes you with a disappointed look, but soon a smile returns to her face. 'I do have a backup plan. I always do. Care to listen?' You nod, awaiting her speech.";
	SFAltPath;

instead of navigating Flower Garden while (Resolution of Spreading Flowers is 5): [After Human Dogs, anytime]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     With your previous request done, you return to the Flower Garden, hoping Joanna is finished with synthesizing what she got from your human dog. She sees you, waving and gesturing you to come. 'Hello, hon! You arrive at a good time! I've just finished the process, for now.' You let her know how happy you are that everything is working out, but she stops you there. 'Not everything, yet. There's still more material to gather, I'm afraid.' She did mention the Awesome Trees before, so is that what this is all about? You ask her in advance, and she replies 'Yes, I still need material from the Awesome Trees. Because their strain is so unique...! And their fruits are exquisite. I need [bold type]one of each[roman type] to complete my research, can you gather them for me? Please?' She gives you the pleading eyes, and might as well just accept her conditions, now that you've gotten this far.";
	say "     '[bold type]It's one awesome fruit, one awesomer fruit and one awesomest fruit[roman type]! Thank you so much, my hero! Oh, and if you want some fun before going, you can always ask...' she lets you know with a sultry tone, giving you a tease with her own body language the way she knows very well, waving her tendrils excitedly and giving her boobs a subtle rub that makes them jiggle slightly before your eyes. That's something you could consider, indeed...";
	now resolution of Spreading Flowers is 6;

instead of navigating Flower Garden while (Resolution of Spreading Flowers is 6 and carried of awesome fruit > 0 and carried of awesomer fruit > 0 and carried of awesomest fruit > 0): [Player is carrying all the necessary items for normal AT path]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	SFAwesomeTree;

instead of navigating Flower Garden while (Resolution of Spreading Flowers is 7 and carried of awesome fruit > 0 and carried of awesomer fruit > 0 and carried of awesomest fruit > 0 and "Awesome Tree" is listed in vials of player): [Player is carrying all the necessary items for ALT path]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	deletevial "Awesome Tree";
	SFAwesomeTree;

to SFAwesomeTree:
	say "     With all the required items in your inventory, the next time you walk in the Flower Garden is to deliver them as soon as possible, so Joanna can get to work. You approach her spot, and she sees you coming, happy to receive you once more. 'You brought me the items I asked? Good!' She ways, with joy in her voice, before adding 'I guess we finally have everything! Seriously... Thank you!' You hand her the items, and she examines every single one of them to make sure they're undamaged and in pristine conditions. 'Looks like this is it until I have a genetic strain... I hope the method I developed is good enough... I'm getting nervous about it, now.' You figure that it's best to let her work, now. Maybe you have questions that surged through this entire process, but you won't ask them now. Only later, when she comes up with the final product.";
	ItemLoss awesome fruit by 1;
	ItemLoss awesomer fruit by 1;
	ItemLoss awesomest fruit by 1;
	say "     'It will take some time before I'm able to synthesize all of these. Come back tomorrow or so! Or we can just... have some fun while we wait?' She teases you, her naked body on display with her plant-like extensions hovering around you. It seems she's open for sex during the synthesis time, if you want.";
	now resolution of Spreading Flowers is 8;
	now JoannaSFTimer is turns;
	now HP of Joanna is 10;

instead of navigating Flower Garden while (Resolution of Spreading Flowers is 8 and JoannaSFTimer - turns > 9): [Joanna is done with the synthesis]
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     After you've given her some time to work with the materials you gave her, you return to the Flower Garden once more. Joanna sees you, although she looks focused, with her plant-like extensions standing very still. When you approach her, she greets you with very little movement. 'Hello, hon. I'm still finishing the synthesis... But it won't take long, now.' She lets you know, and at least you can make conversation... If you want. There are questions to ask, especially how a kinkajou woman, who then became a rooted plant hybrid, had so much information on certain things. Things that even you, who are used to explore and peeking around every corner, didn't know. There's something about Joanna's past that you fail to understand, and you suppose this is a good time to ask her all about it. [bold type]Do you want to question her now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Ask her how she knew all about this process and how to proceed.";
	say "     ([link]N[as]n[end link]) - Not yet. She's focused on her task and this seems sensible. Cuddle with her instead, maybe.";
	if player consents:
		LineBreak;
		say "     You decide to wait it out with her, and use the opportunity to ask her what you've been wanting to for so long. Who was she before the outbreak? How did she know all of this? Questions like these make Joanna visibly uncomfortable, hesitating to give you any specific answer. 'I suppose we never talked about this... Isn't it?' She asks, and you give her the obvious reply. 'There's a lot you don't know... I wasn't always a kinkajou, dancing in Palomino being all carefree like I was. I found this new form a blessing, a chance to see the world differently and learn how to enjoy myself more...' Whatever she is saying, it doesn't answer your question. You get the feeling she's dragging the subject. 'It wasn't easy, being who I was... Oh! The synthesis is ready!' Saved by the synthesis, you guess... Though it's important she does this well, or all your work would have been for nothing.";
		say "     She takes some liquid out of a nearby leaf into a vial, then closes it carefully. It's colorless, very similar to water. 'Here it is, the strain... Now we only need to test this and develop a way to spread it, if it works... This really makes me anxious. After so much work... I'd be sad if it didn't.' She is staring at it, admiring her product with some fear in her eyes. 'About your question... I'll tell you everything, but I need one last favor.' She turns to you one more time, handing you her precious vial. 'I think I know who could help us. Take this vial to [bold type]Doctor Medea, at the Pediatrics Clinic[roman type]. She has precious knowledge about this matter, despite her expertise, and has been a friend of mine for a while now. She will help us test and arrange some way of achieving a means to spread it, maybe a sex toy or two... I'm sure she will be useful and willing to help.' To this Doctor Medea, then. Though you make her promise she will, indeed, tell you everything about herself after this.";
	else:
		say "     You decide to not ask her about it, yet. Instead, you move towards her and take her for a gentle embrace, which she reciprocates. 'Ow, look who's being a sweetie, today! I'm glad you're here. It should be almost done, anyway...' She lets you know, although the moments of silence come when you less expect. 'There are things I haven't told you, hon... And that maybe I should have.' Seems like you didn't have to touch the subject, as she took the initiative instead. 'You see, I wasn't always a kinkajou, dancing in Palomino being all carefree like I was. I found this new form a blessing, a chance to see the world differently and learn how to enjoy myself more...' Whatever she is saying, it doesn't answer everything. You get the feeling she's dragging the subject. 'It wasn't easy, being who I was... Oh! The synthesis is ready!' Saved by the synthesis, you guess... Though it's important she does this well, or all your work would have been for nothing.";
		say "     She takes some liquid out of a nearby leaf into a vial, then closes it carefully. It's colorless, very similar to water. 'Here it is, the strain... Now we only need to test this and develop a way to spread it, if it works... This really makes me anxious. After so much work... I'd be sad if it didn't.' She is staring at it, admiring her product with some fear in her eyes. 'About our conversation... I'll tell you everything, of course, but I need one last favor.' She turns to you one more time, handing you her precious vial. 'I think I know who could help us. Take this vial to [bold type]Doctor Medea, at the Pediatrics Clinic[roman type]. She has precious knowledge about this matter, despite her expertise, and has been a friend of mine for a while now. She will help us test and arrange some way of achieving a means to spread it, maybe a sex toy or two... I'm sure she will be useful and willing to help.' To this Doctor Medea, then. Whatever Joanna has to tell you about her past, you might want to hear it.";
	WaitLineBreak;
	say "     Note that there rarely is free help from a stranger. It is very likely that you have to run a lot of favors for this Doctor Medea before you can even bring the subject.";
	now resolution of Spreading Flowers is 9; [To Doctor Medea]
	now HP of Joanna is 11;

to say SFMedea:
	say "     Now that Medea is properly supplied, you can ask her to take a look at Joanna's vial. With this in mind, you bring the subject, explaining that you know this kinkajou plant hybrid girl from a nearby Flower Garden, whose name is Joanna, and that she said you could come to her in order to learn more about the ways to spread the contents inside this vial. She stares at you, and only then she blinks and begins talking 'Oh my... Joanna? Now, where did I hear that name... Ah! Yes, I know who you're talking about. And what happened to her? She got turned into this hybrid between a kinkajou and a parasitic plant? Served her right for getting in affairs that weren't her own.' You get the feeling they, indeed, had some kind of story together. 'I do not say this without feeling bad for her, however. Must be quite the limitation, being rooted to the soil. I cannot imagine.' her tone is genuine, as is her worry for your friend.";
	say "     'Though, I think I have told you that this is not my job. I work with fertility and pregancy related issues!' Now this you know, but Joanna told you she could help, regardless of anything else. 'Just what is this about, really? What does she wish to accomplish with this... vial?' You explain the entire plan. That you are supposed to develop a secret infection, plant it in something people would use, like sex toys, and make it so that it would only manifest itself after a time, so it could leave the quarantined area, past the military and into the outer world. 'So you are attempting to develop a biological weapon?!' You rush to explain that it's not the case. This infection is harmless, and only for fun. Thinking to yourself and saying it out loud, it sounds crazy, but you tell Medea that Joanna merely wishes to provide a gift to the people and offer a bit of herself in harmless ways.";
	WaitLineBreak;
	say "     'A gift?! Well, people are supposed to be able to either accept or refuse a gift. Creating infecting sex toys without their consent is not a gift!' She tells you, rather loudly, but then she makes a pause, 'Although I can see the appeal of having a few plant extensions to increase the fun... And I guess they wouldn't be permanent... and that you wouldn't give these to people without them knowing where it comes from, isn't that right?' You nod, to everything that she is saying. 'Good. If you don't go wild with this, I can provide my help, yes. And since you've helped me a great deal in the past, this is just another favor to repay. Very well, then... Come with me.' She gestures you to follow her to some part of her working place, where she keeps relevant equipment and tools to address your situation.";
	say "     'So, how did you meet Joanna?' she asks, while preparing her desk for the analysis. You explain that she used to go dancing at the Palomino, and how you saved her from a parasitic plant, which explains her fate. 'Fascinating infection. One that turns you into a plant, with the biology of one... Too bad she ended up with rooted feet.' It's not like Joanna really minds it, she got used to being a plant, and she is in a very nice place. 'Perhaps I should visit her someday. Even if just to scold her for irresponsible behavior. All that ambition of hers was for nothing, now. Look at this city, all ruined by the nanites...' You thought she enjoyed her transformations, and perplexity shows in your face. 'What? I do enjoy the effects they have, but I have to be real! The city broke down! Even my tools were gone! That's not good...'";
	WaitLineBreak;
	say "     She continues to put everything ready, and once she has a proper working space, she puts the vial in some kind of machine, which seems to be scanning the contents. 'I know what's in here, but it never hurts to confirm...' After she has the vial scanned, she turns to you with a brief silence. 'I'm impressed. This might just work... What did you collect to make this?' You let Medea know about all the genetic materials you've gathered, and your little episode in the sealed area of the Trevor Labs... 'So you went there. I'm sure it must be a lovely place. What an amazing idea, creating abominations through genetic manipulation and recombination in secrecy. I should have helped Joanna more, back then, but I feared for her safety...'";
	say "     You question her further, as this is news to you. 'I suppose she didn't tell you. Then that is a conversation you must have with her, not me. I will not meddle in your affairs when I have an important task to accomplish, even though I don't fully agree with it...' She is talking about your vial, which she just removed and is now placing in a syringe, just a little of it. 'I will have to run some tests. What you are about to see must remain here. We're about to go in unethical ground.' Not that much of this is ethical, either way, but sure, you promise her you'll keep everything a secret. 'Good. I'll have to use a... Subject to test this. But it should be easy to revert its effects. A little knowledge on how nanites work and you can control them as you see fit. Hopefully.' It is good that she sounds confident about it.";
	WaitLineBreak;
	say "     Following her to another room, you encounter a sleeping patient. A canine anthro, completely oblivious of your presence. 'The human component of this strain serves as a neutral element, meaning it won't affect a person with an already existing mutation, and won't add anything new. Its presence also delays any other effects that may be caused by the parasitic plant infection, so I have prepared a catalyst to speed up the proceed and measure how long it would take for the plant-like mutations to happen. To see if it will be enough.' she explains, as she prepares the injections. With the subject sleeping, he will feel nothing... Hopefully. She presses the syringe against the anthro dog's arm and carefully injects its contents into his blood circulation. For now, nothing else happens.";
	say "     'Not an immediate effect. This is good. Now, let us apply the catalyst.' This one is supposed to speed up the process, making the mutations happen sooner. With this, you're able to see what the final results are. You pray that it works... 'Hm... There is a good dosage of catalyst, already... Nothing seems to be happening.' You ask her if that means what you fear. 'Let's wait. If no mutation happens, I'll get another dosage, but it's the last.' So, everything that's left for you to do is wait and hope this wasn't all in vain. 'Call me if something happens. I'm going to attend to other business outside.' She says, before leaving the room with you and the subject all by yourselves. You keep your eyes on the canine, paying attention to any change that could happen at any moment.";
	WaitLineBreak;
	say "     This moment has you thinking about things as they happened so far. You've been helping Joanna through all this, collecting things for her and have even developed a good relationship, but you never knew about her past. She seemed to hide that on purpose... Why, though? Did she have her reasons...? Judging by what Medea said, that she could have helped Joanna more, you get the feeling she was investigating something before the outbreak. Sometimes, it is hard to remember a time before the nanites and all the sex-crazed creatures roaming the streets. It is as if the nanites erased that part, and the only reality is the current one. It bothers you, but at the same time, why would she tell you what she no longer could accomplish? It wasn't important anymore, and you guess you shouldn't blame her... Probably...";
	say "     A sound breaks through the silence in the room, then a bump shows up behind the anthro dog's sheets. You carefully take hold of them and push them aside, to see what is going on. A small stalk with a phallic tip is growing just next to the furred sheath, and seems to be gaining length and girth as you are keeping watch. Quickly, you go call Medea before something happens...";
	WaitLineBreak;
	say "     You actually have to come find her outside of the lobby, then both return quickly. By then, the cock tendril was already as big as an average human penis, and Medea is staring at it, fascinated. 'She actually did it... I am surprised.' It really gives you an idea that she was expecting Joanna's invention to fail miserably, but here it is. The anthro canine hasn't changed at all, only a plant dick growing next to his furred sheath, just like the ones your kinkajou friend has between her legs. 'This calls it a success. The genetic strain Joanna managed to put together is fully working as intended. Delayed infection, and a lot, given the amount of catalyst I used... It keeps their natural features or pre-existent mutations, now psychological changes remain to be seen. I assume this creates an increse in libido, though it shouldn't be enough to limit their host to the point of becoming useless. I am horny all the time and I can still work, if I serve as an example.";
	say "     Now all that remains is to put the infection in a sex-toy, so you tell Medea that, obviously not before thanking her for everything. 'Yes yes, I know. Note that the vial may have different results in you, since you're already carrying the infection... It might just reinforce your pre-existent nanites and reawaken the infection, mainly due to your shared intimacy with Joanna as she is. Well, for you, it's a way to return to being a plant if anything transforms you. Just use it very, very often. Even when you think you don't need it anymore. Having some fun doesn't hurt.' She tells you as she gets hard at working on a... manual? 'Did you expect me to craft them myself? No, I'm merely providing instructions. Let your friend do the work, she probably has better materials than I could ever have for this kind of thing.";
	WaitLineBreak;
	say "     Finally, Medea hands you the tested vial and the instructions on how to apply it on a crafted object for self-pleasure. You thank her for all the trouble. 'No need to thank me. It was a learning experience for myself.' she says. Now you're ready to [bold type]return to the Flower Garden[roman type] and give Joanna the excellent news.";
	now resolution of Spreading Flowers is 10; [to Joanna after Medea]

instead of navigating Flower Garden while (Resolution of Spreading Flowers is 10):
	say "[NavCheck Flower Garden]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Flower Garden;
	say "     After you've got the vial tested and Medea's instructions, you go back to Joanna with a feeling of accomplishment. When you enter, you see the kinkajou woman in her usual spot, admiring her own foliage and flowers. She seems deep in thought by the time you approach her, and she doesn't see you coming until you're half-way towards her. 'Oh, sweetie! You're back! I assume you bring news, this time?' Nodding, you hand her the vial and the documents that the doctor provided. 'Does this mean... It all worked well?! Really?' she asks, with joy in her eyes, and almost a sort of unbelief. Confirming that you, indeed, were successful, she nearly bursts into tears. This means a lot to her, and you've managed to bring her wish to reality. 'I can't thank you enough... Seriously, you're the best! I'm so glad it was you who saved me...'";
	say "     She reaches out for you with an embrace, hugging you tightly against her chest. The tendrils accompanying her seem excited to have you so close, waving around you with affection. 'I will finally be able to share my gift safely... This is a dream coming true...! I still can't believe it's happening...' You stroke her cheek, reminding her that this is, indeed, a real thing, that you both achieved. 'Yes... It's true... I can't wait to get started with crafting some toys! Would you help me with the first?' Loosening her grip, she lets you go as she grabs the things you brought, instead. Fortunately, she seems to understand everything Medea wrote on how to create an infectious sex toy... Except she'll be using her own strain.";
	WaitLineBreak;
	say "     'Hm... I have some plants here in my garden that can be used to create dildos. Though, like all plants, they must be fed or they'll wither! They need lots of attention!' Crafting dildos out of her own plants is actually ingenious, and that must explain why Medea refused to create one with her own materials. It is much more effective if Joanna uses a natural part like herself. 'There. This should work! The strain will tend to itself, the only thing this dildo requires is to be used frequently! I take it you'd like to have the first?' She hands you her first, hand-made plant-like dildo, which looks shockingly like her own cock tendrils['] tip. 'Now with my seed and my toy, you'll be carrying more of me with you all the time.' she says, with a giggle.";
	say "     Though celebrations may have to be left for later. Joanna [bold type]made a promise to tell you everything about her past[roman type]... Would you like to [bold type]remind her of that[roman type]? Or perhaps, knowing how uncomfortable she sounded when talking about it, should you simply [bold type]drop the subject and avoid it from now on?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Bring the subject.";
	say "     ([link]N[as]n[end link]) - Just hug her and drop it. It's not important anymore.";
	if player consents:
		LineBreak;
		say "     No, you need to know the truth. About how Joanna knew of all this, and who she was before the nanite outbreak. You have to ask her... And so you do. 'Oh... I did tell you that, didn't I?' She makes a pause, looking at you, then downwards, before continuing to speak, 'I suppose... if that's important to you, then I'll tell you.' She grabs your hands and looks at you in the eyes. She is about to say something...";
		WaitLineBreak;
		say "     'Before the nanite outbreak, I was a reporter. I had this very important task, to investigate the local laboratories. Zephyr and Trevor... The ones which, you could say, contributed to the chaos we're facing today. Everyone blames one of them, but it was the discovery of what was happening in the underground laboratories in the Trevor facilities that got me most worried. Using genetic recombination to create creatures of their own with Zephyr knowledge, I was sure they knew of what was going on... and decided to keep it all a secret. I wanted to expose them in order to put a stop to all this. I could have saved everyone... I could have... gotten there sooner...' Her voice starts to stutter.";
		say "     'But I never managed to gather enough evidence. Then, the outbreak took place, and I got in the situation you know. My curiosity then brought me to the parasitic plant, and it ended up like this. It would have been much worse if it wasn't for you...' She takes a deep breath, inhaling and exhaling, to let all those negative thoughts go away. 'There, now you know. That's why I managed to formulate all this plan by myself. I knew how to... I just needed someone working with me, and I'm glad you were here to do that for me.'";
		WaitLineBreak;
		say "     With this information in your possession, you thank her for taking her time to explain everything to you. She looks like she needs some cuddling, so you reach for an embrace and stay with her for a long, long time... She truly appreciates it.";
		now resolution of Spreading Flowers is 11; [Knows Joanna's past]
	else:
		LineBreak;
		say "     Whoever she was before what she is now, is not important. So you drop the subject and after accepting her gift, you cuddle with her for a long, long time... She truly appreciates it.";
		now resolution of Spreading Flowers is 12; [Doesn't know about Joanna's past]
	ItemGain Plant-Like Dildo by 1;
	now HP of Joanna is 12;
	now Spreading Flowers is resolved;

Section 3 - Flower Garden

Table of GameRoomIDs (continued)
Object	Name
Flower Garden	"Flower Garden"

Flower Garden is a room. It is fasttravel. It is private. It is sleepsafe.
Description of Flower Garden is "     Joanna's garden is lush and beautiful, thriving with large and fragrant flowers under her care. Having cleared away the remains of the monstrous plant, she's taken its place at the center of the garden. She uproots herself from time to time to walk around and tend to her flowers. There is a stone path to walk that weaves through the various beds and bushes.".
lastflowersmell is a number that varies. lastflowersmell is usually 555.
Skyscrapers2 is a door. "Leaving here to the east heads back into the High Rise District.".
Skyscrapers2 is west of Financial Sector and east of Flower Garden. It is dangerous.
the marea of Skyscrapers2 is "High".

the scent of Flower Garden is "[flowergardenscent]".

to say flowergardenscent:
	say "The flower garden smells wonderful, with an array of beautiful fragrances in the air, much nicer than the smell of the city surrounding it";
	if morale of Player < level of Player and lastflowersmell - turns < 8:
		say ".";
	else:
		say ". Stopping to smell the roses cheers you up a little.";
		increase morale of Player by 5;
		increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
		now lastflowersmell is turns;


Section 4 - Joanna the Kinkajou-Plant

Table of GameCharacterIDs (continued)
object	name
Joanna	"Joanna"

Joanna is a woman. Joanna is in Flower Garden.
Description of Joanna is "[joannadesc]".
Conversation of Joanna is { "Sunshine!" }.
lastjoannajuice is a number that varies. lastjoannajuice is usually 555.
joannatalk is a number that varies.
joannaoffernum is a number that varies.

the scent of the Joanna is "[joannascent]".

to say joannascent:
	if HP of Joanna is not 0 and HP of Joanna < 90:
		say "Moving up close to her, you stroke Joanna's hair and bring one of the blossoms to your nose. It has a lovely fragrance, uniquely lovely and perhaps the best flower you've ever smelled";
		if morale of Player > level of Player or lastflowersmell - turns < 6:
			say ".";
		else:
			say ". Stopping to smell the roses cheers you up a little.";
			increase morale of Player by 5;
			increase Libido of Player by 5;
			if Libido of Player > 100, now Libido of Player is 100;
			now lastflowersmell is turns;
	else:				[Joanna at Palomino]
		say "Joanna smells faintly of sweat from dancing, though there's hint of flowers beneath that.";

to say joannadesc:
	if HP of Joanna is not 0 and HP of Joanna < 90:
		say "     Joanna is a plant-like kinkajou and is a little over five and a half feet tall. Her fur has become green and her feet end in roots and tendrils that wriggle in the soft soil. Her face fur and large, expressive eyes have become a vibrant red, a beautiful contrast to her verdant body. Her long hair remains and is green now as well and has lovely red flowers growing amongst it. Her slender tail is quite long, nearly as long as she is tall. As a plant, she remains nude to bask in the sun's light, wearing naught but a sun hat on the hottest of days. Her breasts are shapely globes and there are soft petals ringing her nipples[if HP of Joanna >= 5]. She certainly seems healthier, with lusher green hair with larger blossoms in it. Her breasts seems to have grown a bit as well[end if]. At her groin, she has a quartet of cock tendrils and a trio of wet, flowery cunts beneath them.";
		say "     Also known as a honey bear, kinkajous are normally small creatures who live in the South American rainforest and live off honey and the nectar of flowers using their long tongues. Something between ferret and monkey in appearance, these are cute and peaceful creatures. Having become a plant herself, Joanna has made her home in this garden and enjoys the peaceful life of being a flower in her own garden and a kinkajou surrounded by lovely and fragrant flowers, dripping with nectar.";
	else:				[Joanna at Palomino]
		say "     Joanna is kinkajou woman with short, brown fur and long, brown hair. She's about five and a half feet tall and dressed in a loose, green shirt and black denim shorts. Looking something like a cross between a monkey and a ferret, she has a slender build, nimble paws and a tail nearly as long as she is tall. Her face has a cute smile on her short muzzle along with large, expressive eyes and round ears. The fur on her face is a darker, chestnut brown. She is dancing energetically among the crowd at the club, enjoying the nightlife.";


Instead of conversing the Joanna:
	[Joanna at Palomino]
	if HP of Joanna is 0:
		say "     Curious about the unusual looking creature on the dance floor, you try to move up to talk to her, but she's too into her dancing and it's too crowded around her to get close. She gives you a little smile, but keeps on going. Moving back off the dance floor, you decide to ask Tristian about her. 'Who? Oh, her,' he says with disinterest. 'Her name's J-something. Jackie? Joannie? Jolie?' he adds, trying to remember. 'Been around here most nights. Not my type though. Too much up here,' he says, cupping non-existent breasts. 'And not down here,' he finishes, grabbing his crotch.";
		say "     Harold, who was passing by with a case of beer under one arm, gives the horse a light smack on the back of the head. 'Her name's Joanna and she's a sweet girl. A little too plain-Jane for me, but nice enough. Only orders straight fruit juice, never any of the hard stuff,' he explains as he talks with you while restocking the bar. 'We've chatted a bit at the bar. She's a kinkajou, so she's nocturnal and only comes out here to dance at night. Gets too sleepy during the day to do much. She's here most nights, so you should be able to talk to her sometime. I'll introduce you.";
		now HP of Joanna is 91;
	else if HP of Joanna is 90:
		say "     Spotting Joanna among the dancers, you move out onto the floor to join her. She smiles to you as you wave, but then recognizes you and moves over to dance with you. 'I'm glad you decided to stop by,' she says, struggling to be heard over the music. Once the song's done, she moves off the dance floor with you to chat by the bar for a bit. She smiles to Harold and says hello to him as well, the two clearly having chatted before. He sets out a juice drink for her without her asking and she tells him that you were the guy who helped her with her dog problem. The three of you chat for a bit. While talking, her surprisingly long tongue slides from her muzzle, diving into the glass to lap up the juice. From the grin on her face, she's clearly doing it to show off.";
		say "     'I'm not really sure how I ended up this way. I went to bed and didn't wake up until the next evening. By that point, I looked like this. So I'm a kinkajou now, and since they're nocturnal, all I want to do is sleep during the day. They eat mostly nectar and honey, so it's fruit juice and flowers for me,' she says with a cute giggle. 'Just the plain stuff, though. No liquor and certainly none of Harold's crazy mixes.' The bartender just smiles at that, clearly okay with her teasing. 'But it's nice this place is open. It's a fun, safe place for me to go at night.'";
		say "     The three of you chat for a while until a song change occurs and Joanna gets up. 'Oh, I love this song. Catch you later, hon,' she says with a wave before dashing back into the crowd to dance.";
		now HP of Joanna is 92;
	else if HP of Joanna is 91:
		say "     Spotting Joanna over at the bar with Harold, you go over to join them. The unicorn smiles and introduces you to her and she welcomes you with a smile. The three of you chat for while, the bartender getting you two acquainted before sliding her another fruit juice drink and moving off to deal with other patrons for a bit. While talking, her surprisingly long tongue slides from her muzzle, diving into the glass to lap up the juice. From the grin on her face, she's clearly doing it to show off.";
		say "     'I'm not really sure how I ended up this way. I went to bed and didn't wake up until the next evening. By that point, I looked like this. So I'm a kinkajou now, and since they're nocturnal, all I want to do is sleep during the day. They eat mostly nectar and honey, so it's fruit juice and flowers for me,' she says with a cute giggle. 'Just the plain stuff, though. No liquor and certainly none of Harold's crazy mixes.' The bartender just smiles at that, clearly okay with her teasing. 'But it's nice this place is open. It's a fun, safe place for me to go at night.'";
		say "     The three of you chat for a while until a song change occurs and Joanna gets up. 'Oh, I love this song. Catch you later, hon,' she says with a wave before dashing back into the crowd to dance.";
		now HP of Joanna is 92;
	else if HP of Joanna is 92:
		say "     [one of]'It's kind of odd being a fuzzy, little animal, but I kind of like it,' she says with a smile.[or]'I'm here most of the time at night, though sometimes I'll go around and look for flower gardens. Nectar is just so delicious,' she says, running her foot-long tongue across her muzzle as she thinks about tasting them.[or]'We should dance for a bit,' she says, enjoying the music.[or]You try to move over to Joanna, but the crowd on the dance floor is too thick.[or]Joanna smiles and waves to you, but keeps on dancing.[at random]";
	[Joanna at her garden]
	else if joannatalk is 0:
		say "     Joanna [if daytimer is day]turns away from stretching herself to the sun to smile at you[else]stretches, a little sluggish at night and turns to smile at you[end if]. 'That was quite the little adventure we had, wasn't it? I had just been getting used to being a kinkajou and spent a lot of my time at night scurrying around or dancing at that club. Now I've got to switch my schedule around again,' she says with a soft chuckle, trying to put a brave face on what is a very dramatic change. 'At least a plant's calendar's pretty simple: get some sunshine. Should be easy enough to handle,' she adds, smiling weakly.";
		say "     She steps over to one of the nearby plants and strokes its enlarged flowers, almost sensually so. Cupping it in her paw gently, she brings it to her lips and dives her long tongue inside, lapping up the nectar with a soft sigh of satisfaction. 'This is such a lovely garden. These giant flowers are very beautiful, and so delicious. Now that the big parasite is gone, it should be much more peaceful and grow even more lovely.' She heads over to its remains, giving the remaining roots a few angry stabs with a spade before working in some of the fertilizer from the torn bags and getting you to put the rest away for now. With her new spot prepared at the center of the garden, she digs her feet into it with a little trepidation, but sighs softly in delight as her roots dig into the rich earth.";
		increase joannatalk by 1;
	else if HP of joanna is 1:
		say "     [one of]'I should be safe enough here. The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'It's... really strange being a plant,' she says, running her paws over her altered body.[or]'You should remember to take a moment to smell my lovely flowers,' she says. While she probably means her garden, there's the possibility she could mean her own flowers as well.[or]'I'm glad you stopped by.'[or]'Thanks for the help. I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I have so many beautiful flowers to tend to in my new garden.'[or]'I think I like these ones best,' she says, walking over to one flowering bush. She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[else]'Oh, I get so sleepy when the sun's down. I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[or]'I guess there won't be any all-night dancing anymore at the Palomino,' she says, motioning to her root-like feet digging into the soil.[or]'Be sure to let my friends at the Palomino know that I'm okay. The bartender was kind of nice to me.'[or]'I'm still kinkajou enough to want to be active at night, but I just don't have the energy. It's a little confusing,' she confesses.[at random]";
	else if HP of joanna is 2:
		say "     [one of]'I should be safe enough here. The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'I'm starting to like the new me,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says. While she probably means her garden, there's the possibility she could mean her own flowers as well.[or]'Life is so peaceful here.'[or]'I'm glad you stopped by.'[or]'Thanks for the help. I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I have so many beautiful flowers to tend to in my garden.'[or]'I think I like these ones best,' she says, walking over to one flowering bush. She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[else]'Oh, I get so sleepy when the sun's down. I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[or]'I'm still kinkajou enough to want to be active at night, but I just don't have the energy.'[or]'I guess there won't be any all-night dancing anymore at the Palomino,' she says, motioning to her root-like feet digging into the soil.[or]'Be sure to let my friends at the Palomino know that I'm okay. The bartender was kind of nice to me.'[or]'This plant body of mine has such... strange urges,' she whispers, her tendrils stirring a little.[at random]";
	else if HP of joanna > 2 and ( FaceName of Player is "Parasitic Plant" or BodyName of Player is "Parasitic Plant" or SkinName of Player is "Parasitic Plant" or CockName of Player is "Parasitic Plant" or TailName of Player is "Parasitic Plant" ) and lust of Joanna is 0:
		say "[plantexam]";
		say "     After examining you, Joanna releases you and takes a step back. She's blushing a little, but grinning coyly as well. 'You make a lovely plant, my dear,' she chirrs as her own tendrils rustle with obvious excitement[if daytimer is day], quite aroused and ready for fun now[else], gradually settling back down as they return to their dormant, nighttime state[end if]. Meanwhile, you have become quite aroused by the plant kinkajou's playful examination of your plant features.";
		if Libido of Player > 100, now Libido of Player is 100;
	else if HP of joanna < 5:
		say "     [one of]'I should be safe enough here. The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'I'm really liking the new me,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says. While she probably means her garden, she does grin and run a finger along the soft petals of her pussies.[or]'Life is so peaceful here.'[or]'Thanks for the help. Being a plant is wonderful, but I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I think I like these ones best,' she says, walking over to one flowering bush. She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[else]'Oh, I get so sleepy when the sun's down. I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[or]'Be sure to let that cute bartender at the Palomino know that I'm okay. The bartender was kind of nice to me.'[or]'I'm still kinkajou enough to want to be active at night, but I just don't have the energy.'[or]'This plant body of mine has such... strange urges,' she whispers, her tendrils stirring a little.[at random]";
	else if HP of joanna is 5 and lust of joanna is 3 and ( lastfuck of joanna - turns >= 5 ) and daytimer is day:
		say "[joannaoffer]";
	else if HP of joanna is 5 or HP of Joanna is 6:
		if HP of Joanna is 6 and a random chance of 1 in 4 succeeds and joannaoffernum is not 4 and ( lastfuck of joanna - turns >= 5 ) and daytimer is day:
			say "[joannaoffer2]";
		else:
			say "     [one of]'Wouldn't you love staying here in my beautiful garden with me?'[or]'I think being a plant is wonderful,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says as she spreads the petals of her pussies with a grin.[or]She grins and cups one of the large, vaginal flowers in her paw and slowly slides her tongue around its edge before diving into it, making a sensual show of her feeding.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[else]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm feeling so much better now that I'm letting myself have sex. This body craves it, needs it, and I'm really enjoying it as well,' she says, running a paw over your chest.[at random]";
	else if HP of Joanna is 7:
		say "     [one of]'Wouldn't you love staying here in my beautiful garden with me?'[or]'I think being a plant is wonderful,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says as she spreads the petals of her pussies with a grin.[or]She grins and cups one of the large, vaginal flowers in her paw and slowly slides her tongue around its edge before diving into it, making a sensual show of her feeding.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[else]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm so glad you decided to take my seed and be my special hero again,' she says, running a paw over your chest.[or]'Please be kind to my precious seed inside you, hon.'[or]'Be sure to have as much sex as you can out there. Gather lots of seed for me and my precious seed inside you.'[at random]";
	else if HP of Joanna is 8: [only temporarily as she examines the documents]
		say "     [one of]'Not now, hon. I'm still figuring out a few things before we move onto the next phase.' she says, face nearly buried in the pile of papers you brought from the sealed area under the Trevor Labs.[or]'If only I could have been there in time before the outbreak... O-oh, you're still here?' she turns to you, rather surprised by your presence. Looks like you caught her talking to herself.[or]'No, still nothing.' she says to you, 'I'll keep studying this, I'm sure I'll find a way...'[or]She's silently studying the big heavy dossier you got her, completely focused in her task.'[or]'Need anything, sweetie? I'm a little busy with these documents, but what I can provide, I'll give...!' she tells you with a rather teasing giggle.[or]'Truly abominations... These were never meant to see the light of the day. I hope I can make something better, something that makes people happy...'[or]'Reports say that they've been experimenting on this even before the nanite outbreak, in secrecy... What were their goals?' You are pretty sure she is talking to herself.[at random]";
	else if HP of Joanna is 9: [on the human dogs or awesome tree stage]
		say "     [one of]'One day, the entire world will be as verdant and beautiful as this garden. I hope I can give it that.' she says, with a gleam in her eyes.[or]'Sweety, don't overdo yourself. If you need to rest, you know what to ask of me...' she says, sliding a hand over her chest in a way to tease you.[or]'You should remember to take a moment to smell my lovely flowers,' she says as she spreads the petals of her pussies with a grin.[or]She grins and cups one of the large, vaginal flowers in her paw and slowly slides her tongue around its edge before diving into it, making a sensual show of her feeding.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[else]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm so glad you decided to take my seed and be my special hero again,' she says, running a paw over your chest.[or]'Please be kind to my precious seed inside you, hon.'[or]'Be sure to have as much sex as you can out there. Gather lots of seed for me and my precious seed inside you.'[at random]";
	else if HP of Joanna is 10: [synthesizing Awesome Tree items]
		say "     [one of]'One day, the entire world will be as verdant and beautiful as this garden. I hope I can give it that.' she says, with a gleam in her eyes.[or]'Sweetie, don't overdo yourself. If you need to rest, you know what to ask of me...' she says, sliding a hand over her chest in a way to tease you.[or]'Synthesis is going okay. My own biology allows for a clear product in the end, so let's just wait.' she says, smiling to you.[or]'Thank you so much for what you've done for me until now. I am a little tired, currently, but we can still have fun if you desire...' she lets you know, caressing your cheek.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[else]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm so glad you decided to take my seed and be my special hero again,' she says, running a paw over your chest.[or]'Please be kind to my precious seed inside you, hon.'[or]'Be sure to have as much sex as you can out there. Gather lots of seed for me and my precious seed inside you.'[at random]";
	else if HP of Joanna is 11: [Waiting on Medea]
		say "     [one of]'One day, the entire world will be as verdant and beautiful as this garden. I hope I can give it that.' she says, with a gleam in her eyes.[or]'Sweetie, don't overdo yourself. If you need to rest, you know what to ask of me...' she says, sliding a hand over her chest in a way to tease you.[or]'I hope Doctor Medea can help us, please take care of that as soon as you can, okay?'.[or]'Thank you so much for what you've done for me until now. I really hope you bring good news, eventually...' she says, a little anxious.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[else]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm so glad you decided to take my seed and be my special hero again,' she says, running a paw over your chest.[or]'Please be kind to my precious seed inside you, hon.'[or]'Be sure to have as much sex as you can out there. Gather lots of seed for me and my precious seed inside you.'[at random]";
	else if HP of Joanna is 12: [Quest fully resolved]
		say "     [one of]'One day, the entire world will be as verdant and beautiful as this garden. And thanks to you, I can give it that!' she says, with a gleam in her eyes.[or]'Sweetie, don't overdo yourself. If you need to rest, you know what to ask of me...' she says, sliding a hand over her chest in a way to tease you.[or]'I've been thinking of a few more types of sex toys... What do you think of some large round geisha seeds?'.[or]'Thank you so much for what you've done for me. You're my favorite hero in the world!' she says, joyfully.[or]'Have you had lots of fun with my sex toy?' she asks you with a teasing voice.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[else]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm so glad you decided to take my seed and be my special hero again,' she says, running a paw over your chest.[or]'Please be kind to my precious seed inside you, hon.'[or]'Be sure to have as much sex as you can out there. Gather lots of seed for me and my precious seed inside you.'[at random]";

to say plantexam:
	say "     Joanna blushes a little and tucks her paws between her legs as if trying to hide her stirring arousal. 'I... I noticed that you're part plant as well. That wasn't because of the one that got me, was it? Or because of me?' she adds, fumbling to restrain her stirring tendrils. 'Could you tell me what happened?' You nod and relate to her how you ended up this way and she grows more aroused as you detail your changes and she runs her paws over your altered body. 'Life as a plant is so much better. I think you should relax and enjoy it.'";
	WaitLineBreak;
	say "     Joanna's paws slide over you as she takes in your plant-like features";
	if Player is plantbodied or player is plantskinned:
		say ". Her fingers roam over your altered body, thoroughly enjoying this chance to examine you and you can't help but moan a little in response to her touch";
	if Player is plantfaced:
		say ". She brings a paw up to your feminine face, stroking your cheek before teasing a fingertip along the lips of your pussy-like mouth. She slips a finger into your pussy-mouth and grins as it starts sucking on her digit. Withdrawing the finger, she leans in and gives you a kiss, driving her long, slick tongue in instead. Your pussy-mouth automatically starts squeezing and milking at it, coaxing some of her sweet fluids from it before she pulls away to break the kiss";
	if Player is planttailed:
		say ". Lowering herself down, she moves to examine your vaginal anus, teasing her fingertips around it and slathering her tongue across it until you start to moan and drip with juices";
	if Player is plantcocked:
		if Player is male:
			say ". She runs her paws over your tendril cock[smn], much like her own. She teases at [if Cock Count of Player > 1]the glans of one[else]its glans[end if], finding it has a more human shape than her tapered, more animalistic ones. You are quickly aroused to the point of dribbling with precum";
		if Player is female:
			say ". She moves on to your leaking [if Cunt Count of Player > 1]cunts, fingering them[else]cunt, fingering it[end if], lightly as she lets her tongue slide all over your dripping folds. She chirrs in appreciation as she enjoys your tasty juices";
	say ".";
	increase Libido of Player by 25;
	increase lastfuck of joanna by 6;
	now lust of Joanna is 1;
	if HP of Joanna < 5, now HP of Joanna is 5;

to say joannaoffer:
	say "     As you come up to talk to Joanna, she puts her arms around you and runs her paws over you. 'Mmm... I was hoping you'd stop by, sweetie. I've been really enjoying our time together, but I'm starting to want more. I crave more,' she says, sliding her long tongue across your cheek, making you shiver in delight? fear? anticipation? Her fingers continue over your body, teasing you lightly. 'Will you help me, my lovely hero?[no line break][if plantdefeat > 0] I may even be able to help you out a little while I'm at it,[end if]' she purrs, sliding her tongue across your ear before nibbling on it. 'It's nothing much. Just a little seed,' she whispers.";
	say "     [bold type]Shall you accept her offer?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "[joannaseeded]";
	else:
		LineBreak;
		now joannaoffernum is 1;
		now HP of Joanna is 6; [locked in current status]
		say "     Joanna sighs sadly at your response, but nods and caresses your cheek. 'I had hoped you'd be the one I need.' Resting her head against your shoulder, she dries her wet eyes against your shoulder. 'I hope you'll reconsider my offer in the future.'";

to say joannaoffer2:
	say "     As you come up to talk to Joanna, she puts her arms around you and runs her paws over you. 'Mmm... I was hoping you'd had a chance to reconsider my offer, sweetie. I crave more cum and my precious seed needs a home,' she says, running her tongue across your cheek.";
	say "     [bold type]Shall you accept her offer?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "[joannaseeded]";
	else:
		LineBreak;
		increase joannaoffernum by 1;
		say "     Joanna sighs sadly at your response, but nods and caresses your cheek. 'I had hoped you'd be the one I need.' Resting her head against your shoulder, she hugs you tightly[if joannaoffernum is 4]. 'I'll not bother you again about it, hon,' she sobs, wiping her eyes as she moves off to be alone for a bit[else]. 'I hope you'll feel more open to sharing this special bond with me soon,' she says before letting you go[end if].";

to say joannaseeded:
	now HP of Joanna is 7;
	say "     She smiles with delight, tears at the corners of her large, expressive eyes before pulling you into a lustful kiss that has her tongue diving into your mouth and immediately down your throat. You can taste her sweet nectar flow from it and down into your belly, where it fills you with a lustful need for her far stronger than you've ever felt. You want to give yourself to this beautiful flower, to accept whatever she wants of you. Reaching down, you take her tendril cocks in hand, rubbing and stroking them. When she finally breaks the kiss, you moan softly, drugged into aroused submission by her juices.";
	if plantdefeat > 0:
		say "     She runs her paws over your waist, caressing it tenderly. 'First, we need to get rid of that bad seed in you.' Her fingers slide along your hips and down to your [if Player is female]pussy[else if Player is planttailed]vaginal anus[else]anus[end if] and starts caressing it. Slowly at first, her fingers extend into tendrils that push into your passage as they grow. You moan in pleasure at this, but then groan in discomfort as they reach that firm spot inside you where the other plant's seed rests. Joanna kisses and nuzzles at you, whispering that it'll be over soon as your insides roil painfully even through the lustful haze as the seed resists removal. But eventually, the pain stops as it's forced to release its hold on your [if Player is female]uterus[else]insides[end if] and is pulled free with a wet pop that leaves you feeling empty inside.";
		say "     Joanna tosses the seed aside onto the cement entrance to one of the nearby buildings. 'I'll deal with that thing later, hon. But the bad seed's gone now. How do you feel?' she asks, caressing her tendrils against your inner walls where the seed once rested. 'Empty,' you respond, strangely feeling sad that it's gone. She awws tenderly and kisses your cheek. 'Don't worry, I have something much nicer to fill you up.'";
	else:
		say "     She runs her paws over your waist, caressing it tenderly. 'First, we need to prepare a spot for it.' Her fingers slide along your hips and down to your [if Player is female]pussy[else if Player is planttailed]vaginal anus[else]anus[end if] and starts caressing it. Slowly at first, her fingers extend into tendrils that push into your passage as they grow. You moan in pleasure at this, then groan in discomfort as they reach inside you and press against your [if Player is female]uterine walls[else]inner walls[end if]. Joanna kisses and nuzzles at you, whispering that it'll be over soon as she seeps her euphoric nectar inside you in preparation.";
	say "     Still holding you close with one arm, Joanna guides your head down to her bosom. You wrap your lips around her nipple, nursing and suckling her sweet juices from her breast, making her moan in pleasure. Your [if Player is herm]balls throb with increased production and your wet folds flow with feminine juices[else if Player is male]balls throb with increased production[else]wet folds flow with feminine juices[end if] as you nurse for her potent, aphrodisiac juice. As you continue drinking down the transformative liquid, you can feel her tendril cocks rubbing along your groin and soon diving into your [if Cunt Count of Player > 1]pussies[else if Cunt Count of Player is 1]pussy[else if Player is planttailed]vaginal anus[else]anus[end if]. Your lust-ridden body welcomes them inside you with a powerful orgasm that lasts throughout the fucking they give you, peaking as a large bulge is pushed up through one of them and [if Player is female]pressed onto that tender spot on your womb[else]sent deep inside your bowels to rest on that tender spot waiting for it[end if]. As it attached to you, you feel a rush of pleasure spread throughout your body and a growing attachment to Joanna as you become her seed-carrier and cum collector.";
	say "     Feeling weak, but strangely fulfilled, after the ordeal, you sit on the grass with Joanna, snuggled in her arms with cum leaking from your well-stuffed [if Cunt Count of Player > 1]cunts[else if Cunt Count of Player is 1]cunt[else]hole[end if]. 'Now my seed's in you, my precious lover. Please be kind to it and give it all the cum you can get. Accept its love when it needs it, too.' You nod in agreement, still deep in the euphoric haze and flush with the pleasure of becoming closer to your lovely flower.";
	now plantdefeat is 1;
	now researchbypass is 1;
	infect "Parasitic Plant";
	infect "Parasitic Plant";
	now researchbypass is 0;


Section 5 - Joanna Sex

the fuckscene of Joanna is "[sexwithJoanna]".

to say sexwithJoanna:
	if lastfuck of joanna - turns < 8 and HP of Joanna < 5 and HP of Joanna is not 0:
		say "     Having played with Joanna recently, perhaps you should wait a bit before having another romp with her. She could use a little more time in the sun to recharge and refill on her sweet juices.";
	else if lastfuck of joanna - turns < 5 and HP of Joanna >= 5 and HP of Joanna < 90:
		say "     Having played with Joanna recently, perhaps you should wait a bit before having another romp with her. She could use a little more time in the sun to recharge and refill on her sweet juices.";
	[Joanna at Palomino]
	else if lastfuck of joanna - turns < 8 and HP of Joanna is 92:
		say "     Joanna smiles at your offer, but seems happy to just dance for now. Perhaps you should try again later.";
	else if HP of Joanna is 0 or HP of Joanna is 90 or HP of Joanna is 91:
		say "     You hardly know her. Perhaps you should try talking to her a bit and get to know her better before you make such an offer.";
	else if HP of Joanna is 92:
		if Player is not male:
			say "     You wait for a moment when the kinkajou's not dancing to approach her. Joanna blushes a little at your offer, but shakes her head. 'I'm sorry, but I'm not really into that kind of thing. I'm a regular girl who's only into guys.'";
		else:
			say "[joannaclubsex]";
	[Joanna at Flower Garden]
	else if daytimer is night:	[night]
		say "     You make the suggestion to Joanna, but she smiles and shakes her head. 'Sorry, with the sun down, I'm just a little too sleepy to play around. Please ask again during the daytime and I'd be happy to show you how much I appreciate all your help.'";
	else if HP of Joanna is 1:
		say "     You move up to the unusual plant girl and run a hand lightly over her soft fur. She chirrs softly and leans into your touch, not really aware of what she's doing right away. You put your arms around her from behind, holding her close to you, watching her tendril cocks start to stir to life. You whisper softly in her ear that you like to make love to her, and she somehow blushes even more red in the face. 'You... you can't really mean that,' she says, moving her paws to try to cover her swelling cocks. 'Who'd want a strange plant creature like me?' she mumbles softly. Sliding your hands down to hers, you rub over them and thereby the growing cocks they're trying to conceal, telling her that you want her and want her now.";
		say "     Unable to hold back her growing desires any longer, she turns around quickly, if a little unsteadily as she uproots her feet with the sudden maneuver. Once she steadies herself, blushing a vibrant red again, she pulls you into a passionate kiss. Her long tongue slides into your mouth. You both are taken a bit by surprise from this, but find it very enjoyable. It tastes sweet and slides around in your mouth before diving deeper and going down your throat. Fluid leaks from it and you find yourself growing all the more aroused because of its effects. You struggle to decide how you'd best enjoy your first time with this nervous flower.";
		wait for any key;
		say "[joannaselection]";
	else if HP of Joanna is 2:
		say "     Joanna smiles a little at your sensual touch and blushes a bit, but leans into your arms. Her arms drift down to her groin, as if trying to cover up her excited body. But as you run your hands across her breasts and caress her petaled nipples, her paws begin to touch herself instead. Nuzzling you, she whispers softly that she'd like to try more this time, stroking her cocks and fingering her pussies as she asks to have sex with you this time. Tilting her head to yours, she presses her muzzle to your lips. As you kiss, her tendril tongue slips into your mouth to slide around. As you taste the sweet nectar leaking from it, it is clearly an aphrodisiac meant to arouse her lovers and it makes you quite aroused to consider what you want.";
		wait for any key;
		say "[joannaselection]";
	else if HP of joanna > 2 and ( FaceName of Player is "Parasitic Plant" or BodyName of Player is "Parasitic Plant" or SkinName of Player is "Parasitic Plant" or CockName of Player is "Parasitic Plant" or TailName of Player is "Parasitic Plant" ) and lust of Joanna is 0:
		say "[plantexam]";
		wait for any key;
		say "     After examining you, the green kinkajou grins happily and wraps her arms around you, pulling you into another passionate kiss, diving her long tongue into your [if Player is plantfaced]pussy-like [end if]mouth. It tastes sweet and slides around in your mouth before diving deeper and going down your throat. As it starts leaking more of that sweetly arousing fluid[if Player is plantfaced] as your vaginal orifice milks and sucks at it[end if], you try to decide exactly what you'd like to do to enjoy your time with your flowery lover, already quite aroused by her playful touching.";
		wait for any key;
		say "[joannaselection]";
	else if HP of joanna is 5 and lust of joanna is 3:
		say "[joannaoffer]";
	else:
		say "     The green kinkajou grins happily as you offer to have some more fun in the sun with her. She wraps her arms around you and kisses you passionately, diving her long tongue into your [if Player is plantfaced and lust of joanna > 0]pussy-like [end if]mouth. It tastes sweet and slides around in your mouth before diving deeper and going down your throat. As it starts leaking more of that sweetly arousing fluid[if Player is plantfaced] as your vaginal orifice milks and sucks at it[end if], you try to decide exactly what you'd like to do to enjoy your time with your flowery lover.";
		wait for any key;
		say "[joannaselection]";


to say joannaselection:
	blank out the whole of table of fucking options;
	[]
	if HP of joanna is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Bukkake";
		now sortorder entry is 1;
		now description entry is "Lavish attention on her numerous genitalia to get a messy finish";
		now toggle entry is joannasexy rule;
	[]
	if Player is male and HP of joanna is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 2;
		now description entry is "Have her suck you off";
		now toggle entry is joannasexy rule;
	[]
	if Player is female and HP of joanna is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 3;
		now description entry is "Get that wondrous tongue in your womanly flower";
		now toggle entry is joannasexy rule;
	[]
	if Player is male and HP of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Joanna";
		now sortorder entry is 4;
		now description entry is "Stuff her lovely flowers with your cock(s)";
		now toggle entry is joannasexy rule;
	[]
	if Player is female and HP of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Pussy fucked";
		now sortorder entry is 5;
		now description entry is "Go for a ride on those tentacle shafts of hers";
		now toggle entry is joannasexy rule;
	[]
	if Player is not female and HP of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 6;
		now description entry is "Try one of those squirming tentacle cocks up your ass";
		now toggle entry is joannasexy rule;
	[]
	if Player is male and HP of Joanna >= 5:
		choose a blank row in table of fucking options;
		now title entry is "Mutual Fucking";
		now sortorder entry is 7;
		now description entry is "Fuck Joanna while she does you";
		now toggle entry is joannasexy rule;
	[]
	if Cock Count of Player > 1 and ( Cock Length of Player * Cock Count of Player ) <= 64 and HP of Joanna >= 5:
		choose a blank row in table of fucking options;
		now title entry is "Multi-stuff Joanna";
		now sortorder entry is 8;
		now description entry is "Put several cocks in one pussy";
		now toggle entry is joannasexy rule;
	[]
	if HP of Joanna >= 5 and ( Cunt Count of Player is 0 or Cunt Tightness of Player > 4 ):
		choose a blank row in table of fucking options;
		now title entry is "Multi-stuff player";
		now sortorder entry is 9;
		now description entry is "Take those tendrils all in one hole";
		now toggle entry is joannasexy rule;
	[]
	sort the table of fucking options in sortorder order;
	LineBreak;
	select an option from table of fucking options;
	clear the screen;

This is the joannasexy rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry]?";
	if Player consents:
		decrease menu depth by 1;
		clear the screen;
		[puts Parasitic Plant as lead monster for sex change]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Parasitic Plant":
				now MonsterID is y;
				break;
		choose row MonsterID from Table of Random Critters;
		if nam is "Bukkake":
			say "[joannasex1]";
		else if nam is "Fellatio":
			say "[joannasex2]";
		else if nam is "Cunnilingus":
			say "[joannasex3]";
		else if nam is "Fuck Joanna":
			say "[joannasex4]";
		else if nam is "Pussy fucked":
			say "[joannasex5]";
		else if nam is "Anal":
			say "[joannasex6]";
		else if nam is "Mutual Fucking":
			say "[joannasex7]";
		else if nam is "Multi-stuff Joanna":
			say "[joannasex8]";
		else if nam is "Multi-stuff player":
			say "[joannasex9]";
		WaitLineBreak;
		if HP of Joanna < 5, increase HP of Joanna by 1;
		now lastfuck of joanna is turns;
		if lastjoannajuice is turns:
			if lust of Joanna is 2:
				say "     You can feel an oddly pleasant sensation suffusing you. Centered on your belly to begin, it spreads out through your body as Joanna's juice and her sexual fluids seep into you. You feel the telltale tingles of transformation as she's spread her plant-like infection to you from her juicy breasts. In the warmth of the afterglow in the sunny garden, you find it all pleasant and aren't upset by her actions. If anything, you find yourself feeling closer to her and looking forward to your next drink.";
				now lust of Joanna is 3;
				LineBreak;
				infect "Parasitic Plant";
			else:
				say "     You can feel an oddly pleasant sensation suffusing you as Joanna's juice and her sexual fluids are absorbed into your body, spreading her plant-like infection into you.";
				LineBreak;
				infect "Parasitic Plant";
		else if lust of joanna > 1:
			say "     You can feel an oddly pleasant sensation suffusing you as Joanna's sexual fluids are absorbed into your body, reacting with the latent plant-like infection she's bestowed upon you.";
			LineBreak;
			if a random chance of 2 in 3 succeeds:
				infect "Parasitic Plant";
			else if "Microwaved" is listed in feats of Player:
				say "WARNING: Sex shifting nanites detected! Allow?";
				if Player consents:
					say "OK.";
					now skipcockchange is true;
					follow the sex change rule;
					now skipcockchange is false;
				else:
					say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			else:
				now skipcockchange is true;
				follow the sex change rule;
				now skipcockchange is false;
		else:
			say "     You can feel an oddly pleasant sensation as Joanna's sweet saliva and fluids seep further into your body, warming your groin and exciting you.";
			LineBreak;
			if "Microwaved" is listed in feats of Player:
				say "WARNING: Sex shifting nanites detected! Allow?";
				if Player consents:
					say "OK.";
					now skipcockchange is true;
					follow the sex change rule;
					now skipcockchange is false;
				else:
					say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			else:
				now skipcockchange is true;
				follow the sex change rule;
				now skipcockchange is false;
		wait for any key;


to say joannasex1:
	say "     Deciding the please the garden's loveliest flower, you break the deep-throating kiss and lower yourself to your knees. Her numerous genitalia offer plenty of choices for you to play with. You start by running your tongue over one of her cocks while your fingers stroke her thighs, then move to stroke the folds of her wet pussies. Dripping with sweet nectar, you stroke those lovely flowers, dipping a few fingers into each of them, switching from one to the next after a few strokes. Your mouth meanwhile has taken her cock in and the green tendril squirms down your throat, leaking her sweet, arousing juices into you. She runs her paws over your head while her other green shafts move on their own, rubbing against your face, smearing precum over you. After a good long suck on that one, you move to another cock, and then another. As you're switching to the last one, Joanna moans and sends the tendril down your throat moments before she cums hard. Her sweet cum blasts down into your belly and blasts across your face, painting you in her semen. Once the cumming tendrils have released you, you sit back and wipe her sugary semen from your face with one hand and lick it up. The other is firmly between your legs, playing with your aching loins until you cum moments later.";
	LibidoBoost 15;


to say joannasex2:
	say "     Reaching down, you stroke your throbbing [Cock of Player] cock[smn] and slowly break the deep-throating kiss. You stroke her softly furred muzzle and ask her if she's like a taste of it. Grinning, she's on her knees right away. Her long, agile tongue slides over your glans and then wraps completely around your [if Player is plantcocked and lust of joanna > 0]green, tentacle [end if]penis, stroking and squeezing as she starts sucking hungrily. You moan in pleasure and run your fingers through her green hair, being careful not to pluck her flowers, then move to scritch her round ears. Rumbling and chirring in pleasure, rubbing your [Ball Size Adjective of Player] orbs, eager for the thick nectar within[if Cunt Count of Player > 1]. Her paws run along your legs and then move to start stroking and teasing your pussies, slipping a few fingers into them to further excite you and get more of your juices[else if Cunt Count of Player is 1]. Her paws run along your legs and then move to start stroking and teasing your pussy, slipping a few fingers into your cunt to further excite you and get more of your juices[end if][if Cock Count of Player > 1]. Having several cocks to pick from, she swaps between them from time to time, doing her best to get you worked up for a big blast[end if]. When your climax finally hits, she gulps down your seed hungrily, moaning around her muzzleful of throbbing cock[if Cock Count of Player > 2] while your other cocks spurt your semen onto her face. She swaps quickly from one to the other[else if Cock Count of Player is 2] while your other cock spurts your semen onto her face. She swaps quickly between them[end if], trying to get as much as she can to satisfy her body's cravings. Once your balls are drained, she gets up, running her foot long tongue over her face and paws, licking away every drop of your juices.";
	LibidoBoost 10;


to say joannasex3:
	say "     Reaching down, you stroke your leaking [cunt size desc of Player] cunt[sfn] and slowly pull away from the deep-throating kiss. You stroke her softly furred muzzle with your damp fingers and ask her if she'd to put that tongue of hers to work getting more. Grinning, she's on her knees right away. Her long, agile tongue slides across your groin, licking at your damp folds before diving into your vagina. The red flesh pumps and wriggles inside you, sending shivers of delight up your spine[if Cunt Count of Player > 1]. She swaps back and forth between your cunts, lavishing them with attention[end if][if Player is planttailed and lust of joanna > 0]. Her long tongue slides further back to tease your vaginal anus as well, dipping into that leaking plant hole a few times[end if]. Your [if Cunt Count of Player > 1]pussies orgasm[else]pussy orgasms[end if] several times, giving your sweet nectar to the lustful and thirsty kinkajou. Her paws don't remain idle either, moving to [if Cock Count of Player > 1]stroke your cocks until they finally cum as well[else if Cock Count of Player is 1]stroke your cock until it finally cums as well[else]knead your ass until finally your body is wracked with one last, powerful orgasm[end if]. Moving back after that, she makes a show of sliding her messy tongue all over her face, licking away all your juices with that flexible and talented organ.";
	LibidoBoost 10;


to say joannasex4:
	say "     Reaching down between her legs, you run your fingers over her feminine petals, making her shiver. You pull away from the deep throating kiss and ask your verdant lover if you may fill her lovely flower[if HP of joanna is 2]. Blushing a little, she nods and moans. 'I've been needing this. This body wants it soooo[else]. Grinning, she moans and licks your ear. 'Oh, my body wants it so[end if] much.' You stretch yourself out on the ground so she can move atop you, basking in the sun as you fuck her[if HP of joanna is 2] for the first time[end if].";
	WaitLineBreak;
	say "     Running your hands along her hips, you caress her as she lowers herself down onto your [if Cock Count of Player > 1]cocks, taking them into her wet pussies[else]cock, taking them into her wet pussy[end if]. She chirrs in delight at the sensation of having you inside her needy body and rides you slowly at first, savoring the pleasure [if Player is plantcocked and lust of joanna > 0 and Cock Count of Player > 1]of having your green tendrils inside her[else if Player is plantcocked and lust of Joanna > 0]of having your green tendril inside [else if Cock Count of Player > 1]of having your cocks inside of her[else]of having your manhood inside her[end if]. From the way she's nibbling her lip and the twitches of her flowery folds and writhing cocks, it's clear it's taking some effort to hold back her urges. Deciding to help her along, you take a pair of her slick tendrils in each hand and stroke them. She tilts her head back and moans loudly, spreading her arms wide into the sun and rides you faster.";
	WaitLineBreak;
	say "     Her altered body, craving your semen, milks and squeezes at your cock[smn] until you can finally take no more and cum hard into her. [if Ball Size of Player > 4]Your oversized balls blast a giant[else]You pump your[end if] load of sticky cum into her puss[if Cock Count of Player > 1]ies[else]y[end if], making her moan in satisfaction. As you bounce the green kinkajou girl in your lap while cumming, you keep working her cocks until she climaxes as well, spraying her sticky, sweet-scented semen onto you both, one pair blasting you and the other her. Sliding off your spent shaft, she moans and leans over, flopping out on the grass and chirring softly as she soaks up the sun while her body absorbs the nutrient-rich cum it desires.";


to say joannasex5:
	say "     Reaching down, you stroke Joanna's throbbing cocks, spreading her leaking juices over them until they're nice and slick. Slowly pulling away from the deep-throating kiss, you ask if she'd like to fill you with them. Her response is to give you another kiss with that wild tongue of hers, making you moan. You lay down on the grass with her atop you, laying in a sunny patch. She spreads your legs and brings her numerous cocks into position.";
	if Cunt Count of Player > 2:
		say "     Having a hole for each of her four cocks, she moans loudly in appreciation as each one of the sinks into your waiting vaginas in turn[if Cunt Count of Player is 3 and player is planttailed], pushing the final one into your vaginal-like anal passage[else if Cunt Count of Player is 3], pushing the final one into your tight pucker to plow your ass[end if]. The feeling of having four cocks in you at once is grand, making your body shiver and writhe in waves of delight. Kissing you again, her slick tongue pumps down your throat, filling your taste buds with her sweet flavor once again. You run your hands through her soft fur and stroke her breasts, your motions a little ragged and uncoordinated from the overwhelming stimuli, but Joanna is doing little better, clearly enjoying filling you so much she hardly notices your fumbling hands. She keeps her own locked at your hips, gripping you firmly.";
	else:
		say "     With [if Cunt Count of Player is 1]some[else]one[end if] of her cocks left out, she slides her cocks into your [if Cunt Count of Player is 1]cunt[else]cunts[end if] and [if Player is planttailed]vagina-like anus[else]tight pucker[end if] each in turn. The remaining [if Cunt Count of Player is 1]cock tendrils slide[else]cock tendril slides[end if] around on your body, stroking against your [SkinSpeciesName of Player in lower case] flesh[if Cock Count of Player > 1] and entwining with your cocks[else if Cock Count of Player is 1] and entwining around your cock, squeezing and pumping over your throbbing flesh[end if]. Kissing you again, her slick tongue pumps down your throat, filling your taste buds with her sweet flavor once again. You run your hands through her soft fur and stroke her breasts, playing with her nipples and the soft petals which surround them. Joanna keeps her paws locked your hips, gripping you firmly.";
	WaitLineBreak;
	say "     Her various cocks move independently, each pumping into you [if Cunt Count of Player < 3]and sliding over your body [end if]at their own pace. But there is a harmonious rhythm to their motion as well, with larger overall patterns, like a beautiful concert for the body from her separate instruments. And like a concert, the rhythm and patterns build and swell until finally reaching their peak and she sends her cocks as deep into you as they'll go, blasting her thick gooey cum deep inside you. You arch your back and cum hard at the sudden influx[if Player is male], spraying your own seed across you both[end if]. You become aware that more of her sweet juices flow from her tongue as well, leaving you in a haze of pleasure as she slowly withdraws from you[if Cunt Count of Player > 2]. You are left quite full and bloated from the flow from having so many cocks all cumming inside you at once, but wonderfully so[end if]. Spent and satisfied, Joanna lays atop you with the warm sun on her back and her penises still inside you.[ovichance]";
	now Libido of Player is ( 3 * Libido of Player ) / 5;

to say joannasex6:
	say "     Reaching down, you stroke over Joanna's throbbing cocks, spreading her leaking juices over one of them to get it extra-slick. Slowly pulling away from the deep-throating kiss, you ask if she'd like to sink it into you[if HP of joanna is 2]. Joanna runs a paw between your legs, but finds no waiting pussy there. She starts to ask how, then blushes as she realizes what you mean. 'I've never... I mean of course I haven't... but, if you really want to,' she says softly[else]. Joanna blushes a little at the offer to fuck your ass this time[end if], but from the way her cock has been throbbing in your hand, it's clear the idea's gotten her quite turned on. You get onto all fours facing the sun and wiggle your backside invitingly at her[if HP of Joanna > 3]. She leans in behind you, paws on your ass and spreading them as she lowers her muzzle in, sliding her slick tongue along your ass crack before slathering over your [end if][if HP of joanna > 3 and player is planttailed]plant-like, anal pussy[else if HP of joanna > 3]tight pucker[end if][if HP of joanna > 3]. Already starts to relax in anticipation of being mounted, you have to moan as she slides her long tendril tongue into your hole to get you slick. The hormone-rich fluids take effect quickly, making you even more lustful and needy until you're almost begging the plant girl to ravage you[end if].";
	WaitLineBreak;
	say "     [if HP of Joanna > 3]Withdrawing her tongue from your slick hole, [end if]Joanna moves up behind you and lines up the glistening tendril with your waiting back entrance. You press back against it and moan as it slides into you quite easily. The long, slender penis wriggles its way inside you, rubbing at your inner walls[if Cock Count of Player is 1] and pressing against your prostate, making your cock throb[else if Cock Count of Player > 1] and pressing against your prostate, making your cock throb[end if]. While the one tendril worms its way deeper, two others wrap around your thighs, gripping you tightly. The final one [if Cock Count of Player is 1]reaches around beneath you and coils around your cock, squeezing and stroking it against its slick flesh[else if Cock Count of Player > 1]reaches around beneath you and coils around your cocks, squeezing and stroking them against one another and against its slick flesh[else]keeps itself short, rubbing and stroking as your ass and lower back as you're fucked[end if]. With a good grip on you with her tendril cocks, she leans back and spreads her arms to bask in the sun as her writhing tentacles fuck you.";
	WaitLineBreak;
	say "     The kinkajou-plant rocks her hips a little, slapping the swollen bulbs holding her balls against you, but largely lets her flexible shaft do the work on its own. It squirms and wriggles around inside you like a snake, sending shivers of delight through you as it delves deep inside you, leaking slick juices as it goes[if Player is male]. The one around your maleness strokes and pumps, eager to get you to cum, and cum hard[else]. The one rubbing at your lower spine moves agilely, leaking precum that flows out onto your back and down between your spread cheeks[end if]. Those around your legs throb and pulse as they grip you. Eventually and with a cry of ecstasy, the plant creature's cocks throb and unleash blasts of her slick, sweet juices. Your bowels, thighs and [if Player is male]penis[esmn][else]back[end if] are coated in it as she cums[if Player is planttailed] into your pussy-like asshole[end if]. The feel of all this sensual fluid filling and coating you sets you off, causing you to orgasm moments later, blasting your seed onto [if HP of Joanna > 2]Joanna's long tail, which the green kinkajou moved into position in anticipation of this[else]the green grass beneath you[end if]. Once you are both spent, Joanna's tendrils release you and she flops back onto the warm grass, basking in the afterglow and the sunlight[if HP of Joanna > 2] while licking your semen from her tail with her foot long tongue[end if].[ovichance]";

to say joannasex7:
	say "     Reaching down, you stroke Joanna's throbbing cocks and rub them against yours with one hand while the other teases her wet pussies. Slowly pulling away from the deep-throating kiss, you suggest fucking one another at the same time. Her response is to give you another kiss with that wild tongue of hers, making you moan. You lay down on the grass with her atop you, laying in a sunny patch. She moves atop you, rubbing over your groin as her tendrils coil around you to move after your [if Player is female]cunt[sfn][else]asshole[end if]. As you are penetrated by the green flesh, she moans in delight and lowers herself onto your cock[smn] with a lustful moan.";
	WaitLineBreak;
	say "     The plant-kinkajou's [if Cock Count of Player > 1]pussies[else]pussy[end if], causing Joanna to chirr in delight even as she's sliding [if Cunt Count of Player > 3]her tentacle cocks into her lover, having found a wet cunt for each[else if Cunt Count of Player > 1 and player is planttailed]her tentacle cocks into your wet cunts and vaginal asshole[else if Cunt Count of Player > 1]her tentacle cocks into your wet cunts and snug asshole[else if Cunt Count of Player is 1 and player is planttailed]her tentacle cocks into you, one for your wet cunt and one for your vaginal asshole[else if Cunt Count of Player is 1]her tentacle cocks into you, one for your wet cunt and one for your snug asshole[else if Player is planttailed]a tentacle cock into your dripping, vaginal asshole[else]a tentacle cock into your snug asshole[end if]. Bringing your hands to her bosom, you caress her lovely globes and her flowery areolae and perky, green nipples. She doesn't ride you very hard so she can let her tendrils writhe while she fucks you in return. Instead, her plant body seems to squeeze and suck at your cock[smn] hungrily, milking the precum from you with an apparent hunger for something richer and creamier to satisfy it.";
	WaitLineBreak;
	if lust of Joanna > 0, say "[joannajuice]";
	say "     You both continue like this for some time, fucking one another and enjoying the pleasure of getting fucked as well. But eventually, you can't take any more as her needy [if Cock Count of Player > 1]pussies quiver[else]pussy quivers[end if] and her [if Player is female]tendrils slide as deep as they[else]tendril slides as deep as it can[end if] into you. You groan loudly and cum hard, blasting your seed into the lovely plant, soon rewarded with the same as her fluids rush into [if Cunt Count of Player < 3]and onto [end if]you from her writhing tentacles[if Cunt Count of Player > 2]. You are left quite full and bloated from the flow from having so many cocks all cumming inside you at once, but wonderfully so[end if]. Spent, cum-fed and satisfied, Joanna lays atop you with the warm sun on her back and your cocks still inside you one another. She leans in and gives you a tender kiss.[ovichance]";
	now Libido of Player is ( 2 * Libido of Player ) / 5;

to say joannasex8:
	say "     Reaching down between her legs, you run your fingers over her feminine petals, making her shiver as you start pumping a trio of digits into one of them. Finding it quite accommodating, you pull away from the deep throating kiss and ask the beautiful, verdant woman if she'd enjoy having it stuffed fully. Grinning a little, she takes your [if Player is plantcocked]green, tentacle [end if]cocks in her paws and runs her sweet-smelling tongue across your cheek. 'I've been stretching them out nicely with some of the big bulbs, so I should be able to handle all that. This plant body is clearly made for taking all the cock it can get,' she adds while stroking your [if Player is plantcocked]writhing tendrils[else]hard shafts[end if]. She stretches herself out on the sunny grass, positioned so she can still bask in the light while you work your cocks into her waiting cunt.";
	WaitLineBreak;
	if Cock Length of Player * Cock Count of Player <= 32:
		say "     Joanna's pussy, as she said, stretches itself wide rather easily for you to slide your [if Player is plantcocked]tendril [end if]cocks into her. As they're [if Cock Count of Player is 2]both[else]all[end if] sinking into her flowery petals, you try to take it slowly, but Joanna has other plans. Entwining her tendril cocks around your thighs, she starts pulling your groin towards hers with a grin. Her sweet nectar flows out over your shafts, making them quite slick for fucking the eager kinkajou. She continues grinning at you as her tentacles pull at your hips, setting the pace for your thrusts, making sure they're steady and firm into her overstretched pussy.";
	else:
		say "     Joanna's pussy, as she said, stretches itself wide with some effort to take the combined width of your [if Player is plantcocked]plant [end if]cocks into her. As they're [if Cock Count of Player is 2]both[else]all[end if] sinking into her flowery petals, you have to take it slowly at first, letting the moaning plant girl adjust to the wide mass of cock stuffing her. Her tendrils entwine around your thighs and start pulling your groin towards her, urging you to fuck her as her sweet nectar flows out over your shafts, making them slick for fucking the eager kinkajou. Her paws roam over her belly, considerably bulged by you stuffing her, but it's clear she's loving every moment of it.";
	WaitLineBreak;
	if lust of Joanna > 0, say "[joannajuice]";
	say "     With your position and her pulling tentacle cocks, you are able to eventually work the whole of your cocks into her and really pound away at the horny woman. She wriggles in the grass, lost in the bliss of her body. As you continue pounding into her, you notice some roots growing from her sides and her feet digging into the soil, steadying her in place as her tendrils pull at you harder and faster. Her paws roam over her body, rubbing her stuffed tummy and her lovely bosom as her chirrs of pleasure get louder and louder. She pulls you hard into her suddenly, forcing you to make quick, short strokes to pound at her as blasts of her cum soak your crotch, thighs and rear as her pussies overflow with juices and her cocks spurt onto you. Driven to keep fucking her hard as she orgasms, you soon cum as well, pumping your load into her already well-stuffed body, causing her to swell further. As your orgasm subsides, she releases you and you collapse onto your back in the grass, panting for breath and feeling wonderful after your powerful climax. With some effort, you can hear her pulling herself free of the ground so she can move over to snuggle with you.";
	now Libido of Player is ( 2 * Libido of Player ) / 5;

to say joannasex9:
	say "     Reaching down to rub at Joanna's long, slender tendrils, you're pretty sure you'd be able to take them all at once. The possibility of having all four stuffed into your [if Player is female and player is plantcocked]plant-like pussy makes it drip with juices[else if Player is female]pussy makes it drip with juices[else if Player is planttailed]plant-like, vaginal asshole makes it drip with juices[else]ass makes your pucker quiver in anticipation[end if]. Letting her slick tongue slide from your throat, you make the offer to her. She grins at the idea and her cocks stir in your hands. With a clear consensus from all involved, you lower yourself to the ground and spread your legs, offering yourself to her. She smiles lustfully at the sight of your [if Player is female]waiting pussy, which you hold open in offering[else if Player is planttailed]pussy-like anus as you spread your cheeks and raise your rear[else]tight pucker as you spread your cheeks and raise your rear[end if] for her. She runs her paws over your body and along your thighs as her tendrils move into position.";
	WaitLineBreak;
	say "     The first doesn't hesitate, slipping into you quickly and making you moan. As you're beginning to adjust to having that one in you, the next it at your [if Player is female]pussy[else if Player is planttailed]vaginal orifice[else]anus[end if]. It teases briefly against your [if Player is female]wet folds and clit[else]stretched hole, leaking more pre to prepare you[end if] before driving into you with as much eagerness as the first. They thrust into you again and again, moving in synch with one just behind the other, letting them both press against your [if Player is female]cervix[else]prostate[end if] in rapid succession. With a pair of them in you now, the others wait for the moment, sliding along your thighs and dripping precum onto you[if Cock Count of Player > 1]. Joanna takes one of your cocks in each paw, stroking and pumping at them[else if Cock Count of Player is 1]. Joanna takes your cock in her paws, stroking and pumping at it[end if].";
	WaitLineBreak;
	if lust of Joanna > 0, say "[joannajuice]";
	say "     As the steady fucking continues, you are left moaning and pressing your hips into each thrust as the last pair move into position together. You are far too turned on to even consider holding back and press your stretched hole against their dripping tips. The kinkajou smiles and kisses you again as those tendrils press into you to join the others. As her tongue slides back into your mouth, her sweet nectar leaks from it, further fueling your lust as she lets her tentacles fuck your stuffed [if Player is female]vagina[else]hole[end if]. With all four of them in you now, you can't help but squirm and wriggle as they all slide around inside, rhythmically fucking you[if Player is female]. They press at your cervix again and again, slowly wearing it down before writhing into your womb and driving you climax[else if Player is planttailed]. Three slide as deep as they can into your vaginal asshole while the other keeps pounding at your prostate, driving you to climax[else]. Three slide as deep as they can into you bowels while the other keeps pounding at your prostate, driving you to climax[end if][if Cock Count of Player > 1]. Joanna pumps at your cocks as you cum, spraying your seed onto you both[else if Cock Count of Player is 1]. Joanna pumps at your cock as you cum, spraying your seed onto you both[end if]. She cries out in pleasure and you can feel all four tendrils pulse inside you as they start unleashing her cum into your [if Player is female]womb[else if Player is planttailed]pussy-like asshole[else]bowels[end if], pumping more and more until you feel so wonderfully full from it all.[ovichance]";
	now Libido of Player is ( 2 * Libido of Player ) / 5;

to say joannajuice:
	if lust of Joanna is 1:
		say "     As you and Joanna are fucking vigorously, she reaches out and strokes her paws over your head, then pulls your face to her bosom. With your lips pressed to her nipple, you can taste a hint of sweetness coming from them. As you start to suckle, you are rewarded not with milk, but with a juicy nectar. Its flavor is hard to pin down, at times like strawberries, but also like mangoes or peaches. Regardless, it is delicious and fills you with arousal. Your [if Player is herm]balls throb with increased production and your wet folds flow with feminine juices[else if Player is male]balls throb with increased production[else]wet folds flow with feminine juices[end if] as you nurse for her potent, aphrodisiac juice. She chirrs happily and caresses your head. 'Yes, drink up. You know how wonderful it is to be a beautiful plant,' she says soothingly, but her words hardly register with you, too aroused and leaking from the plant's infected juice. You keep suckling while having sex with her until her paws release you when her breasts are drained.";
		decrease humanity of Player by 4;
		now thirst of Player is ( thirst of Player * 4 ) / 5;
		increase Libido of Player by 50; [increase before later dropping at climax]
		increase lust of joanna by 1;
		now lastjoannajuice is turns;
		wait for any key;
	else:
		say "     While having vigorous sex with Joanna, she reaches out and takes your head in her paws again, guiding your lips to her breast. So overcome with lust, you don't even consider refusing the transformative aphrodisiac and eagerly nurse that juicy fluid from the plant's nipples. She moans in delight and caresses you as your drink it down, chirring [one of]how wonderful it is to help you become a lovely flower[or]how wonderful this makes her feel[or]how you'll make such a beautiful plant[or]how nice it'll be to share her garden with you[at random]. As you drink her juice, your [if Player is herm]balls throb with increased production and your wet folds flow with feminine juices[else if Player is male]balls throb with increased production[else]wet folds flow with feminine juices[end if] as the aphrodisiac increases your production of sexual fluids to satisfy your plant lover's bodily thirst for them. Fucking the whole time, you suck at those nipples for every last drop before Joanna releases your head.";
		decrease humanity of Player by ( ( lust of Joanna * 2 ) + 2 );
		increase Libido of Player by 50; [increase before later dropping at climax]
		if lastjoannajuice - turns > 15, now thirst of Player is ( thirst of Player * 7 ) / 8;
		now lastjoannajuice is turns;
		wait for any key;


Section 6 - Pre-Plant Joanna

joannadogsaved is a truth state that varies. joannadogsaved is usually false.
joannaharoldtalk is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Dog Chase	"Dog Chase"

Dog Chase is a situation.
ResolveFunction of Dog Chase is "[ResolveEvent Dog Chase]". The level of Dog Chase is 2.
Sarea of Dog Chase is "Outside".
when play begins:
	add Dog Chase to BadSpots of FurryList;
	add Dog Chase to BadSpots of MaleList;
	add Dog Chase to BadSpots of FemaleList;

to say ResolveEvent Dog Chase:
	if HP of Joanna is 0:
		say "     As you're traveling along, you hear the repeated call of 'Squirrel! Squirrel!' coming from nearby. Curiously cautious, you approach the sound to find a small dog-man barking the word repeatedly, running around an isolated tree. From time to time, the Jack Russell terrier tries to scramble up, but he's mostly quadrupedal and his hands are mostly paws, preventing him from getting a grip. 'Squirrel!' he barks again, finally eliciting a response from the tree's occupant[if daytimer is day]. 'Shut up, you stupid mutt! I'm trying to sleep,' a female voice yells angrily[else]. 'Shut up, you dumb mutt. I told you, I'm not a squirrel,' a female voice yells angrily[end if]. Looking at the canopy more closely, you spot a slender, feminine creature lying casually among the branches. She has short brown fur, long brown hair and a very long tail. And she still has some clothes on, so she could even be a survivor given her lack of lustful reaction to the dog.";
		say "     Deciding to risk it, you head closer, yelling at the terrier to get out of here. He turns and growls a little at you, but when the woman leaps from the tree wielding a large branch, the dog backs off, not wanting to fight two opponents. 'Damn it,' the woman grumbles as the dog runs off. 'Guy just wouldn't shut up. Too dumb to know I'm a kinkajou and not a squirrel,' she says, turning to smile at you. 'Thanks for helping out back there. I'm Joanna, by the way.'";
		say "     Once the introductions are aside, you chat with her a bit[if daytimer is day]. 'I'm normally trying to rest during the day, but that dummy wouldn't let me sleep. Speaking of, I should really be getting some rest. I was up all night dancing at the club[else]. 'I was on my way to club for another night of dancing when I ran into that dummy. Speaking of, I should head on over while there's still a night to dance away[end if]. Yeah, there's still a club open to hang out at, called the Palomino. I'm usually there most nights. I hope to catch you there some time[if PALOMINO is known].' You tell her that you've been there before and that you'll have to swing by to see her some time[else].' She gives you some rough directions to the place, which include stuff like [']turn at this tree['] or [']run three rooftops over['], but you're pretty sure you'll be able to sort it out and find a more conventional route there[end if]. With that, she heads off, going from a car roof to an awning and then to the top of a building before moving out of sight.";
		AddNavPoint PALOMINO;
		now HP of Joanna is 90;
		now joannadogsaved is true;
		now Resolution of Dog Chase is 1; [saved Joanna]
	else:
		say "     You catch the sound of barking dogs approaching and put yourself on guard. Moving to an alleyway, you watch as one of those husky girls playfully runs from a German shepherd male. Their chase is loud and playful, with the husky merrily leading him around, though you're quite certain she'll eventually let the horny male mount her. You wait until they pass and their barking grows distant before emerging and continuing on your way.";
		now Resolution of Dog Chase is 2; [didn't save Joanna]
	now Dog Chase is resolved;

an everyturn rule:
	if HP of Joanna is 0 or HP of Joanna >= 90:
		if daytimer is night: [non-plant Joanna is partying]
			if Joanna is not in PALOMINO: [she's not in her party spot]
				now Joanna is in PALOMINO; [let's move her there]
		else: [during the day, she's out sleeping or scavenging]
			now Joanna is nowhere; [off to the void]
	else: [plant Joanna]
		if Joanna is not in Flower Garden: [she really should be there]
			now Joanna is in Flower Garden; [planting]

[  - moved to Harold's conversation tree -
instead of conversing the Harold while level of Player >= 9 and HP of Joanna is 92 and joannaharoldtalk is 0:
	say "     Going over to Harold, you inquire about Joanna, whom you haven't seen around of late. 'It's been a while, hasn't it?' he says. 'I think she mentioned something about going downtown to check out some overgrown flower gardens she'd spotted. I'm starting to get a little worried. You might want to head down to the high rise district and see if she's in an [bold type]overrun garden[roman type] around there. Just be careful if you do.";
	now joannaharoldtalk is 1;
]

to say joannaclubsex:
	say "     You wait for a moment when the kinkajou's not dancing to approach her. Joanna blushes a little at your offer, but grins and takes your hand in hers. 'Sure, let's have a little fun.' She guides you to one of the back rooms and kisses you as she closes the door. You run your hands over her body, helping her out of her clothes while she strips you.";
	if lust of Joanna is even:		[used temporarily to alternate scenes]
		say "     After breaking the kiss, Joanna moves down onto her knees. Taking your [Cock of Player] cock in hand, she runs her paws over it, then gives it a slow lick with her long tongue. Quite agile, the slick tongue slides over your manmeat before she leans forward and starts sucking you off. Her paws stroke and caress your thighs, then move to knead your balls. Moaning softly, you run your fingers through her long hair and rub her ears.";
		say "     Her tongue and muzzle work you eagerly, licking and sucking you until finally you can't hold back any longer. With a groan of pleasure, you cum hard, blasting your thick seed into her mouth and down her throat. As she licks it all up with her long tongue, she pumps her fingers into her snatch, soaking it in her feminine juices. Once you've both recovered from your climax, she wipes her paws and gives you another kiss before heading back onto the dance floor.";
	else:
		say "     After breaking the kiss, Joanna tugs you over to the nearby couch and pulls you down overtop her. Moving your hands to her breasts, you caress them. They are dainty B-cups, small compared to most of those you see around now, but she clearly enjoys the attention you give them. Leaning down, you nibble and suck her nipples while fingering her pussy. She chirrs with delight, spreading her legs and tugging at your cock, clearly tired of waiting and eager for some action.";
		say "     Guiding you into her dripping snatch slowly, she wraps her arms around you and moans in pleasure as you fuck her. Her pussy squeezes around your cock as you thrust. Holding yourself up with one hand, your other moves to keep playing with her nipples. After a good, long romp on the couch, you thrust deep into her and moan in pleasure, blasting your hot seed deep inside the kinkajou as she cries out in ecstasy. Once you've both recovered from your climax, she gives you another kiss before heading back onto the dance floor.";
	increase lust of Joanna by 1;
	now lastfuck of Joanna is turns;


Section 7 - Definitions

Definition: a person is plantfaced:
	if FaceName of Player is "Parasitic Plant", yes;
	no;

Definition: a person is plantskinned:
	if SkinName of Player is "Parasitic Plant", yes;
	no;

Definition: a person is plantbodied:
	if BodyName of Player is "Parasitic Plant", yes;
	no;

Definition: a person is plantcocked:
	if CockName of Player is "Parasitic Plant", yes;
	no;

Definition: a person is planttailed:
	if TailName of Player is "Parasitic Plant", yes;
	no;

Section 8 - Items

Table of Game Objects (continued)
name	desc	weight	object
"plant-like dildo"	"     An organic dildo with a clear phallic shape, but made of a plant part. It has a broad base for a good grip, the object itself reminding you of a tendril, though less flexible than one. Joanna crafted it for you, its green color and flowery smell being the evidence of that. Oddly, there seems to be some sort of white sap leaking from the tip when you handle it for a while."	2	plant-like dildo

plant-like dildo is a grab object. It is not temporary.

the scent of the plant-like dildo is "[SmellingPlantDildo]".

to say SmellingPlantDildo:
	say "     You bring the dildo close to your nostrils and feel its scent with a deep inhaling. It smells of flowers and greenery, and it's so sweet that you actually feel tempted to bring it to your mouth, its sap leaking through the tip.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Do it.";
	say "     ([link]N[as]n[end link]) - Suppress the urge.";
	if player consents:
		LineBreak;
		say "     The sight of it just turns you on so much that, almost by compulsion, you put your lips around the dildo and start sucking on it, the incredibly sweet thick juice landing in your tongue in an explosion of a nearly addicting flavor. It's so good that you have to force yourself to stop, and a tingle in your mouth reminds you that you were actually enjoying that immensely.";
		increase libido of player by 10;
		if libido of player > 100:
			now libido of player is 100;
		decrease humanity of player by 5;
		infect "Parasitic Plant";
	else:
		LineBreak;
		say "     Shaking off the urge, you pack away the plant-like dildo.";

instead of using plant-like dildo:
	if player is female:
		say "     [bold type]Do you want to pleasure yourself with this plant-like cock in your pussy or ass?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Shove it in your pussy.";
		say "     ([link]N[as]n[end link]) - You feel like taking it in the ass.";
		if player consents:
			say "[PlantDildoPussyFuck]";
		else:
			say "[PlantDildoAssFuck]";
	else:
		say "[PlantDildoAssFuck]";

to say PlantDildoPussyFuck:
	say "     When you begin to handle the dildo some more, you see its white sap leaking through the tip more actively, sending an even more sweet smell to your nose. Sliding your fingers around the tip, you spread the slippery liquid all across the shaft, lubricating its surface and making it much smoother. In order to get started, you [if player is not naked]take off your clothes and[else]you[end if] bring it closer to your womanhood. The toy wiggles in your hand, the part of it that is still organic coming to live with the promise of a good sexual feeding. You're eager to push it in, so you start shoving it inside your pussy, moist and wet by now, inch by inch as its entire length ondulates inside you, providing you extra pleasure. It slides in very easily and with no pain at all, despite it being of a considerable size.";
	say "     With your legs spread, you simply grab the dildo by its broad base and let it do its own thing, only pulling and pushing softly once in a while to feel more of it inside you, rubbing against your nether lips with vigor. The sap it leaks in you is warm, augmenting the sensations as your vagina feels even more wet. Its wiggling movements easily reach all your spots, as it seems to get accustomed to its user, making your legs tremble with so much bliss. Starting to become lost in the lust, you begin to help the living dildo fuck yourself, shoving it all the way in, then pushing it back rhythmically. It manages to rip a few moans out of your mouth as you keep doing it, and all you keep thinking is how much you want this to last...";
	WaitLineBreak;
	say "     Though everything has to come to an end, as your orgasm begins to build up. After going at it for some more time, your body begins to shake as you come with a loud gasp [if player is male]and start blasting heavy spurts of cum from your own cock - to land with little splats on the ground a little further away[else if player is female]and an intense, heated wave of pleasure takes over your senses - your feminine juices running down between your legs and leaking onto the dildo [else]and tremble in lust[end if], with the dildo wiggling through the entire process, only making it feel so much better.";
	say "     As you pop the dildo away from your stretched pussy, it begins to slow down and lay still after a while, looking more green and colorful than before. It definitely enjoyed your attention, and every time you do this, you end up thinking about Joanna. Perhaps you should visit her, one of these days...";
	infect "Parasitic Plant";

to say PlantDildoAssFuck:
	say "     When you begin to handle the dildo some more, you see its white sap leaking through the tip more actively, sending an even more sweet smell to your nose. Sliding your fingers around the tip, you spread the slippery liquid all across the shaft, lubricating its surface and making it much smoother. In order to get started, you [if player is not naked]take off your clothes and[else]you[end if] bring it closer to your pucker. The toy wiggles in your hand, the part of it that is still organic coming to live with the promise of a good sexual feeding. You're eager to push it in, so you start shoving it inside your anus, moist and slick by now, inch by inch as its entire length ondulates inside you, providing you extra pleasure. It slides in very easily and with no pain at all, despite it being of a considerable size.";
	say "     With your legs spread, you simply grab the dildo by its broad base and let it do its own thing, only pulling and pushing softly once in a while to feel more of it inside you, rubbing against your [if player is male]prostate[else]insides with vigor. The sap it leaks in you is warm, augmenting the sensations as your flesh tunnel feels even more wet. Its wiggling movements easily reach all your spots, as it seems to get accustomed to its user, making your legs tremble with so much bliss. Starting to become lost in the lust, you begin to help the living dildo fuck yourself, shoving it all the way in, then pushing it back rhythmically. It manages to rip a few moans out of your mouth as you keep doing it, and all you keep thinking is how much you want this to last...";
	WaitLineBreak;
	say "     Though everything has to come to an end, as your orgasm begins to build up. After going at it for some more time, your body begins to shake as you come with a loud gasp [if player is male]and start blasting heavy spurts of cum from your own cock - to land with little splats on the ground a little further away[else if player is female]and an intense, heated wave of pleasure takes over your senses - your feminine juices running down between your legs and leaking onto the dildo [else]and tremble in lust[end if], with the dildo wiggling through the entire process, only making it feel so much better.";
	say "     As you pop the dildo away from your stretched pussy, it begins to slow down and lay still after a while, looking more green and colorful than before. It definitely enjoyed your attention, and every time you do this, you end up thinking about Joanna. Perhaps you should visit her, one of these days...";
	infect "Parasitic Plant";


Section 9 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"You got Planted"	"BadEnd"	""	You got Planted rule	20	false
"Joanna's Epilogue"	"NPC"	""	Joanna's Epilogue rule	900	false

This is the You got Planted rule:
	if ending "You got Planted" is triggered:
		say "     You eventually awaken again as the flower petals open, allowing the morning sun to shine down on you. Drawing strength from its light, you start to rise, helped out of flower by several of the vines. Stretching your arms wide, you bask in the light and sigh in pleasure, feeling the pleasure of feeding all across your body. You don't know how long you stay there, your mind foggy and thinking little at all, but are woken from your reverie by another nearby flower opening. You walk over and help the lovely creature inside, a plant girl much like you, but with an animal face, muzzle and tail. For a moment, there's a passing memory as if you'd seen her before, but it fades away. She has lovely flowers in her green hair, a green plant-like body with red across her kinkajou face. Her long, red, tendril-tongue slides out and dives into your mouth and you can feel her cock tendrils begin to stir.";
		say "     After a long session of lovemaking on the grass where you put your vines and tendrils into one another while feeding from the sunlight, you finally look up and find the sun high in the sky. Feeling full and sated, you take your lover's hand in yours and follow a growing urge within you both to leave and find another place to set down your roots, this one fully overgrown by the giant plant. Kissing the giant plant's vines and bulbs, you both suck sweet juices from them before going. Again taking her hand in yours, you entwine your viney fingers and, with some effort to uproot yourselves, head on your way.";
		say "     You travel with your companion across the city. Traveling across the paved streets is unpleasant, not being able to feel the earth or dig into the soil, but you do so whenever you can to refresh yourselves. While most of the creatures of the city stay out of your way, you do end up fighting with some on your journey and you make sure to leave them full of sticky nectar and sap, hoping they'll share in the joy of becoming peaceful plants instead of squabbling mammals. And with all the fighting going on at the city's edge, you and your companion are able to slowly creep past the lines of those fighting mammals (humans, was it?) during a conflict. It is slow going and it's very tempting to lay down your roots and stop, but you encourage one another to keep going, wanting only the best of locations for your lover. Having grown some small branches and leaves to look like bushes, you move with the patience of a growing plant and creep inches at a time while they fight around you with the other creatures.";
		say "     Once you're safely past them, you are able to continue on until you find a lovely riverbank glade and set down your roots permanently, sharing the pleasure of this sensation by entwining your vines with your companion and sharing nectar and sap with her. You would not have made it here without her and now you have this place to share with her and make into a plant paradise together. You grow and spread out your vines across the glade, quite pleased when the occasional human mammal is drawn into your glade by the lovely scent of your flowers. Working together, you easily manage to subdue them, milking them for their nutrients and filling them with a seed of a plant of their own to start changing them. These converts help you grow and spread further, as well as bring you more new converts to spread your plant offspring out from your hidden glade.";
		if hellHoundLevel > 0:
			say "     With your mind almost completely erased by your transformation into a plant, you forget about your pact with the hellhound. But he does not forget. Having given into your life as a corrupting plant creature infecting others, your dark contract has only been delayed to prepare you for a new role in the afterlife.";
			say "     When that times comes at the end of your long life as a plant, you are pulled into the pits of Hades and given a life of as a foul tree there. Having spent centuries growing and corrupting others in life, your body is now twisted and turned to new, dark aims on your unending task to satisfy the lustful urges of the demonic hounds. They mark your large trunk with their foul, burning urine, letting its corruption seep into you. Your vaginal flowers are fucked by the hound's cocks and your tendrils made to pump your tainted fluids into their bitches. Your branches grow dark fruit which break open and release plant-like hounds to add to Hell's numbers.";
		the Player is gone;

This is the Joanna's Epilogue rule: [See Parasitic Plant for player specific endings]
	let JoannasEpilogueShown be false;
	if HP of Joanna > 0 and HP of Joanna < 90:
		now JoannasEpilogueShown is true;
		say "     Joanna remains in the infected city when the military rolls through, happy with her new life in her garden. It becomes a safe rest stop for visitors and explorers of the city. She always welcomes them and makes many friends among them, sharing her beautiful and lustful body with them to satisfy their urges[if HP of Joanna >= 5]. She soon gets the nickname of [']Kinky Jo['], notorious for being up for pretty much any kind of fun imaginable with those who come to share in her garden's beauty[else if HP of Joanna > 2]. Being a lustful plant herm, she's happy to please any guests to her lovely garden in numerous ways[end if].";
		if humanity of Player >= 10:
			say "     These visitors help you keep in touch with her, carrying the occasional letter to her. She writes about her peaceful, happy life and the various visitors and friends she's made, always thankful for your timely rescue and continued friendship[if Player is plantbodied and plantdefeat > 0]. She particularly enjoys hearing about your happy life as a lustful plant and sharing the plant seeds with your orgy group[end if].";
	if Player has a non-shifting body of "Parasitic Plant" or plantdefeat is 0:
		if JoannasEpilogueShown is true:
			trigger ending "Joanna's Epilogue"; [Here it states, that the ending has been played.]
		make no decision;
	if HP of Joanna >= 7 and HP of Joanna < 90 and humanity of Player >= 10:
		now JoannasEpilogueShown is true;
		LineBreak;
		say "     When rescue arrives, you decide to hide the existence of Joanna's seed resting within you, deciding that it is now a part of what you are. You live a rather normal life, except for the very, very frequent sex, of course. Nymphomania is not really high on the list of mental illnesses you get locked up for and it's certainly a lot more common these days.";
	else if CockName of Player is "Parasitic Plant":	[non-plant, but plant groin w/seed]
		now JoannasEpilogueShown is true;
		LineBreak;
		if humanity of Player < 40 and humanity of Player >= 10:
			say "     When rescue arrives, you decide to hide the existence of the plant seed resting within you, deciding that it is now a part of what you are. You live a rather normal life, except for the very, very frequent sex, of course. Nymphomania is not really high on the list of mental illnesses you get locked up for and it's certainly a lot more common these days.";
		else:
			say "     When rescue arrives, you have the seed removed from your belly, glad to have the lust-inducing parasite removed.";
	if resolution of Spreading Flowers > 10 and Spreading Flowers is resolved:
		LineBreak;
		say "     As you have helped Joanna create a genetic strain of her own and craft plenty of sex toys, her garden also served as a shop. Bought upon visiting, these souvenirs remained noted as harmless, but very pleasurable. As its mutating effects were delayed, the plant-girl managed to spread her biology throughout a good amount of people around the area, and those who were affected by it usually grew plant-like extensions of themselves considered of good use and fun, without any loss of sanity, mental capabilities or mobility, only not so limiting libido increasing effects. Some would grow purely cosmetic features, such as flowers in their heads, or leaves in their limbs, or even a skin tone change, while others saw their genitalia enhanced by the existence of cock tendrils or vaginal flowers, and sometimes both!";
		WaitLineBreak;
		say "     Regardless of it being possibly considered a way of indirectly and unwillingly infecting others, those who were affected actually manifested themselves as happy and thankful for such a beautiful gift, returning presents to the kinkajou woman. Though some were not satisfied with this less extreme version of her transformation strain, after seeing that they could look more like Joanna. Upon being asked, she gladly bestowed them with a gift, a precious seed of her own, providing them the chance of becoming more like a true plant-hybrid. Now, it wouldn't be so unusual to see one of these transformed people carrying a trio of cock-tendrils between their legs, or having their orifices replaced with various shapes of pussy flowers. Obviously, this also came with a much higher increase in libido, caused by the need to feed the seed prospering inside them, but nothing was frowned upon, as the infection was already accepted among the society.";
		say "     Now that Joanna was able to fulfill her wishes, thanks to you, she is much filled with joy. Her efforts will make the world a more beautiful place.";
	if JoannasEpilogueShown is true:
		trigger ending "Joanna's Epilogue"; [Here it states, that the ending has been played.]


Joanna ends here.
