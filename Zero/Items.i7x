Items by Zero begins here.

pch is a number that varies. pch is usually 0.
bch is a number that varies. bch is usually 0.
swrdtm is a number that varies. swrdtm is usually 0.

Section 1 - Items

Table of Game Objects (continued)
name	desc	weight	object
"latex milk"	"It's as strange as it sounds - the milk of a latex fox."	1	latex milk
"slut tag"	"A small metal dog tag. It has the word [']slut['] engraved onto it."	1	slut tag
"dominator chain"	"A chain that once hung around a Dominator's neck."	1	dominator chain
"protein shake"	"a protein shake"	1	 protein shake
"small pouch"	"a small pouch that straps around your leg"	3	 small pouch
"durable backpack"	"a durable backpack"	10	 durable backpack
"kunai"	"a kunai or ninja knife is short and dagger-like with a ring at the end of the handle"	2	 kunai
"bloody sword"	"a katana stained with blood, this weapon hungers for blood - namely yours"	4	 bloody sword
"demonic sword"	"a powerful blade with a mind of its own. Pray it takes a liking to you."	4	 demonic sword
"strange gem"	"a gem that sparkles with mystic power. For some reason, you know if you were to use it your sanity would return to you."	1	 strange gem




the usedesc of slut tag is "[slut tag use]".
the usedesc of durable backpack is "[durable backpack use]".
the usedesc of small pouch is "[small pouch use]".
the usedesc of protein shake is "[protein shake use]".
the usedesc of strange gem is "[strange gem use]".
the usedesc of dominator chain is "[dominator chain use]".


latex milk is a grab object. It is a part of the player. Understand "milk" as latex milk. latex milk is infectious. The strain of latex milk is "Latex Fox".

slut tag is a grab object. It is a part of the player. Understand "tag" as slut tag.

dominator chain is a grab object. It is a part of the player. Understand "chain" as dominator chain.

protein shake is a grab object. It is a part of the player. Understand "shake" as protein shake.

small pouch is a grab object. It is a part of the player. Understand "pouch" as small pouch.

durable backpack is a grab object. It is a part of the player. Understand "backpack" as durable backpack.

strange gem is a grab object. It is a part of the player. Understand "gem" as strange gem.



kunai is a armament. It is a part of the player. It has a weapon "[one of]your kunai[or]your blade[or]your ninja knife[at random]". The weapon damage of kunai is 6. The weapon type of kunai is "Melee". It is not temporary.

bloody sword is a armament. It is a part of the player. It has a weapon "[one of]evil [or]bloodthirsty[or]demonic[or]bloody[at random] sword". The weapon damage of bloody sword is 11. The weapon type of bloody sword is "Melee". It is not temporary.

demonic sword is a armament. It is a part of the player. It has a weapon "[one of]evil [or]possessed[or]demonic[or]bloody[at random] sword". The weapon damage of demonic sword is 13. The weapon type of demonic sword is "Melee". It is not temporary.


Section 2 - Use of Items

to say small pouch use:
	if pch is 0:
		say "You strap the pouch to your left leg.";
		increase capacity of player by 3;
		increase pch by 1;
	else if pch is 1:
		say "You strap the pouch to your right leg.";
		increase capacity of player by 3;
		increase pch by 1;
	else if pch is 2:
		say "the pouch is no better than your current one, so you throw it away, hopefully for some other lucky survivor to find";


to say durable backpack use:
	if bch is 0:
		say "You replace your old backpack with a much more durable one, leaving you feeling much more confident in your ability to carry stuff";
		increase capacity of player by 10;
		increase bch by 1;
	else:
		say "the backpack is no better than your current one, so you throw it away, hopefully for some other lucky survivor to find";


to say protein shake use:
	let T be a random number between 1 and 11;
	if T is 1:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling slightly stronger and a lot sturdier.";
		increase Strength of player by 1;
		increase Stamina of player by 3;
	if T is 2:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling a lot stronger and slightly sturdier.";
		increase Strength of player by 3;
		increase Stamina of player by 1;
	if T is 3:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling sturdier and slightly stronger.";
		increase Strength of player by 1;
		increase Stamina of player by 2;
	if T is 4:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling slightly stronger and sturdier.";
		increase Strength of player by 1;
		increase Stamina of player by 1;
	if T is 5:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling stronger and slightly sturdier.";
		increase Strength of player by 2;
		increase Stamina of player by 1;
	if T is 6:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling amazingly stronger";
		increase Strength of player by 5;
	if T is 7:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling amazingly sturdier.";
		increase Stamina of player by 5;
	if T is 8:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling slightly sturdier.";
		increase Stamina of player by 1;
	if T is 9:
		say "You quickly gulp down the white substance. Its taste is pleasantly familiar and leaves you felling slightly stronger.";
		increase Strength of player by 1;
	if T is 10:
		say "You quickly try to down the shake, only to find it's empty! Seems as if there was a hole you missed.";
	if T is 11:
		say "Gagging, you spit out the drink, feeling disgusted in yourself for putting whatever that was in your mouth. It seems this one was off... way, way off.";
		decrease Strength of player by 1;
		decrease Stamina of player by 1;


to say strange gem use:
	say "the gem tingles in your hand, fading away while its energy flows into you";
	now humanity of player is 100;

to say slut tag use:
	if facename is "Male Slut":
		say "You raise the tag up your collar and giggle slightly as they meld together.";
	else if facename is "Female Slut":
		say "You raise the tag up your collar and giggle slightly as they meld together.";
	else:
		say "As you rub the strange dog tag, it begins melting into your hand!";
	if a random chance of 1 in 2 succeeds:
		infect "Male Slut";
	else:
		infect "Female Slut";


to say dominator chain use:
	if facename is "Male Dominator":
		say "You raise the chain up to your collar, grinning slightly as they meld together.";
	else:
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
		say "Sorry, this event has ended. Goodbye.";

an everyturn rule:
	if weapon object of player is bloody sword:
		Decrease HP of player by 3;

an everyturn rule:
	if weapon object of player is demonic sword:
		if swrdtm is 1:
			increase humanity of player by 3;
		else if swrdtm is 0:
			decrease humanity of player by 5;



Items ends here.
