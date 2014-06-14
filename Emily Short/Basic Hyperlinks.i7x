Version 3 of Basic Hyperlinks (for Glulx only) by Emily Short begins here.

"Allows the author to set hyperlinks in the main window and give instructions about what is to result from performing them."

Include Glulx Entry Points by Emily Short.

When play begins:
	start looking for hyperlinks.

To start looking for hyperlinks:
	(- SetLink(); -)
	
To say set link (N - a number):
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink({N}); -)

To say end link:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink(0); -)

A glulx hyperlink rule (this is the default hyperlink setting rule):
	perform glulx hyperlink request.

To perform glulx hyperlink request:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) DoLink(); -)

Include (-
 [ DoLink;
	setlink();
	playHyperlink(gg_event-->2);
 ];

[ playHyperlink n;
	(+ current link number +) = n;
	if (n > 0) { 
		glk_cancel_hyperlink_event(gg_mainwin);
		FollowRulebook( (+ clicking hyperlink rules +) );
		SetLink();
	};
];

[ Setlink ;
            if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_request_hyperlink_event(gg_mainwin);
];

-)

The clicking hyperlink rules are a rulebook.

Current link number is a number that varies.

A clicking hyperlink rule (this is the default command replacement by hyperlinks rule):
	repeat through the Table of Hyperlink Glulx Replacement Commands:
		if the current link number is linknum entry:
			now the glulx replacement command is replacement entry;
			rule succeeds;
	now glulx replacement command is "".


Table of Hyperlink Glulx Replacement Commands
linknum	replacement
a number	some text

Basic Hyperlinks ends here.

---- Documentation ----

Basic Hyperlinks allows us to annotate pieces of output text as hyperlinks, assigning a number to each one. For instance, we might have 

	Mossy Bank is a room. "The shore here is made up of round rocks, very heavily grown over with a slippery grey-green moss. To the [set link 1]north[end link] is a small shack."

This tells Inform that we want to make 'north' here a hyperlink, and that we are assigning this link the number 1. We should not attempt to nest hyperlinks, as the results are likely to be messy.

We will also need to cause a result when the link is clicked; this is where the clicking hyperlink rulebook comes in. We might write, for instance,

	A clicking hyperlink rule when the current link number is 1:
		...

...and this would provide a reaction when that link is clicked. If we have a very large number of hyperlinks in our game, we might want to set up the links in a different way -- for instance, by building a table relating numbers to outcomes. This could also be done using a clicking hyperlink rule. In fact, this is so often what we want to do that our default clicking hyperlink rule says

	A clicking hyperlink rule (this is the default command replacement by hyperlinks rule):
		repeat through the Table of Hyperlink Glulx Replacement Commands
		begin;
			if the current link number is linknum entry
			begin;
				change the glulx replacement command to replacement entry;
				rule succeeds;
			end if;
		end repeat;
		now glulx replacement command is "".	

which expects us to provide a table of command outcomes such as

	Table of Hyperlink Glulx Replacement Commands (continued)
	linknum	replacement
	1	"north"
	2	"take lantern"

and so on. The "glulx replacement command" is some text that varies -- actually a feature of the Glulx Entry Points extension on which this one depends -- and it allows us to write in something as though the player had typed it at the command prompt. Because the link is only pasting in a command on behalf of the player, we could then use link 1 over and over throughout the game any time we wanted a hyperlink that led north: the effect will always be to paste >north at the command prompt.

But if we would prefer to have hyperlinks do other things, we may remove the default rule like this:

	The default command replacement by hyperlinks rule is not listed in any rulebook.

...and then replace it with clicking hyperlinks rules of our own.

Example: * Mossy Bank - A running version of the Mossy Bank scenario.

	*: "Mossy Bank"
	
	Include Basic Hyperlinks by Emily Short.
	
	Mossy Bank is a room. "The shore here is made up of round rocks, very heavily grown over with a slippery grey-green moss. To the [set link 1]north[end link] is a small shack."

	Small Shack is north of Mossy Bank. "This little shack opens to the [set link 2]south[end link]."

	A lantern is in Small Shack. "There's [set link 3]a lantern[end link] on the floor."

	Table of Hyperlink Glulx Replacement Commands (continued)
	linknum    	 replacement
	1	"north"
	2	"south"
	3	"take lantern"
