Exotic Bird by Sarokcat begins here.

"Adds a special event to Flexible Survival with a potential pet."

Section 1-Exotic Bird

Exotic Bird is a pet. The description of the exotic bird is "This exotic bird is nice and happy now! You aren't sure just what kind of exotic bird your new friend is, but it has brilliantly coloured feathers, and lovely plumage on the back of its head. The bird is only slightly larger then a parrot, but it seems to have taken a liking to you, and will occasionally stop and rest on your shoulder, though the rest of the time it is flying nearby.". Exotic Bird is a part of the player.
The weapon damage of Exotic Bird is 2.
The level of Exotic Bird is 1.
The Dexterity of Exotic Bird is 15.
The summondesc of Exotic Bird is "Hearing you whistle, the exotic bird flaps over and takes up position overhead, keeping an eye out for any threats.".
The assault of Exotic Bird is "[one of]The exotic bird dive bombs your opponent![or]The exotic bird flaps its wings in your adversary's face, blinding it![or]Diving down to engage, your bird friend scratches at your opponent with its talons![or]Your opponent jumps and twists around in pain with an exotic bird pecking at its scalp.[or]Taking advantage of your foe's momentary distraction, your pet bird manages to land a few quick attacks.[or]Your bird friend takes a moment to relieve itself, fortuitously right on your opponent.[at random]".
The fuckscene of exotic bird is "The exotic bird is too small for that sort of thing.".

instead of sniffing Exotic Bird:
	say "It smells like an exotic bird with a faint, tropical scent to it.";


Scared bird is a situation.
The sarea of Scared bird is "Zoo".
Instead of resolving Scared bird:
	say "Traveling along the zoo paths you hear a strange noise from up ahead, moving carefully to investigate the area where you heard the noise, you look around the tree there but don't actually see anything, you are about to turn to leave when you hear the sound again from up in the branches. Looking up you are surprised to see a rather scared looking exotic bird taking shelter up in the branches, its brilliant plumage obvious at this distance as it huddles nervously above you. You realize it must have escaped from one of the exotic bird exhibits, and sigh when you realize that its chances of survival in this violent city without help are pretty slim. Maybe you should try convincing it to come along with you instead of just hiding here?";
	if carried of food is 0:
		say "A quick glance shows you don't have any food with which to try and coax the bird down with. You'll have to try it again later once you've found some food.";
	else:
		if player consents:
			say "Making soft noises as the bird, you attempt to coax it down with a bit of food and friendly words, trying hard to convince it you want to be its friend.";
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll > 17:
				say "Your honeyed words and sweet tones eventually manage to coax the scared bird down out of the tree, where you feed it a bit of food as it begins to get used to your presence. Given a closer look you are impressed by the birds wonderfully bright feathers, but you still have no clue exactly what type of bird it is. Sighing you decide your knowledge of birds is just too insufficient for what is obviously a rare species of bird, and resolve to try to find out just what kind of bird it is if you ever manage to get out of this crazy city. After several hours of coaxing and calming the bird, it seems quite happy to go along with you as you head back into the city, obviously happy not to be alone any longer.";
				delete food;
				now Exotic Bird is tamed;
				say "(The exotic bird is now tamed! You can make it your active pet by typing [bold type][link]pet exotic bird[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
				now Scared bird is resolved;
			else:
				say "Sadly the bird seems too scared to heed your blandishments, and it stays up in the tree shaking and occasionally letting out a soft piteous cry. You obviously aren't going to convince it to trust you right now, maybe you should try again later.";
		else:
			say "Deciding that you wouldn't have the least idea of how to care for a truly exotic bird yourself, and that you are having enough trouble keeping yourself alive, you decide to leave the bird to its fate, at least it has wings right?";
			now Scared bird is resolved;


when play ends:
	if Exotic Bird is tamed:
		if humanity of player < 10:
			say "When you give in to your feral instincts, the exotic bird you rescued seems to sense your new state of mind, and keeps at a safe distance, though it never strays top far, often helping you out of trouble or calling out to warn you of danger. In thanks you often leave it little offerings of whatever is handy, it makes for a strange sort of partnership, but a happy enough one.";
		else:
			say "After your rescue, you take the bird you rescued to several specialists, who are amazed to find that a member of its rare species survived the city, and they thank you profusely for your help in bringing it back safely. Impressed at your ability to get the bird to trust you, not only do they offer you a reward for saving your bird friend, but they ask you to stop by occasionally not just to visit your now happy bird friend, but also to ask questions about any other strange birds and species you might have encountered in the city.";

Exotic Bird ends here.
