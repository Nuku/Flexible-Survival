Stuck Dragon by hiccup begins here.

Section 1 - Finding the Building

Find Building is a situation.
the sarea of Find Building is "Mall";

After resolving a find building, try looking;

Instead of Resolving a Find Building:
	say "While exploring the sewer, you spot a ladder leading up to a manhole. You climb the ladder and push up on the manhole cover. After a bit of effort, you shift the manhole cover to the side and climb the rest of the way up the ladder.[line break][line break]You look around and see that you're back on the city streets, in front of an old building. You don't know if you'll find anything of interest inside, but it could be worth exploring. The nearby streets are completely blocked by debris and wrecked cars so you wouldn't have been able to find this place if you hadn't gone through the sewers.";
	increase the score by 5;
	move the player to Isolated Street;
	now the Isolated Street is known;
	now Find Building is Resolved;
	
Old Building is a room.
The description of Old Building is "There are small piles of useless junk and debris scattered around inside the old builing. A fine layer of dust is on almost every surface in sight.";
after examining the Old Building:
	if FreedDragon is 0:
		say "Other than the door you entered through, the only other doorway you can see is completely bocked by the rear of a large dragoness. The rest of its body is on the other side of the doorway so it can't see you.";
	otherwise:
		say "Other than the door you entered through, the only other doorway you can see is completely bocked by a pile of debris.";

Isolated Street is a room. It is fasttravel. It is private. Inside from the Isolated Street is a room called Old Building.
The description of Isolated Street is "The only thing of interest on this street is an old, rundown building that has been around for a while. It's been condemed for as long as you can remember, so you have no idea what this building was used for.";

Section 2 - Trapped Dragon Rear

NoIntroduction is a number that varies. NoIntroduction is usually 0.
EvilChoice is a number that varies. EvilChoice is usually 0.
LastDragonFucking is a number that varies. LastDragonFucking is usually 250.
DragonFuckedOnce is a number that varies. DragonFuckedOnce is usually 0.
EvilChoiceTwo is a number that varies. EvilChoiceTwo is usually 0.

Dragonfucking is an action applying to nothing.
DragonFuckDetails is an action applying to nothing.
Dragoneggslaid is a number that varies.

understand "fuck dragon" as dragonfucking;
understand "fuck dragoness" as dragonfucking;

check dragonfucking:
	if Dragoness is not visible, say "Who?" instead;

Carry out dragonfucking:
	dragonfuck;
	
[now cockname of player is "Horny Dragon";
now cock of player is "horny dragon";
]

To dragonfuck:
	if dragonfuckedonce is 1:
		if lastdragonfucking - turns is less than 8:
			say "Some of your cum is still leaking out of her pussy from the last time you screwed her. You should give her time to rest. You could also try to find a way to get her out of this doorway. If you want to do that, you[apostrophe]ll need to find a way around this doorway that her body is blocking. You found this building by searching through the sewers, so maybe you should start there?";
			stop the action;
		otherwise if lastdragonfucking - turns is less than 16:
			say "You shouldn[apostrophe]t do that while she[apostrophe]s pregnant.";
			stop the action;
		otherwise:
			now lastdragonfucking is 250;
			now DragonEggsLaid is 1;
	if NoIntroduction is 0:
		say "You move up to the trapped dragoness with dirty thoughts in your head. You place a hand against its side as you prepare to...[line break][line break]'Ahhh! I felt something touch me!' You hear a feminine voice shriek from the other side of the doorway as the dragoness[apostrophe]s body twitches, 'Is someone back there? Please tell me that you[apostrophe]re not one of those mindless... sexy... beasts, here to violate me while I[apostrophe]m helpless.'[line break][line break]Seems like this dragoness still has her humanity, but something in her voice almost sounds like she wants to be violated. You could abandon your plan to screw her if you want. Do you want to fuck her anyway?";
		now NoIntroduction is 1;
		if player consents:
			now EvilChoice is 1;
			dragondetails;
		otherwise:
			say "Your morality wins over and you decide to abandon your plan to screw the trapped dragoness. If you[apostrophe]re going to help her, you[apostrophe]ll need to find a way to talk to her face to face. That means you need to find a way around this doorway that her body is blocking. You found this building by searching through the sewers, so maybe you should start there?";
			now EvilChoiceTwo is 1;
	otherwise if EvilChoice is 0:
		if EvilChoiceTwo is 0:
			say "Seems like this dragoness still has her humanity, but something in her voice almost sounds like she wants to be violated. You could abandon your plan to screw her if you want. Do you want to fuck her anyway?";
			if player consents:
				now EvilChoice is 1;
				dragondetails;
			otherwise:
				say "Your morality wins over and you decide to abandon your plan to screw the trapped dragoness. If you[apostrophe]re going to help her, you[apostrophe]ll need to find a way to talk to her face to face. That means you need to find a way around this doorway that her body is blocking. You found this building by searching through the sewers, so maybe you should start there?";
				now EvilChoiceTwo is 1;
		otherwise:
			say "You[apostrophe]ve already decided to help her instead of fucking her.";
		stop the action;
	otherwise:
		Carry out DragonFuckDetails:
			dragondetails;

To dragondetails:
	if cocks of the player is less than 1:
		say "You don't have a cock to fuck her with. You should try again if you ever get one.";
		stop the action;
	if cock length of player is less than 5:
		say "Your cock is too small for you to get it deep enough into her huge vagina to stimulate her.";
		stop the action;
	now LastDragonFucking is turns;
	say "You climb ontop of the trapped dragoness[apostrophe]s lower body and start to position your cock above her pussy.[line break][line break]";
	if DragonFuckedOnce is 0:
		say "The Dragoness figures out what you're doing and she shrieks, 'Oh, no! You ARE one of those mindless beasts and you ARE going to violate me! Please don[apostrophe]t put your big... throbbing... manhood in my defenceless... and wet... pussy!'[line break][line break]";
		now DragonFuckedOnce is 1;
	otherwise:
		say "'On, no! Don[apostrophe]t violate me again!' The Dragoness shrieks, 'Laying that egg was an unbelievably pleasurable... I mean, painful experience!'[line break][line break]";
	say "You ignore her obviously fake protests and shove your [cock size desc of player] [cock of player] shaft into her huge pussy.[line break][line break]";
	if cock length of player is less than 20:
		say "'You evil monster, how could you? Oh yeah, that feels great... er... horrible! I said it feels horrible! Mmm, now pound me harder... I mean, stop you vile creature!' The Dragoness roars, she's obviously having trouble controlling the urges of her body.[line break]";
	otherwise:
		say "'Oh god, it's so BIG and it feels wonderful inside me... er... horrible! I said it feels horrible inside me! Mmm, now pound me harder... I mean, stop you vile creature!' The Dragoness roars, she[apostrophe]s obviously having trouble controlling the urges of her body.[line break][line break]";
	say "You pound your cock in and out of the Dragoness[apostrophe]s pussy. Her protests are soon entirely replaced with loud roars of pleasure as you bring her to her peak. Finally her pussy clamps down around your cock as an orgasm rocks through her body and your cock spews its load deep inside her. This is great, it[apostrophe]s like having your own personal dragon fuck-toy.";
		
Dragoness is a woman.
The description of Dragoness is "The Dragoness has beautiful, scarlet colored scales.";
after examining the dragoness:
	if NoIntroduction is 0:
		say "Its body is so large that it is completely stuck in the doorway with no space between it and the doorframe. The infection must have caused the creature to rapidly grow to a huge size just as it was walking through the doorway, so it became stuck. The creature[apostrophe]s tail and rear legs are pinned beneath a small, but heavy looking pile of debris. You can only see the backside of the creature from here, but you can see that the creature is laying on its back with its huge pussy exposed... and vulnerable. She would be helpless if you wanted to fuck her. But you wouldn[apostrophe]t do that... would you?";
	otherwise if dragonfuckedonce is 0:
		say "Her body is so large that she is completely stuck in the doorway with no space between her and the doorframe. The infection must have caused her to rapidly grow to a huge size just as she was walking through the doorway, so she became stuck. Her tail and rear legs are pinned beneath a small, but heavy looking pile of debris. Unlike the other creatures running the streets, this one doesn[apostrophe]t appear to have lost her humanity. You can only see the backside of her from here, but you can see that she[apostrophe]s laying on her back with her huge pussy exposed... and vulnerable.";
	otherwise if lastdragonfucking - turns is greater than 16:
		say "Her body is so large that she is completely stuck in the doorway with no space between her and the doorframe. The infection must have caused her to rapidly grow to a huge size just as she was walking through the doorway, so she became stuck. Her tail and rear legs are pinned beneath a small, but heavy looking pile of debris. Unlike the other creatures running the streets, this one doesn[apostrophe]t appear to have lost her humanity. You can only see the backside of her from here, but you can see that she[apostrophe]s laying on her back with her huge pussy exposed... and vulnerable. ";
		if DragonEggsLaid is 0:
			say "The dragoness[apostrophe]s belly has gone back to its normal size and there are several huge eggs on the ground next to her.";
			now LastDragonFucking is 250;
			now DragonEggsLaid is 1;
		otherwise:
			say "The dragoness[apostrophe]s belly has gone back to its normal size and there is another clutch of huge eggs on the ground next to her.";
			now LastDragonFucking is 250;
	otherwise if lastdragonfucking - turns is greater than 8:	
		say "Her body is so large that she is completely stuck in the doorway with no space between her and the doorframe. The infection must have made her rapidly grow to a huge size just as she was walking through the doorway, so she became stuck. Her tail and rear legs are pinned beneath a small, but heavy looking pile of debris. Unlike the other creatures running the streets, this one doesn[apostrophe]t appear to have lost her humanity. You can only see the backside of her from here, but you can see that she[apostrophe]s laying on her back with her huge pussy exposed... and vulnerable. The dragoness[apostrophe]s belly has grown big and plump since the last time you saw it. Looks like you[apostrophe]ve impregnated her.";
	otherwise:
		say "Her body is so large that she is completely stuck in the doorway with no space between her and the doorframe. The infection must have made her rapidly grow to a huge size just as she was walking through the doorway, so she became stuck. Her tail and rear legs are pinned beneath a small, but heavy looking pile of debris. Unlike the other creatures running the streets, this one doesn[apostrophe]t appear to have lost her humanity. You can only see the backside of her from here, but you can see that she[apostrophe]s laying on her back with her huge pussy exposed... and vulnerable. Some of your cum is still leaking out of her pussy from the last time you screwed her.";
		
Dragoness is in Old Building.
Instead of conversing the Dragoness: 
	if NoIntroduction is 0: 
		say "'Hello? Is someone back there?' The Dragoness calls out from the other side of the door, 'Please tell me that you[apostrophe]re not one of those mindless... sexy... beasts, here to violate me while I[apostrophe]m helplessly trapped here.'";
		now NoIntroduction is 1;
	otherwise if EvilChoice is 0:
		say "'No offence, but I prefer to talk to people that I can see.' You hear the Dragoness say from the other side of the door.";
	otherwise:
		say "'That was great, come back and fuck me again sometime. Gah! I meant to say, stay away from me you evil monster!'";

Section 3 - Bypass the Blocked Door

Another Ladder is a situation.
the sarea of Another Ladder is "Mall";

After resolving a another ladder, try looking;

Instead of Resolving a Another Ladder:
	if NoIntroduction is 0:
		say "While exploring the sewer, you spot a ladder leading up to a manhole. You climb the ladder and push up on the manhole cover. Unfortunately something seems to be blocking it from the other side. You should try again later.";
		stop the action;
	say "While exploring the sewer, you spot another ladder leading up to a manhole. Maybe this one will lead you around the blocked doorway? You climb the ladder and push up on the manhole cover. After a bit of effort, you shift the manhole cover to the side and climb the rest of the way up the ladder.[line break][line break]You look around and see that you're back on the city streets, in an alley behind an old building. It[apostrophe]s the same old building that you found earlier. There is a side entrance to the old building here. Looks like you've found the way around the blocked doorway. The nearby streets are completely blocked by debris and wrecked cars so you wouldn't have been able to find this place if you hadn't gone through the sewers.";
	increase the score by 5;
	move the player to Back Alley;
	now the Back Alley is known;
	now Another Ladder is Resolved;
	
Back Room is a room.

The description of Back Room is "There are small piles of useless junk and debris scattered around inside the old builing. A fine layer of dust is on almost every surface in sight.";
after examining the Back Room:
	if FreedDragon is 0:
		say "Other than the door you entered through, the only other doorway you can see is completely bocked by the front half of a large dragoness. You can[apostrophe]t see the rear of her body, because it[apostrophe]s on the other side of the doorway. There are several bottles of water and packages of food next to the dragoness, which explains why she didn[apostrophe]t die of hunger or thirst while being trapped here.";
	otherwise:
		say "Other than the door you entered through, the only other doorway you can see is completely bocked by a pile of debris.";

Back Alley is a room. It is fasttravel. It is private. Inside from the Back Alley is a room called Back Room.
The description of Back Alley is "You[apostrophe]re standing in an alley behind an old building. It[apostrophe]s the same old building that you found earlier. There is a side entrance to the old building here. Looks like you[apostrophe]ve found the way around the blocked doorway.";

Section 4 - Trapped Dragon Front

FaceToFace is a number that varies. FaceToFace is usually 0.
FreedDragon is a number that varies. FreedDragon is usually 0.

Christy is a woman.
after examining the Christy:
	if FreedDragon is 0:
		say "She looks like a dragon that was ripped straight from the pages of a fairy tale. The Dragoness has beautiful, scarlet colored scales and emerald colored eyes. There are two large wings on her back. She is laying on her back and her body is so large that it is completely stuck in the doorway with no space between her body and the doorframe. The infection must have caused her to rapidly grow to a huge size just as she was walking through the doorway, so she became stuck.";
	otherwise:
		say "She looks like a dragon that was ripped straight from the pages of a fairy tale. The Dragoness has beautiful, scarlet colored scales and emerald colored eyes. There are two large wings on her back. Now that she[apostrophe]s been freed from the doorway, you[apostrophe]re able to see just how big she is. She[apostrophe]s over 7 feet tall and 10 feet long!";

DragonFreeing is an action applying to nothing.

understand "free dragon" as dragonfreeing;
understand "free dragoness" as dragonfreeing;
understand "free Christy" as dragonfreeing;

check dragonfreeing:
	if Dragoness is visible, say "Not here, you should go to the other side of the door." instead;
	if Christy is not visible, say "Who?" instead;
	if FaceToFace is 0, say "You don[apostrophe]t know how to free her yet. You should talk to her face to face first." instead;
	if FreedDragon is 1, say "You already freed her from the doorway." instead;
	
Carry out dragonfreeing:
	FreeDragon;
	
To FreeDragon:
	if glob of goo is owned:
		let number be 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the regular expression printed name of glob of goo:
				remove entry number from invent of the player;
				break;
		say "You give the goo to Christy. She smears the goo in the places where her body is jammed against the doorframe, greasing herself up.[line break][line break]'Oh yeah, that feels nice.' Christy moans as she rubs the goo on herself, 'If only I could reach my pussy, then I could... Ah! Bad thoughts! Bad thoughts!'[line break][line break]When she finishes, she braces her front legs on the walls on both sides of the doorframe and starts pushing against it. At first nothing happens, but then her body violently pops free from the doorway like a cork from a bottle of champagne. Parts of the wall around the door that she was stuck in collapse, blocking the door again. Christy, unable to control her forward momentum, accidentally collides with you and you end up pinned beneath her.[line break][line break]'My hero! Huh, where did you go?' Christy asks, unaware that you[apostrophe]re pinned beneath her. She shifts her bulk around as she tries to find you and then accidentally rubs her pussy against your face, sending waves of pleasure through her body. Overcome by all her pent up lust, Christy starts to grind her pussy back and forth against your head, 'Oh, God yes! No! I must control these urges... I must... oh, screw it! It feels too damn good!'[line break][line break]Christy still doesn't seem to realize that it is your face that she is rubbing her pussy against. If you start protesting this treatment, Christy could snap out of it and stop... or you could just sit back, relax and enjoy this situation. Do you want to yell at Christy to stop?";
		increase score by 10;
		remove the Dragoness from play;
		now FreedDragon is 1;
		if player consents:
			say "You shout at Christy and she returns to her senses.[line break][line break]Christy looks under her belly and spots you pinned beneath her. She blushes and gets up off of you as she says, 'Oh! I'm so sorry, I didn't know.'";
		otherwise:
			say "You smile and decide to let Christy continue to grind her pussy against your face. Your head becomes soaked with her love juices as her arousal buildis. Christy starts to let out loud roars of pleasure as she grinds her pussy against you at a faster and faster pace. Your nose brushes against her clit with each grinding motion she makes. The scent of her snatch is actually quite pleasant.[line break][line break]Christy finally orgasms and she lets out an ear splitting roar. Her pussy lips suddenly grip the sides of your head and yank it all the way into her pussy. The muscles of her love cannal squeeze your head tightly and start to quickly pull more of your body inside as Christy[apostrophe]s body is hit by one orgasm after another. Alarmed by this new development, you finally start yelling at Christy to try to get her to stop. Unfortunately, Christy is so overcome by the pleasure that she is oblivious.[line break][line break]Christy[apostrophe]s huge pussy pulls and tugs your body until your feet are pulled inside with a wet slurp noise, then you[apostrophe]re forced to curl up inside her womb. You[apostrophe]re not sure how much time passes, but eventually you wake up in a small, dark, and cramped room.";
			move player to Small Dark Room;
	otherwise:
		say "You don[apostrophe]t have something slimey to free her with.";
		stop the action;
					
Christy is in Back Room.
Instead of conversing the Christy: 
	if FaceToFace is 0:
		if EvilChoice is 0:
			say "'Finally, someone is here to fuck me... I mean, save me!' The Dragoness chears when she sees you, 'My name is Christy. I[apostrophe]ve been trapped here for a while now. I think I can get free if I had something slimey to grease myself with. If you have something like that, could you please FREE me?'";
		otherwise:
			say "'Finally, someone is here to fuck me... I mean, save me!' The Dragoness chears when she sees you, 'My name is Christy. I[apostrophe]ve been trapped here for a while now and some horrible monster on the other side of the door raped my vulnerable pussy.'[line break][line break]'Really? That sounds horrible!' You exclaim, playing dumb.[line break][line break]'Anyway, I think I can get free if I had something slimey to grease myself with. If you have something like that, could you please FREE me?' Christy asks.";
		now FaceToFace is 1;
	otherwise if FreedDragon is 0:
		say "'Did you find something slimey I can use to free myself with? If you have something like that, please FREE me.' Christy says.";
	otherwise:
		say "'Thanks again for freeing me, can you fuck me now? Gah! I didn't mean to say that! [one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I[apostrophe]d become the laughing stock of the nunery.'[or]Must think of anything except... hot... wonderful... sex.'[or]None of this would have happend if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[at random]";

Section 5 - Egg

DragonHatching is an action applying to nothing.

understand "struggle" as dragonhatching;
understand "struggle to get out" as dragonhatching;

check dragonhatching:
	if the location of player is not Small Dark Room, say "That verb does not make sense in this context." instead;
	
Carry out dragonhatching:
	HatchDragon;
	
To HatchDragon:
	say "You punch one of the walls and to your surprise you punch a hole in it very easily. You spend several minutes widening the hole until it[apostrophe]s large enough for you to fit through. You squirm your way out and find yourself back in the room with Christy.[line break][line break]'Oh, so that[apostrophe]s where you went.' Christy remarks as she sees you.[line break][line break]Unsure of what she[apostrophe]s talking about, you look at the place you crawled out of and see that it was a huge egg!";
	move player to Back Room;
	if "Male Preferred" is not listed in feats of player:
		say "You look down at your body and discover that you[apostrophe]ve been completely transformed into a Slutty Dragoness!";
		now tailname of player is "Slutty Dragoness";
		now tail of player is " You have a long, thick, and scaley dragon tail with your ass and gaping pussy lips beneath it. ";
		now bodyname of player is "Slutty Dragoness";
		now body of player is "huge and draconic. You[apostrophe]re over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body. There are large bat like wings on your back.";
		now facename of player is "Slutty Dragoness";
		now face of player is "reptilian shape with a long snout. Your mouth is full of sharp teeth that peek out past your thin lips. Your head is bald except for two backwards facing horns. This is definitely not a human ";
		now skin of player is "blue colored dragon scales covering your";[ skin Description, format as the text "You have (your text) skin"] 
		now cocks of player is 0;
		now cunts of player is 1;
		now cunt length of player is 20;
		now cunt width of player is 15;
		now libido of player is 100;
	otherwise:
		say "You look down at your body and discover that you[apostrophe]ve been completely transformed into a Horny Dragon!";
		now tailname of player is "Horny Dragon";
		now tail of player is " You have a long, thick, and scaley dragon tail above your ass. ";
		now bodyname of player is "Horny Dragon";
		now body of player is "huge and draconic. You[apostrophe]re over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body. There are large bat like wings on your back.";
		now facename of player is "Horny Dragon";
		now face of player is "reptilian shape with a long snout. Your mouth is full of sharp teeth that peek out past your thin lips. Your head is bald except for two backwards facing horns. This is definitely not a human ";
		now skin of player is "blue colored dragon scales covering your";[ skin Description, format as the text "You have (your text) skin"] 
		now cocks of player is 1;
		now cunts of player is 0;
		now cock length of player is 15;
		now cock width of player is 10;
		now libido of player is 100;

Small Dark Room is a room.
The description of Small Dark Room is "You[apostrophe]re curled up in a ball inside a dark room that is so small that the walls and ceiling are pressing against your body from all sides. You should try to STRUGGLE to get out.";

Section 6 - When the game ends

When play ends:
	if NoIntroduction is 1:
		if FreedDragon is 0:
			if DragonEggsLaid is 1:
				say "[line break][line break]The Dragoness you found trapped in a doorway is freed by her offspring after they hatch. The Dragoness never discovers the identity of the father. Her offspring begin to worship her as a diety, then they conquer a large part of the country and make her the Queen of it.[line break][line break]";
			otherwise:
				say "[line break][line break]The Dragoness you found trapped in a doorway is discovered by the military. They examined her until they discovered that she was no longer infectious, then they left... without freeing her from the doorway. Eventually, the trapped dragoness became a tourist attraction and her exposed pussy gets fucked by almost every male tourist that visits the city.[line break][line break]";
		otherwise:
			if DragonEggsLaid is 1:
				say "[line break][line break]After you freed her from the doorway where you found her, Christy[apostrophe]s eggs eventually hatch. Caring for her children, helps to mellow out her lust enough for her to learn how to control it. Her children grow up to be fine dragons and she loves them dearly, even after they start kidnapping princesses. She never discovers that you were the one who knocked her up.[line break][line break]";
			otherwise:
				say "[line break][line break]After you freed her from the doorway where you found her, Christy was eventually found by the military. They examined her until they discovered that she was no longer infectious, then they left her alone. Christy struggled for months to control the extreme lust that the infection gave her, but in the end she decided to embrace her new, slutty nature and she became a very famous porn star.[line break][line break]";
		if bodyname is "Slutty Dragoness":
			if humanity of player is less than 10:
				say "With your humanity gone, you aimlessly wander the city streets until the military arrives and captures you. They examine you until they discover that you[apostrophe]re no longer infectious, then they sell you to a zoo.";
			otherwise:
				say "Although you survived with your humanity intact, you still have trouble controlling the lust of your Slutty Dragoness body. Over time, you learn to control the lust with meditation... and orgies, lots and lots of orgies.";
		otherwise if bodyname is "Horny Dragon":
			if humanity of player is less than 10:
				say "Following a compulsion, you spread your wings and fly away from the city. You find a nice cave to live in, then you set about fulfilling your instinctive urge to kidnap princesses and accumulate a horde of treasure.";
			otherwise:
				say "Although you survived with your humanity intact, you still have trouble controlling the lust of your Horny Dragon body. Over time, you learn to control the lust with meditation... and orgies, lots and lots of orgies.";

Stuck Dragon ends here.