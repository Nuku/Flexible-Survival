Items by Zero begins here.

Section 1 - Items

Table of Game Objects (continued)
name	desc	weight	object
"latex milk"	"strange as it sounds the milk of a latex fox."	1	latex milk
"Slut tag"	"a small metal dogtag it has the word 'slut' ingraved into it."	1	Slut tag
"Dominator Chain"	"a chain from around a Dominator's neck."	1	Dominator Chain

the usedesc of Slut tag is "[Slut tag use]";

latex milk is a grab object. It is a part of the player. Understand "milk" as latex milk. latex milk is infectious. The strain of latex milk is "Latex Fox";

Slut tag is a grab object. It is a part of the player. Understand "tag" as Slut tag. 

Dominator Chain is a grab object. It is a part of the player. Understand "chain" as Dominator Chain. 

Section 2 - Use of Items


to say Slut tag use:
	if facename is "Male Slut":
		say "you raise the tag up your collar, and giggle slightly as they meld together";
		say "[one of] [Tager1] [or] [Tager2][at random]";
	otherwise if facename is "Female Slut":
		say "you raise the tag up your collar, and giggle slightly as they meld together";
		say "[one of] [Tager1] [or] [Tager2][at random]";
	otherwise:
		say "as you rub the strange dogtag it begins melting into your hand!";
		say "[one of] [Tager1] [or] [Tager2][at random]";

to say Tager1:
	infect "Male Slut";
	
to say Tager2:
	infect "Female Slut";	

to say Tager3:
	infect "Male Dominator";
		

to say Dominator Chain use:
	if facename is "Male Dominator":
		say "you raise the chain up to your collar, grinning slightly as they meld together";
		say "[Tager3]";
	otherwise:
		say "the chain animates as you hold it skaing its way up your body and melting into your neck!";
		say "[Tager3]";

Section 3 - comands

Anti-slut is an action applying to nothing.

Understand "protect me" as Anti-slut.
Understand "protect from sluts" as Anti-slut.
Understand "protect from slut" as Anti-slut.
Understand "ask help" as Anti-slut.
Understand "ask for help" as Anti-slut.
Understand "ask tanuki for help" as Anti-slut.

check Anti-slut:
	if the player is not in Shrine, say " your asking at the wrong place, mayby you should try a place of worship?" instead;

carry out Anti-Anti-slut:
	if slutprotection is 0:
		say "i can temperally protect you from the sluts that have resently appeaered, well the infecting regarless of it you win part at least, unforchenitly this will not last forever, just intill zero updates it";
		if the player consents:
			say "you are now protected when lossing to sluts";
	now slutprotection is 1;

Anti-Anti-slut is an action applying to nothing.

Understand "remove protection" as Anti-Anti-slut.
Understand "dont protect me from sluts" as Anti-Anti-slut.
Understand "don't protect me from sluts" as Anti-Anti-slut.
Understand "dont help" as Anti-Anti-slut.
Understand "ask to remove protection" as Anti-Anti-slut.
Understand "ask tanuki to remove protection" as Anti-Anti-slut.

check Anti-Anti-slut:
	if the player is not in Shrine, say " do you really want to do this? but your asking at the wrong place, mayby you should try a place of worship?" instead;

carry out Anti-Anti-slut:
	if slutprotection is 1:
		say "i will remove your protection if you so wish";
		if the player consents:
			say "you are no longer protected when lossing to sluts";
	now slutprotection is 0;
 
 [strange sluts have appeared, and something weird happens when you beat them, mayby you should "ask for help" ]
 
Items ends here.
