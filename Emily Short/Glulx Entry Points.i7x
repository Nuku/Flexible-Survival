Version 10 of Glulx Entry Points (for Glulx only) by Emily Short begins here.

"Provides hooks to allow the author to write specialized multimedia behavior that would normally go through HandleGlkEvent. This is a rather dull utility library that will be of most use to authors wanting to write Glulx extensions compatible with other Glulx extensions already in use."

"with contributions by Erik Temple"

Use authorial modesty.

Section - Use option
[As of version 10, Glulx Entry Points has a somewhat more flexible approach to event handling than did earlier versions: Whereas the latter consulted one of eight separate rulebooks depending on the event type, Glulx Input Loops passes the event type into a single parameterized rulebook. This means, for example, that we can have a general rule for event handling that fires no matter what the event, alongside the usual event-based rules.

Many existing extensions are based on the older system, however, and we would break those extensions if we simply removed the older event-handling rulebooks. So, we retain those rulebooks. By default, Glulx Entry Points will still pass event-handling to those rulebooks. This means that existing code will continue to work as before, and we can also use the new parameterized rulebook if we like.

This use option disables the old rulebooks, and should be used only when we know that we are not using an extension that depends on the old rulebooks.]

Use direct event handling translates as (- Constant DIRECT_GLK_EVENT_HANDLING; -).


Section - New rulebooks

[This first set of rulebooks--the event-handling rulebooks--are now deprecated in favor of the "glulx input handling rulebook".]
The glulx timed activity rules is a rulebook.
The glulx redrawing rules is a rulebook.
The glulx arranging rules is a rulebook.
The glulx sound notification rules is a rulebook.
The glulx mouse input rules is a rulebook.
The glulx character input rules is a rulebook.
The glulx line input rules is a rulebook.
The glulx hyperlink rules is a rulebook.

The glulx zeroing-reference rules is a rulebook.
The glulx resetting-windows rules is a rulebook.
The glulx resetting-streams rules is a rulebook.
The glulx resetting-filerefs rules is a rulebook.
The glulx object-updating rules is a rulebook.


Section - Global variables

Current glulx rock is a number that varies.
Current glulx rock-ref is a number that varies.

Glulx replacement command is some indexed text that varies.

Library input context is a number variable. [This describes the event context in which input was received, e.g. whether the Inform library was awaiting line input or char input. If 0, the library was awaiting line input, if 0, char input. This is not as useful as an event-typed value would be; with such a value, we could detect any input context--e.g., we are waiting for hyperlink input.]


Section - Gestalts

To decide whether glulx character input is supported:
	(- ( glk_gestalt(gestalt_CharInput, 0) ) -)

To decide whether glulx mouse input is supported:
	(- ( glk_gestalt(gestalt_MouseInput, winType_AllTypes) ) -)

To decide whether glulx graphic-window mouse input is supported:
	(- ( glk_gestalt(gestalt_MouseInput, winType_Graphics) ) -)

To decide whether glulx text-grid mouse input is supported:
	(- ( glk_gestalt(gestalt_MouseInput, winType_TextGrid) ) -)

To decide whether glulx timekeeping is supported:
	(- ( glk_gestalt(gestalt_Timer, 0) ) -)

To decide whether glulx graphics is supported:
	(- ( glk_gestalt(gestalt_Graphics, 0) ) -)

To decide whether glulx text-buffer graphics is supported:
	(- ( glk_gestalt(gestalt_DrawImage, winType_TextBuffer) ) -)

To decide whether glulx graphic-window graphics is supported:
	(- ( glk_gestalt(gestalt_DrawImage, winType_Graphics) ) -)

To decide whether glulx PNG transparency is supported:
	(- ( glk_gestalt(gestalt_GraphicsTransparency, 0) ) -)

To decide whether glulx sound is supported:
	(- ( glk_gestalt(gestalt_Sound, 0) ) -)

To decide whether glulx mod sound is supported:
	(- ( glk_gestalt(gestalt_SoundMusic, 0) ) -)

To decide whether glulx sound volume is supported:
	(- ( glk_gestalt(gestalt_SoundVolume, 0) ) -)

To decide whether glulx sound notification is supported:
	(- ( glk_gestalt(gestalt_SoundNotify, 0) ) -)

To decide whether glulx hyperlinks are supported:
	(- ( glk_gestalt(gestalt_Hyperlinks, 0) ) -)


Section - IdentifyGlkObject routine


Include (-

   [ IdentifyGlkObject phase type ref rock;
      if (phase == 0) { ! Zero out references to our objects.
	 if (FollowRulebook( (+glulx zeroing-reference rules+) ) && RulebookSucceeded()) { rtrue; }
      }

      if (phase == 1) { ! Reset our windows, streams and filerefs.
	(+ current glulx rock +) = rock;
	(+ current glulx rock-ref +) = ref;
         switch (type) {
            0: ! it's a window
               	FollowRulebook( (+ glulx resetting-windows rules +) );
	 1 : ! it's a stream
               	FollowRulebook( (+ glulx resetting-streams rules +) );
    	   2 : ! it's a file reference
               	FollowRulebook( (+ glulx resetting-filerefs rules +) );
         }
         return;
      }

      if (phase == 2) { ! Update our objects.
         if (FollowRulebook( (+glulx object-updating rules+) ) && RulebookSucceeded()) { rtrue; }
      }

   ];

-) before "Glulx.i6t".


Section - Event types

A g-event is a kind of value. The g-events are timer-event, char-event, line-event, mouse-event, arrange-event, redraw-event, sound-notify-event, and hyperlink-event.

Definition: A g-event is independent of the player if it is timer-event or it is sound-notify-event or it is arrange-event or it is redraw-event.

Definition: A g-event is dependent on the player if it is not independent of the player.

To decide which g-event is null-event: (- 0 -)


Section - Wrappers for event structure, return values, etc

To wait for glk input:
	(- glk_select(gg_event); -)

To decide whether the current input context is line input:
	if the library input context is 0, decide yes;
	decide no.

To decide whether the current input context is char/character input:
	if the library input context is 1, decide yes;
	decide no.

To decide which g-event is the current glk event:
	(- gg_event-->0 -)

To decide what number is the window of the current glk event:
	(- gg_event-->1 -)

To decide what number is the character code returned:
	(- gg_event-->2 -)

To return input replacement:
	(- return 2; -)

To return input continuation:
	(- return -1; -)


Section - Event Handling
[This is an I7 version of the event handling that was included in the I6 HandleGlkEvent routine in previous versions of Glulx Entry Points, with minor changes to allow any event type to provide a replacement command. Converted to I7 code in version 10.]

To decide what number is the value returned by glk event handling (this is the handle glk event rule):
	now glulx replacement command is "";
	follow the glulx input handling rules for the current glk event;
	if the outcome of the rulebook is the replace player input outcome:
		return input replacement;
	if the outcome of the rulebook is the require input to continue outcome:
		return input continuation;
	follow the command-counting rules;
	if the rule succeeded:
		follow the input-cancelling rules;
		follow the command-showing rules;
		follow the command-pasting rules;
		if the [command-pasting] rule succeeded:
			return input replacement.


Section - HandleGlkEvent routine

Include (-

  [ HandleGlkEvent ev context abortres newcmd cmdlen ;
      (+ library input context +) = context;
      return (+ value returned by glk event handling +) ;
  ];

-) before "Glulx.i6t".


Section - Useful function wrappers

To update the status line:
	(- DrawStatusLine(); -)

To print prompt:
	(- PrintPrompt(); -)


Section - The glulx input handling rulebook
[These rules route to the ]

The glulx input handling rules are a g-event based rulebook. The glulx input handling rules have outcomes replace player input (success) and require input to continue (success).

Last glulx input handling rule for a timer-event when the direct event handling option is not active (this is the redirect to GEP timed activity rule):
	abide by the glulx timed activity rules.

Last glulx input handling rule for a char-event when the direct event handling option is not active (this is the redirect to GEP character input rule):
	abide by the glulx character input rules.

Last glulx input handling rule for a line-event when the direct event handling option is not active (this is the redirect to GEP line input rule):
	follow the glulx line input rules;
	if the rule succeeded:
		replace player input.

Last glulx input handling rule for a mouse-event when the direct event handling option is not active (this is the redirect to GEP mouse input rule):
	abide by the glulx mouse input rules.

Last glulx input handling rule for an arrange-event when the direct event handling option is not active (this is the redirect to GEP arranging rule):
	abide by the glulx arranging rules.

Last glulx input handling rule for a redraw-event when the direct event handling option is not active (this is the redirect to GEP redrawing rule):
	abide by the glulx redrawing rules.

Last glulx input handling rule for a sound-notify-event when the direct event handling option is not active (this is the redirect to GEP sound notification rule):
	abide by the glulx sound notification rules.

Last glulx input handling rule for a hyperlink-event when the direct event handling option is not active (this is the redirect to GEP hyperlink rule):
	abide by the glulx hyperlink rules.


Section - Command-counting rules

The command-counting rules are a rulebook.

A command-counting rule (this is the ordinary checking for content rule):
	if the number of characters in the glulx replacement command is 0, rule fails;
	rule succeeds.


Section - Input-cancelling rules

The input-cancelling rules are a rulebook.

An input-cancelling rule (this is the cancelling input in the main window rule):
	cancel line input in the main window;
	cancel character input in the main window;

To cancel line input in the/-- main window:
	(- glk_cancel_line_event(gg_mainwin, GLK_NULL); -)

To cancel character input in the/-- main window:
	(- glk_cancel_char_event(gg_mainwin); -)


Section - Command showing rules

The command-showing rules are a rulebook.

A command-showing rule (this is the print text to the input prompt rule):
	say input-style-for-glulx;
	say Glulx replacement command;
	say roman type;

To say input-style-for-Glulx:
	(- glk_set_style(style_Input); -)


Section - Command pasting rules

The command-pasting rules are a rulebook.

A command-pasting rule (this is the glue replacement command into parse buffer rule):
	change the text of the player's command to the Glulx replacement command;
	rule succeeds.



Glulx Entry Points ends here.
