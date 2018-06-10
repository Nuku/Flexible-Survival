Version 6 of Text Capture by Eric Eve begins here.

"Allows the capture of text that would otherwise be output to the screen, so that the text can be further manipulated, displayed at some other point, or simply discarded. Version 6 avoids using phrases deprecated in 6E59. "


Part 1 - Include some basic I6 Code

Include (-

Global capture_active = 0;

#ifndef CAPTURE_BUFFER_LEN;
Constant CAPTURE_BUFFER_LEN 256;
#endif;

#ifndef captured_text;
Array captured_text buffer CAPTURE_BUFFER_LEN;
#endif;

-) after "Definitions.i6t".

Part 2 - Define Four Phrases

Chapter 1a - Capture Phrases (for use without FyreVM Support by TextFyre)

To start capturing text:
   (- StartCapture(); -)

To stop capturing text:
  (- EndCapture(); -)

To say the/-- captured text:
  (- PrintCapture(); -)

Chapter 1b - Capture Phrases (for use with FyreVM Support by TextFyre)

To start capturing text:
   (- FyreVMStartCapture(); -)

To stop capturing text:
  (- FyreVMEndCapture(); -)

To say the/-- captured text:
  (- FyreVMPrintCapture(); -)


Chapter 2 - Whether Text Capturing Active

To decide whether text capturing is active: (- (capture_active > 0) -).

Part 3 - I6 Code

Chapter 2Z - Z-Machine Version (for Z-Machine Only)

Include (-

[ StartCapture;
  if(capture_active == 0)
  {
    @output_stream 3 captured_text;
    capture_active = 1;
  }
];


[ EndCapture;
   if(capture_active > 0)
   {
      @output_stream -3;
      capture_active = 0;
   }
];

-)

Chapter 2G - Glulx (for Glulx Only)


Include (-

Global old_stream = 0;

[ StartCapture i;
   if (capture_active > 0)
      return;
   old_stream = get_cur_stream();
   set_cur_stream(open_stream(captured_text+WORDSIZE, CAPTURE_BUFFER_LEN, 1, 661)  );
   capture_active = 1;
];

-)


Include (-

[ EndCapture;
   if (capture_active == 0)
      return;
   print (char) 255; !add end of string marker
   close_stream(get_cur_stream(), gg_arguments);
   set_cur_stream(old_stream);
   capture_active = 0;
];

-)



Include (-

[set_cur_stream str ret;

  @copy str sp;

  @glk 71 1 ret;
  return ret;
];

[ get_cur_stream ret;


  @glk 72 0 ret;
  return ret;
];

-)



Include (-

[ open_stream buf buflen fmode rock ret;

  @copy rock sp;
  @copy fmode sp;
  @copy buflen sp;
  @copy buf sp;

  @glk 67 4 ret;
  return ret;
];

-)



Include (-

[ close_stream str result ret;

  @copy result sp;
  @copy str sp;

  @glk 68 2 ret;
  return ret;
];

-)



Chapter 2B - Both

Include (-

[ PrintCapture i j ch;

    j = captured_text-->0;
   for (i=WORDSIZE:i<(j+WORDSIZE):i++)
   {
      ch = captured_text->i;
      if(ch== 0 or 255)
         break;
      else if(ch ~= 10 || i>WORDSIZE)
         print (char) ch;
   }
];

-)

Chapter 3T - FyreVM Support (for use with FyreVM Support by TextFyre)


Include (-

    global FMCaptureLength = 0;

   [ FyreVMStartCapture;
     if(is_fyrevm)
     {
         if(capture_active > 0)
            return;
         OpenOutputBuffer(captured_text, CAPTURE_BUFFER_LEN);
         capture_active = 1;
         return;
     }
     StartCapture();
   ];


   [ FyreVMEndCapture;
     if(is_fyrevm)
     {
         if(capture_active == 0)
            return;
         print (char) 255; !add end of string marker
         FMCaptureLength= CloseOutputBuffer(0);
         capture_active = 0;
         return;
     }
     EndCapture();
   ];

   [ FyreVMPrintCapture i ch;
     if(is_fyrevm)
    {

       for (i=0 : i<= FMCaptureLength : i++)
      {
         ch = captured_text->i;
         if(ch== 0 or 255)
             break;
         else if(ch ~= 10)
            print (char) ch;
     }
     return;
   }
   PrintCapture();
];



-).



Part 3 - Define a Use Option

Use maximum capture buffer length of at least 256 translates as (- Constant CAPTURE_BUFFER_LEN = {N}; -).


Text Capture ends here.

---- DOCUMENTATION ----

This extension defines four new phrases:

	start capturing text
	stop capturing text
	say captured text
	if text capturing is active

Text that would otherwise be output to the screen is instead captured if it is generated between the first of these phrases and the second. The captured text can subsequently be displayed (or copied to an indexed text variable) using the third of these phrases.

A situation where this might typically useful is where we want not only to suppress the standard report from an action (with 'silently') but any failure reports as well. A typical pattern would be:

	*:start capturing text;
	silently try taking the noun;
	stop capturing text;

If it proved impossible to take the noun (because it was fixed in place or locked in a glass container, say), the failure message would not be displayed, and the action would be completely silent. The failure message would still be available, however: we could either display it at some other point with:

	say captured text;

Or store it in an indexed text variable to do something with it later on:

	now mytextvar is "[captured text]";

The situation where this might typically be useful is in executing a command as an implicit action. This is explained further in the example.

The test "if text capturing is active" can be used to determining whether or text capturing is currently in progress. The phrases "start capturing text" and "stop capturing text" effectively make this check in any case, so that issuing "start capturing text" when text capturing is already active does nothing, as does "stop capturing text" when text capturing is not active.

LIMITATIONS

1. The extension uses only a single text buffer, and each time a start capturing text/output something/stop capturing text sequence is executed, the buffer contents will be overwritten. You can get round this by copying the contents of the buffer to an indexed text variable, as shown above.

2. The text capture buffer can hold a maximum of 256 characters, so it should be used only for fairly short pieces of text, not huge amounts of it all at once. Overrunning the buffer will cause a run-time error in Z-Code games, and the loss of all characters beyond the 256th in Glulx games. If a larger buffer is needed, change CAPTURE_BUFFER_LEN to something larger. You can do this with the option "Use maximum capture buffer length of at least 512" (or whatever other buffer size you want).

3. To make this extension work under Glulx, character number 255 is used as an end-of-string marker. If for any reason the output between start capturing text and end capturing text includes this character, say captured text will truncate the string just before it. This is unlikely to be a problem in the vast majority of games.

4. Beware of using certain debugging verbs such as RULES or RULES ALL whenever text capturing might become active, since their output will be captured as well, almost certainly leading to overflow of the text capture buffer.


Example: * Intelligent Putting - Using text capture to improve implicit take messages.

It generally makes for smoother game-play if commands like PUT BALL IN BOX or PUT BOX ON TABLE perform an implicit take when the object to be put somewhere isn't already held. We generally do this by saying "(first taking the whatever)" and then using 'silently try taking the whatever' to attempt the implicit take.

If, however, the attempted take doesn't succeed (perhaps because the object we're trying to take is fixed in place), then a message like "(first taking the whatever)" is a little misleading, since we have not in fact taken the object in question, we have merely attempted to do so. In this situation "(first trying to take the whatever)" would be more appropriate. The difficulty is that we don't know whether 'silently try taking the whatever' will succeed until we try it, so we don't know whether we want "first taking..." or "first trying to take..." until we've tried to take the object and maybe seen a message explaining why we can't; but we'd then want "(first trying to take the whatever)" to be displayed before the message explaining why it couldn't be taken.

One way round this is to capture the output from the take action, then test whether it succeeded so we can decide what form of the implicit take message to use, and only then display the captured message if we need to explain why the take failed.

	*: "Intelligent Putting"

	Include Text Capture by Eric Eve

	Part 1 - Implicit Taking Mechanism

	Before putting something on something when the noun is not carried:
	 if the noun is on the second noun,
	     say "[The noun] is already on [the second noun]." instead;
	 take the noun implicitly;
	 if the noun is not carried, stop the action.

	Before inserting something into something when the noun is not carried:
	 if the noun is in the second noun,
	     say "[The noun] is already in [the second noun]." instead;
	 take the noun implicitly;
	 if the noun is not carried, stop the action.

	To take (obj - a thing) implicitly:
	  start capturing text;
	  silently try taking the obj;
	  stop capturing text;
	  say "(first [if the obj is carried]taking[else]trying to take[end if] [the obj])[command clarification break]";
	  if the obj is not carried, say captured text.

	Part 2 - Scenario

	The Lumber Room is a Room. "The Junk of decades has accumulated here."

	A large wooden table is here.

	A small red box is on the table. It is an openable open container.

	An old black comb is here.
	A spare sock is here.

	A bust of King George V is here.
            Instead of taking the bust: say "The bust is too heavy for you to lift."

	Test me with "put comb in box/put sock on table/put table in box/put bust on table."
