Max by Zero begins here.

Section 1- Corgi quest

maxq is a number that varies.  maxq is usually 0.

Meeting the corgi is a situation.
The sarea of Meeting the corgi is "Outside";
when play begins:
	add Meeting the corgi to badspots of furry;
	add Meeting the corgi to badspots of guy;
	
corgitalk is a number that varies. corgitalk is usually 0.


Instead of resolving Meeting the corgi:
	if corgitalk is 1:
		challenge "Male Dominator";
		say "[line break]Before the dominator can get very far, a small furry missile rams into him, and begins to beat the life out of him.";
		say "Do you attack the [']small furry missile['] while it's distracted?";
		if the player consents:
			say "Deciding that such a aggressive creature could become a problem later on, you try to knock it out from behind [line break] The now relieved  corgi blocks your attacks with ease and glares at you. [']And here I thought you weren't stupid, guess I was wrong!['] Before you can do anything else the corgi slams a fist into your jaw, knocking you out,[line break] leaving you stunned but conscious, and leaving the very ticked off corgi to walk off.";
			Now corgitalk is -1;
			now Meeting the corgi is resolved;
		otherwise:
			say "After the dominator is reduced to a quivering mess, [']the small furry missile['] now revealed to be the corgi from before, removes the shoulder bag the dominator was carrying and turns towards you, 'Hey there, thanks for holding him off, stupid [slutname] tried to steal my bag, almost got away too, didn't you, ya little fucker?' he says before stomping hard onto the [slutname][apostrophe]s groin, resulting in a pained shout of the now awake dominator. 'Anyway, name's Max, glad to see another sane one 'round here.....you are sane right?' Quickly nodding, the corgi gives a sigh and continues on. 'Just had to be sure , lately these [apostrophe]dominators[apostrophe]' the corgi says sarcastically 'have been trying everything to get me for the last week or so, and it's getting pretty annoying. Well whatever, if you drop by the gym any time soon give me a shout , there[apostrophe]s a bunch of us holed up there if ya need any help.' The corgi walks off, dragging a very distressed [slutname] behind him[line break]";
			Increase corgitalk by 1;
			now Meeting the corgi is resolved;
	otherwise:
		say "Looking around, you spot the remains of some recent activity in the form of sticky messes littered about.  Their scent is strong, making you think of those strong dominators you've seen around.  It seems a few of them found and made more of those strange sluts out of their victims.  There is something strange about their behaviour.  Perhaps you should have a couple of encounters with them to investigate further.  Some 'domincounters' as it were.";
			
pendant hunting is a situation.
The sarea of pendant hunting is "Outside";
	
Instead of resolving pendant hunting:
	if maxq is 1:
		say "As you continue to search the city you find yourself looking at a group of 3 hyenas, one of which is wearing the pendant Max was looking for, do you try to get it back?";
		if the player consents:
			say "as you approach the hyenas catch sight of you and charge towards you!";
			challenge "Herm Hyena";
			challenge "Herm Hyena";
			challenge "Herm Hyena";
			say "having beating the gang, you retrieve the pendant, as well as anything else you think could be useful";
			Increase maxq by 1;
			now pendant hunting is resolved;
		otherwise:
			say " deciding that it would be better to try again later, you quickly run off";
	otherwise:
		say "as you continue to search the city you find yourself looking at a group of 3 hyenas, one of with is wearing a blue pendant, thankfully there distracted and don't notice you";	
		

Section 2-Max

Max is a person. Max is in GYM.
lastcorgifucked is a number that varies.  lastcorgifucked is usually 130.
understand "corgi" as Max.
understand "max" as Max.

The description of Max is "     Max is a Pembroke Welsh corgi, he has a short but strong, sturdily built and is covered in a coat of light auburn fur with a white underside and a black diamond on his back, Max is wearing a pair of black ripped jeans that reach his knees, his forearms and legs are tapped up with white bandages. He also has a black whip/bracelet tied round his right forearm and a red diamond pendant hanging from his neck. ";

The conversation of Max is { "Stuff!" }.

instead of conversing the Max:
	if location of player is Old Lounge:
		say "'Do you want to fight the master? (y) or get out of here (n)?'";
		if the player consents: 
			say "'You sure you're ready to fight?'";
			if the player consents: 
				say "Nodding, the corgi begins walking towards the sound of moaning, and you quickly follow behind him.";
				now corgihelp is 1;
				challenge "The Mistress";
			otherwise:
				say "'Just give me a shout when you're ready.'";	
			stop the action;		
		otherwise:
			say "'You sure you're ready to go?'";
			if the player consents: 
				say "'Although you do run into a lot of enemies along the way, you do eventually get out of the demented place and to the relative safety of the mall.'";
				move Max to Mall Atrium;	
				move player to Mall Atrium;	
				stop the action;
			otherwise:
				say "'Just give me a shout when you're ready to go.'";	
			stop the action;	
	otherwise if location of player is Mall Atrium:  [start of normal converce]
		say "'Hey, glad we got out of there [if Mistresswon is 1]and got rid of that demented creature too![end if]'";
		if Mistresswon is 0:
			say "'If you want, we can go back and try to attack those sluts and dominatrices again?'";
			if the player consents: 
				say "'Let's go then, shall we?'";
				move player to Old Lounge;
			otherwise: 
				say "'That[']s OK, I[']m still pretty tired anyway, but just ask if you want to try again.'";	
		otherwise:
			if maxq is 2:
				say "The corgi dances happily as you give him the pendant, hugging it against his chest, rubbing the back of his head and blushing when he realizes where he is. 'Heh heh sorry bout that, here,' he says tossing you a new looking backpack.  'That should be better then what your currently using and there's a few items in there that should help you out.'";			
				Add "durable backpack" to invent of player;
				Add "water bottle" to invent of player;			
				Add "strange gem" to invent of player;
				Add "water bottle" to invent of player;
				Add "food" to invent of player;
				Add "food" to invent of player;			
				Add "protein shake" to invent of player;
				Add "protein shake" to invent of player;	
				Add "kunai" to invent of player;													
				say "'Now then since I have finally got this back, I can go home, feel free to drop by when you have the chance, its that big apartment complex next to the gym.'";
				now GYM is known;
				now Complex is known;
				move Max to Rec room;
			otherwise if maxq is 0:
				say "Max waves you over as you enter the mall.  'How you being doing, good, well I've got a favor to ask of you.'[line break] 'A while ago i was attacked by the hyena gang and they managed to steal something from me, trouble is, I'm busy with another job that has to be done quickly, would you mind getting it back for me, its a pendant like mine, only its blue instead of red.'";
				now maxq is 1;
			otherwise if maxq is 1:
				say "'Apologizing for your lack of progress you quickly head out once again to try and find the corgi's missing pendant, maybe if you hunt for the pendant you'll have more luck?'";	
	otherwise if location of player is Rec room:
		say "'You want to trade some stuff? miles and me have got some goody bags for you if you want them, if you have a bit of water and food to spare, you may find yourself suprised.'  Maybe  you want to GIVE MAX some of your supplies?'";


Section 3- corgitrading

corgi trade is a person. 
The description of corgi trade is "Max is willing to trade some of his supplies for yours mayby you shouls TRADE or GIVE MAX some food and water?";

corgigiving is an action applying to nothing.

understand "give max" as corgigiving;
understand "give corgi" as corgigiving;
understand "trade corgi" as corgigiving;
understand "trade max" as corgigiving;

check corgigiving:
	if Max is not visible, say "you cant do this here" instead;


carry out corgigiving:
	if "food" is listed in invent of player and "water bottle" is listed in invent of player:
		say "Pulling out some of your supply of food and a water bottle, you hand them to max who quickly throws you a goody bag, opening it you find...[line break]";
		delete food;
		delete water bottle;
		let Z be a random number between 1 and 11;
		if Z is 1:
			Say "...... nothing.....absolutly nothing... even the bag is useless!";
		otherwise if Z is 2:
			say "a bottle of water and some food, seems you get what you paid for after all";
			Add "food" to invent of player;
			Add "water bottle" to invent of player;
		otherwise If Z is 3:
			say "alot of food and water, this is definitly a good goody bag";
			Add "food" to invent of player;
			Add "water bottle" to invent of player;
			Add "food" to invent of player;
			Add "water bottle" to invent of player;
			Add "food" to invent of player;
			Add "water bottle" to invent of player;							
		otherwise If Z is 4:
			Say "a strange gem![line break]";
			Add "strange gem" to invent of player;	
		otherwise if Z is 5:
			Say "a protein shake";
			Add "protein shake" to invent of player;
		otherwise if Z is 6:
			say "two protein shakes";
			Add "protein shake" to invent of player;
			Add "protein shake" to invent of player;
		otherwise If Z is 7:
			say "alot of protein shakes";
			Add "protein shake" to invent of player;
			Add "protein shake" to invent of player;
			Add "protein shake" to invent of player;
			Add "protein shake" to invent of player;
			Add "protein shake" to invent of player;
			Add "protein shake" to invent of player;						
		otherwise If Z is 8:
			say "junk food";
			Add "chips" to invent of player;
			Add "soda" to invent of player;
		otherwise if Z is 9:
			Say "dirty water";
			Add "dirty water" to invent of player;
			Add "dirty water" to invent of player;
		otherwise if Z is 10:
			Say "a can of soda";
			Add "soda" to invent of player;
		otherwise if Z is 11:
			Say "a pack of chips";
			Add "chips" to invent of player;						
	Otherwise:
		say "Sorting through your pack, you realise you don't actually have the food and water to trade";
		
Section 4-Miles

Miles is a person. Miles is in Rec room.
lastkitsufucked is a number that varies.  lastkitsufucked is usually 130.
understand "kitsune" as Miles.
understand "miles" as Miles.

The description of Miles is "     Miles is a kitsune, he looks like a fox but with two tails, his fur is normally red but it seems like he can control its colour, he is wearing a plain t-shirt and black joggers, he also has and a blue diamond pendant hanging from his neck. ";

The conversation of Miles is { "Stuff!" }.

instead of conversing the Miles:
	if location of player is Rec room:
		if maxq is 2:
			say "The kitsune bounds over to you as you approach, 'hi there, Max's been talking bout you, all good I assure you' [line break]'anyway thanks for helping him out he looked so guilty when he said he'd lost my gift' he says fingering the blue pendant around his neck, 'your free to hang around here whenever you want, and there's a gym next-door if your interested, it's empty at the minute though.'";
			now maxq is 3;
			stop the action;
		otherwise if maxq is 3:	
			say "When you approach the kitsune, you find he is crouched over a pair of swords, when you inquire about them he tells you there for a quest that's not finished but if you want he'll give you them now......with a warning, [line break] the bloody sword drains health each turn, and while slightly stronger the demonic sword drains sanity, in there future there will be away of changing the effects but for now...good luck[line break] n for bloody y for demonic";
			if the player consents:
				add "demonic sword" to invent of player;
				now maxq is 4;
				stop the action;
			otherwise:	
				add "bloody sword" to invent of player;	
				now maxq is 4;
				stop the action;
		otherwise if maxq is 4:
			say "'This city's got existing hasn't it, and crazy......defiantly crazy.'"	
		
		

Max ends here.
