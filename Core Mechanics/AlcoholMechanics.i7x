Version 1 of AlcoholMechanics by Core Mechanics begins here.

PreviousAlcState is a text that varies.[@Tag:NotSaved]

to say AlcState:
	if "Delirious" is listed in Traits of Player:
		say "Delirious";
	else if "Wasted" is listed in Traits of Player:
		say "Wasted";
	else if "Drunk" is listed in Traits of Player:
		say "Drunk";
	else if "Tipsy" is listed in Traits of Player:
		say "Tipsy";
	else if "Buzzed" is listed in Traits of Player:
		say "Buzzed";
	else:
		say "Sober";

to addAlcPoints (num - a number):
	let alcoholpoints be num + Energy of Player;
	if alcoholpoints < 0:
		now alcoholpoints is 0;
	now Energy of Player is alcoholpoints;
	UpdateAlcStatus;

an everyturn rule:
	if Energy of Player > 0:
		if Energy of Player is 1:
			now PreviousAlcState is "None"; [reset message for Drinking State]
		now Energy of Player is Energy of Player - 1; [sobering up slowly]
		UpdateAlcStatus;

to UpdateAlcStatus:
	removeDrinkStatus; [removed to apply the new status]
	if Energy of Player >= 15:
		alcoholDeath;
	else if Energy of Player >= 11 and Energy of Player <= 14: [Delirious - seeing things and getting close to death]
		AddDeliriousState;
		if a random chance of 1 in 4 succeeds:
			LineBreak;
			say "You feel your stomach contract violently, making you heave on the spot. Chunks of your last meal spew to the floor, and leave a taste of acid in your mouth and burning in your throat, leaving you dehydrated and hungry.";
			PlayerThirst 20;
			PlayerHunger 30;
			PlayerWounded 5; [losing HP, but not dying]
			now Energy of Player is Energy of Player - 3;
	else if Energy of Player >= 8 and Energy of Player <= 10: [Wasted - barely functional]
		AddWastedState;
		if a random number between 1 and 100 > (stamina of Player * 4):[Stamina increases chances to not vomit]
			LineBreak;
			say "You feel your stomach contract violently, making you heave on the spot. Chunks of your last meal spew to the floor, and leave a taste of acid in your mouth and burning in your throat.";
			PlayerThirst 10;
			PlayerHunger 15;
			PlayerWounded 2; [losing HP, but not dying]
			now Energy of Player is Energy of Player - 1;
	else if Energy of Player >= 5 and Energy of Player <= 7: [Drunk - pretty incoherent]
		AddDrunkState;
	else if Energy of Player is 3 or Energy of Player is 4: [Tipsy - swaying a bit, but still in good spirits]
		AddTipsyState;
	else if Energy of Player is 2: [Buzzed - feeling well]
		AddBuzzedState;

to removeDrinkStatus: [Alc Reset]
	RemoveDeliriousState;
	RemoveWastedState;
	RemoveDrunkState;
	RemoveTipsyState;
	RemoveBuzzedState;

to alcoholDeath:
	wait for any key;
	now battleground is "void";
	trigger ending "Player has died";
	end the story saying "[bold type]You have fallen to alcohol poisoning.[roman type]";

to AddDeliriousState:
	if "Delirious" is not listed in Traits of Player:
		add "Delirious" to Traits of Player;
		LineBreak;
		if PreviousAlcState is not "Delirious":
			say "     [bold type]You're deliriously drunk now. Some might even call it poisoned - better watch out for yourself![roman type][line break]";
			say "     [bold type]Your body does not feel well at all: Str -8, Dex -10, Sta -5, Cha -8, Int -10, Per -10.[roman type][line break]";
		else:
			say "     [bold type]You're still deliriously drunk! Some might even call it poisoned - better watch out for yourself![roman type][line break]";
		StatChange "Strength" by -8 silently;
		StatChange "Dexterity" by -10 silently;
		StatChange "Stamina" by -5 silently;
		StatChange "Charisma" by -8 silently;
		StatChange "Intelligence" by -10 silently;
		StatChange "Perception" by -10 silently;

to RemoveDeliriousState:
	if "Delirious" is listed in Traits of Player:
		remove "Delirious" from Traits of Player;
		now PreviousAlcState is "Delirious";
		StatChange "Strength" by 8 silently;
		StatChange "Dexterity" by 10 silently;
		StatChange "Stamina" by 5 silently;
		StatChange "Charisma" by 8 silently;
		StatChange "Intelligence" by 10 silently;
		StatChange "Perception" by 10 silently;

to AddWastedState:
	if "Wasted" is not listed in Traits of Player:
		add "Wasted" to Traits of Player;
		LineBreak;
		if PreviousAlcState is not "Wasted":
			say "     [bold type]You're pretty wasted now. It is hard to think, or even coordinate all your limbs![roman type][line break]";
			say "     [bold type]Being quite gone, you feel weaker than normal: Str -4, Dex -8, Sta -2, Cha -4, Int -8, Per -6.[roman type][line break]";
			[AbsintheWasted;]
		else:
			say "     [bold type]You're still wasted! It is hard to think, or even coordinate all your limbs![roman type][line break]";
		StatChange "Strength" by -4 silently;
		StatChange "Dexterity" by -8 silently;
		StatChange "Stamina" by -2 silently;
		StatChange "Charisma" by -4 silently;
		StatChange "Intelligence" by -8 silently;
		StatChange "Perception" by -6 silently;

to RemoveWastedState:
	if "Wasted" is listed in Traits of Player:
		remove "Wasted" from Traits of Player;
		now PreviousAlcState is "Wasted";
		StatChange "Strength" by 4 silently;
		StatChange "Dexterity" by 8 silently;
		StatChange "Stamina" by 2 silently;
		StatChange "Charisma" by 4 silently;
		StatChange "Intelligence" by 8 silently;
		StatChange "Perception" by 6 silently;

to AddDrunkState:
	if "Drunk" is not listed in Traits of Player:
		add "Drunk" to Traits of Player;
		LineBreak;
		if PreviousAlcState is not "Drunk":
			say "     [bold type]You're drunk, no way around saying it. Things before your eyes are going blurry at times![roman type][line break]";
			say "     [bold type]You can't think straight, but you sure feel like you can take on the world: Str +3, Dex -4, Sta +4, Cha -4, Int -5, Per -3.[roman type][line break]";
		else:
			say "     [bold type]You're still drunk! Things before your eyes are going blurry at times![roman type][line break]";
		StatChange "Strength" by 3 silently;
		StatChange "Dexterity" by -4 silently;
		StatChange "Stamina" by 4 silently;
		StatChange "Charisma" by -4 silently;
		StatChange "Intelligence" by -5 silently;
		StatChange "Perception" by -3 silently;

to RemoveDrunkState:
	if "Drunk" is listed in Traits of Player:
		remove "Drunk" from Traits of Player;
		now PreviousAlcState is "Drunk";
		StatChange "Strength" by -3 silently;
		StatChange "Dexterity" by 4 silently;
		StatChange "Stamina" by -4 silently;
		StatChange "Charisma" by 4 silently;
		StatChange "Intelligence" by 5 silently;
		StatChange "Perception" by 3 silently;

to AddTipsyState:
	if "Tipsy" is not listed in Traits of Player:
		add "Tipsy" to Traits of Player;
		LineBreak;
		if PreviousAlcState is not "Tipsy":
			say "     [bold type]You're pretty tipsy![roman type][line break]";
			say "     [bold type]Feeling the alcohol in your body, you get stronger than ever: Str +2, Dex -2, Sta +2, Cha +2, Int -2, Per -1.[roman type][line break]";
		else:
			say "     [bold type]You're still tipsy.[roman type][line break]";
		StatChange "Strength" by 2 silently;
		StatChange "Dexterity" by -2 silently;
		StatChange "Stamina" by 2 silently;
		StatChange "Charisma" by 2 silently;
		StatChange "Intelligence" by -2 silently;
		StatChange "Perception" by -1 silently;

to RemoveTipsyState:
	if "Tipsy" is listed in Traits of Player:
		remove "Tipsy" from Traits of Player;
		now PreviousAlcState is "Tipsy";
		StatChange "Strength" by -2 silently;
		StatChange "Dexterity" by 2 silently;
		StatChange "Stamina" by -2 silently;
		StatChange "Charisma" by -2 silently;
		StatChange "Intelligence" by 2 silently;
		StatChange "Perception" by 1 silently;

to AddBuzzedState:
	if "Buzzed" is not listed in Traits of Player:
		add "Buzzed" to Traits of Player;
		LineBreak;
		if PreviousAlcState is not "Buzzed":
			say "     [bold type]You've got a pleasant buzz going![roman type][line break]";
			say "     [bold type]You feel a bit more invigorated: Str +1, Cha +1.[roman type][line break]";
		else:
			say "     [bold type]You're still buzzed.[roman type][line break]";
		StatChange "Strength" by 1 silently;
		StatChange "Charisma" by 1 silently;

to RemoveBuzzedState:
	if "Buzzed" is listed in Traits of Player:
		remove "Buzzed" from Traits of Player;
		now PreviousAlcState is "Buzzed";
		StatChange "Strength" by -1 silently;
		StatChange "Charisma" by -1 silently;

AlcoholMechanics ends here.
