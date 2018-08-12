Version 1 of Hyena Shoppers by Doots begins here.

Hyena Shoppers is a situation.
The sarea of Hyena Shoppers is "Outside".

when play begins:
	add Hyena Shoppers to badspots of furry;
	add Hyena Shoppers to badspots of hermaphrodite;

Instead of resolving a Hyena Shoppers:
	say "     You walk through the empty street, ducking and weaving between the abandoned cars that litter the streets, looking for something, anything to help you with your survival. Unfortunately, most of the shops that back in the day sold food have had their front windows smashed in and everything edible has been stolen. As you walk past a ransacked pet shop you hear something coming from the alley opposite to the building. The sound is strange but still you feel like you have heard it before. You could go see what is making that noise but you risk getting ambushed by horny mutants.";
	say "     [bold type]Do you want to check what is making all that noise?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go check it out.";
	say "     ([link]N[as]n[end link]) - Fuck that. Bolt!";
	if player consents:
		LineBreak;
		say "     Curiosity might have gotten the cat fucked but you need all the resources you can get. Rounding the corner without making a sound you three hyenas standing in guard next to a steel door, baseball bats in hand prepared to try take down anyone who might attempt to take their ill-gotten loot. The steel door seem to lead into a storage room of some sorts. The sound you heard must have been from them breaking down the door. As you keep peeking on their illicit activities one more comes out from the storage room carrying a large sack filled with several can-shaped lumps over her shoulder and a rather large box in hand. Seemingly they are ransacking some left-over storages that more weaker mutants weren't able to get into.";
		say "     As you keep looking at the hyenas who are busy looting the place, you fail to notice another one of them sneaking behind you until she pushes you forwards, calling out, 'Girls we have someone snooping around in our business.' Your eyes bolt around, looking for an escape, but before you can do anything more, one of the hyenas (probably the leader of the group) speaks up, 'Calm down girls, I'm sure that they were just looking for tonight's meal and we got a good haul today, so we might be able to spare some. Well, provided that they give us something in return.' The grin on her face and the chuckling from her sisters tells you that she's not talking about money.";
		say "     [bold type]Do you want to provide them with whatever she is talking about? It'll likely be something sexual...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Chance yourself for some food.";
		say "     ([link]N[as]n[end link]) - This deal doesn't sit right with you.";
		if player consents:
			if WSlevel is not 1: [normal or more WS]
				say "     The leader of the group grins as you nod your head and rather demandingly says, 'My girls and I have been a bit bored lately, and you are going to help us with that.' She unzips her fly as the rest of the hyenas circle you. She rubs her sheath until her black member is fully out of it. She grips the base of it and places the tip at your lips, dutifully you open your mouth, letting her the tip inside. You prepare for her to start thrusting but she never starts to do so, instead she sighs as hot, acrid liquid fills your mouth, you swallow it down before it fills your mouth. You swallow a mouthful after a mouthful until she runs dry. When she does, she pulls out of your mouth only to be replaced with another, and then another.";
				say "     When the last of the hyenas pulls out of your mouth you groan, your stomach filled with the hyenas piss and its taste is filling your mouth. As you stifle as burp the leader of the group chuckles, 'What did you expect, a blowjob? The girls and I have a nice pecking order set up, but it's just not the same to humiliate one of your own.' She demonstrates her statement by grabbing the nearest of the hyenas and groping her ass and breasts, quickly her black penis grows completely erect but she does nothing but softly whine, begging for the hyena groping her to touch her more. But she doesn't, instead wiping the last drop of urine from her tip on your nose, pulling up her fly, and walking off with rest of the hyenas in tow. The hyena that was subjected to the groping throws a water bottle and a bag of chips in at your feet. Fighting the urge to drink the water immediately you put the bottle and the chips into your bag before moving on, stifling the occasional burp.";
				increase carried of water bottle by 1;
				increase carried of chips by 1;
			else: [low/no WS setting]
				say "     The leader of the group grins before she pushes you to stumble and fall on your back, then grinds her paw onto your face. 'You better beg for the food and lick my paws clean, or I'll just keep rub it all over your face until I get bored.' She stretches her toes before your eyes pressing the paw back to your face. 'Now get to it,' she commands, letting out a barking laugh. Opening your mouth you let one of her toes inside, its taste is bitter and salty, occasionally popping it out of your mouth to beg her for food. The other hyenas around you two are starting to pair off, groping, kissing, and jerking each other off. The hyena with her paw in your mouth gives in, starting to jerk off too. 'Oh I wish I could keep you as my paw bitch forever.'";
				say "     When she lifts her paw from your face you groan, your mouth dry and her paw's taste is filling your mouth. The leader of the group chuckles 'What did you expect, a blowjob? The girls and I have a nice pecking order set up, but it's just not the same to humiliate one of your own.' She demonstrates her statement by grabbing the nearest of the hyenas and groping her ass and breasts, quickly her black penis grows completely erect but she does nothing but softly whine, begging for the hyena groping her to touch her more. But she doesn't, instead, wrapping her paws again, and walking off with rest of the hyenas in tow. The hyena that was subjected to the groping throws a water bottle and a bag of chips in at your feet. Fighting the urge to drink the water you put the bottle and the chips into your bag before moving on.";
				increase carried of water bottle by 1;
				increase carried of chips by 1;
		else:
			LineBreak;
			say "     You're not desperate enough to go around accepting strange deals from hyenas. Refusing the offer politely, you hope that she won't take it personally. With a shrug, the hyena turns around and walks away, the other hyenas following on her heel. You take a peek into the storage room to see if they left anything behind. After a bit of poking around, you actually do manage to find a lonely can of soda in one corner. It must have rolled under the shelf there while the pack were looting the place. There is nothing left for you here, so you move on, eventually finding your way back to where you started.";
			increase carried of soda by 1;
	else:
		LineBreak;
		say "     Curiosity got the cat fucked, and you have no interest in getting fucked tonight. Doubling your pace, you put as many feet between you and whoever or whatever is making the noise.";

Hyena Shoppers ends here.
