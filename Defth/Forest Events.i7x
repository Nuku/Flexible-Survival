Version 1 of Forest Events by Defth begins here.

[Pulma normal vore and cock vore]

Table of GameEventIDs (continued)
Object	Name
Small Cave	"Small Cave"

Small Cave is a situation.
ResolveFunction of Small Cave is "[ResolveEvent Small Cave]".
Sarea of Small Cave is "Forest".
When play begins:
	add Small Cave to badspots of FeralList;
	add Small Cave to BadSpots of FurryList;
	add Small Cave to badspots of CockvoreList;
	add Small Cave to badspots of VoreList;

to say ResolveEvent Small Cave:
	if glowing mushroom is owned:
		say "     Walking around the forest, you find what appears to be a hole in a rock. It does have sound coming from the other side, so it might be worth exploring. Unfortunately, the hole is too small for you size, so you would need to shrink before going in there.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Eat the shrooms and try to scavenge the place.";
		say "     ([link]N[as]n[end link]) - Could be dangerous while shrunk down. Search for another entrance.";
		if Player consents:
			LineBreak;
			say "     Eating the shrooms, you shrink in no time, your clothes quickly outgrowing you. Now finally at a stature that can fit in the hole with ease, you can explore what lies inside. The cave is small in nature, but still big enough to hold a nest comfortably. While exploring the place, you hear a loud growl from behind you. Turning around, you find the denizen of this place, a cougar, this one looking more feral than the others. She even has a sheath, and from what you can see, her cock is more spear-like than a normal human. The herm feline looks at you with curious eyes, like she has never saw someone so small before. The curious animal jumps at you, hunting you down like a cat would do to a mouse, jumping from one position to another as she tries to corner you. ";
			if vorelevel is 1: [no vore interest by the player]
				LineBreak;
				say "     Understandably frightened at possibly getting captured and eaten - or worse - you give everything you have and flee from the cave in a desperate burst of speed, escaping from the cat in the last second. Phew, this definitively isn't a place where one should come when so small and vulnerable. You could come back once the shrooms have worn off though, and give that cat a piece of your mind.";
			else:
				say "You are eventually captured in her paws, and you become her toy for a while, the feline herm using you to kill her boredom. She hits you sometimes, encouraging you to keep moving to her amusement.";
				say "     She is a cat, so maybe if you stopped moving, she would get bored of you and continue with what she was doing? However, she could also devour you. Your other choice is running away with all of your might, but if she did catch you again, who knows what she would do to you?";
				ItemLoss glowing mushroom by 1;
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Stop moving and hope the playful cat will get bored.";
				say "     ([link]N[as]n[end link]) - RUN! It's the best option.";
				if Player consents:
					LineBreak;
					say "     Against your own instincts, you stop moving, hoping that the beast will get bored of you as a toy and move on with her life, and for a while, it looks like it will work. The confused cat paws at you with curiosity as to why you would stop moving so suddenly, and she smells you, looking for any sign of life. You hold your breath with your eyes closed tight as to not show any emotion. Your body is immobile but not stiff, letting you roll around with some of the stronger hits your body takes. After some time of this, the cat finally looks like she got bored of you. You breathe a sigh of relief, although it was for naught. With your eyes closed, you couldn't have reacted to the hunger the beast showed, and you are tossed inside her mouth.";
					say "     With a single pull, you travel to the inside of her mouth, her bigger teeth missing your body while her smaller teeth hold you in place as her meal. Her tongue touches your body, the sandpaper-like feeling stimulating your hot body. Those weird sensations of being held by her teeth and the sensation of her tongue, along with the slickness of her saliva, create a weird arousal inside of your brain. Your [if Player is female]pussy moistens[else if Player is male]member hardens[else]ass tightens[end if] with unwanted desire, distracting you long enough to not feel her tongue forcing you down her throat. Your mind is in shambles, and the idea of fighting back to stay on the surface doesn't even cross your mind as her fleshy canal pushes you towards her stomach. Your body stays in a bound state, your arms hugging your sides, and you are slightly red from your arousal, breathing heavily as if wanting some kind of release. But this place wasn't made for it - it was made to trap you. Finally, you can concentrate a bit more, and now, you need to make a choice.";
					say "     Do you try to escape this place or just let it happen to the end?";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Try to escape by climbing back.";
					say "     ([link]N[as]n[end link]) - Let yourself be devoured by the feline.";
					if Player consents:
						LineBreak;
						say "     With a snap, you set your mind to escaping this place. You pull on her flesh as you climb out of this place, and your movements make her gag, accelerating your return to the surface. You can finally see light again as you take a look from inside of her mouth, her teeth making it almost look like a jail's window. And with a final push from her, you are spat out. Your body hurts from the experience, but you are alive. Getting back on your feet as fast as you can and not letting the feline recover from what happened to her, you escape using the hole you used to enter. You can finally go back to your adventures.";
						WaitLineBreak;
						now Resolution of Small Cave is 1; [got eaten and climbed out]
					else:
						LineBreak;
						say "     It doesn't matter now. You just travel down her digestive system until you finally fall into her stomach. The place is deserted, as you would expect. There are no signs of any other meal, so it looks like you have the place all to yourself. Her stomach grumbles and presses against you. Looks like this is the end. There is now only one way out, and you won't experience it alive...";
						WaitLineBreak;
						now battleground is "void";
						the Player was ended by "Shrinking Shrooms eaten alive";
						trigger ending "Player has died";
						end the story saying "You were eaten alive!";
						now Small cave is resolved;
				else:
					LineBreak;
					say "     Getting back on your feet, you turn around and run as fast as you can. Even if you're slower than when you have your normal body, there is at least one chance that it will work out. Not wanting to let her toy escape before she is done with it, the playful cat pounces at you, but it seems she misjudged the distance and ends up squishing you with her belly, leaving you in front of her sheath. Looks like the position must have fired up her instincts as she starts rubbing against your body, her feline penis poking out of her sheath and pressing you against the ground. Her nubs scratch your skin, staining you with her slick cock. Your mind goes blank with the pleasure distracting you from the hole that you are about to enter.";
					say "     In her mad humps, that giant cock lines up with your body, making you turn in dread as you see the opening of her cock slowly swallowing your feet. You try your best to escape your conundrum, but your flailing only makes her movements faster. Her pre lubes your travel through her urethra. When you are halfway through, you try to punch her gland, but with your diminutive size, it only tickles her, forcing moans out of her mouth. The entrance to her dick keeps swallowing you, which has now reached your thorax, and her musk is all that you can smell now. The rest of your body feels bound by the canal of flesh that surrounds it. Your arms stay above your head, trying to grasp at anything that will keep your head out of there. Her cock finally gets to your neck and jaw, making her pre splash in your mouth. The salty taste attacks your tongue, and you press your arms to the sides of your head in a last attempt to make you free, but it proves useless as you are swallowed whole by her cock.";
					say "     You travel through her urethra bounding you with its tightness, but the lubing helps this make an almost pleasant sensation. The canal keeps pulling you with each spasm of pleasure that travels her body, and every movement you make forces her convulsions to get stronger. Her pre envelops you, making it very difficult to breathe and giving you only small pockets of air to use, the salty taste of her arousal overwhelming anything else on your tastebuds. Her movements are felt directly on your body from such an intimate moment, and right now, you are experiencing something that very few will ever savor. The mad shaking of your host pulls you more and more inside of her body and towards her balls. The horny feline trembles as your feet touches something that feels harder. Looks like you are passing by her prostate. This gives you an idea. Maybe if you can make her cum, you will be ejected from this place. Do you try this plan?";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Get out of here.";
					say "     ([link]N[as]n[end link]) - Stay still and travel to her balls, even though this might be a one way trip.";
					if Player consents:
						LineBreak;
						say "     You shake around, and it looks like your plan is working as you feel even more convulsions and the amount of pre grows with each movement. Just a bit more and you are going to get out of here in a white river. You push and prod what you assume is her prostate. The flesh tightens around you, and for a moment, it pulls you even more, making you think that this probably wasn't a good idea. But then you feel more fluids traveling with you. The pressure is high as the white, viscous liquid pushes you out. Some of it gets into your mouth, and the taste is assuring you that this is cum. You travel all the way back from where you came from, and with a final push, you are tossed out with a large rope of babybatter. Free! You run away while the feline is tired from all of the pleasure of having you inside of her and the orgasm. You run back to the hole you used to enter this place and gather your belongings. As you head out, you could see that the stains of cum on you will stay with you for a while.";
						WaitLineBreak;
						now Resolution of Small Cave is 2; [got cockvored and squirted out]
					else:
						LineBreak;
						say "     You keep traveling down to her balls, your curious mind pushing you to know what is going to happen. Her flesh tightens around you with the pleasure coming from her prostate, and even some semen stain your body, but it's not enough to push you out. You keep traveling inwards until you are in her balls, swimming in her cum. The taste of cum is everything you can discern right now. You push against the flesh, but it doesn't look like it will do anything anymore. Right now, the only thing you can do is wait for the end as you're turned into cum inside some feline's ball...";
						WaitLineBreak;
						now battleground is "void";
						the Player was ended by "Shrinking Shrooms eaten alive";
						trigger ending "Player has died";
						end the story saying "You were eaten alive!";
						now Small cave is resolved;
		else:
			LineBreak;
			say "     Going around the forest, never letting the rock wall out of your sights, you explore for a new opening. Finally, you find what appears to be a cave big enough for you to enter, but somebody might be living inside there. Do you still wish to go inside?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Go inside the place.";
			say "     ([link]N[as]n[end link]) - Give up and go home.";
			if Player consents:
				LineBreak;
				say "     Going inside of the place, it looks like a nest for a feline. Some small bones litter the place, showing that whoever lives in there is a carnivore, so you better be on your toes. There is a stench in the air. The resident of this place probably did that to mark the place. A low growling and the sound of dry leaves cracking make you turn in a flash, and you find the one that lives in here. A big feline with yellow-brown fur is looking at you. The cat looks more feral than human, but she still has some characteristics that show she was a human before, specifically, her short, pixie-blonde hair. Outside of that, all that you can see is a beast ready to attack you. The fight is on.";
				wait for any key;
				challenge "Cougar";
				if fightoutcome >= 20 and fightoutcome <= 29:[lost]
					say ""; [regular cougar scene]
					now Resolution of Small Cave is 3; [fought cave cougar, lost]
				else if fightoutcome >= 30:[fled]
					say "     Running away with all that you have, you trip over a few times, but you get out of the cave before the feline leaps on you. You run without noticing that your legs took you back to the familiar sight of the Grey Abbey Library. You can finally rest.";
					move player to Grey Abbey Library;
					now Resolution of Small Cave is 4; [fought cave cougar, fled]
				else if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say ""; [regular cougar scene]
					WaitLineBreak;
					now Resolution of Small Cave is 5; [fought cave cougar, won]
				now Small cave is resolved;
			else:
				LineBreak;
				say "     You go back the way you came. It's not worth the risk, whatever it is.";
				now Resolution of Small Cave is 6; [didn't enter the small cave]
	else:
		say "     Walking around the forest, you find what appears to be a hole in a rock. It does have sound coming from the other side, so it might be worth exploring. Unfortunately, the hole is too small for you size, so you would need to shrink before going in there. Going around the forest, never letting the rock wall out of your sights, you explore for a new opening. Finally, you find what appears to be a cave big enough for you to enter, but somebody might be living inside there. Do you still wish to go inside?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go inside the place.";
		say "     ([link]N[as]n[end link]) - Give up and go home.";
		if Player consents:
			LineBreak;
			say "     Going inside of the place, it looks like a nest for a feline. Some small bones litter the place, showing that whoever lives in there is a carnivore, so you better be on your toes. There is a stench in the air. The resident of this place probably did that to mark the place. A low growling and the sound of dry leaves cracking make you turn in a flash, and you find the one that lives in here. A big feline with yellow-brown fur is looking at you. The cat looks more feral than human, but she still has some characteristics that show she was a human before, specifically her short, pixie-blonde hair. Outside of that, all that you can see is a beast ready to attack you. The fight is on.";
			challenge "Cougar";
			if fightoutcome >= 20 and fightoutcome <= 29:[lost]
				say ""; [regular cougar scene]
				now Resolution of Small Cave is 3; [fought cave cougar, lost]
			else if fightoutcome >= 30:[fled]
				say "     Running away with all that you have, you trip over a few times, but you get out of the cave before the feline leaps on you. You run without noticing that your legs took you back to the familiar sight of the Grey Abbey Library. You can finally rest.";
				move player to Grey Abbey Library;
				now Resolution of Small Cave is 4; [fought cave cougar, fled]
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say ""; [regular cougar scene]
				WaitLineBreak;
				now Resolution of Small Cave is 5; [fought cave cougar, won]
			now Small cave is resolved;
		else:
			LineBreak;
			say "     You go back the way you came. It's not worth the risk, whatever it is.";
			now Resolution of Small Cave is 6; [didn't enter the small cave]

Forest Events ends here.
