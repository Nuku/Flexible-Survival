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
		infect "Male Dominator";
	otherwise:
		say "The chain animates as you hold it, snaking its way up your body and melting into your neck!";
		infect "Male Dominator";

Section 3 - commands

Anti-slut is an action applying to nothing.

Understand "protect me" as Anti-slut.
Understand "protect from sluts" as Anti-slut.
Understand "protect from slut" as Anti-slut.
Understand "ask help" as Anti-slut.
Understand "ask for help" as Anti-slut.
Understand "ask tanuki for help" as Anti-slut.

check Anti-slut:
	if the player is not in Shrine, say "You're asking at the wrong place.  Maybe you should try a place of worship?" instead;

carry out Anti-Anti-slut:
	if slutprotection is 0:
		say "'I can temporally protect you from the unnatural attraction of the sluts that have recently appeared, but you will still have to defend yourself.  That is, until Zero completes his work,' the voice adds cryptically.";
		if the player consents:
			say "You are now protected when facing the sluts.";
	now slutprotection is 1;

Anti-Anti-slut is an action applying to nothing.

Understand "remove protection" as Anti-Anti-slut.
Understand "dont protect me from sluts" as Anti-Anti-slut.
Understand "don't protect me from sluts" as Anti-Anti-slut.
Understand "dont help" as Anti-Anti-slut.
Understand "ask to remove protection" as Anti-Anti-slut.
Understand "ask tanuki to remove protection" as Anti-Anti-slut.

check Anti-Anti-slut:
	if the player is not in Shrine, say "Do you really want to do this?  But you're asking at the wrong place, maybe you should try at place of worship?" instead;

carry out Anti-Anti-slut:
	if slutprotection is 1:
		say "I will remove your protection if you so wish.";
		if the player consents:
			say "You are no longer protected when facing the sluts.";
	now slutprotection is 0;
 

Items ends here.