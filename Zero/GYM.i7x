GYM by Zero begins here.
"Adds a new area to Flexible Survival for thouse whith more then one tail"

Section 1- GYM

GYM is a room. It is fasttravel. It is private.

The description of GYM is "a gym what do you expect?";

The invent of GYM is { "food" , "medkit" , "water bottle" , "water bottle"  };

Section 2- Corgi quest

Meeting the corgi is a situation.
The sarea of Meeting the corgi is "Outside";
when play begins:
	add Meeting the corgi to badspots of furry;
	add Meeting the corgi to badspots of guy;
	
corgitalk is a number that varies. corgitalk is usually 0.


Instead of resolving Meeting the corgi:
	if corgitalk is 1:
		challenge "Male Dominator";
		say "[line break] before the dominator can get very far, a small furry missile rams into him, and begins to beat the life out of him.";
		say "do you attack the [']small furry missile['] while its distracted?";
		if the player consents:
			say "Deciding that such a aggressive creature could become a problem latter on try to knock it out from behind [line break] the now relieved corgi, blocks your attacks with ease and glares at you 'and here I thought you weren’t stupid, guess I was wrong', before you can do anything else the corgi slams a fist into your jaw knocking you out,[line break] leaving you stunned but conscious, leaving a very ticked off corgi to walk off";
			Now corgitalk is -1;
			now Meeting the corgi is resolved;
		otherwise:
			say " after the dominator is reduced to a quivering mess, [']the small fury missile['] now revealed to be the corgi from before, removes the shoulder bag the dominator was carrying and turns towards you, 'hey there thanks for holding him off stupid [slutname] tried to steel my bag almost got a way to, dint you, ya little fucker?' he says before stomping hard onto the [slutname][apostrophe]s groin  resulting in a pained shout of the ,now, awake dominator 'anyway names Max, glad to see another sane one round here.....you are sane right' quickly nodding the corgi gives a sigh and continues on 'just had to be sure , lately these [apostrophe]dominators[apostrophe]' the corgi says sarcastically 'have been trying everything to get me for the last week or so, and its getting pretty annoying, well whatever, if you drop by the gym any time soon give me a shout , there[apostrophe]s a bunch of us hold up there if ya need any help ' the corgi then walks off dragging a very distressed [slutname] behind him[line break]";
			Increase corgitalk by 1;
			now Meeting the corgi is resolved;

		

Section 2-Max

Max is a person. Max is in GYM.
lastcorgifucked is a number that varies.  lastcorgifucked is usually 130.
understand "corgi" as Max.
understand "max" as Max.

The description of Max is "     Max is a Pembroke Welsh corgi, he has a short but strong, sturdily built and is covered in a coat of light auburn fur whith a white underside and a black diamond on his back, Max is wearing a pair of black ripped jeans that reach his knees, his forearms and legs are tapped up with white bandages. He also has a black whip/bracelet tied round his right forearm and a red diamond pendent hanging from his neck. ";

The conversation of Max is { "[Corgitalking]" };

To say Corgitalking:
	if location of player is Old Lounge:
		say "do you want to fight the master? (y) or get out of here (n)";
		if the player consents: 
			say "you sure your ready to fight?";
			if the player consents: 
				say "nodding the corgi begins walking towards the sound of moaning, and you quickly follow behind him";
				now corgihelp is 1;
				challenge "The Mistress";
			otherwise:
				say "Just give me a shout when your ready ";	
			stop the action;		
		otherwise:
			say "you sure your ready to go?";
			if the player consents: 
				say "although you do run into a lot of enimes allong the way, you do eventually get out of the demented place and to the relitive safty of the mall";
				move Max to Mall Atrium;	
				move player to Mall Atrium;	
				stop the action;
			otherwise:
				say "Just give me a shout when your ready to go";	
			stop the action;	
	otherwise if location of player is Mall Atrium:  [start of normal converce]
		say "hey, glad we got out of there [if Mistresswon is 1]and we got rid of that demented creature too![end if]";
		say "i[']m too tired to go anywhere now, but if you come back latter, i[']l show you a location you’ve never seen before";
	otherwise:
		say "now how did you get here?";


GYM ends here.
