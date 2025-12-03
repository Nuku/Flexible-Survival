Version 1 of Offspring by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 0 - Objects and Tables

Table of PlayerChildren
Name (text)	BirthTurn (number)	Gender (text)	Head (text)	Torso (text)	Back (text)	Arms (text)	Legs (text)	Ass (text)	Tail (text)	ShowTail (truth state)	ShowLegs (truth state)	Pureblood (truth state)	Albino (truth state)	Melanism (truth state)	Feral (truth state)	Personality (text)	PlayerRelationship (text)
with 1000 blank rows

Table of PlayerBunkerChildren
Name (text)	BirthTurn (number)	Gender (text)	Head (text)	Torso (text)	Back (text)	Arms (text)	Legs (text)	Ass (text)	Tail (text)	ShowTail (truth state)	ShowLegs (truth state)	Pureblood (truth state)	Albino (truth state)	Melanism (truth state)	Feral (truth state)	Personality (text)	PlayerRelationship (text)
with 1000 blank rows

Table of PlayerRoamingChildren
Name (text)	BirthTurn (number)	Gender (text)	Head (text)	Torso (text)	Back (text)	Arms (text)	Legs (text)	Ass (text)	Tail (text)	ShowTail (truth state)	ShowLegs (truth state)	Pureblood (truth state)	Albino (truth state)	Melanism (truth state)	Feral (truth state)	Personality (text)	PlayerRelationship (text)
with 1000 blank rows


Table of GameCharacterIDs (continued)
object	name
Offspring	"offspring"

Offspring is a person. [bunker children]
Description of Offspring is "[OffspringDesc]".

instead of conversing the Offspring:
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "     You have a nice little talk with your children. Knowing that they're safe here while you're roaming the city makes you feel better about the grim reality of life in the city.";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "     You have a nice little talk with your child. Knowing that they're safe here while you're roaming the city makes you feel better about the grim reality of life in the city.";
	SanBoost 5;

instead of fucking the Offspring:
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "     For a second, lewd thoughts flare up in your mind and you almost open your mouth to say something to one of your children, but then you manage to control yourself and suppress the urge.";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "     For a second, lewd thoughts flare up in your mind and you almost open your mouth to say something to your child, but then you manage to control yourself and suppress the urge.";

to say OffspringDesc:
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "Your children live in the safety of the bunker:[line break]";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "Your child lives in the safety of the bunker:[line break]";
	[new style children]
	if number of filled rows in Table of PlayerBunkerChildren > 0: [player has new style children]
		repeat through Table of PlayerBunkerChildren:
			let Childage be ((Birthturn entry - turns ) divided by 8);
			if Gender entry is "male":
				SetMalePronouns for Offspring;
			else if Gender entry is "female":
				SetFemalePronouns for Offspring;
			else:
				SetNeutralPronouns for Offspring;
			if Pureblood entry is false:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " has [a Head entry in lower case] head, [Torso entry in lower case] front and [Back entry in lower case] back. ";
				if ShowLegs entry is true:
					say "[SubjectProCap of Offspring] [if Offspring is NProN]have[else]has[end if] [Arms entry in lower case] arms, [Legs entry in lower case] legs[if ShowTail entry is false] and [a Ass entry in lower case] behind[else], [a Ass entry in lower case] behind and [a Tail entry in lower case] tail[end if]. ";
				else:
					say "[SubjectProCap of Offspring] [if Offspring is NProN]have[else]has[end if] [Arms entry in lower case] arms[if ShowTail entry is false] and [a Ass entry in lower case] behind[else], [a Ass entry in lower case] behind and [a Tail entry in lower case] tail[end if]. ";
			else:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " is a pureblood [Head entry in lower case]. ";
			if Albino entry is true:
				say "[bold type][PosAdjCap of Offspring] pigmentation is muted and almost white, except for the eyes that appear red.[roman type][line break]";
			else if Melanism entry is true:
				say "[bold type][PosAdjCap of Offspring] pigmentation is almost pure black.[roman type][line break]";
			say "You have [a PlayerRelationship entry] relationship with [ObjectPro of Offspring], and [PosAdj of Offspring] personality is rather [Personality entry].";
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "[SubjectProCap of Offspring] look[if Offspring is not NProN]s[end if] as alert and human as you are, taking after you eagerly. Despite [PosAdj of Offspring] age, [SubjectPro of Offspring] [if Offspring is NProN]are[else]is[end if] already grown to a young adult, both physically and in apparent emotional and mental development.";

Table of Game Objects (continued)
name	desc	weight	object
"offspring present"	"A little box, complete with a scavenged bow! A little sign on it says it's just for you and from one of your offspring that are living in the bunker."	1	offspring present

offspring present is a grab object.
Usedesc of offspring present is "[offspring present use]".

instead of sniffing offspring present:
	say "The box smells very mysterious.";

to say offspring present use:
	say "     Curious about what your child got you, you carefully open the present and find ";
	let RandomChance be a random number from 1 to 15;
	if RandomChance < 4: [1-3]
		say "a soda bottle inside!";
		ItemGain soda by 1;
	else if RandomChance < 8: [4-7]
		say "a bag of chips inside!";
		ItemGain chips by 1;
	else if RandomChance < 11: [8-10]
		say "a water bottle inside!";
		ItemGain water bottle by 1;
	else if RandomChance < 14: [11-13]
		say "a can of food inside!";
		ItemGain food by 1;
	else if RandomChance is 14:
		say "a baseball cap inside!";
		ItemGain baseball cap by 1;
	else if RandomChance is 15:
		say "a red herring plushie!";
		ItemGain red herring by 1;



Offspring ends here.
