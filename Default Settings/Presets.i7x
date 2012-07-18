Presets by Default Settings begins here.

"Separates out the presets for the new starting method for easier modification for a player using Inform to run the game."

Section Starting Variables

[variables used for start settings, changing them changes defaults in the quick-start menu]
hypernull is a number that varies. Hypernull is usually 0.						[hyperlinks on]
waiterhater is usually 0.											[pauses on]
clearnomore is usually 0.											[clears on]
startgenderchoice is a number that varies. startgenderchoice is usually 0.			[male]
startstatbonus is a number that varies.  startstatbonus is usually 1.				[strength]
startscenariochoice is a number that varies.  startscenariochoice is usually 1.		[bunker]
freefeatgeneral is a text that varies.  freefeatgeneral is usually "Survivalist".		[default feat]
freefeatfun is a text that varies. freefeatfun is usually "Curious".				[default fun feat]


[
          Explanation of variables:

Adjusting these values according to the designations below will allow you to personalize the new starting defaults so you can start immediately.

*** NOTE!: If you're going to update the values in this file to your own personal preferences, do NOT send it to the Git Hub. ***

Hypernull - controls whether hyperlinks will appear.  0 for links on, 1 for links off.  Default is to be on (0).

Waiterhater - controls whether some pauses for player input (the -more- links) will be skipped.  0 for pauses on, 1 for pauses off.  Default is to be on (0).

Clearnomore - controls whether some screen clears will be skipped.  0 for clears on, 1 for clears off.  Default is to be on (0).

Startgenderchoice - The default starting gender offered during the advanced startup method.  0 for male, 1 for female.  Default is to be male (0).
NOTE: An invalid selection defaults to Female when the game starts.

Startstatbonus - denotes which base stat will recieve the bonus +5.  The options are as follows:
1 - Strength
2 - Dexterity
3 - Stamina
4 - Charisma
5 - Perception
6 - Intelligence
7 - Random - splits the total 77 pts between the 6 stats in a randomized fashion with stats ranging from 10 to 18
NOTE: An invalid selection defaults to 'Random'.

Startscenariochoice - denotes which game mode (scenario) will be played
1 - Bunker
2 - Caught Outside
3 - Rescuer Stranded
4 - Forgotten
5 - Researcher
6 - Hard Mode
NOTE: An invalid selection defaults to 'Bunker'.

Freefeatgeneral - The name of the basic feat to be pre-selected as the default.  This is case sensitive and must match exactly.  The default is "Survivalist".
NOTE: An invalid choice (mistyped / lacking the stats) will result the game prompting the player to select a new choice upon start-up.

Freefeatfun - The name of the fun feat to be pre-selected as the default.  This is case sensitive and must match exactly.  The default is "Curious".
NOTE: An invalid choice (mistyped / lacking the stats) will result the game prompting the player to select a new choice upon start-up.
]

Presets ends here.