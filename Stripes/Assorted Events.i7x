Version 1 of Assorted Events by Stripes begins here.
[version 1.2 - Added weapon pick-up & 2nd event]

"Adds a batch of random events to Flexible Survival scattered around the city."


Section 1- Ninjas?

Fallen Kunoichi is a situation.
The sarea of Fallen Kunoichi is "Museum";
when play begins:
	add Fallen Kunoichi to badspots of furry;

Instead of resolving a Fallen Kunoichi:
	say "     Passing through the halls of the museum, you come across the aftermath of what was an epic battle.  Many of the displays here are knocked over or shattered by what must have been powerful blows by a great weapon.  You can see gouges cut deep into the walls, many stained with blood.  Smaller darts and shuriken are embedded in the wall as well.  The floor is marked with several blood stains and cum puddles, as well as soot marks from flash powder or smoke bombs.  Clearly many battled a great foe here.";
	say "     Half-buried in the ruins of one display, you find the grisly remains of a feline ninja cleaved in two at the waist.  Drawing off its mask, you see her face feminine locked in an expression of great pain and horror.  Something about her death gaze disturbs you deep inside and you are unable to bear the sight of it.  You brush her eyes shut and pull the mask back down over her feline face.  Beside the fallen kunoichi is her weapon, a bo staff with ornate metal tips.  Cautious of any infected blood, you quickly check her [italic type]shinobi shozoko[roman type], but find nothing else of use.";
	say "     Bo staff obtained.";
	add "bo staff" to invent of player;
	increase score by 5;
	Now Fallen Kunoichi is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"bo staff"	"An ornate fighting staff."	2	bo staff

bo staff is an armament. It is part of the player. It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]". The weapon damage of bo staff is 3. The weapon type of bo staff is "Melee". It is not temporary.


Suddenly Ninjas is a situation.
The sarea of Suddenly Ninjas is "Museum";
when play begins:
	add Suddenly Ninjas to badspots of furry;
	add Suddenly Ninjas to badspots of guy;

Instead of resolving a Suddenly Ninjas:
	say "     Suddenly!  Ninjas!  Everywhere!";
	say "     You are travelling through the museum, minding your own business when suddenly a pack of ninjas leap out to attack you.  Ninja stars are flying through the air and the dark costumed cats are leaping in to attack you from all sides, brandishing an array of weapons taken from the Japanese history exhibit.  There are too many to try fighting them all.  They would bear your down by sheer numbers and countless poisoned shuriken.  You are forced to try fleeing, but several of the felines leap in to fight you.  You dodge and run, but one is able to make an attempt to stop you, fighting you even as you both run down the hall.";
	challenge "Ninja Cat";
	if lost is 1:
		say "[lostninjahorde]";
	otherwise:
		say "     Having escaped the first as you fought him while running side by side down the hall, you continue your run through the museum.  You dive past a few displays and leap over a small satyr party, knocking over their large ewer of wine.  This causes some distraction as the satyrs get up and turn on the felines, letting you gain a little distance before another one is able to make an attack on you.";
		challenge "Ninja Cat";
		if lost is 1:
			say "[lostninjahorde]";
		otherwise:
			say "     With another ninja evaded and several left behind to deal with the angered satyrs, you duck through the aerospace wing.  Glancing up, you can see the suspended planes and banners sway, telling you there is at least one left up there.  You try leaping over a display cordon and running past the display when the ninja makes his move.";
			challenge "Ninja Cat";
			if lost is 1:
				say "[lostninjahorde]";
			otherwise:
				say "     When that feline withdraws after his defeat, you dive through an employee access door and rush down the passage, coming out in an Early American exhibit.  Uncaring about the value or frailty of the items, you grab several period pieces of furniture and toss them helter-skelter in front of the doorway to block the approaching ninja horde.  Knowing that your impromptu barricade will only hold them off for a short time before they push through or go around, you quickly run back to the relative safety of the museum lobby.";
				increase score by 15;
	Now Suddenly Ninjas is resolved;

to say lostninjahorde:
	say "     With the victorious ninja having finished with you, several others move in to have their way with you as well.  You are groped and fondled by the felines who tease and excite you to arousal and climax again and again.  Their skillful paws roam all over your body while they take turns filling all your holes.  You are pumped full of feline cum again and again by the sexy ninjas who never say a word as they fuck you completely senseless.  Lost in the lust of the ninja lovers, you eagerly take it all.  In the end, you feel as if several cups worth of cum have been pumped into you from every hole and even more coats your body.  You are left panting on the floor in a large puddle of musky semen, moaning as you roll around in it and leaking more cum out to add to it.";
	increase libido of player by 25;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 18;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Ninja Cat":
			now monster is y;
			break;
	say "[impregchance][impregchance]";
	infect "Ninja Cat";
	infect "Ninja Cat";



Assorted Events ends here.