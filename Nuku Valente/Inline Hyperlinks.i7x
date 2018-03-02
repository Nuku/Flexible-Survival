Version 3 of Inline Hyperlinks (for Glulx only) by Nuku Valente begins here.

"Provides a simple, HTML-inspired syntax for adding hyperlinks within say phrases. No manual management of hyperlinks required. Requires Text Capture by Eric Eve. Works seamlessly with, but does not require, Flexible Windows."

"modified from original 6F95 code by Erik Temple"

Chapter 0 - Inclusions

Include Glulx Entry Points by Emily Short.
Include Text Capture by Eric Eve.

Chapter 1 - Basic hyperlink control (for use without Flexible Windows by Jon Ingold)

Section - Initiation

When play begins:
	request glulx hyperlink event in main window;
	request glulx hyperlink event in status window.

Section - Event handling

A glulx hyperlink rule (this is the default inline hyperlink handling rule):
	now the current hyperlink ID is the link number of the selected hyperlink;
	unless the current hyperlink ID is 0:
		cancel glulx hyperlink request in main window;[just to be safe]
		cancel glulx hyperlink request in status window;[just to be safe]
		follow the hyperlink processing rules;
	if the status window is the hyperlink source:
		request glulx hyperlink event in status window;
	else:
		request glulx hyperlink event in main window.

To request glulx hyperlink event in the/-- main window:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_request_hyperlink_event(gg_mainwin); -)

To cancel glulx hyperlink request in the/-- main window:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_cancel_hyperlink_event(gg_mainwin); -)

To request glulx hyperlink event in the/-- status window:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0) && gg_statuswin) glk_request_hyperlink_event(gg_statuswin); -)

To cancel glulx hyperlink request in the/-- status window:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0) && gg_statuswin) glk_cancel_hyperlink_event(gg_statuswin); -)

To decide whether the status window is the hyperlink source:
	(- (gg_event-->1==gg_statuswin) -)

To decide which number is the link/-- number of the/-- selected/clicked hyperlink:
	(- (gg_event-->2) -)


Section - Placing links

The hyperlink list is a list of texts variable.

The hyperlinked text is a text variable. The hyperlinked text is "".
The hyperlinked command is a text variable. The hyperlinked command is "".

To say link -- beginning say_link -- running on:
	now the hyperlinked text is "";
	now the hyperlinked command is "";
[	say "(start link)"; ]
	start capturing text.

To say as -- continuing say_link -- running on:
	stop capturing text;
	now the hyperlinked text is the substituted form of "[captured text]";
[	say "(text [hyperlinked text])"; ]
[	say "(as)"; ]
	start capturing text;

To say end link -- ending say_link -- running on:
	let hyperlink index be a number;
	stop capturing text;
	if the hyperlinked text is empty:
[		say "(no as)"; ]
		now the hyperlinked text is the substituted form of "[captured text]";
	now the hyperlinked command is the substituted form of "[captured text]";
[	say "(command [hyperlinked command])"; ]
[	say "(end link)"; ]
	let the hyperlink index be zero;
	repeat with the count running from 1 to the number of entries in the hyperlink list:
		if the hyperlinked command exactly matches the text entry (count) of the hyperlink list:
[			say "(match: [hyperlinked command] and [entry (count) of the hyperlink list])"; ]
			let the hyperlink index be count;
			break;
	if the hyperlink index is zero and the hyperlinked command is not empty:
[		say "(adding)"; ]
		add hyperlinked command to hyperlink list;
		let hyperlink index be the number of entries of hyperlink list;
[	say "(index [hyperlink index])"; ]
[	say "(text [hyperlinked text])"; ]
[	say "(command [hyperlinked command])"; ]
	if hypernull is 1:
		say "[hyperlinked text]";
	else:
		say "[set link (hyperlink index)][hyperlinked text][terminate link]";

To say set link (N - a number):
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink({N}); -)

To say terminate link:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink(0); -)


Section - Processing hyperlinks

The hyperlink processing rules are a rulebook.

The current hyperlink ID is a number that varies.


Section - Selecting replacement command

A hyperlink processing rule (this is the default command replacement by hyperlinks rule):
	now the glulx replacement command is entry (current hyperlink ID) of the hyperlink list;
	rule succeeds.


Chapter 2 - Replace Flexible Windows hyperlink handling if necessary (for use with Flexible Windows by Jon Ingold)

Section - Code for placing links (replaces Section - Placing hyperlinks in Flexible Windows by Jon Ingold)

The hyperlink list is a list of indexed texts variable.

The hyperlinked text is an indexed text variable. The hyperlinked text is "".
The hyperlinked command is an indexed text variable. The hyperlinked command is "".

To say link -- beginning say_link -- running on:
	now the hyperlinked text is "";
	now the hyperlinked command is "";
	start capturing text.

To say as -- continuing say_link -- running on:
	stop capturing text;
	now the hyperlinked text is the substituted form of "[captured text]";
	start capturing text;

To say end link -- ending say_link -- running on:
	let hyperlink index be a number;
	stop capturing text;
	if the hyperlinked text is empty:
		now the hyperlinked text is the substituted form of "[captured text]";
	now the hyperlinked command is the substituted form of "[captured text]";
	let the hyperlink index be zero;
	repeat with the count running from 1 to the number of entries in the hyperlink list:
		if the hyperlinked command exactly matches the text entry (count) of the hyperlink list:
			let the hyperlink index be count;
			break;
	if the hyperlink index is zero and the hyperlinked command is not empty:
		add hyperlinked command to hyperlink list;
		let hyperlink index be the number of entries of hyperlink list;
	say "[set link (hyperlink index)][hyperlinked text][terminate link]";

To say set link (N - a number):
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink({N}); -)

To say terminate link:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink(0); -)


Section - Code for selecting the replacement command (replaces Section - Selecting the replacement command in Flexible Windows by Jon Ingold)

A hyperlink processing rule (this is the default command replacement by hyperlinks rule):
	now the glulx replacement command is entry (current hyperlink ID) of the hyperlink list;
	rule succeeds.

Chapter 3a - Debugging (not for release)

Section - Previewing the hyperlink list (for use without Extended Debugging by Erik Temple)

Previewing the hyperlink list is an action out of world applying to nothing. Understand "preview hyperlinks" or "preview hyperlink list" or "preview the hyperlink list" or "hyperlinks" or "preview hyperlink commands" as previewing the hyperlink list.

Carry out previewing the hyperlink list:
	say "The hyperlink command list is as follows:[paragraph break]";
	Display the hyperlink list using indices.

To display (L - a list of indexed texts) using indices:
	let count be 1;
	repeat with item running through L:
		say "[count]: [item][line break]";
		increase count by 1.


Chapter 3b - Debugging (for use with Extended Debugging by Erik Temple)

Section - Previewing the hyperlinks list

Previewing the hyperlink list is an action out of world applying to nothing. Understand "preview hyperlinks" or "preview hyperlink list" or "preview the hyperlink list" or "hyperlinks" or "preview hyperlink commands" as previewing the hyperlink list.

Carry out previewing the hyperlink list:
	say "The hyperlink command list is as follows:[paragraph break]";
	Display the hyperlink list using indices.

To display (L - a list of indexed texts) using indices:
	let count be 1;
	repeat with item running through L:
		say "[count]: [item][line break]";
		increase count by 1.


Chapter 4 - Manually reserving entries in the hyperlink list

To reserve (N - a number) slots in/of/at the/-- beginning/-- of/-- the/-- hyperlink command/-- list:
	if the number of entries of the hyperlink list > 0:
		say "*** Error: Attempted to manually add entries to the hyperlink list when there are already entries present. The list must be empty in order to reserve slots. The best time to reserve entries is in the 'after starting the virtual machine' activity.";
		rule fails;
	repeat with index running from 1 to N:
		add "" to the hyperlink list.

Inline hyperlinks ends here.

---- DOCUMENTATION ----

Inline Hyperlinks allows us to specify text hyperlinks that provide a replacement command. Hyperlinks are specified in a very concise format, and the extension automatically tracks our hyperlinks for us: there is no need to manage hyperlinks manually. Inline Hyperlinks requires Text Capture by Eric Eve and Glulx Entry Points by Emily Short. It is compatible with, but does not require, Flexible Windows.

Section: Basic Usage

Hyperlinks can be specified in two ways. We can specify the text of the hyperlink, followed by the text of the replacement command that clicking on that hyperlink will generate. For example, the following command will hyperlink the word "north"; when the link is clicked, the command "GO NORTH" will be generated.

	say "There is only one exit, to the [link]north[as]GO NORTH[end link]."

If we want the command generated to be the same as the hyperlinked text, we simply surround the text with the link tags:

	say "It appears that the only thing to do here is to [link]jump[end link]."

Note that Inline Hyperlinks will also register hyperlinks in the status line. We define these like we do any other hyperlink, e.g.:

	When play begins:
		now the right hand status line is "Exits: [link]N[end link]"

Note that, because Inline Hyperlinks uses text capture (via Eric Eve's Text Capture extension) to store commands, we gain a significant advantage over methods of storing hyperlinks that rely on text or indexed text. Whereas the latter types are limited to utilizing types that can be stored (leaving out temporary values such as might be generated by a loop, for example), Inline Hyperlinks is limited only to what can be printed, which makes assigning hyperlinks much easier. If we use text substitutions in our linked text, for example, the value of the substitution will be the value *at the time the link was created*. See the "Maze" example below for an example.


Section: Hyperlinked text and hyperlinked commands

The last hyperlink that was set is recorded in two global indexed text variables:

	the hyperlinked text
	the hyperlinked command

These variables are not needed in normal usage, but they may be useful in communicating between routines.

Note that it is possible to do something other than paste a command in response to hyperlink input. See the Systematic Derangement of the Inner Compass example below.


Section: A note on Flexible Windows

When this code is used alongside the Flexible Windows extension, it takes over the hyperlink functionality of Flexible Windows, and it becomes unnecessary to specify links by number or to track them in the hyperlinks table. In fact, the hyperlinks table will not even be created, and we should not attempt to make use of it.

To place hyperlinks in windows other than the main window using Flexible Windows, just set the focus to the alternate window:

	To say the condition of the player:
		set focus to the secondary-window;
		say "You are in [link]pain[as]TAKE BUFFERED ANALGESIC[end link].";
		return to main screen.


Section: Internals

Internally, Glulx refers to each link only by a numeric identifier. Inline Hyperlinks keys that identifier to a list of indexed texts (the "hyperlink list"); for example, if the ID for a given link is 10, Inline Hyperlinks will look up the 10th entry in the list for the linked command. Commands are not repeated, so if we repeatedly print a link with the replacement command "go north," the same number will be assigned to the link each time. This helps keep the hyperlink list as short as it can be.

If you are concerned about the size of the hyperlink list, you may want to clean it out periodically. Inline Hyperlinks doesn't offer any particular facilities for doing this, since different games may have different needs. But keep in mind that, because most interpreters offer scrollback functionality, the entire game text is theoretically accessible to the player at any time: if you make changes to the hyperlink list, a player who scrolls back to click on a link may find that the link does not work as expected. The safest way to flush the list is probably to clear the screen periodically, resetting the scrollback buffer on most interpreters. At the same time that the screen is cleared, empty the hyperlink list, e.g:

	To clear the screen and hyperlink list:
		clear the screen;
		now the hyperlink list is {}.

If you are going to flush the list like this, be careful not to clear the screen without good reason. Choose natural break-points (such as chapters, or changes in setting) to avoid confusing (and frustrating) the player.


Section: Debugging

If we are testing the game in the Inform IDE, or if we have included the Extended Debugging extension, we can type HYPERLINKS at the command line at any time to see the current list of hyperlinked commands and their numeric identifiers (used by Glulx to identify the link).

Section: Change Log

Version 3: Cleaned up and fixed for 6L02 by Daniel Stelzer.

Version 2: Updated for 6F95. Now uses no deprecated features.

Version 1: Initial release.


Example: * Survival Mode - A simple example that shows the most basic usage. The "before reading a command" rule is really the only relevant thing in the example.

	*: 	"Survival Mode"

	Include Inline Hyperlinks by Daniel Stelzer.

	The Jungle is a room. "You are [swing state] from a thick, rope-like vine. Another dangles from the canopy twenty-five or so feet away. A thick jungle mist obscures the view beyond, as well as the forest floor."

	Before reading a command:
		say "You can [link]swing[end link] or [link]release[as]jump[end link]."

	Yourself can be hanging or swaying. Yourself is hanging.

	Instead of swinging yourself:
		if the player is swaying:
			say "You swing faster.";
		else:
			say "You sway a bit to get the vine moving, and soon are swinging in a wide arc.";
			now the player is swaying.

	To say swing state:
		if the player is hanging:
			say "hanging";
		if the player is swaying:
			say "swinging".

	Instead of jumping:
		if the player is swaying:
			say "You release the vine, impeccably timing your leap. You grab onto the other vine and hold. Through the mist you see yet another vine hanging thirty feet or so ahead.";
			now the player is hanging;
		else:
			say "You release the vine and drop toward the jungle floor. Tumbling through the mist, you land hard on [one of]a thorn-tree; the baroque profusion of spines the size of railroad spikes ends your life[or]a massive hill of flesh-eating ants. They swarm over you before you can regain your feet[or]a path used exclusively by stampeding boars; a pack of the loathsome creatures happens to be passing[purely at random].";
			end the story.

	Understand "swing" as swinging.

	Rule for supplying a missing noun while swinging:
		now the noun is yourself.

	Instead of doing anything other than looking or swinging or jumping:
		say "There is no time for anything but survival."

Example: ** Maze - It can be difficult to work with text substitutions in Inform, because it often refuses to allow temporary values to be restored for later usage. Inline Hyperlinks uses text capture, however, letting us avoid such problems. This example shows how we can build links as needed to automate exit-listing. All hyperlink handling occurs in the "to say exits" phrase.

	*: "Maze"

	Include Inline Hyperlinks by Daniel Stelzer.

	The printed name of a room is "Maze". The description of a room is usually "A maze of twisty little passages, all alike. Exits: [exits]".

	To say exits:
		let count be the number of adjacent rooms;
		if count > 0:
			repeat with destination running through adjacent rooms:
				let the way be the best route from the location to the destination, using even locked doors;
				let dir be "[way]";
				let dir be "[dir]";
				say "[link][way][as]go [dir][end link]";
				let count be count minus 1;
				if count > 0:
					say ", ";
			say ". ";

	R01 is a room. R02 is north of R01. R03 is east of R01. R04 is north of R02 and northwest of R03. R05 is northeast of R02. R06 is north of R05. R07 is west of R06. R08 is southwest of R04 and northwest of R02. R09 is east of R06. R10 is northeast of R06. R11 is east of R10. R12 is southeast of R09. R13 is south of R12. R14 is northeast of R12. R14 is southeast of R11. R15 is up from R03. R16 is east of R15. R17 is north of R16. R18 is down from R17. The description of R18 is "A maze of twisty little passages, all alike. A breeze blows from the northeast. Exits: [exits]"

	Exit is northeast of R18. Exit is outside from R18. The printed name of Exit is "Outside". "You emerge into sunlight." Southwest from Exit is nowhere. Inside from Exit is nowhere. After looking in Exit, end the story finally.


Example: ** Systematic Derangement of the Inner Compass - There may be times when we want a hyperlink to do something other than paste a straightforward command. In this example, which builds on the Maze example above, we set aside a few hyperlink ID numbers for manual use, and write a new hyperlink processing rule that will respond when hyperlinks with these IDs are activated. Other hyperlinks will react normally.

In this example, the player can eat a pill, which temporarily thwarts her attempts to move in a given direction; instead of moving the direction indicated, a random direction is substituted. The easiest way to have done this would have been to simply change the going action, but I've changed the hyperlink mechanism for illustrative purposes (along with the going action, in order to handle typed directions).

The player eventually recovers from the disorienting effects of the drug, and we track this using a variable called derangement. Because most of our movement occurs in situations that do not trigger the every turn and time advancement machinery, we hack the tracking of this variable into the routines where it is needed via the derangement abation rule.

	*: 	"Systematic Derangement of the Inner Compass"

	Include Basic Screen Effects by Emily Short.
	Include Inline Hyperlinks by Daniel Stelzer.

	Yourself can be deranged. The player is not deranged.

	The derangement is a number variable. The derangement is 5.

	This is the derangement abation rule:
		decrease derangement by 1;
		if derangement < 1:
			player recovers.

	Every turn when the player is deranged:
		follow the derangement abation rule.

	Instead of going nowhere when the player is deranged:
		say "You collide with a wall.";
		follow the derangement abation rule;
		rule succeeds.

	To player recovers:
		say "[line break]The odd feeling fades a bit.[paragraph break][bracket]Press any key[close bracket]";
		wait for any key;
		clear screen;
		say "You shake your head, feeling it clear. All is right again!";
		now the player is not deranged;
		silently try looking.

So much for the basics of derangement. Moving on to the hyperlink-specific stuff...

First, we reserve the hyperlink ID numbers 1 through 12 for manual use. This simply assigns an empty text to the first 12 hyperlink commands, i.e. "". If these are clicked outside of their intended use, they will thus have no effect.

We then revisit the exit lister from the Maze example above, and implement it in two different ways. The first represents the player while "straight", and is the same as in the Maze example. The second example, used when the player is "deranged," assigns random link IDs to the listed directions.

	*: After starting the virtual machine:
		reserve 12 slots at the beginning of the hyperlink list.

	To say exits:
		let count be the number of adjacent rooms;
		if count > 0:
			repeat with destination running through adjacent rooms:
				let the way be the best route from the location to the destination, using even locked doors;
				let dir be indexed text;
				let dir be "[way]";
				let dir be "[dir]";
				say "[link][way][as]go [dir][end link]";
				let count be count minus 1;
				if count > 0:
					say ", ";
			say ". "

	To say skewed exits:
		let count be the number of adjacent rooms;
		if count > 0:
			repeat with destination running through adjacent rooms:
				let the way be the best route from the location to the destination, using even locked doors;
				let dir be indexed text;
				let dir be "[way]";
				let dir be "[dir]";
				say "[set link (a random number between 1 and 12)][way][terminate link]";
				let count be count minus 1;
				if count > 0:
					say ", ";
			say ". "

We then write a new hyperlink processing rule that will supersede the default command-pasting rule. This rule takes effect only when the player is deranged, and when the hyperlink that was clicked has an ID in the set of 12 that we reserved above. The rule pastes text to the command line that indicates the PC's confusion ("go ???"). It is important to note, however, that this command is not entered; if it were, Inform would not understand it, since ??? is not a valid direction. Instead, we look the hyperlink ID number up in a table of stored actions and we directly "try" that action.

Note that, in this example, we clear the screen to ensure that the player will never be able to click on our special links during her normal state, nor on the normal links during her deranged state. However, if she were to click on one of the 12 special links while not deranged, there would be no result, because the accompanying commands are all empty texts, i.e. "".

Since we are shortcutting normal processes with our new hyperlink processing rule, we also print a new command prompt, as well as follow the derangement abation rule, to be sure that the player can eventually emerge from her unfortunate state.

A companion rule for input redirects the player's typed direction command in the same way. (A better way to do this would be to change the "direction understood" to a random direction before going, but we choose to lie in the hole we've dug ourselves...

	*: Hyperlink processing rule when the player is deranged and the current hyperlink ID < 13:
		say "[input-style-for-glulx]go ???[roman type]";
		if there is an ID of current hyperlink ID in the Table of Going Actions:
			choose row with ID of current hyperlink ID in the Table of Going Actions;
			let X be a stored action;
			let X be the go-action entry;
			try X;
			follow the derangement abation rule;
			say "[command prompt][run paragraph on]";
		now glulx replacement command is "";
		rule succeeds.

	After reading a command when the player is deranged:
		if the player's command matches "[direction]":
			say "Confusion... ";
			choose a random row in the Table of Going Actions;
			let X be a stored action;
			let X be the go-action entry;
			try X;
			rule succeeds.


	Table of Going Actions
	ID	go-action
	number	stored action
	1	going north
	2	going east
	3	going south
	4	going west
	5	going northeast
	6	going southeast
	7	going southwest
	8	going northwest
	9	going up
	10	going down
	11	going inside
	12	going outside


	The printed name of a room is "Maze". The description of a room is usually "A maze of twisty little passages, all alike. Exits: [if the player is deranged][skewed exits][else][exits][end if]".

	There is a red pill in R01. The red pill is edible. "A [link]red pill[as]eat red pill[end link] lies on the floor here. Perhaps this will give you the mental acuity necessary to see through the maze!"

	Understand "take [something edible]" as eating when the player holds the noun.

	Instead of eating the red pill:
		say "You pop the red pill with great anticipation...[paragraph break][bracket]Press any key[close bracket]";
		wait for any key;
		clear screen;
		say "You begin to feel odd indeed. Like the synapses aren't properly connected. Your body has been divorced from your inner compass!";
		remove the red pill from play;
		now the player is deranged;
		silently try looking.

	R01 is a room. R02 is north of R01. R03 is east of R01. R04 is north of R02 and northwest of R03. R05 is northeast of R02. R06 is north of R05. R07 is west of R06. R08 is southwest of R04 and northwest of R02. R09 is east of R06. R10 is northeast of R06. R11 is east of R10. R12 is southeast of R09. R13 is south of R12. R14 is northeast of R12. R14 is southeast of R11. R15 is up from R03. R16 is east of R15. R17 is north of R16. R18 is down from R17. The description of R18 is "A maze of twisty little passages, all alike. A breeze blows from the northeast. Exits: [exits]"

	Exit is northeast of R18. Exit is outside from R18. The printed name of Exit is "Outside". "You emerge into sunlight." Southwest from Exit is nowhere. Inside from Exit is nowhere. After looking in Exit, end the story finally.
