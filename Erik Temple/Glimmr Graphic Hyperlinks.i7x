Version 1/100805 of Glimmr Graphic Hyperlinks (for Glulx only) by Erik Temple begins here.

"Allows us to identify any number of rectangular areas of a Glulx graphic window as 'hotlinked'. When the player clicks within one of these zones, a command will be entered on behalf of the player, or we can specify some appropriate response of our own."

"based on Graphic Links by Jeff Sheets"


Part 1 - Initialization

Include version 9 of Flexible Windows by Jon Ingold.


Chapter 1.1 - Glulx gestalts

To decide whether glulx graphic-window hyperlinks are supported:
	(- ( glk_gestalt(gestalt_MouseInput, winType_Graphics) ) -)


Chapter 1.2 - Console settings
[This is a "macro" that allows the extension to identify itself in the Glimmr console window with fewer keystrokes on my part.]

To say GGH:
	say "[bracket]Glimmr GH[close bracket]: ".


Part 2 - Basic Input

A g-window can be g-graphlinked. A g-window is usually not g-graphlinked.

A graphlink g-window is a kind of graphics g-window. A graphlink g-window is g-graphlinked.

After constructing a g-window (called the window-in-question):
	if the window-in-question is g-graphlinked and the type of the window-in-question is g-graphics:
		start looking for graphlinks in the window-in-question.

To start looking for graphlinks in (g - a g-window):
	(- SetGraphLink({g}); -)

To stop looking for graphlinks in (g - a g-window):
	(- IgnoreLinks({g}); -)

To cancel input in main window:
	(- CancelMainEvents(); -)

To decide which number is the clicked window reference:
	(- (gg_event-->1) -)

The first glulx mouse input rule (this is the identify window rule):
	now glulx replacement command is "";
	Repeat with item running through g-graphlinked g-windows:
		if the ref-number of item is the clicked window reference:
			now the current graphlink window is item.

A glulx mouse input rule (this is the default graphlink setting rule):
	perform glulx graphlink request in current graphlink window.

To perform glulx graphlink request in (g - a graphics g-window):
	(-  if (glk_gestalt(gestalt_MouseInput, winType_Graphics)) DoGraphLink({g}); -)

Include (-

[ DoGraphLink g;
	SetGraphLink(g);
	PlayGraphlink(gg_event-->2, gg_event-->3);
 ];

[ PlayGraphlink x y;
	(+ current graphlink x +) = x;
	(+ current graphlink y +) = y;
	FollowRulebook( (+ clicking graphlink rules +) );
];

[CancelMainEvents ;
	glk_cancel_line_event(gg_mainwin, GLK_NULL);
	glk_cancel_char_event(gg_mainwin);
];

[ SetGraphLink g;
	if (g.ref_number) {
	            if (glk_gestalt(gestalt_MouseInput, winType_Graphics)) glk_request_mouse_event(g.ref_number);
	}
];

[ IgnoreLinks g;
	if (g.ref_number) {
	            if (glk_gestalt(gestalt_MouseInput, winType_Graphics)) glk_cancel_mouse_event(g.ref_number);
	}
];

-)

Part 3 - Clicking Graphlink Rules

Current graphlink x is a number that varies.
Current graphlink y is a number that varies.
Current graphlink window is a g-window that varies.
Current graphlink row is a number that varies. [We can refer to this number from within the graphlink processing rules, ensuring that we operate on the same row that was selected in the clicking graphlink rules.]

Candidate replacement command is indexed text that varies. [The candidate replacement command is set in the clicking graphlink rules. If the default graphlink processing rule is fired, this will be converted into the glulx replacement command, to be processed by Glulx Entry Points. We use a "candidate" because if we actually set the replacement command, Glulx Entry Points will automatically paste the command. So we need to save the information in a variable, but only act on it if we hit the default rule.]

The clicking graphlink rules are a rulebook.

To decide whether the click hit a hot link:
	repeat through the Table of Graphlink Glulx Replacement Commands in reverse order:
		if the current graphlink window is g-win entry:
			if the current graphlink x >= p-left entry and the current graphlink x <= p-right entry and the current graphlink y >= p-top entry and the current graphlink y <= p-bottom entry:
				now the current graphlink is linkid entry;
				now the current graphlink row is the chosen-row;
				if there is a replacement entry:
					now the candidate replacement command is replacement entry;
				else:
					now the candidate replacement command is "";
				decide yes;
	decide no.

To decide which number is the chosen-row:
	(- ct_1 -).


Part 3a - Clicking Graphlink Rules II (for use without Glimmr Canvas-Based Drawing by Erik Temple)

Current graphlink is a text variable. [The current graphlink is either text or g-element, depending on whether Glimmr Canvas-Based Drawing is also in use]

A clicking graphlink rule (this is the default command replacement by graphlinks rule):
	if the click hit a hot link:
		#if utilizing Glimmr debugging;
		say "[>console][GGH]Mouse input received on graphlink '[current graphlink]' in window [italic type][current graphlink window][roman type]: ([current graphlink x], [current graphlink y]).[<]";
		#end if;
		follow the graphlink processing rules;
		rule succeeds;
	else:
		#if utilizing Glimmr debugging;
		say "[>console][GGH]Mouse input received in window [italic type][current graphlink window][roman type] (no link triggered): ([current graphlink x], [current graphlink y]).[<]";
		#end if;
		now glulx replacement command is "".

The default command replacement by graphlinks rule is listed last in the clicking graphlink rules.


Chapter - Debugging niceties (for use without Glimmr Drawing Commands by Erik Temple)

To #if utilizing Glimmr debugging:
	(- #ifdef Glimmr_DEBUG; -)

To #end if:
	(- #endif; -)

To say >console:
	do nothing.

To say <:
	do nothing.


Part 3b - Clicking Graphlink Rules II (for use with Glimmr Canvas-Based Drawing by Erik Temple)

Current graphlink is an object that varies. [The current graphlink is either text or g-element, depending on whether Glimmr Canvas-Based Drawing is also in use]

A clicking graphlink rule (this is the default command replacement by graphlinks rule):
	if the click hit a hot link:
		#if utilizing Glimmr debugging;
		let graph-x be current graphlink x + 0.0;
		let graph-y be current graphlink y + 0.0;
		say "[>console][GGH]Mouse input received on element [i][current graphlink][/i] in window [i][current graphlink window][/i]: ([current graphlink x], [current graphlink y]), approximately equivalent to canvas ([(graph-x minus the x-offset of the current graphlink window) divided by the scaling factor of the current graphlink window to the nearest whole number], [(graph-y minus the y-offset of the current graphlink window) divided by the scaling factor of the current graphlink window to the nearest whole number]).[<]";
		#end if;
		follow the graphlink processing rules for the current graphlink;
		rule succeeds;
	else:
		#if utilizing Glimmr debugging;
		let graph-x be current graphlink x + 0.0;
		let graph-y be current graphlink y + 0.0;
		say "[>console][GGH]Mouse input received in window [i][current graphlink window][/i] (no link triggered): ([current graphlink x], [current graphlink y]), approximately equivalent to canvas ([(graph-x minus the x-offset of the current graphlink window) divided by the scaling factor of the current graphlink window to the nearest whole number], [(graph-y minus the y-offset of the current graphlink window) divided by the scaling factor of the current graphlink window to the nearest whole number]).[<]";
		#end if;
		now glulx replacement command is "".

The default command replacement by graphlinks rule is listed last in the clicking graphlink rules.


Part 4a - Graphlink processing rules (for use without Glimmr Canvas-Based Drawing by Erik Temple)

The graphlink processing rules are a rulebook.

A graphlink processing rule (this is the default graphlink processing rule):
	unless the candidate replacement command is "":
		cancel input in main window;
		now the glulx replacement command is the candidate replacement command;
		now the candidate replacement command is "";
		rule succeeds.


Part 4b - Graphlink processing rules (for use with Glimmr Canvas-Based Drawing by Erik Temple)

The graphlink processing rules are an object-based rulebook.

A graphlink processing rule for a g-element (called the link) (this is the default graphlink processing rule):
	unless the candidate replacement command is "":
		cancel input in main window;
		now the glulx replacement command is the candidate replacement command;
		now the candidate replacement command is "";
		rule succeeds.


Part 5 - Identifying whether a command was generated by the mouse

The mouse-generated flag is a truth state that varies. The mouse-generated flag is false.

A command-pasting rule (this is the flag generated commands rule):
	now the mouse-generated flag is true;

Before reading a command (this is the mouse-generated flag reset rule):
	now the mouse-generated flag is false;
	continue the action.

To decide whether the command is mouse-generated:
	decide on the mouse-generated flag.

The flag generated commands rule is listed before the glue replacement command into parse buffer rule in the command-pasting rules.


Part 6a - Link Management (for use without Glimmr Canvas-Based Drawing by Erik Temple)

To set a graphlink in (g - a g-window) identified as (newlinkid - some text) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkaction - some text), ignoring redundant links:
	if not ignoring redundant links and there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction;
	else if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction.

To set a graphlink in (g - a g-window) identified as (newlinkid - some text) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkref - a number), ignoring redundant links:
	if not ignoring redundant links and there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now alt entry is linkref;
	else if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now alt entry is linkref.

To set a graphlink in (g - a g-window) identified as (newlinkid - some text) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkref - a stored action), ignoring redundant links:
	if not ignoring redundant links and there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now action entry is linkref;
	else if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now action entry is linkref.

To clear the graphlink identified as (dellinkid - some text):
	if there is a linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands;
		blank out the whole row.

To zero the/-- link-table:
	repeat through the Table of Graphlink Glulx Replacement Commands:
		blank out the whole row.


Table of Graphlink Glulx Replacement Commands
linkid	g-win	p-top	p-bottom	p-left	p-right	replacement	alt	action
some text	a g-window	a number	a number	a number	a number	some text	number	stored action
with 120 blank rows


Part 6b - Link Management (for use with Glimmr Canvas-Based Drawing by Erik Temple)

To set a graphlink in (g - a g-window) identified as (newlinkid - an object) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkaction - some text), ignoring redundant links:
	if not ignoring redundant links and there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction;
	else if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now replacement entry is linkaction.

To set a graphlink in (g - a g-window) identified as (newlinkid - an object) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkref - a number), ignoring redundant links:
	if not ignoring redundant links and there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now alt entry is linkref;
	else if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now alt entry is linkref.

To set a graphlink in (g - a g-window) identified as (newlinkid - an object) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkref - a stored action), ignoring redundant links:
	if not ignoring redundant links and there is a linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of newlinkid in the Table of Graphlink Glulx Replacement Commands;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now action entry is linkref;
	else if the number of blank rows in the Table of Graphlink Glulx Replacement Commands is greater than 0:
		choose a blank row in the Table of Graphlink Glulx Replacement Commands;
		now linkid entry is newlinkid;
		now g-win entry is g;
		now p-top entry is gtop;
		now p-bottom entry is gbottom;
		now p-left entry is gleft;
		now p-right entry is gright;
		now action entry is linkref.

To clear the graphlink identified as (dellinkid - an object):
	if there is a linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands:
		choose row with linkid of dellinkid in the Table of Graphlink Glulx Replacement Commands;
		blank out the whole row.

To zero the/-- link-table:
	repeat through the Table of Graphlink Glulx Replacement Commands:
		blank out the whole row.


Table of Graphlink Glulx Replacement Commands
linkid	g-win	p-top	p-bottom	p-left	p-right	replacement	alt	action
an object	a g-window	a number	a number	a number	a number	some text	number	stored action
with 120 blank rows


Part 7a - Debugging Commands (not for release)

Chapter 7.1 - Debugging Graphlinks Table

Debugging graphlinks is an action out of world. Understand "graphlinks" or "graphlinks table" as debugging graphlinks.

Check debugging graphlinks:
	say "[line break][bold type]Table of Graphlink Glulx Replacement Commands[roman type] (presented in reverse order)[line break]There are [number of filled rows in the Table of Graphlink Glulx Replacement Commands] entries in the table.";
	repeat through the Table of Graphlink Glulx Replacement Commands in reverse order:
		say "[linkid entry] ([g-win entry]): ([p-left entry], [p-top entry]) - ([p-right entry], [p-bottom entry]):[if there is a replacement entry] [replacement entry][end if][if there is an alt entry] [alt entry][end if][if there is an action entry] [action entry][end if][line break]";
	say "[line break]Last window to be clicked: [current graphlink window][line break]".


Chapter 7.2a - Report window coordinates (for use without Glimmr Canvas-Based Drawing by Erik Temple)

Showing clicked coordinates is an action out of world. Understand "coordinates" as showing clicked coordinates. Coordinate-trace is a truth state that varies. Coordinate-trace is false.

Check showing clicked coordinates:
	If coordinate-trace is false:
		now coordinate-trace is true;
	else:
		now coordinate-trace is false;
	say "Coordinate reporting now [if coordinate-trace is true]on[else]off[end if].[line break]".

The report coordinates rule is listed before the default command replacement by graphlinks rule in the clicking graphlink rules.

A clicking graphlink rule when coordinate-trace is true (this is the report coordinates rule):
	say "[line break]Window coordinates of mouse input ([current graphlink window]): ([current graphlink x], [current graphlink y])[if the click hit a hot link]: graphlink '[current graphlink]' activated.[end if][line break]";
	continue the action.


Chapter 7.2a - Report window and canvas coordinates (for use with Glimmr Canvas-Based Drawing by Erik Temple)

Showing clicked coordinates is an action out of world. Understand "coordinates" as showing clicked coordinates. Coordinate-trace is a truth state that varies. Coordinate-trace is false.

Check showing clicked coordinates:
	If coordinate-trace is false:
		now coordinate-trace is true;
	else:
		now coordinate-trace is false;
	say "Coordinate reporting now [if coordinate-trace is true]on[else]off[end if].[line break]".

The report coordinates rule is listed before the default command replacement by graphlinks rule in the clicking graphlink rules.

A clicking graphlink rule when coordinate-trace is true (this is the report coordinates rule):
	let graph-x be current graphlink x as a fixed point number;
	let graph-y be current graphlink y as a fixed point number;
	say "[line break]Window coordinates of mouse input ([current graphlink window]): ([current graphlink x],[current graphlink y])[line break]Approximate canvas coordinates: ([(graph-x real minus the x-offset of the current graphlink window) real divided by the scaling factor of the current graphlink window to the nearest whole number],[(graph-y real minus the y-offset of the current graphlink window) real divided by the scaling factor of the current graphlink window to the nearest whole number])[line break]";
	continue the action.



Glimmr Graphic Hyperlinks ends here.


---- DOCUMENTATION ----

Glimmr Graphic Hyperlinks allows us to identify any number of rectangular areas of a Glulx graphic window as "hotlinked". When the player clicks within one of these zones, a command will be entered on behalf of the player, or we can specify some appropriate response of our own. Graphic links ("graphlinks") can be defined in any number of graphics windows simultaneously. At minimum, the extension requires Jon Ingold's Flexible Windows extension, which is used to define and manage the windowing system. It can also be used with Glimmr Canvas-Based Drawing to fully automate the maintenance of the list of graphlinks.

Glimmr Graphic Hyperlinks (GGH) is an adaptation and amplification of Jeff Sheets' Graphic Links extension to the framework provided by Jon Ingold's Flexible Windows. Like the original Graphic Links, it is not really intended to be complete in itself, but rather to be a relatively flexible template for more specific applications. The major limitation of both extensions is their reliance on the coordinate system of the window itself to define links; an image that has been scaled and centered in a window will move relative to the window coordinates any time the window is resized. For nearly all purposes, then, authors will want to provide a conversion from a more stable coordinate system to the window's system. The Glimmr Canvas-Based Drawing extension does just this, while also providing completely automated updating of links by binding them to graphic elements.


Section: Basic usage

In order to use graphic hyperlinks in a window, we must identify that window as receptive to links. This is as simple as writing:

	The graphics-window is g-graphlinked.

Alternatively, we can define our window as of the kind "graphlink g-window". This will automatically set the g-graphlinked property:

	The graphics-window is a graphlink g-window.

Note that Glimmr Graphic Hyperlinks only works with graphics windows. A text hyperlinking solution, such as Inline Hyperlinks or the system built into Flexible Windows, is needed for text windows.

The list of rectangular areas that are to be hyperlinked, regardless of how many windows are represented, are stored in a single table, the Table of Graphlink Glulx Replacement Commands. These hotlinked rectangular zones are called graphic hyperlinks or "graphlinks," and they can be identified in one of two ways: If we are using Glimmr Canvas-Based Drawing (GCBD), they are identified with the name of an object (usually a g-element); if we are not, we identify them using a text. While manually interacting with the graphlink list is rarely required in GCBD, it is a must for any other project. We add a link to the table using the phrase:

	set a graphlink in the graphics-window identified as "undo button" from 0 by 0 to 10 by 10 as "Undo"

This adds a graphlink called "undo button" to the Table of Graphlink Glulx Replacement Commands. When the link is clicked it will--if we use the default rules--enter "Undo" on the command line on behalf of the player. Note the string of coordinates, which are entered LEFT by UPPER to RIGHT by LOWER.

There are two phrases that can be used to remove links from the table. To clear a single link:

	clear the graphlink identified as "undo button"

Or we can clear the whole table at once with:

	zero the link-table

Note that the graphlink identifier we use should--at least generally--be unique. This is simply because a request to clear a graphlink would otherwise be ambiguous (the clear command only clears the first graphlink it encounters). By default, the "set a graphlink" phrase will not allow us to have more than one row in the table with the same identifier. If we set a second graphlink using an identify that is already in the table, the original will be overwritten. To avoid this, add the "ignoring redundant links" phrase option:

	set a graphlink in the graphics-window identified as "undo button" from 0 by 0 to 10 by 10 as "Undo", ignoring redundant links.

The Table of Graphlink Glulx Replacement Commands starts with 120 entries, which is likely to be sufficient for nearly all purposes. We can expand the table if need be, of course. To add another 50 rows, for example:

	Table of Graphlink Glulx Replacement Commands (continued)
	linkid	g-win	p-top	p-bottom	p-left	p-right	replacement	alt	action
	with 50 blank rows


Section: Advanced usage

There may be times where what we want from a graphlink is something other than that it enter a command on the player's behalf. For these cases, we need to write new one or more new "graphlink processing" or "clicking graphlink rules".

The "clicking graphlink rules" are triggered when a graphlinked window receives mouse input. The rule should test to see whether the mouse input hit a graphlink, and then instruct Inform what to do about it. We can test whether a graphlink was clicked on by using the phrase "if the click hit a hot link". Here is the default rule:

	A clicking graphlink rule (this is the default command replacement by graphlinks rule):
		if the click hit a hot link:
			follow the graphlink processing rules;
			rule succeeds;
		else:
			now glulx replacement command is "".

We look through the table for entries that apply to the window that was clicked (the "current graphlink window"), and when we find one, we test whether the click was within the bounds of that entry's rectangle. If it was, the player has successfully hit a graphlink: we pass handling off to the graphlink processing rules. Note that, when a hot link is detected, the "candidate replacement command" variable is set to the command provided when the graphlink was set up, and the "current graphlink" is set to the identifier (these are assigned within the decide phrase).

If the click failed to hit a link, we simply set the glulx replacement command to null. Glulx Entry Points handles the transformation of the glulx replacement command into a "typed" command. If there is any text at all in the variable, then that text will be pasted as a command. If the glulx replacement command is null, nothing will happen except that the window will once again become receptive to input.

We will rarely need to adjust the clicking graphlink rules--most often, we would adjust them when we want to bypass the Table of Glulx Graphlink Replacement Commands altogether. More often, we will want to intervene in the graphlink processing rules. The graphlink processing rules is a rulebook that runs only after a graphlink has definitively been clicked. (Note: If we are using GGH with Glimmr Canvas-Based Drawing, the graphlink processing rules will be an object-based rulebook, with the object generally being the g-element that was clicked on to trigger the graphlink.)

The default graphlink processing rule changes the glulx replacement command to the candidate replacement command (which was set in the clicking graphlink rules):

	A graphlink processing rule (this is the default graphlink processing rule):
		cancel input in main window;
		now the glulx replacement command is the candidate replacement command;
		now the candidate replacement command is "";
		rule succeeds.

Because this will result in the command being printed to the window, we need to cancel input in the window (a requirement of Glk, the interface layer of Glulx). We also reset the candidate replacement command.

There may be times when we do not want to use the glulx replacement command to communicate the outcome of a graphlink, and we do have two other options. Neither of these, however, will have any effect unless we write our own graphlink processing rule. We use variants of the "set graphlink" phrase to prepare these alternate outcomes:

	set a graphlink in the graphics-window identified as "undo button" from {10, 10} to {40, 25} as 2.

	set a graphlink in the graphics-window identified as "jump button" from {10, 10} to {40, 25} as the action of jumping.

The first phrase sets the "alt" entry in the table to the number 2. We can later read this number and make an appropriate decision about how to respond (perhaps looking up the result in a separate table). The second phrase sets the "action" entry to a stored action (jumping, in this case), which allows us to specify an action without specifying the text of the command. This means that we can fire the command "silently," without printing the command to the screen.

Again, we need to write our own graphlink processing rules to deal with such alternatives. Here's how we might write a rule to execute a stored action:

	First graphlink processing rule (this is the direct action firing rule):
		choose row (current graphlink row) from the Table of Graphlink Glulx Replacement Commands;
		if there is an action entry:
			try the action entry;
		rule succeeds.

Note the use of the "current graphlink row" variable. This is set when a graphlink is clicked and can be used to quickly and accurately refer to the row containing the graphlink (from the Table of Graphlink Glulx Replacement Commands). If our linkid entries are not unique, this allows us to avoid difficulties in reselecting the proper graphlink.


Section: Using GGH with Glimmr Canvas-Based Drawing

When used with Glimmr Canvas-Based Drawing, GGH becomes almost fully automatic. The only time we will manually need to set graphlinks is when we are creating a new type of element, or writing a custom window-drawing rule. (Only if we are seriously hacking the extension will ever need to clear a graphlink.) When we do set graphlinks, it is important to be aware that, when Glimmr Canvas-Based Drawing is included, the link identifier is an *object* (usually this will be a g-element) rather than a text as it is in the absence of GCBD. Here are the three graphlink-setting phrases mentioned above as they might be entered in the Canvas-Based Drawing context:

	set a graphlink in the graphics-window identified as the undo-button from 0 by 0 to 10 by 10 as "Undo".

	set a graphlink in the graphics-window identified as the undo-button from {10, 10} to {40, 25} as 2.

	set a graphlink in the graphics-window identified as the jump-button from {10, 10} to {40, 25} as the action of jumping.

The other major change is that, under Canvas-Based Drawing, the graphlink processing rules are an object-based rulebook. This rule header, for example, will allow us to treat the undo-button g-element differently from the others:

	A graphlink processing rule for the undo-button:
		(etc.)

Without GCBD, we would need to write this as "A graphlink processing rule when the current graphlink is 'undo button'".


Section: Debugging

When used with either Glimmr Drawing Commands or Glimmr Canvas-Based Drawing, GGH will be able to generate Glimmr log messages. These generally identify the window and coordinates clicked, as well as the graphlink or g-element involved. As with all Glimmr log messages, logging must be enabled with the use option:

	Use Glimmr debugging.

If we are not using these Glimmr extensions (and even if we are), we can access the same information by entering coordinate-trace mode. To do this, we just type COORDINATES at the command line (typing the command again turns coordinate-trace off again).

Another debugging command available to us is the GRAPHLINKS command. This will provide a summary of the current state of the graphlinks table. Sample output:

	Table of Graphlink Glulx Replacement Commands (presented in reverse order)

	There are 2 entries in the table.

	undo button (graphics-window): (0,0) - (100,100): "Undo"
	transcript button (graphics-window): (100,100) - (200,200): "Transcript"

	Last window to be clicked: graphics-window


Section: Contact info

If you have comments about the extension, please feel free to contact me directly at ek.temple@gmail.com.

Please report bugs on the Google Code project page, at http://code.google.com/p/glimmr-i7x/issues/list.

For questions about Glimmr, please consider posting to either the rec.arts.int-fiction newsgroup or at the intfiction forum (http://www.intfiction.org/forum/). This allows questions to be public, where the answers can also benefit others. If you prefer not to use either of these forums, please contact me directly via email (ek.temple@gmail.com).
