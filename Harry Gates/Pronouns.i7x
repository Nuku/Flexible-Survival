Pronouns by Harry Gates begins here.

Parse_debug is a text that varies.[@Tag:NotSaved] Parse_debug is "false".

A person is either herm or noherm. A person is usually noherm.

P_target is a person that varies.[@Tag:NotSaved]

P_attacker is a person that varies.[@Tag:NotSaved]

Section 1 - Verb phrasebooks

To say Verb_s of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[else][printed name of Verb_target][end if])";
	if Verb_target is not the player:
		say "s";

To say Verb_es of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[else][printed name of Verb_target][end if])";
	if Verb_target is not the player:
		say "es";

To say Verb_y of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[else][printed name of Verb_target][end if])";
	if Verb_target is the player:
		say "y";
	else:
		say "ies";

To say Verb_have of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[else][printed name of Verb_target][end if])";
	if Verb_target is the player:
		say "have";
	else:
		say "has";

To say Verb_are of/for (Verb_target - a person):
	if Parse_debug is "true", say "([if Verb_target is the player]the player[else][printed name of Verb_target][end if])";
	if Verb_target is the player:
		say "are";
	else:
		say "is";

Section 2 - Pronoun phrasebooks

To say Poss_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "your";
	else:
		say "[printed name of Pronoun_target]'s";

To say Cap_Poss_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Your";
	else:
		say "[printed name of Pronoun_target]'s";

To say Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	else:
		say "[printed name of Pronoun_target]";

To say Des_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	else:
		if Pronoun_target is on-stage:
			say "[Pronoun_target]";
		else:
			say "[printed name of Pronoun_target]";

To say Cap_Des_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "You";
	else:
		if Pronoun_target is on-stage:
			say "[Pronoun_target]";
		else:
			say "[printed name of Pronoun_target]";

To say Obj_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if P_target is P_attacker:
		say "[Ref_Pronoun of Pronoun_target]";
	else:
		if Pronoun_target is the player:
			say "you";
		else:
			say "[printed name of Pronoun_target]";

To say Cap_Name of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "You";
	else:
		say "[printed name of Pronoun_target]";

To say Subj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	else:
		if Pronoun_target is herm:
			say "shi";
		else:
			if Pronoun_target is male:
				say "he";
			else:
				say "she";

To say Cap_Subj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "You";
	else:
		if Pronoun_target is herm:
			say "Shi";
		else:
			if Pronoun_target is male:
				say "He";
			else:
				say "She";

To say Obj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if P_target is P_attacker:
		say "[Ref_Pronoun for Pronoun_target]";
	else:
		if Pronoun_target is the player:
			say "you";
		else:
			if Pronoun_target is herm:
				say "hir";
			else:
				if Pronoun_target is male:
					say "him";
				else:
					say "her";

To say NoRef_Obj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "you";
	else:
		if Pronoun_target is herm:
			say "hir";
		else:
			if Pronoun_target is male:
				say "him";
			else:
				say "her";

To say Cap_Obj_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if P_target is P_attacker:
		say "[Cap_Ref_Pronoun for Pronoun_target]";
	else:
		if Pronoun_target is the player:
			say "You";
		else:
			if Pronoun_target is herm:
				say "Hir";
			else:
				if Pronoun_target is male:
					say "Him";
				else:
					say "Her";

To say Poss_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "yours";
	else:
		if Pronoun_target is herm:
			say "hirs";
		else:
			if Pronoun_target is male:
				say "his";
			else:
				say "hers";

To say Cap_Poss_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Yours";
	else:
		if Pronoun_target is herm:
			say "Hirs";
		else:
			if Pronoun_target is male:
				say "His";
			else:
				say "Hers";

To say Poss_Det_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "your";
	else:
		if Pronoun_target is herm:
			say "hir";
		else:
			if Pronoun_target is male:
				say "his";
			else:
				say "her";

To say Cap_Poss_Det_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Your";
	else:
		if Pronoun_target is herm:
			say "Hir";
		else:
			if Pronoun_target is male:
				say "His";
			else:
				say "Her";

To say Ref_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "yourself";
	else:
		if Pronoun_target is herm:
			say "hirself";
		else:
			if Pronoun_target is male:
				say "himself";
			else:
				say "herself";

To say Cap_Ref_Pronoun of/for (Pronoun_target - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player:
		say "Yourself";
	else:
		if Pronoun_target is herm:
			say "Hirself";
		else:
			if Pronoun_target is male:
				say "Himself";
			else:
				say "Herself";

To say You_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "you both";
	else:
		say "they both";

To say Cap_You_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "You both";
	else:
		say "They both";

To say Obj_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "both of you";
	else:
		say "both of them";

To say Cap_Obj_Both for (Pronoun_target - a person) and (Pronoun_attacker - a person):
	if Parse_debug is "true", say "([if Pronoun_target is the player]the player[else][printed name of Pronoun_target][end if])";
	if Pronoun_target is the player or Pronoun_attacker is the player:
		say "Both of you";
	else:
		say "Both of them";

Pronouns ends here.

---- Documentation ----

This extension adds phrasebooks for handling pronouns for male, female and hermaphrodite genders.
