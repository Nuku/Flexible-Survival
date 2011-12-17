Items by Zero begins here.

Section 1 - Items

Table of Game Objects (continued)
name	desc	weight	object
"latex milk"	"It's as strange as it sounds - the milk of a latex fox."	1	latex milk
"Slut tag"	"A small metal dog tag.  It has the word [']slut['] ingraved onto it."	1	Slut tag
"Dominator Chain"	"A chain from around a Dominator's neck."	1	Dominator Chain

the usedesc of Slut tag is "[Slut tag use]";

latex milk is a grab object. It is a part of the player. Understand "milk" as latex milk. latex milk is infectious. The strain of latex milk is "Latex Fox";

Slut tag is a grab object. It is a part of the player. Understand "tag" as Slut tag. 

Dominator Chain is a grab object. It is a part of the player. Understand "chain" as Dominator Chain. 

Section 2 - Use of Items


to say Slut tag use:
	if facename is "Male Slut":
		say "You raise the tag up your collar and giggle slightly as they meld together.";
	otherwise if facename is "Female Slut":
		say "You raise the tag up your collar and giggle slightly as they meld together.";
	otherwise:
		say "As you rub the strange dog tag, it begins melting into your hand!";
	if a random chance of 1 in 2 succeeds:
		infect "Male Slut";
	otherwise:
		infect "Female Slut";
		

to say Dominator Chain use:
	if facename is "Male Dominator":
		say "You raise the chain up to your collar, grinning slightly as they meld together.";
	otherwise:
		say "The chain animates as you hold it, snaking its way up your body and melting into your neck!";
	infect "Male Dominator";

to say Tager1:
	infect "Male Slut";

to say Tager2:
	infect "Female Slut";

to say Tager3:
	infect "Male Dominator";



Section 3 - commands

Anti-slut is an action applying to nothing.

Understand "protect me" as Anti-slut.
Understand "protect from sluts" as Anti-slut.
Understand "protect from slut" as Anti-slut.
Understand "ask help" as Anti-slut.
Understand "ask for help" as Anti-slut.
Understand "ask tanuki for help" as Anti-slut.


carry out Anti-slut:
		say "sorry this event has ended, goodbye.";



 

Items ends here.