Addiction by Hellerhound begins here.

Section 1 - Addiction Code

A grab object is either addictive or inert. A grab object is usually inert.

Table of Addictive Items
object	speed	name
blood pill	1	"blood pill"

addicted is a number that varies.[@Tag:NotSaved]
addictlefttime is a number that varies.[@Tag:NotSaved]
currentaddictionspeed is a number that varies.[@Tag:NotSaved]
addictname is a text that varies.[@Tag:NotSaved]
foundaitem is a number that varies.[@Tag:NotSaved]
withdrawel is a number that varies.[@Tag:NotSaved]

before using a grab object (called x):
	if X is addictive and X is owned:
		now foundaitem is 0;
		repeat with Z running from 1 to the number of rows in the Table of Addictive Items:
			choose row Z from the Table of Addictive Items;
			if the object entry is X:
				now foundaitem is 1;
				now addicted is 1;
				now addictlefttime is 16 divided by the speed entry;
				now currentaddictionspeed is the speed entry;
				now addictname is Name entry;
				break;
		if foundaitem is 0:
			say "ERROR: ADDICTION NOT FOUND";

an everyturn rule:
	if addicted is 1:
		decrease addictlefttime by 1;
		if addictlefttime > 10:
			say "You have a strange craving for another [addictname].";
		else if addictlefttime > 1:
			say "Your head begins to hurt, and you have a powerful urge to get some more [addictname].";
		else if addictlefttime < 2:
			say "You NEED MORE [addictname]!";
			decrease HP of Player by 5;
			increase withdrawel by 1;
		if withdrawel > 0:
			if withdrawel < 1:
				decrease Strength of Player by 1;
			if withdrawel > 2:
				decrease Dexterity of Player by 1;
			if withdrawel is 8:
				now withdrawel is 0;
				now addicted is 0;
				increase Strength of Player by 7;
				increase Dexterity of Player by 5; [leaves you worse off]
				say "You have recovered from the drug.";

Section 2 - Test Drug

Table of Game Objects (continued)
name	desc	weight	object
"blood pill"	"A pill you got from some strange street."	1	blood pill

the scent of blood pill is "The strange pill has a harsh, metallic scent."

blood pill is a grab object. It is temporary. Understand "pill" as blood pill.
Usedesc of blood pill is "[bloodpilluse]". blood pill is addictive.

onbloodpill is a number that varies.[@Tag:NotSaved]
bloodpillturns is a number that varies.[@Tag:NotSaved]
to say bloodpilluse:
	say "You pop the blood pill into your mouth, and it feels like your veins are liquid ice. You feel stronger, faster, smarter...";
	now onbloodpill is 1;
	increase bloodpillturns by 4;
	increase Strength of Player by 10;
	increase Dexterity of Player by 10;

an everyturn rule:
	if bloodpillturns > 0:
		decrease bloodpillturns by 1;
	else:
		if onbloodpill is 1:
			now onbloodpill is 0;
			decrease Strength of Player by 10;
			decrease Dexterity of Player by 10;

when play begins:
	add "blood pill" to the invent of Entrance to the Red Light District;

Addiction ends here.
