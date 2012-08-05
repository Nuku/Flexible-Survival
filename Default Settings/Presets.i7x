Presets by Default Settings begins here.

"Separates out the presets for the alternate starting method for easier modification by the player.
To play within the Inform 7 compiler, press F5 or the green Go! button in the top left.
To create your own .gblorb file to play in a seperate environment, press the purple Release button in the upper left.
*** WARNING FOR DEVELOPERS: If you're going to update the values in this file to your own personal preferences, do NOT commit to Git Hub. ***"

Section Starting Variables

[
*** DIRECTIONS FOR USE: Adjust these values allow you to personalize the alternate starting methods default options to match your personal preference.
Change the number after 'is usually' to match the desired option.
The text directly below each option explains what it does and the valid choices.]

Hypernull is usually 0.
[Hypernull - controls whether hyperlinks will appear.  0 for links on, 1 for links off.]

waiterhater is usually 0.
[Waiterhater - controls whether some pauses for player input (the -more- links) will be skipped.  0 for pauses on, 1 for pauses off.]

clearnomore is usually 0.
[Clearnomore - controls whether some screen clears will be skipped.  0 for clears on, 1 for clears off.]

startgenderchoice is usually 0.
[Startgenderchoice - The default starting gender offered during the advanced startup method.  0 for male, 1 for female.
NOTE: An invalid selection defaults to Female when the game starts.]

startstatbonus is usually 1.
[Startstatbonus - denotes which base stat will recieve the bonus +5.  The options are as follows:
1 - Strength
2 - Dexterity
3 - Stamina
4 - Charisma
5 - Perception
6 - Intelligence
7 - Random - splits the total 77 pts between the 6 stats in a randomized fashion with stats ranging from 10 to 18
NOTE: An invalid selection defaults to 'Random'.]

startscenariochoice is usually 1.
[Startscenariochoice - denotes which game mode (scenario) will be played.
1 - Bunker
2 - Caught Outside
3 - Rescuer Stranded
4 - Forgotten
5 - Researcher
6 - Hard Mode
NOTE: An invalid selection defaults to 'Bunker'.]

freefeatgeneral is usually "Survivalist".
[Freefeatgeneral - The name of the basic feat to be pre-selected as the default.  This is case sensitive and must match exactly.
NOTE: An invalid choice (mistyped / lacking the stats) will result in the game prompting the player to select a new choice upon start-up.]

freefeatfun is usually "Curious".
[Freefeatfun - The name of the fun feat to be pre-selected as the default.  This is case sensitive and must match exactly.
NOTE: An invalid choice (mistyped / lacking the stats) will result in the game prompting the player to select a new choice upon start-up.]

[
*** WARNING FOR DEVELOPERS: If you're going to update the values in this file to your own personal preferences, do NOT commit to Git Hub. ***
]

Presets ends here.