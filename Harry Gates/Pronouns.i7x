Pronouns by Harry Gates begins here.

Parse_debug is a text that varies.  Parse_debug is "false".

A person is either herm or noherm.  A person is usually noherm.

P_target is a person that varies.

P_attacker is a person that varies.

Section 1 - Verb phrasebooks

To say Verb_s of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[otherwise][printed name of Verb_target][end if])";
	if Verb_target is not the player:
		say "s";

To say Verb_es of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[otherwise][printed name of Verb_target][end if])";
	if Verb_target is not the player:
		say "es";

To say Verb_y of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[otherwise][printed name of Verb_target][end if])";
	if Verb_target is the player:
		say "y";
	otherwise:
		say "ies";

To say Verb_have of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[otherwise][printed name of Verb_target][end if])";
	if Verb_target is the player:
		say "have";
	otherwise:
		say "has";

To say Verb_are of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[otherwise][printed name of Verb_target][end if])";
	if Verb_target is the player:
		say "are";
	otherwise:
		say "is";

Section 2 - Pronoun phrasebooks

To say Poss_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "your";
	otherwise:
		say "[printed name of Pronoun_target]'s";

To say Cap_Poss_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Your";
	otherwise:
		say "[printed name of Pronoun_target]'s";

To say Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	otherwise:
		say "[printed name of Pronoun_target]";

To say Des_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	otherwise:
		if Pronoun_target is on-stage:
			say "[Pronoun_target]";
		otherwise:
			say "[printed name of Pronoun_target]";

To say Cap_Des_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "You";
	otherwise:
		if Pronoun_target is on-stage:
			say "[Pronoun_target]";
		otherwise:
			say "[printed name of Pronoun_target]";

To say Obj_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if P_target is P_attacker:
		say "[Ref_Pronoun of Pronoun_target]";
	otherwise:
		if Pronoun_target is the player:
			say "you";
		otherwise:
			say "[printed name of Pronoun_target]";

To say Cap_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "You";
	otherwise:
		say "[printed name of Pronoun_target]";

To say Subj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	otherwise:
		if Pronoun_target is herm:
			say "shi";
		otherwise:
			if Pronoun_target is male:
				say "he";
			otherwise:
				say "she".

To say Cap_Subj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "You";
	otherwise:
		if Pronoun_target is herm:
			say "Shi";
		otherwise:
			if Pronoun_target is male:
				say "He";
			otherwise:
				say "She".

To say Obj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if P_target is P_attacker:
		say "[Ref_Pronoun for Pronoun_target]";
	otherwise:
		if Pronoun_target is the player:
			say "you";
		otherwise:
			if Pronoun_target is herm:
				say "hir";
			otherwise:
				if Pronoun_target is male:
					say "him";
				otherwise:
					say "her".

To say NoRef_Obj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	otherwise:
		if Pronoun_target is herm:
			say "hir";
		otherwise:
			if Pronoun_target is male:
				say "him";
			otherwise:
				say "her".

To say Cap_Obj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if P_target is P_attacker:
		say "[Cap_Ref_Pronoun for Pronoun_target]";
	otherwise:
		if Pronoun_target is the player:
			say "You";
		otherwise:
			if Pronoun_target is herm:
				say "Hir";
			otherwise:
				if Pronoun_target is male:
					say "Him";
				otherwise:
					say "Her".

To say Poss_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "yours";
	otherwise:
		if Pronoun_target is herm:
			say "hirs";
		otherwise:
			if Pronoun_target is male:
				say "his";
			otherwise:
				say "hers".

To say Cap_Poss_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Yours";
	otherwise:
		if Pronoun_target is herm:
			say "Hirs";
		otherwise:
			if Pronoun_target is male:
				say "His";
			otherwise:
				say "Hers".

To say Poss_Det_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "your";
	otherwise:
		if Pronoun_target is herm:
			say "hir";
		otherwise:
			if Pronoun_target is male:
				say "his";
			otherwise:
				say "her".

To say Cap_Poss_Det_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Your";
	otherwise:
		if Pronoun_target is herm:
			say "Hir";
		otherwise:
			if Pronoun_target is male:
				say "His";
			otherwise:
				say "Her".

To say Ref_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "yourself";
	otherwise:
		if Pronoun_target is herm:
			say "hirself";
		otherwise:
			if Pronoun_target is male:
				say "himself";
			otherwise:
				say "herself".

To say Cap_Ref_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Yourself";
	otherwise:
		if Pronoun_target is herm:
			say "Hirself";
		otherwise:
			if Pronoun_target is male:
				say "Himself";
			otherwise:
				say "Herself".

To say You_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "you both";
	otherwise:
		say "they both";

To say Cap_You_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "You both";
	otherwise:
		say "They both";

To say Obj_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "both of you";
	otherwise:
		say "both of them";

To say Cap_Obj_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[otherwise][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "Both of you";
	otherwise:
		say "Both of them";

Pronouns ends here.

---- Documentation ----

This extension adds phrasebooks for handling pronouns for male, female and hermaphrodite genders.