Version 1 of AlcoholMechanics by Core Mechanics begins here.

PreviousAlcState is a text that varies.[@Tag:NotSaved]

Table of Game Objects (continued)
name	desc	weight	object
"small whiskey bottle"	"A fairly small glass bottle holding a strong brew of whiskey; 35% alcohol, 70 proof. Might have been looted from a motel minibar, by the size of it."	1	small whiskey bottle
"Big whiskey bottle"	"A fine glass bottle half full of a strong brew of whiskey; 35% alcohol, 70 proof. Quite a bit to drink in one go."	1	Big Whiskey bottle
"Beer"	"A dark tinted bottle of alcohol, Nothing as refreshing as a bottle of beer, 6% alcohol."	1	Beer
"Small Grain Alcohol Bottle"	"A small clear bottle of alcohol, quite strong too. Might have been left behind after they tasted it, 75% alcohol."	1	Small Grain Alcohol Bottle
"Grain Alcohol Bottle"	"A clear bottle of alcohol, quite strong for the regular person. Might have been looted from a liquor store. 75% alcohol."	1	large Grain Alcohol Bottle
"Dwarven spirit"	"A large black container filled with alcohol, only for the bravest or most hearty of drinkers.90 % alcohol."	1	Dwarven Spirit

small whiskey bottle is a grab object. Understand "small whiskey bottle" as small whiskey bottle.
Usedesc of small whiskey bottle is "[small whiskey alcohol use]".
instead of sniffing small whiskey bottle:
	say "The strong smell of alcohol flows into your nose.";
to say small whiskey alcohol use:
	say "You feel the burn of the whiskey down your throat as you drink.";
	addAlcPoints 2;

Big Whiskey bottle is a grab object. Understand "Big whiskey bottle" as Big Whiskey bottle.
Usedesc of Big Whiskey bottle is "[Big Whiskey bottle use]".
instead of sniffing Big Whiskey bottle:
	say "The strong smell of alcohol flows into your nose.";
to say Big Whiskey bottle use:
	say "Your drink the full bottle, its strong alcohol burning on the way down.";
	addAlcPoints 4;

Beer is a grab object. Understand "Beer" as Beer.
Usedesc of Beer is "[Beer use]".
instead of sniffing Beer:
	say "A light scent of alcohol flows into your nose.";
to say Beer use:
	say "You drink the nice refreshing beer, its dark grain taste lingering on your toungue.";
	addAlcPoints 1;

Small Grain Alcohol Bottle is a grab object. Understand "Small Grain Alcohol Bottle" as Small Grain Alcohol Bottle.
Usedesc of Small Grain Alcohol Bottle is "[Small Grain use]".
instead of sniffing Small Grain Alcohol Bottle:
	say "The strong smell of pure alcohol flows into your nose.";
to say Small Grain use:
	say "You feel the burn of the alcohol leaving your throat numb.";
	addAlcPoints 3;

large Grain Alcohol Bottle is a grab object. Understand "large Grain Alcohol Bottle" as large Grain Alcohol Bottle.
Usedesc of large Grain Alcohol Bottle is "[large Grain Alcohol Bottle use]".
instead of sniffing large Grain Alcohol Bottle:
	say "A strong smell of pure alcohol flows into your nose.";
to say large Grain Alcohol Bottle use:
	say "You feel the burn of the alcohol leaving your throat numb.";
	addAlcPoints 5;

Dwarven Spirit is a grab object. Understand "Dwarven Spirit" as Dwarven Spirit.
Usedesc of Dwarven Spirit is "[Dwarven Spirit use]".
instead of sniffing Dwarven Spirit:
	say "A strong floral smell from the spirit flows into your nose.";
to say Dwarven Spirit use:
	say "A dark hearty taste lingers in your mouth.";
	addAlcPoints 6;

to addAlcPoints (num - a number):
	let alcoholpoints be num + Energy of Player;
	if alcoholpoints < 0:
		now alcoholpoints is 0;
	now Energy of Player is alcoholpoints;
	UpdateAlcStatus;

an everyturn rule:
	if Energy of Player > 0:
		now Energy of Player is Energy of Player - 1; [sobering up slowly]
		UpdateAlcStatus;
	if Energy of Player is 0:
		now PreviousAlcState is "None" [reset message for Drinking State]

to UpdateAlcStatus:
	removeDrinkStatus; [removed to apply the new status]
	if Energy of Player >= 15:
		alcoholDeath;
	if Energy of Player >= 11 and Energy of Player <= 14: [Delirious - seeing things and getting close to death]
		AddDeliriousState;
	else if Energy of Player >= 8 and Energy of Player <= 10: [Wasted - barely functional]
		AddWastedState;

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
	now battleground is "void";
	trigger ending "Player has died";
	end the story saying "[bold type]You have fallen to alcohol poisoning.[roman type]";

to AddDeliriousState:
	add "Delirious" to Traits of Player;
	if PreviousAlcState is not "Delirious":
		[say "     You hear the familiar sounds of the pixie wings again. "Hello, my names Absinthe "";]
		say "[bold type]You're deliriously drunk now. Some might even call it poisoned - better watch out for yourself![roman type][line break]";
		say "[bold type]Your body does not feel well,: Str -8, Dex -10, Sta -5, Cha -8, Int -10, Per -10[roman type][line break]";
	else:
		say "[bold type]You're still deliriously drunk! Some might even call it poisoned - better watch out for yourself![roman type][line break]";
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
	add "Wasted" to Traits of Player;
	if PreviousAlcState is not "Wasted":
	[say "You hear the fluttering of wings behind your ear, you turn around to see the black wings of a pixie along with a dark green dress. 'You sure do know how to hold your drink.' she says, fluttering on top of your hand. 'someone as capable of you should be able to take a few more, why dont you join me in your next one.' blowing a kiss towards you as she takes off and dissapears into the air. 'Did she have horns on top of her head' you think to yourself, before being distracted from the thought.";][absinthe pixie dialogue]
		say "[bold type]You're pretty wasted now. It is hard to think, or even coordinate all your limbs![roman type][line break]";
		say "[bold type]Being quite gone, you feel weaker than normal: Str -4, Dex -8, Sta +2, Cha -4, Int -8, Per -6[roman type][line break]";
	else:
		say "[bold type]You're still wasted! It is hard to think, or even coordinate all your limbs![roman type][line break]";
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
	add "Drunk" to Traits of Player;
	if PreviousAlcState is not "Drunk":
		say "[bold type]You're drunk, no way around saying it. Things before your eyes are going blurry at times![roman type][line break]";
		say "[bold type]You can't think straight, but you sure feel like you can take on the world: Str +3, Dex -4, Sta +4, Cha -4, Int -5, Per -3[roman type][line break]";
	else:
		say "[bold type]You're still drunk! Things before your eyes are going blurry at times![roman type][line break]";
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
	add "Tipsy" to Traits of Player;
	if PreviousAlcState is not "Tipsy":
		say "[bold type]You're pretty tipsy![roman type][line break]";
		say "[bold type]Feeling the alcohol in your body, you get stronger than ever: Str +2, Dex -2, Sta +2, Cha +2, Int -2, Per -1[roman type][line break]";
	else:
		say "[bold type]You're still tipsy.[roman type][line break]";
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
	add "Buzzed" to Traits of Player;
	if PreviousAlcState is not "Buzzed":
		say "[bold type]You've got a pleasant buzz going![roman type][line break]";
		say "[bold type]You feel a bit more invigorated: Str +1, Cha +1[roman type][line break]";
	else:
		say "[bold type]You're still buzzed.[roman type][line break]";
	StatChange "Strength" by 1 silently;
	StatChange "Charisma" by 1 silently;

to RemoveBuzzedState:
	if "Buzzed" is listed in Traits of Player:
		remove "Buzzed" from Traits of Player;
		now PreviousAlcState is "Buzzed";
		StatChange "Strength" by -1 silently;
		StatChange "Charisma" by -1 silently;



AlcoholMechanics ends here.
