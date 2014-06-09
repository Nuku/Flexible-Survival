Version 2 of E-shocker by Stripes begins here.
[Version 2 - special item w/charges]

"Update version of Sarokcat's Electric prod to be a combat item."

Section 1 - Encounter

Electric shockers is a situation.  The level of electric shockers is 10.
[This is to restrict low-level players from unknowingly finding the superweapon.]
The sarea of Electric shockers is "Zoo".

Electricprodstatus is a number that varies.
eptarget is a number that varies.			[hidden number of viable charges]
eprecharge is a number that varies.			[number of times it's been recharged]
eprodused is a truth state that varies.		[indicates whether it's been used in a fight yet or not]


Instead of Resolving a Electric shockers:
	if Electricprodstatus is 0:
		say "     Moving through the zoo, you come across one of the zookeeper's shacks that seems to have been left open in the confusion.  Taking advantage of the situation, you move inside and start searching the place, although it really doesn't take much looking to find the locked case of what look like extendable cattle prods, obviously intended to shock dangerous animals at a small distance.  Unfortunately the case is locked up tight and all your efforts to pry it open fail miserably.  You do make a mental note to come back again at another time and perhaps you'll have more luck.";
		now Electricprodstatus is 1;
	otherwise if Electricprodstatus is 1:
		say "     Traveling through the zoo, you come across a rather familiar looking zookeeper's shack, and it looks like someone else has been here recently as well.  Deciding to be careful you peek around the door to make sure there isn't some kind of strange beast there waiting for you.  You are rather surprised to note that not only is the shack empty again, but it looks like whatever was here had a goal, they seem to have made a concerted assault on the case in the corner holding the powerful electric prods.  They seem to have had more success then you, because the case now hangs open loosely, and several of the useful tools have spilled out onto the floor, a quick examination shows you that most of the weapons were damaged too severely to work by whoever broke the case open, but you do manage to find one which you think might actually work for a while before it burns out.";
		increase carried of electric prod by 1;
		now eptarget is a random number between 6 and 12;
		now Electricprodstatus is 2;
	otherwise if Electricprodstatus is 2:
		say "     You find the shack where you managed to salvage your slightly damaged electric weapon from again, and take a quick look around inside.  But just like before, all you can find are spare batteries, and a number of heavily damaged electric sticks that are about as useful now as a regular stick would be.  Sighing, you continue on your way.";
	otherwise if Electricprodstatus is 3 and carried of electric prod > 0:
		now electric prod is fast;
		increase eprecharge by 1;
		say "     Finding the shack your electric weapon originally came from, you decide to see if there is anything left inside that might let you repair the nifty weapon.  Glancing around, you swap the spent battery out and put it back on the charger, and begin hunting through the remains of the other electric prods.  You are eventually able to cannibalize one of them in order to replace the burnt out parts in your own, but it takes a decent amount of time to perform the jury-rigged repair.  At the end of it, you once more have a semi-functional electric prod[if eprecharge is 1], and while you aren't sure how much longer it can last, you are at least pretty sure that you can return here and fix it again should that happen[otherwise if eprecharge is 2], but sadly doubt you'll be able to repair it again from the few meager parts and batteries remaining[otherwise], and while it could fritz out on you at any moment, you are hopefully that you can return here and fix it again if you need to[end if].";
		now eptarget is ( a random number between 5 and 10 ) - eprecharge;	[repairs are increasingly less effective]
		if eprecharge >= 2:
			now Electric Shockers is resolved;
		now Electricprodstatus is 2;
	otherwise if Electricprodstatus is 3:
		say "     Finding the shack where you'd gotten your electric weapon originally, you are reminded that you might be able to fix it with some of the parts from the other broken ones.  Hopefully you still remember where you left it so you can get it and bring it back here.";


Table of Game Objects (continued)
name	desc	weight	object
"electric prod"	"[electproddesc]"	5	 electric prod

to say electproddesc:
	if Electricprodstatus is 2:
		say "A powerful electric tool designed to shock and incapacitate wild animals.  It should work on the beasts around the city as well.  Given how long it takes to charge up after each use, you'll only be able to use it once per fight.";
	otherwise:
		say "While a powerful electric tool designed to shock and incapacitate wild animals, it is unfortunately burned out and unusable, though it may still be repaired with some replacement parts.";

electric prod is a grab object. It is part of the player. It is fast.  It is not temporary.  The usedesc of electric prod is "[useelectricprod]".

[It has a weapon "[one of]shocking stick[or]your electric prod[at random]". The weapon damage of electric prod is 22. The weapon type of electric prod is "Melee". It is not temporary. the objsize of electric prod is 2.]

the scent of the electric prod is "The electric stun rod smells faintly of ozone.".

to say useelectricprod:
	now battleitem is 1;	[combat item chosen - retaliate to be handled internally]
	if inafight is 1:
		if eprodused is true:
			say "You've already successfully used the prod once this battle.  It needs time to cool down and recharge the capacitors.";
			wait for any key;
		otherwise:
			choose row monster from the table of random critters;
			let the attack bonus be dexterity of player + ( level of player * 2 ) + plhitbonus + scale entry - 10;
			let the defense bonus be dex entry + ( lev entry * 2 ) + mondodgebonus - 10;
			let the combat bonus be attack bonus - defense bonus;
			if hardmode is true:
				if the combat bonus is greater than 16:
					now combat bonus is 16;
				otherwise if the combat bonus is less than -25:
					now combat bonus is -25;
			otherwise:
				if the combat bonus is greater than 19:
					now combat bonus is 19;
				otherwise if the combat bonus is less than -22:
					now combat bonus is -22;
			let the roll be a random number from 1 to 50;
			say "[line break]You roll 1d50([roll])+[combat bonus] -- [roll plus combat bonus]: ";
			if the roll plus the combat bonus > 40:
				decrease eptarget by 1;
				say "Direct hit: You charge up the [one of]stun rod[or]electric prod[or]cattle prod[or]shock stick[or]electric shocker[at random] and thrust squarely at the [name entry].  Getting a solid hit, the electricity courses through it and makes it stagger back, severely weakening it.  Ozone hangs in the air and your electric shocker [if eptarget is 0]sputters and sparks, burning out with the smell of magic smoke[otherwise]is overheated.  It will be a while before you can use it again[end if]";
				now eprodused is true;
				decrease mondodgebonus by 2;
				decrease monhitbonus by 2;
				let hpdamage be a random number between 30 and 50;
				let lvlresist be lev entry / 4;
				if lvlresist > 5, now lvlresist is 5;
				decrease hpdamage by lvlresist;
				decrease hpdamage by eprecharge;
				decrease monsterhp by ( hpdamage * monsterhp ) / 100;
				say ".  Enemy hp dropped by [special-style-2][hpdamage]%[roman type]!";
				if eptarget is 0:
					say "Your electric prod is now [if eprecharge >= 2]permanently dead and you toss it aside[otherwise]dead until you can repair it[end if].";
					now Electricprodstatus is 3;
					now electric prod is not fast;
					if eprecharge >= 2, delete electric prod;
			otherwise if roll + combat bonus > 20:
				decrease eptarget by 1;
				say "Hit: You charge up the [one of]stun rod[or]electric prod[or]cattle prod[or]shock stick[or]electric shocker[at random] and thrust at the [name entry].  Getting a glancing blow, the electricity shocks it and makes it stagger back, taking some of the fight out of it.  Ozone hangs in the air and your electric shocker [if eptarget is 0]sputters and sparks, burning out with the smell of magic smoke[otherwise]is overheated.  It will be a while before you can use it again[end if]";
				now eprodused is true;
				let hpdamage be a random number between 20 and 40;
				let lvlresist be lev entry / 3;
				if lvlresist > 5, now lvlresist is 5;
				decrease hpdamage by lvlresist;
				decrease hpdamage by eprecharge;
				decrease monsterhp by ( hpdamage * monsterhp ) / 100;
				say ".  Enemy hp dropped by [special-style-2][hpdamage]%[roman type]!";
				if eptarget is 0:
					say "Your electric prod is now [if eprecharge >= 2]permanently dead and you toss it aside[otherwise]dead until you can repair it[end if].";
					now Electricprodstatus is 3;
					now electric prod is not fast;
					if eprecharge >= 2, delete electric prod;
			otherwise:
				say "Miss: You charge up the [one of]stun rod[or]electric prod[or]cattle prod[or]shock stick[or]electric shocker[at random] and thrust at the [name entry], but end up missing.";
				if a random chance of 1 in 4 succeeds and eptarget is not 1, decrease eptarget by 1;
			choose row monstercom from table of Critter Combat;
			if playerpoison > 0, follow the playerpoisoned rule;
			if there is a continuous in row monstercom of the table of Critter Combat:
				follow the continuous entry;
			if combat abort is 0 and skipretaliate is false, follow the combat entry;
	otherwise:
		say "Are you really into shocking yourself?  That's probably not a good idea.";



[***Old version archived until trial period is completed***]
[
Electric shockers is a situation.  The level of electric shockers is 10.
[This is to restrict low-level players from unknowingly finding the superweapon.]
The sarea of Electric shockers is "Zoo".

Electricprodstatus is a number that varies.
epcountdown is a number that varies.
eptarget is a number that varies.
eprecharge is a number that varies.

Instead of Resolving a Electric shockers:
	if Electricprodstatus is 0:
		say "Moving through the zoo, you come across one of the zookeepers shacks that seems to have been left open in the confusion. Taking advantage of the situation, you move inside and start searching the place, although it really doesn't take much looking to find the locked case of what look like extendable cattle prods, obviously intended to shock dangerous animals at a small distance.  Unfortunately the case is locked up tight and all your efforts to pry it open fail miserably.  You do make a mental note to come back again at another time and perhaps you'll have more luck.";
		now Electricprodstatus is 1;
	otherwise if Electricprodstatus is 1:
		say "Traveling through the zoo, you come across a rather familiar looking zookeepers shack, and it looks like someone else has been here recently as well. Deciding to be careful you peek around the door to make sure there isn't some kind of strange beast there waiting for you.  You are rather surprised to note that not only is the shack empty again, but it looks like whatever was here had a goal, they seem to have made a concerted assault on the case in the corner holding the powerful electric prods.  They seem to have had more success then you, because the case now hangs open loosely, and several of the useful tools have spilled out onto the floor, a quick examination shows you that most of the weapons were damaged too severely to work by whoever broke the case open, but you actually manage to find one that you think might actually work for a while before it burns out. ";
		increase carried of electric prod by 1;
		now epcountdown is 0;
		now eptarget is a random number between 11 and 31;
		now Electricprodstatus is 2;
	otherwise if Electricprodstatus is 2:
		say "You find the shack where you managed to salvage your slightly damaged Electric weapon from again, and take a quick look around inside.  But just like before, all you can find are spare batteries, and a number of heavily damaged electric sticks that are about as useful now as a regular stick would be. Sighing, you continue on your way.";
	otherwise if Electricprodstatus is 3:
		increase eprecharge by 2;
		say "Finding the shack your electric weapon originally came from, you decide to see if there is anything left inside that might let you repair the nifty weapon.  Glancing around, you swap the spent battery out and put it back on the charger, and begin hunting through the remains of the other electric prods.  You are eventually able to cannibalize one of them in order to replace the burnt out parts in your own, but it takes a decent amount of time to perform the jury-rigged repair.  At the end of it, you once more have a semi-functional electric prod[if eprecharge is 2], and while it could still fritz out on you at any moment, you are at least pretty sure that you can return here and fix it again should that happen.[otherwise if eprecharge is 8], but sadly doubt you'll be able to repair it again from the few meager parts and batteries remaining.[otherwise], and while it could fritz out on you at any moment, you are hopefully that you can return here and fix it again if you need to.[end if]";
		increase carried of electric prod by 1;
		now epcountdown is 0;
		now eptarget is a random number between 9 and ( 27 - eprecharge);	[repairs are increasingly less effective]
		if eprecharge >= 4:
			now Electric Shockers is resolved;
		now Electricprodstatus is 2;		


Table of Game Objects (continued)
name	desc	weight	object
"Electric prod"	"A powerful electric tool designed to shock and incapacitate wild animals, it should work on the beasts around the city as well."	5	 Electric prod

Electric prod is an armament. It is part of the player. It has a weapon "[one of]shocking stick[or]your electric prod[at random]". The weapon damage of Electric prod is 22. The weapon type of Electric prod is "Melee". It is not temporary. the objsize of electric prod is 2.

instead of sniffing Electric prod:
	say "The electric stun rod smells faintly of ozone.";

An everyturn rule:
	if the Electric prod is wielded and epcountdown <= eptarget:	[added equality to stop a Trixie-loaded prod to need recharging in a fresh game]
		increase epcountdown by 1;
		if epcountdown >= eptarget:
			say "With one last electric fizz and pop, the electric prod dies in your hands, its battery obviously drained by the damaged circuits burning out.  Sighing, you take a look at your broken weapon, before sticking it in the back of your pack to throw away later... At least you got to have some fun with it while it lasted...";
			now Electricprodstatus is 3;
			process Electric prod;
			delete Electric prod;


]

E-shocker ends here.
