Karen by AGentlemanCalledB begins here.

Section 1 - Karen

Karen is a woman.
The description of Karen is "[Karendescribing]";
The conversation of Karen is { "Karentalk" }.

the linkaction of Karen is "Possible Actions: [link]talk[as]talk Karen[end link], [link]smell[as]smell Karen[end link], [link]fuck[as]fuck karen[end link][line break]";

to say Karendescribing:
	say "     Looking over Karen you recognize her as the same retriever bitch that you saw abducted by Rex some time ago, now wearing a thin pink collar with a heart shaped tag that has her name engraved on it.";

the scent of Karen is "     Karen smells strongly of Rex's powerful musk, mixed with the scent of her own dripping cunt, and strangely a faint hint of strawberry.";

KarenTalking is an action applying to nothing.
Understand "talk Karen" as KarenTalking.
Understand "talk to Karen" as KarenTalking.

carry out KarenTalking:
	if Karen is visible:
		if hp of Karen is 1:
			say "     Seeing Karen sitting alone you realize she may know of some way you could distract Rex, you subtly try and get any information she may have by asking her about her previous life. Not surprisingly, she doesn't remember much. She tells you about the few fuzzy memories she has of her old self, most of the vague tales of her life as a student are unhelpful, but one story does catch your attention. She tells you about an unusual bakery on the outskirts of the high rise district she and Rex used to visit when he was the pet instead of her, a place the specialized in premium pet treats. Most of the story ends up revolving around how much she'd like to try one of those cookies now, but she does let slip that the old Rex was always ecstatic to visit and sample their wares. Perhaps this could provide the distraction you need?";
			now hp of Karen is 2;
		otherwise if hp of Rex  > 9:
			say "     [one of]I'm so glad you decided to stay with us, I'm sure you'll love it.[or]Karen takes a moment to admire the collar Rex has given you to wear, comparing it to her own for a moment before complementing you on how nice it looks.[or]Karen is far too busy playing with Rex on the floor to talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head, clearly she's far too focused on Rex and the cookie to talk right now.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eat from a small pink dog bowl, offering you a taste before she digs back in.[at random]";
		otherwise:
			say "     [one of]Karen is far too busy playing with Rex on the floor to talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head, clearly she's far too focused on Rex and the cookie to talk right now.[or]'I'm so glad that bone brought me back here to Rex, and your pretty lucky it brought you here to him too!' Karen says with a smile.[or]'Are you sure you don't want to stay here with us?' Karen asks with a cute pout.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eat from a small pink dog bowl, offering you a taste before she digs back in.[at random]";
	otherwise if companion of player is Retriever Girl:
		say " 	 [one of]Thanks again for bringing me with you, I feel so much safer with you around.[or]It's nice to be able to think clearly again, but I'm still having trouble remembering much of my old life[or]I hope Rex isn't out causing trouble for someone else now that he doesn't have me keeping him occupied[or]I still feel that need welling up inside me occasionally...promise me you won't let me give in to it again, ok?[at random].";
	otherwise:
		if hp of Karen > 4:
			say " 	 Karen is not currently your active companion, you should call her over first.";
		otherwise:
			say "     You don't see any such thing.";

KarenFucking is an action applying to nothing.
Understand "fuck Karen" as KarenFucking.

carry out KarenFucking:
	if Karen is visible:
		if hp of Karen < 5:
			say "     When you begin to approach Karen wondering if she might be interested in having some fun with you hear a low growl behind you.";
			say "     You turn around to see Rex, an uncharacteristic scowl across his muzzle, apparently aware of your intentions. Glancing back at Karen for a moment, you decided it's best to stay on Rex's good side and leave his pet be.";
	otherwise if companion of player is Retriever Girl:
		if hp of Karen is 5:
			say "      Karen bites her lip and stares at you longingly for a moment before refusing. 'I don't think I should be doing any thing like that....yet.'";
	otherwise:
		if hp of Karen > 4:
			say "     Karen is not currently your active companion, you should call her over first.";
		otherwise:
			say "     You don't see any such thing.";

Section 2 - Karen as a pet 

Retriever Girl is a pet. Retriever Girl is a part of the player;
The description of Retriever Girl is "[RetrieverGirldesc]";
The weapon damage of Retriever Girl is 7;
The level of Retriever Girl is 5;
The Dexterity of Retriever Girl is 18;
The summondesc of Retriever Girl is "Karen smiles happily as you wave her over, hiking her bag up over her shoulder as she jogs forward.";
The assault of Retriever Girl is "[one of]Stepping forward quickly, [or]Circling around behind the enemy, [or]Rushing recklessly towards your foe, [or][at random]Karen [one of]strikes with her short claws[or]attacks with a swift, low kick[or]clips the opponent with a quick strike as she runs past[at random].";

the linkaction of Retriever Girl is "Possible Actions: [link]talk[as]talk karen[end link], [link]smell[as]smell Retriever Girl[end link], [link]fuck[as]fuck karen[end link][line break]";

to say RetrieverGirldesc:
	say "     Karen is a shapely female canine with a thick coat of golden fur. Currently unclothed, her four firms breasts and delicate female features are all out on display. Her canine tail wags happily behind her as she notices you looking at her.";

the scent of Retriever Girl is "     Karen has a light scent of an aroused female canine.";

[  hp of Rex   ]
[ 0 = not met        ]
[ 1 = done event once, received bone]
[ 2-4 = used bone  1-3 times]
[ 5 = met Rex, lost bone ]
[ 6-9 = "training phase, fucked Rex , pet offer at 9]
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


Karen ends here.
