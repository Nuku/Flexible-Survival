Version 1/100630 of Glulx Status Window Control (for Glulx only) by Erik Temple begins here.

"Allows the author heightened control over the status line, including opening and closing it at will, using a background color rather than the default reversed-out display, specifying when the status line opens among multiple Glulx windows, or eliminating it altogether."

Include Glulx Text Effects by Emily Short.

Section - Phrases to open and close the status-window

To initialize/initialise the/-- status window:
	(- InitStatusWindow(); -)

To decide if the/-- status window is already/-- open:
	(- gg_statuswin -)

To close the/-- status window:
	(- if (gg_statuswin) glk_window_close(gg_statuswin, 0); gg_statuswin = 0; -)

To reconstruct the/-- status window:
	close the status window;
	open the status window;

To update the/-- status line:
	(- if (gg_statuswin) DrawStatusLine(); -)

To open the/-- status window:
	if the status window is already open, rule fails;
	initialize the status window;

Include
(-

[ InitStatusWindow sty;
 if (gg_statuswin == 0) {
	statuswin_cursize = statuswin_size;
	if ( (+ status window background reversed +) ) {
		for (sty=0: sty<style_NUMSTYLES: sty++)
			glk_stylehint_set(wintype_TextGrid, sty, stylehint_ReverseColor, 1);
	}
	gg_statuswin =
		glk_window_open(gg_mainwin, statuswin_pos, statuswin_cursize, wintype_TextGrid, GG_STATUSWIN_ROCK);
}
];
-)


Section - Phrases to set window position of the status window

To set the/-- status window to open above the/-- main window:
	(- statuswin_pos = 18; -)

To set the/-- status window to open below the/-- main window:
	(- statuswin_pos = 19; -);

The status window position is a number that varies. The status window position variable translates into I6 as "statuswin_pos". [The initial/default value of statuswin_pos is set within the I6 VM_Initialise routine below.]

Include (-

Global statuswin_pos;

-) after "Definitions.i6t".


Section - Phrases to set color of text grid windows

[The background color must be set before the window is opened.]

The status window background reversed is a truth state that varies. Status window background reversed is true.

To set the background of the status window to be/-- reversed-out:
	now status window background reversed is true;

To set the background of the status window to be/-- colored:
	now status window background reversed is false;

To set the background color/color of the/-- status window to (color - a glulx color value):
	(- StatusColor({color}); -)

To set the background color/color of the/-- status window to (color - a number):
	(- NStatusColor({color}); -)

To set the text color/color of the/-- status window to (color - a glulx color value):
	(- StatusTextColor({color}); -)

To set the text color/color of the/-- status window to (color - a number):
	(- NStatusTextColor({color}); -)

Include (-

[ StatusColor color i;
  color = ColVal(color);
  for (i = 0: i < style_NUMSTYLES : i++)
 	 glk_stylehint_set(wintype_TextGrid, i, stylehint_BackColor, color);
];

[ NStatusColor color i;
  for (i = 0: i < style_NUMSTYLES : i++)
 	 glk_stylehint_set(wintype_TextGrid, i, stylehint_BackColor, color);
];

[ StatusTextColor color i;
  color = ColVal(color);
  for (i = 0: i < style_NUMSTYLES : i++)
 	 glk_stylehint_set(wintype_TextGrid, i, stylehint_TextColor, color);
];

[ NStatusTextColor color i;
  for (i = 0: i < style_NUMSTYLES : i++)
 	 glk_stylehint_set(wintype_TextGrid, i, stylehint_TextColor, color);
];

-)


Section - Special commands (for use with Simple Graphical Window by Emily Short)

To close the/-- graphics window:
	(- if (gg_picwin) glk_window_close(gg_picwin, 0); gg_picwin = 0; -)

To open the/-- graphics window:
	build graphics window.

To reconstruct the/-- graphics window:
	close the graphics window;
	build graphics window.


Section - Hook into Flexible Windows' existing InitGlkWindow entry point (for use with Flexible Windows by Jon Ingold)

Use no status line. [This is Flexible Windows' way of telling the library not to open the status window, leaving things open for us to do it ourselves.]


Section - Replacement of InitGlkWindow entry point and color lookup (for use without Flexible Windows by Jon Ingold)

[Tells the library not to open the status window; we will do it ourselves. Flexible Windows provides a use option to do the same thing, so we include this only if we are not already using Flexible Windows.]

Include (-

[ InitGlkWindow winrock i col;
		switch(winrock){

			GG_STATUSWIN_ROCK:
				rtrue;
		}

		rfalse;

	];

-) after "Definitions.i6t".

[The routine for translating the color table is from Flexible Windows; we include it only if that extension is not already installed]

Include (-

Constant glulx_color_table = (+Table of Common color Values+);

[ ColVal c i max;
	max=TableRows(glulx_color_table);
	for ( i=1:i<=max:i++ ) {
		if (TableLookUpEntry(glulx_color_table, 1, i) ==  c)
			return TableLookUpEntry(glulx_color_table, 2, i);
	}
];

-)


Section - Replacement of library's Restart routine

[Closes the status window so that it will not be automatically reconfigured to the library defaults on restart]

Include (-

[ RESTART_THE_GAME_R;
	if (actor ~= player) rfalse;
	GL__M(##Restart, 1);
	if (YesOrNo() ~= 0) {
		if (gg_statuswin) glk_window_close(gg_statuswin, 0);
		@restart;
		GL__M(##Restart, 2);
	}
];

-) instead of "Restart The Game Rule" in "Glulx.i6t".


Section - Replacement of the library's Initialise routine

Include (-

[ VM_PreInitialise res;
    @gestalt 4 2 res; ! Test if this interpreter has Glk...
    if (res == 0) quit; ! ...without which there would be nothing we could do

	unicode_gestalt_ok = false;
	if (glk_gestalt(gestalt_Unicode, 0))
		unicode_gestalt_ok = true;

    ! Set the VM's I/O system to be Glk.
    @setiosys 2 0;
];

[ VM_Initialise res sty i;
    statuswin_pos = 18; ! Sets the status window to open above the main window.

    @gestalt 4 2 res; ! Test if this interpreter has Glk...
    if (res == 0) quit; ! ...without which there would be nothing we could do

    ! First, we must go through all the Glk objects that exist, and see
    ! if we created any of them. One might think this strange, since the
    ! program has just started running, but remember that the player might
    ! have just typed "restart".

    GGRecoverObjects();

	! Sound channel initialisation, and RNG fixing, must be done now rather
	! than later in case InitGlkWindow() returns a non-zero value.

	if (glk_gestalt(gestalt_Sound, 0)) {
		if (gg_foregroundchan == 0)
			gg_foregroundchan = glk_schannel_create(GG_FOREGROUNDCHAN_ROCK);
		if (gg_backgroundchan == 0)
			gg_backgroundchan = glk_schannel_create(GG_BACKGROUNDCHAN_ROCK);
	}

	#ifdef FIX_RNG;
	@random 10000 i;
	i = -i-2000;
	print "[Random number generator seed is ", i, "]^";
	@setrandom i;
	#endif; ! FIX_RNG

    res = InitGlkWindow(0);
    if (res ~= 0) return;

    ! Now, gg_mainwin and gg_storywin might already be set. If not, set them.

    if (gg_mainwin == 0) {
        ! Open the story window.
        res = InitGlkWindow(GG_MAINWIN_ROCK);
        if (res == 0) {
        	! Left-justify the header style
			glk_stylehint_set(wintype_TextBuffer, style_Header, stylehint_Justification, 0);
			! Try to make emphasized type in italics and not boldface
			glk_stylehint_set(wintype_TextBuffer, style_Emphasized, stylehint_Weight, 0);
			glk_stylehint_set(wintype_TextBuffer, style_Emphasized, stylehint_Oblique, 1);
            gg_mainwin = glk_window_open(0, 0, 0, wintype_TextBuffer, GG_MAINWIN_ROCK);
		}
        if (gg_mainwin == 0) quit; ! If we can't even open one window, give in
    } else {
        ! There was already a story window. We should erase it.
        glk_window_clear(gg_mainwin);
    }

    if (gg_statuswin == 0) {
        res = InitGlkWindow(GG_STATUSWIN_ROCK);
        if (res == 0) {
            statuswin_cursize = statuswin_size;
			for (sty=0: sty<style_NUMSTYLES: sty++)
				glk_stylehint_set(wintype_TextGrid, sty, stylehint_ReverseColor, 1);
            gg_statuswin =
            	glk_window_open(gg_mainwin, statuswin_pos,
            		statuswin_cursize, wintype_TextGrid, GG_STATUSWIN_ROCK);
        }
    }
    ! It's possible that the status window couldn't be opened, in which case
    ! gg_statuswin is now zero. We must allow for that later on.

    glk_set_window(gg_mainwin);

    InitGlkWindow(1);
];

[ GGRecoverObjects id;
    ! If GGRecoverObjects() has been called, all these stored IDs are
    ! invalid, so we start by clearing them all out.
    ! (In fact, after a restoreundo, some of them may still be good.
    ! For simplicity, though, we assume the general case.)
    gg_mainwin = 0;
    gg_statuswin = 0;
    gg_quotewin = 0;
    gg_scriptfref = 0;
    gg_scriptstr = 0;
    gg_savestr = 0;
    statuswin_cursize = 0;
    gg_foregroundchan = 0;
    gg_backgroundchan = 0;
    #Ifdef DEBUG;
    gg_commandstr = 0;
    gg_command_reading = false;
    #Endif; ! DEBUG
    ! Also tell the game to clear its object references.
    IdentifyGlkObject(0);

    id = glk_stream_iterate(0, gg_arguments);
    while (id) {
        switch (gg_arguments-->0) {
            GG_SAVESTR_ROCK: gg_savestr = id;
            GG_SCRIPTSTR_ROCK: gg_scriptstr = id;
            #Ifdef DEBUG;
            GG_COMMANDWSTR_ROCK: gg_commandstr = id;
                                 gg_command_reading = false;
            GG_COMMANDRSTR_ROCK: gg_commandstr = id;
                                 gg_command_reading = true;
            #Endif; ! DEBUG
            default: IdentifyGlkObject(1, 1, id, gg_arguments-->0);
        }
        id = glk_stream_iterate(id, gg_arguments);
    }

    id = glk_window_iterate(0, gg_arguments);
    while (id) {
        switch (gg_arguments-->0) {
            GG_MAINWIN_ROCK: gg_mainwin = id;
            GG_STATUSWIN_ROCK: gg_statuswin = id;
            GG_QUOTEWIN_ROCK: gg_quotewin = id;
            default: IdentifyGlkObject(1, 0, id, gg_arguments-->0);
        }
        id = glk_window_iterate(id, gg_arguments);
    }

    id = glk_fileref_iterate(0, gg_arguments);
    while (id) {
        switch (gg_arguments-->0) {
            GG_SCRIPTFREF_ROCK: gg_scriptfref = id;
            default: IdentifyGlkObject(1, 2, id, gg_arguments-->0);
        }
        id = glk_fileref_iterate(id, gg_arguments);
    }

	if (glk_gestalt(gestalt_Sound, 0)) {
		id = glk_schannel_iterate(0, gg_arguments);
		while (id) {
			switch (gg_arguments-->0) {
				GG_FOREGROUNDCHAN_ROCK: gg_foregroundchan = id;
				GG_BACKGROUNDCHAN_ROCK: gg_backgroundchan = id;
			}
			id = glk_schannel_iterate(id, gg_arguments);
		}
		if (gg_foregroundchan ~= 0) { glk_schannel_stop(gg_foregroundchan); }
		if (gg_backgroundchan ~= 0) { glk_schannel_stop(gg_backgroundchan); }
	}

    ! Tell the game to tie up any loose ends.
    IdentifyGlkObject(2);
];

-) instead of "Starting Up" in "Glulx.i6t".



Section - Replacement of the library's Window Color routines

Include (-

[ VM_SetWindowcolors f b window doclear i fwd bwd swin;
    if (clr_on && f && b) {
        if (window) swin = 5-window; ! 4 for TextGrid, 3 for TextBuffer

        fwd = MakecolorWord(f);
        bwd = MakecolorWord(b);
        for (i=0 : i<style_NUMSTYLES: i++) {
            if (f == CLR_DEFAULT || b == CLR_DEFAULT) {  ! remove style hints
                glk_stylehint_clear(swin, i, stylehint_TextColor);
                glk_stylehint_clear(swin, i, stylehint_BackColor);
            } else {
                glk_stylehint_set(swin, i, stylehint_TextColor, fwd);
                glk_stylehint_set(swin, i, stylehint_BackColor, bwd);
            }
        }

        ! Now re-open the windows to apply the hints
        if (gg_statuswin) glk_window_close(gg_statuswin, 0);
        gg_statuswin = 0;

        if (doclear || ( window ~= 1 && (clr_fg ~= f || clr_bg ~= b) ) ) {
            glk_window_close(gg_mainwin, 0);
            gg_mainwin = glk_window_open(0, 0, 0, wintype_TextBuffer, GG_MAINWIN_ROCK);
            if (gg_scriptstr ~= 0)
                glk_window_set_echo_stream(gg_mainwin, gg_scriptstr);
        }

        gg_statuswin = glk_window_open(gg_mainwin, statuswin_pos, statuswin_cursize, wintype_TextGrid, GG_STATUSWIN_ROCK);

        if (statuswin_current && gg_statuswin) VM_MoveCursorInStatusLine(); else VM_MainWindow();

        if (window ~= 2) {
            clr_fgstatus = f;
            clr_bgstatus = b;
        }
        if (window ~= 1) {
            clr_fg = f;
            clr_bg = b;
        }
    }
];

[ VM_RestoreWindowcolors; ! used after UNDO: compare I6 patch L61007
    if (clr_on) { ! check color has been used
        VM_SetWindowcolors(clr_fg, clr_bg, 2); ! make sure both sets of variables are restored
        VM_SetWindowcolors(clr_fgstatus, clr_bgstatus, 1, true);
        VM_ClearScreen();
    }
];

[ MakecolorWord c;
    if (c > 9) return c;
    c = c-2;
    return $ff0000*(c&1) + $ff00*(c&2 ~= 0) + $ff*(c&4 ~= 0);
];

-) instead of "Window colors" in "Glulx.i6t".


Section - Replacement of library's Glulx status line routines

Include (-

[ VM_StatusLineHeight hgt;
	if (gg_statuswin == 0) return;
	if (hgt == statuswin_cursize) return;
	glk_window_set_arrangement(glk_window_get_parent(gg_statuswin), statuswin_pos, hgt, 0);
	statuswin_cursize = hgt;
];

[ VM_MoveCursorInStatusLine line column;
    if (gg_statuswin == 0) return;
    glk_set_window(gg_statuswin);
    if (line == 0) { line = 1; column = 1; }
    glk_window_move_cursor(gg_statuswin, column-1, line-1);
    statuswin_current=1;
];

-) instead of "Status Line" in "Glulx.i6t".


Glulx Status Window Control ends here.

---- DOCUMENTATION ----

Glulx Status Window Control allows an author control over many aspects of the behavior of the status window. We can control when it opens (especially useful in a situation where we have multiple windows), have it open either above or below the main text window, change the background color, close and reopen it at will, and even eliminate it entirely.

Glulx Status Window Control requires Emily Short's Glulx Text Effects extension, which is built into Inform. **Be sure to include Glulx Text Effects if other extensions in your project do not already do so.** Glulx Status Window Control is compatible with Simple Graphical Window, Flexible Windows, and the special customizations for the status window available in Basic Text Effects.


Section: Opening and closing the status window

Glulx Status Window Control turns over basic control over the status line to the author, while still allowing window-updating and other functions to be controlled by the Inform library. Once we have included Glulx Window Control, we must manually instruct Inform to open the status window (if we don't open the window, our game will have no status line):

	open the status window

This directive can be placed just about anywhere, but will most often be placed in a "when play begins" rule.

To control whether the status window opens above or below the main text window, we set either of these two options *before* we open the status window:

	set the status window to open above the main window
	set the status window to open below the main window

Opening above the main window is the default, so we have no real need to specify this unless we are changing the position from below to above.

If we want to close the status window, we write:

	close the status window

The status window will disappear. We can bring it back again by using "open the status window" again. We can also change attributes such as whether it opens above or below the main window or whether it has a background color (see below) before opening it again. In this case, we may simply want to set new attributes and then use the phrase

	reconstruct the status window

which opens and closes the window. So, for example, if we want to move the status window from the top to the bottom of the screen in response to some game event, we would give this sequence of phrases:

	set the status window to open below the main window;
	reconstruct the status window

This is equivalent to writing:

	set the status window to open below the main window;
	close the status window;
	open the status window;

Note that "set the..." phrases to change attributes of the window will not take effect until the next time the window is opened.


Section: Changing the background color of the status window

By default, Inform's status line appears "reversed out", with white letters on a black background. If we wish to change this, we first tell Inform that we want a colored instead of a reversed-out background:

	set the background of the status window to colored

We then specify a background color:

	set the background color of the status window to g-light-gray

If we like, we can also specify a text color:

	set the text color of the status window to g-black

Most interpreters will set the text color to black by default when we have elected to use a colored status window, rather than a reversed status window. However, not all interpreters do. Gargoyle, for example, renders Inform's default instruction, for a reversed status window, as dark gray text on a light gray background. We can override this--and attain a much more uniform look across interpreters--by specifically setting the colors. So, to get the default "reversed-out" look even in Gargoyle:

	set the background color of the status window to g-black;
	set the text color of the status window to g-white

If we've changed are background color and wish to change things back to the default, we type:

	set the background of the status window to reversed-out

If we've changed the text color, we will likely need to set it back to the default (reversed) white manually. Note again that none of these styles will take effect until the status window is re-opened.

It should be noted that Spatterlight ignores the reversed styling hint, and Gargoyle uses shades of gray for the type and reversed background. If using an alternate color scheme, we should test the appearance on as wide a range of interpreters as possible.


Section: Using Glulx Status Window Control with multiple Glulx windows

Because this extension disables the status line until we explicitly open it, care is called for in situations where we have multiple windows, such as when we are using the Simple Graphical Window or Flexible Windows extension. For example, if we want the status window to appear in the normal position when using Simple Graphical Window; that is, spanning the entire screen above the graphics window, we need to create the status window before the graphics window is created. For example:

	When play begins (this is the status window construction rule):
		set the background of the status window to colored;
		set the background color of the status window to g-light-gray;
		open the status window.

	The status window construction rule is listed before the graphics window construction rule in the when play begins rules.

This opens the status window as normal, but with a gray background instead of reversed out type. The graphics window construction rule is provided by Simple Graphical Window, and we place our own rule before the generation of the graphics window.

If we are going to close and reopen the status window in a situation where there are multiple windows, we likewise must be careful that we correctly recreate the order in which the windows were originally opened, or else the status window may not appear where we expect when it is reopened. For example, if we closed and then opened the status window in the default situation from Simple Graphical Window just described, the new status window would open between the main text window and the graphics window. In order to ensure that it reopens as desired, we also need to close and reopen the graphics window. Special commands are provided for this:

	close the graphics window
	open the graphics window
	reconstruct the graphics window

The "reconstruct" phrase works in the same way that the "reconstruct the status window" phrase does, closing and then immediately opening the graphics window. These phrases work only with Simple Graphical Windows. (The "open the graphics window" phrase is the same as the "build graphics window" phrase provided by SGW.) We would use them as follows in a routine to reopen the status window:

	open the status window;
	close the graphics window;
	build graphics window;
	follow the current graphics drawing rule;

		or

	open the status window;
	reconstruct the graphics window;
	follow the current graphics drawing rule;

Most interpreters will show a brief flicker when closing and reopening windows in this way.


Section: Using Glulx Status Window Control with Flexible Windows

When using Glulx Status Window Control with Jon Ingold's Flexible Windows, be aware that the "Use no status line" option provided by that extension will have no effect. If we don't wish to include a status line, we simply never open one.


Section: Updating the status line

Sometimes we do not want to wait for the library's automatic updating of the information in the status line. To force the status line to update at a time of our choosing, we can use the phrase

	update the status line

This will cause whatever we have defined as the textual composition of the status line to update and print to the window, whether defined using the library's built-in "left hand status line" and "right hand status line" variables or a more complex solution such as the customizations in Basic Screen Effects. Such manual updates occur in addition to the usual update that occurs just before the player's command is read; they do not replace this update.


Example: * Kaleidoscope - This simple example shows how we can change the color of both the text and the background of the status window: A random color is chosen for each of these at the end of each turn, and the status window reconstructed to allow for the new colors to be displayed.

	*: "Kaleidoscope"

	Include Flexible Windows by Jon Ingold.
	Include Glulx Status Window Control by Erik Temple.

	When play begins:
		set the background of the status window to colored;
		set the background color of the status window to g-red;
		open the status window.

	Every turn:
		choose a random row in the Table of Common Color values;
		set the background color of the status window to the assigned number entry;
		choose a random row in the Table of Common Color values;
		set the text color of the status window to the assigned number entry;
		reconstruct the status window;

	The Scope is a room. "Nothing much to do here. Look around, jump, examine yourself, that kind of thing."
