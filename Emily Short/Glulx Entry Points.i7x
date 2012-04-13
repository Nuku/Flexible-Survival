Version 6 of Glulx Entry Points (for Glulx only) by Emily Short begins here.

"Provides hooks to allow the author to write specialized multimedia behavior that would normally go through HandleGlkEvent. This is a rather dull utility library that will be of most use to authors wanting to write Glulx extensions compatible with other Glulx extensions already in use."

Use authorial modesty.

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

Current glulx rock is a number that varies.
Current glulx rock-ref is a number that varies.

Glulx replacement command is some indexed text that varies. 

To decide whether glulx mouse input is supported:
	(- ( glk_gestalt(gestalt_MouseInput, 0) ) -)

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


  [ HandleGlkEvent ev context abortres newcmd cmdlen  ;
      context = 0; ! suppress ignored warning
      switch (ev-->0) {
	evtype_Redraw:
		if (FollowRulebook( (+glulx redrawing rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_Arrange:
		if (FollowRulebook( (+glulx arranging rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_Timer:
		if (FollowRulebook( (+glulx timed activity rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_SoundNotify:
		if (FollowRulebook( (+glulx sound notification rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_Hyperlink: 
		FollowRulebook( (+glulx hyperlink rules+) );
		if ( FollowRulebook( (+command-counting rules +) ) && RulebookSucceeded())
		{ 
			FollowRulebook( (+command-showing rules+) );
			if ( FollowRulebook( (+command-pasting rules+) ) ) 	return 2;
		} 
	
	evtype_CharInput:
		if (FollowRulebook( (+glulx character input rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_LineInput:
		if (FollowRulebook( (+glulx line input rules+) ) && RulebookSucceeded()) { return 2; }

	evtype_MouseInput:
		FollowRulebook( (+glulx mouse input rules+) );
		if ( FollowRulebook( (+command-counting rules +) ) && RulebookSucceeded())
		{ 
			FollowRulebook( (+command-showing rules+) );
			if ( FollowRulebook( (+command-pasting rules+) ) ) 	return 2;
		}  

	}

   ];

-) before "Glulx.i6t".

The command-counting rules are a rulebook.

A command-counting rule (this is the ordinary checking for content rule):
	if the number of characters in the glulx replacement command is 0, rule fails;
	rule succeeds.


The command-showing rules are a rulebook.

A command-showing rule (this is the print text to the input prompt rule):
	say input-style-for-glulx;
	say Glulx replacement command;
	say roman type;

To say input-style-for-Glulx: 
	(- glk_set_style(style_Input); -)
 

The command-pasting rules are a rulebook. 

A command-pasting rule (this is the glue replacement command into parse buffer rule): 
	change the text of the player's command to the Glulx replacement command;
	rule succeeds.

Glulx Entry Points ends here.

---- Documentation ----

Glulx allows the author to set responses to certain events:

	Timer       - event repeated at fixed intervals
	CharInput   - keystroke input in a window
	LineInput   - full line of input in a window
	MouseInput  - mouse input in a window
	Arrange     - some windows sizes have changed
	Redraw      - graphic windows need redrawing
	SoundNotify - sound finished playing
	Hyperlink   - selection of a hyperlink in a window

Glulx Entry Points provides a set of rulebooks so that the author can add responses to these events without himself having to include any Inform 6 code. These are

	The glulx timed activity rules is a rulebook.
	The glulx redrawing rules is a rulebook.
	The glulx arranging rules is a rulebook.
	The glulx mouse input rules is a rulebook.
	The glulx character input rules is a rulebook.
	The glulx line input rules is a rulebook.
	The glulx hyperlink rules is a rulebook.

One of the things we may want to do -- especially with mouse input or hyperlinks -- is generate a command for the player. To do this, we set the value of Glulx replacement command to whatever string of text we want to turn into the player's command. If we do this, Inform will treat whatever command we issued in "Glulx replacement command" as though the player had typed it at the command prompt. The extension Basic Hyperlinks builds on this infrastructure and provides an example of how to make use of these features. 

Because the Glulx replacement command is indexed text, it is possible to build on to the string automatically, if for some reason we need to auto-generate our recommended commands. 

We also have a series of rulebooks for handling the stages of IdentifyGlkObject:
	
	The glulx zeroing-reference rules is a rulebook.
	The glulx resetting-windows rules is a rulebook.
	The glulx resetting-streams rules is a rulebook.
	The glulx resetting-filerefs rules is a rulebook.
	The glulx object-updating rules is a rulebook.

Examples of the use of these can be seen in the extension Simple Graphics Windows.

Please note that this extension is provided as a framework and as a basis for other extensions, but that currently Inform is not designed to support sound output properly.

Thanks to Eliuk Blau and Jon Ingold for pointing out some bugs in version 5.