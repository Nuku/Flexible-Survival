Max by Zero begins here.

Section 1- Corgi quest

maxq is a number that varies. maxq is usually 0.

Meeting the corgi is a situation.
The sarea of Meeting the corgi is "Outside".
when play begins:
	add Meeting the corgi to badspots of furry;
	add Meeting the corgi to badspots of guy;

corgitalk is a number that varies. corgitalk is usually 0.


Instead of resolving Meeting the corgi:
	if corgitalk is 1:
		challenge "Male Dominator";
		say "[line break]Before the dominator can get very far, a small furry missile rams into him and begins to beat the life out of him.";
		say "Do you attack the [']small furry missile['] while it's distracted?";
		if player consents:
			say "Deciding that such an aggressive creature could become a problem later on, you try to knock it out from behind.[line break]The now-relieved corgi blocks your attacks with ease and glares at you. 'And here I thought you weren't stupid. Guess I was wrong!' Before you can do anything else, the corgi slams a fist into your jaw, knocking you out, leaving you stunned but conscious, and leaving the very ticked off corgi to walk off.";
			Now corgitalk is -1;
			now Meeting the corgi is resolved;
		else:
			say "After the dominator is reduced to a quivering mess, the [']small furry missile['] now revealed to be the corgi from before, removes the shoulder bag the dominator was carrying and turns towards you, 'Hey there, thanks for holding him off, stupid [slutname] tried to steal my bag, almost got away too, didn't you, ya little fucker?' he says before stomping hard onto the [slutname]'s groin, resulting in a pained shout of the now awake dominator. 'Anyway, name's Max, glad to see another sane one [']round here... You are sane, right?' Quickly nodding, the corgi gives a sigh and continues on. 'Just had to be sure. Lately these [']dominators['],' the corgi says sarcastically, 'have been trying everything to get me for the last week or so, and it's getting pretty annoying. Well, whatever. If you drop by the gym any time soon, give me a shout. There's a bunch of us holed up there if ya need any help.' The corgi walks off, dragging a very distressed [slutname] behind him.";
			Increase corgitalk by 1;
			now Meeting the corgi is resolved;
	else:
		say "Looking around, you spot the remains of some recent activity in the form of sticky messes littered about. Their scent is strong, making you think of those strong dominators you've seen around. It seems a few of them found and made more of those strange sluts out of their victims. There is something strange about their behavior. Perhaps you should have a couple of encounters with them to investigate further. Some 'domincounters' as it were.";

pendant hunting is a situation.
The sarea of pendant hunting is "Outside".

Instead of resolving pendant hunting:
	if maxq is 1:
		say "As you continue to search the city you find yourself looking at a group of three hyenas, one of which is wearing the pendant Max was looking for. Do you try to get it back?";
		if player consents:
			say "As you approach, the hyenas catch sight of you and charge towards you!";
			challenge "Herm Hyena";
			challenge "Herm Hyena";
			challenge "Herm Hyena";
			say "having beating the gang, you retrieve the pendant, as well as anything else you think could be useful";
			Increase maxq by 1;
			now pendant hunting is resolved;
		else:
			say "Deciding that it would be better to try again later, you quickly run off.";
	else:
		say "As you continue to search the city, you find yourself looking at a group of three hyenas, one of which is wearing a blue pendant. Thankfully, they're distracted and don't notice you.";


Section 2-Max

Max is a person. Max is in GYM.
lastcorgifucked is a number that varies. lastcorgifucked is usually 130.
understand "corgi" as Max.
understand "max" as Max.

The description of Max is "     Max is a Pembroke Welsh corgi, he has a short but strong, sturdily built and is covered in a coat of light auburn fur with a white underside and a black diamond on his back, Max is wearing a pair of black ripped jeans that reach his knees, his forearms and legs are tapped up with white bandages. He also has a black whip/bracelet tied round his right forearm and a red diamond pendant hanging from his neck.".

The conversation of Max is { "Stuff!" }.

instead of conversing the Max:
	if location of player is Old Lounge:
		say "'Do you want to fight the master? (y) or get out of here (n)?'";
		if player consents:
			say "'You sure you're ready to fight?'";
			if player consents:
				say "Nodding, the corgi begins walking towards the sound of moaning, and you quickly follow behind him.";
				now corgihelp is 1;
				challenge "The Mistress";
			else:
				say "'Just give me a shout when you're ready.'";
			stop the action;
		else:
			say "'You sure you're ready to go?'";
			if player consents:
				say "'Although you do run into a lot of enemies along the way, you do eventually get out of the demented place and to the relative safety of the mall.'";
				move Max to Mall Atrium;
				move player to Mall Atrium;
				stop the action;
			else:
				say "'Just give me a shout when you're ready to go.'";
			stop the action;
	else if location of player is Mall Atrium: [start of normal conversation]
		say "'Hey, glad we got out of there[if Mistresswon is 1] and got rid of that demented creature too[end if]!'";
		if Mistresswon is 0:
			say "'If you want, we can go back and try to attack those sluts and dominatrices again?'";
			if player consents:
				say "'Let's go then, shall we?'";
				move player to Old Lounge;
			else:
				say "'That's OK, I'm still pretty tired anyway, but just ask if you want to try again.'";
		else:
			if maxq is 2:
				say "The corgi dances happily as you give him the pendant, hugging it against his chest, rubbing the back of his head and blushing when he realizes where he is. 'Heh heh sorry bout that, here,' he says tossing you a new looking backpack. 'That should be better than what your currently using and there's a few items in there that should help you out.'";
				add "durable backpack" to invent of player;
				add "water bottle" to invent of player;
				add "strange gem" to invent of player;
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "food" to invent of player;
				add "protein shake" to invent of player;
				add "protein shake" to invent of player;
				add "kunai" to invent of player;
				say "'Now then since I have finally got this back, I can go home, feel free to drop by when you have the chance, it's that big apartment complex next to the gym.'";
				now GYM is known;
				now Complex is known;
				move Max to Rec room;
			else if maxq is 0:
				say "Max waves you over as you enter the mall. 'How you being doing, good, well I've got a favor to ask of you.'[line break]'A while ago I was attacked by the hyena gang and they managed to steal something from me. Trouble is, I'm busy with another job that has to be done quickly. Would you mind getting it back for me? It's a pendant like mine, only it's blue instead of red.'";
				now maxq is 1;
			else if maxq is 1:
				say "'Apologizing for your lack of progress you quickly head out once again to try and find the corgi's missing pendant, maybe if you hunt for the pendant you'll have more luck?'";
	else if location of player is Rec room:
		say "'You want to trade some stuff? Miles and I have got some goody bags for you if you want them. If you have a bit of water and food to spare, you may find yourself surprised.' Maybe you want to GIVE MAX some of your supplies?'";


Section 3- corgitrading

corgi trade is a person.
The description of corgi trade is "Max is willing to trade some of his supplies for yours. Maybe you should TRADE or GIVE MAX some food and water?".

corgigiving is an action applying to nothing.

understand "give max" as corgigiving.
understand "give corgi" as corgigiving.
understand "trade corgi" as corgigiving.
understand "trade max" as corgigiving.

check corgigiving:
	if Max is not visible, say "You can't do this here." instead;


carry out corgigiving:
	if "food" is listed in invent of player and "water bottle" is listed in invent of player:
		say "Pulling out some of your supply of food and a water bottle, you hand them to Max, who quickly throws you a goody bag. Opening it, you find...[line break]";
		delete food;
		delete water bottle;
		let Z be a random number between 1 and 11;
		if Z is 1:
			say "nothing... absolutely nothing... even the bag is useless!";
		else if Z is 2:
			say "a bottle of water and some food. Seems you got what you paid for, after all";
			add "food" to invent of player;
			add "water bottle" to invent of player;
		else if Z is 3:
			say "a lot of food and water. This is definitely a good goody bag";
			add "food" to invent of player;
			add "water bottle" to invent of player;
			add "food" to invent of player;
			add "water bottle" to invent of player;
			add "food" to invent of player;
			add "water bottle" to invent of player;
		else if Z is 4:
			say "a strange gem![line break]";
			add "strange gem" to invent of player;
		else if Z is 5:
			say "a protein shake";
			add "protein shake" to invent of player;
		else if Z is 6:
			say "two protein shakes";
			add "protein shake" to invent of player;
			add "protein shake" to invent of player;
		else if Z is 7:
			say "a lot of protein shakes";
			add "protein shake" to invent of player;
			add "protein shake" to invent of player;
			add "protein shake" to invent of player;
			add "protein shake" to invent of player;
			add "protein shake" to invent of player;
			add "protein shake" to invent of player;
		else if Z is 8:
			say "junk food";
			add "chips" to invent of player;
			add "soda" to invent of player;
		else if Z is 9:
			say "dirty water";
			add "dirty water" to invent of player;
			add "dirty water" to invent of player;
		else if Z is 10:
			say "a can of soda";
			add "soda" to invent of player;
		else if Z is 11:
			say "a pack of chips";
			add "chips" to invent of player;
	else:
		say "Sorting through your pack, you realize you don't actually have the food and water to trade";

Section 4-Miles

Miles is a person. Miles is in Rec room.
lastkitsufucked is a number that varies. lastkitsufucked is usually 130.
understand "kitsune" as Miles.
understand "miles" as Miles.

The description of Miles is "     Miles is a kitsune. He looks like a fox but with two tails. His fur is normally red, but it seems like he can control its color. He is wearing a plain t-shirt and black joggers. He also has a blue diamond pendant hanging from his neck.".

The conversation of Miles is { "Stuff!" }.

instead of conversing the Miles:
	if location of player is Rec room:
		if maxq is 2:
			say "The kitsune bounds over to you as you approach, 'Hi there! Max has been talking bout you. It's all good, I assure you.'[line break]'Anyways, thanks for helping him out. He looked so guilty when he said he'd lost my gift,' he says, fiddling with the blue pendant around his neck. 'You're free to hang around here whenever you want, and there's a gym next door if your interested. It's empty at the moment, though.'";
			now maxq is 3;
			stop the action;
		else if maxq is 3:
			say "When you approach the kitsune, you find he is crouched over a pair of swords, when you inquire about them he tells you there for a quest that's not finished but if you want he'll give you them now... with a warning.[line break]The bloody sword drains health each turn, and while slightly stronger, the demonic sword drains sanity. In the future there will be a way to change the effects, but for now...good luck[line break]n for bloody, y for demonic";
			if player consents:
				add "demonic sword" to invent of player;
				now maxq is 4;
				stop the action;
			else:
				add "bloody sword" to invent of player;
				now maxq is 4;
				stop the action;
		else if maxq is 4:
			say "'This city's got exciting, hasn't it? And crazy... definitely crazy.'";



Max ends here.
