Version 3 of Presets by Default Settings begins here.
[Version 3.2 - Added graphics.]

"Separates out the presets for the alternate starting method for easier modification by the player.
To play within the Inform 7 compiler, press F5 or the green Go! button in the top left.
To create your own .gblorb file to play in a separate environment, press the purple Release button in the upper left.
*** WARNING FOR DEVELOPERS: If you're going to update the values in this file to your own personal preferences, do NOT commit to Git Hub. ***"

Section Starting Variables

[
*** DIRECTIONS FOR USE: Adjust these values allow you to personalize the alternate starting methods default options to match your personal preference.
Change the number after 'is usually' to match the desired option.
The text directly below each option explains what it does and the valid choices.]

gspg is usually 1.
[gspg - The default starting gender offered during the advanced startup method.  1 for male, 2 for female.
NOTE: An invalid selection defaults to Female when the game starts.]

gsms is usually 1.
[gsms - denotes which base stat will receive the bonus +5 as the players main stat.  The options are as follows:
1 - Strength
2 - Dexterity
3 - Stamina
4 - Charisma
5 - Perception
6 - Intelligence
7 - Random - splits the total 77 pts between the 6 stats in a randomized fashion with stats ranging from 10 to 18
NOTE: An invalid selection defaults to 'Random'.]

gsgt is usually 1.
[gsgt - denotes which game mode (scenario) will be played.
1 - Bunker
2 - Caught Outside
3 - Rescuer Stranded
4 - Forgotten
5 - Researcher
NOTE: An invalid selection defaults to 'Bunker'.]

gshm is usually false.
[gshm - denotes whether you'll be playing in hard mode for your scenario.
false - normal mode
true - hard mode
NOTE: Because it is a truth state, these are the only two results possible.]

freefeatgeneral is usually "Survivalist".
[Freefeatgeneral - The name of the basic feat to be pre-selected as the default.  This is case sensitive and must match exactly.
NOTE: An invalid choice (mistyped / lacking the stats) will result in the game prompting the player to select a new choice upon start-up.]

freefeatfun is usually "Curious".
[Freefeatfun - The name of the fun feat to be pre-selected as the default.  This is case sensitive and must match exactly.
NOTE: An invalid choice (mistyped / lacking the stats) will result in the game prompting the player to select a new choice upon start-up.]

Hypernull is usually 0.
[Hypernull - controls whether hyperlinks will appear.  0 for links on, 1 for links off.]

waiterhater is usually 0.
[Waiterhater - controls whether some pauses for player input (the -more- links) will be skipped.  0 for pauses on, 1 for pauses off.]

clearnomore is usually 0.
[Clearnomore - controls whether some screen clears will be skipped.  0 for clears on, 1 for clears off.]


anallevel is usually 2.
[anallevel - denotes the degree of anal content appearing in the game.
1 - Less Anal
2 - Normal
3 - More Anal
NOTE: An invalid selection defaults to 'Normal'.]

WSlevel is usually 2.
[WSlevel - denotes the degree of watersports/piss play content appearing in the game.
1 - No WS
2 - Standard
3 - Full WS
NOTE: An invalid selection defaults to 'Standard'.]

vorelevel is usually 2.
[vorelevel - denotes the degree of vore content (player victim) appearing in the game.
1 - No Vore
2 - Standard
3 - Full Vore
NOTE: An invalid selection defaults to 'Standard'.]

UBlevel is usually 2.
[UBlevel - denotes the degree of unbirthing content (player victim) appearing in the game.
1 - No UB
2 - Standard
3 - Full UB
NOTE: An invalid selection defaults to 'Standard'.]

ovipreglevel is usually 2.
[ovipreglevel - denotes whether you want to accept your player becoming egg-pregnant (ovi) or not.
1 - No Ovi
2 - Standard
3 - [not available until unlocked in the game]
NOTE: An invalid selection defaults to 'Standard'.]

graphics is usually true.
[graphics - denotes whether you want graphics appearing in the game or not.
true - graphics shown
false - graphics not shown
NOTE: Because it is a truth state, these are the only two results possible.  Also, graphics may not appear in all play sources, such as in-browser mode.]

invcolumns is usually 2.
[invcolumns - the number of columns to be shown when presenting the inventory.  Ranges from 1 to 4.  Any other values will be corrected to 2.]

[
*** WARNING FOR DEVELOPERS: If you're going to update the values in this file to your own personal preferences, do NOT commit to Git Hub. ***
]

Presets ends here.
