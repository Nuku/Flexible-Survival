Version 2 of Computers by Emily Short begins here.

"Computer hardware and software, including search engines and email programs."

Include Plurality by Emily Short.

Book 1 - Hardware

Chapter 1 - Computers in General

Section 1 - Devices

[All computers have screens and keyboards.]

A computer is a kind of device. Understand "computer" as a computer.
	A computer has some text called the startup noise. The startup noise of a computer is usually "[The item described] chimes cheerfully."

A screen is a kind of thing. One screen is part of every computer. The description of a screen is usually "[The item described] [is-are] currently blank.". Understand "monitor" as a screen. [Screen information is overridden later.]

A keyboard is a kind of thing. One keyboard is part of every computer. The description of a keyboard is usually "The typical arrangement of keys."
	The specification of a keyboard is "Part of every computer by default. The player can only use the TYPE (something) ON action when a keyboard is part of the computer in question."

A selection device is a kind of thing.
	The specification of a selection device is "A generic kind from on both trackpads and mice will depend. The player may only use the CLICK ON action when a selection device is part of the computer in question."

An extension port is a kind of container.
	The specification of an extension port is "A generic kind suitable for implementing DVD or CD drive slots, USB ports, and any other realistic or futuristic reader for a data storage device."
	The carrying capacity of an extension port is 1.

A data storage device is a kind of thing.
	The specification of an extension port is "A generic kind suitable for implementing DVD or CDs, flash drives, etc."

Setting action variables for an actor inserting a data storage device into a computer when the second noun incorporates exactly one extension port (called target port) (this is the guess a sensible port rule):
	change the second noun to the target port.

Instead of an actor inserting something which is not a data storage device into an extension port (this is the restrict extension port usage rule):
	if the actor is not the player:
		rule fails;
	say "[The noun] [is-are] not a suitable device for reading with [the second noun]."

Section 2 - Startup Behavior

Understand "boot [a computer]" as switching on. Understand "boot [something]" as switching on.

Understand "reboot [a computer]" as rebooting. Understand "reboot [something]" as rebooting. Understand "restart [a computer]" as rebooting. Understand "restart [something]" as rebooting.

Rebooting is an action applying to one thing.

Check rebooting something which is not a computer (this is the can only reboot computers rule):
	say "[The noun] [is-are] not rebootable." instead.

Carry out rebooting something:
	try switching off the noun;
	if the noun is switched off:
		try switching on the noun.

Report switching on a computer (this is the computers make a noise on starting rule):
	say "[The startup noise of the noun][paragraph break]";
	let target screen be a random screen that is part of the noun;
	try examining the target screen instead.

After examining a switched on computer (this is the report software when examining a functioning computer rule):
	let target screen be a random screen that is part of the noun;
	try examining the target screen.

Section 3 - Screen Appearance

Instead of examining a screen which is part of a switched on computer (called the chosen computer) (this is the view software when looking at a screen rule):
	if the controlling program of the chosen computer is not software:
		say "[The noun] [is-are] displaying a generic system error." instead;
	try examining the controlling program of the chosen computer.

Carry out switching off a computer (this is the screen fades after shutdown rule):
	let chosen screen be a random screen which is part of the noun;
	repeat with item running through things which are part of the chosen screen:
		remove the item from play.

Chapter 2 - Laptops

A laptop is a kind of computer. A laptop can be open or closed. A laptop can be openable. A laptop is usually closed and openable. Understand "computer" or "computers" as a laptop.

A trackpad is a kind of selection device. A trackpad is part of every laptop.

Instead of touching a trackpad (this is the correct insufficient trackpad information rule):
	say "Try CLICK ON (some option) WITH [the noun], or just CLICK ON (option), to make a selection."

Definition: a thing is a concealed component:
	if it is a keyboard and it is part of a closed laptop:
		yes;
	if it is a screen and it is part of closed laptop:
		yes;
	if it is a trackpad and it is part of closed laptop:
		yes;
	no.

Instead of doing something when the noun is a concealed component (this is the inability to act on parts of a closed laptop rule):
	let N be the holder of the noun;
	say "[The N] [is-are] closed at the moment."

Instead of doing something when the second noun is a concealed component (this is the inability to act on secondary parts of a closed laptop rule):
	let N be the holder of the second noun;
	say "[The N] [is-are] closed at the moment."

Before switching on a closed laptop (this is the laptops run open rule):
	say "(opening and starting up [the noun])[command clarification break]";
	silently try opening the noun;
	if the noun is closed:
		stop the action.

Before switching off an open laptop (this is the laptops store closed rule):
	say "(closing and shutting down [the noun])[command clarification break]";
	silently try closing the noun;
	if the noun is open:
		stop the action.

[And because we want to keep the closing and opening in sync with one another:]

Understand "close [laptop]" as switching off.
Understand "open [laptop]" as switching on.

Chapter 3 - Desktop Computers

A desktop computer is a kind of computer.
	A desktop computer is usually fixed in place.
	The description of a desktop computer is usually "It has a dull beige exterior and seems to be trying to avoid attracting attention."

A mouse is a kind of selection device. A mouse is part of every desktop computer. The description of a mouse is usually "Just the ordinary wired variety."

Book 2 - Software

Chapter 1 - Defining Software

Some software is a kind of thing. Understand "software" or "desktop" as software. Some software is part of every computer.

Running relates one computer to various softwares. The verb to run (it runs, they run, it ran, it is run, it is running) implies the running relation.

Software has a number called software priority. The software priority of software is usually 5.

Definition: software is fierce if its software priority is 2 or less.

Chapter 2 - Software Types

Section 1 - Search Engines

A search engine is a kind of software. Understand "search box" or "search" or "search engine" as a search engine.
	The description of a search engine is usually "A search box awaits your search terms."
	A search engine has some text called the no-records response. The no-records response of a search engine is usually "No records found.".
	A search engine has some text called the results-found response. The results-found response of a search engine is usually "Your search turns up the following results:".
	A search engine has a table-name called the data table.

Understand "look up [text] on/in [something]" as consulting it about (with nouns reversed).

Understand "search for [text]" as text-searching when the player can see a switched on computer which is running a search engine. Text-searching is an action applying to one topic.

Carry out text-searching the topic understood (this is the divert searching to input reply rule):
	if a search engine (called the software x) is visible:
		abide by the input handling rules for the software x.

Check someone text-searching (this is the block others searching for text rule):
	stop the action.

Setting action variables for consulting something which is part of a computer (called target) about the topic understood (this is the consult no peripherals rule):
	if the controlling program of the target is software:
		change the noun to the controlling program of the target. [Converts LOOK UP BALLOON ON KEYBOARD to LOOK UP BALLOON ON GOOGLE]

Setting action variables for consulting a computer about the topic understood (this is the consult only software rule):
	if the controlling program of the noun is software:
		change the noun to the controlling program of the noun. [Converts LOOK UP BALLOON ON COMPUTER to LOOK UP BALLOON ON GOOGLE]

Report consulting a search engine about the topic understood (this is the list search hits rule):
	let result count be 0;
	repeat through data table of the noun:
		if topic understood matches the topic entry:
			let result count be result count + 1;
			if result count is 1:
				say "[results-found response of the noun][paragraph break]";
			say "[bold type][title entry][roman type]: [data entry][paragraph break]";
	if the result count is 0:
		say "[no-records response of the noun][paragraph break]";
	rule succeeds.

Table of Sample Data
topic	title	data
"food/cake/yellow" or "yellow cake"	"OnlineRecipes.org"	"A delicious recipe for yellow cake."

Section 2 - Password Locks

A password lock program is a kind of software. The software priority of a password lock program is usually 1.
	The description of a password lock program is usually "A box on the screen invites you to type a password to proceed.".
	A password lock program has some indexed text called the password.
	A password lock program has some text called the rejection. The rejection of a password lock program is usually "'Password incorrect.'"
	A password lock program has some text called the success. The success of a password lock program is usually "The password field vanishes."

Rewarding successful answering of something is an activity.

Rule for rewarding successful answering of a password lock program (called chosen software) (this is the default password resolution rule):
	say "[success of the chosen software][paragraph break]";
	let chosen computer be a random computer which is running the chosen software;
	let the target screen be a random screen which is part of the chosen computer;
	now the chosen software is not run by the chosen computer;
	try examining the target screen.

Section 3 - Multiple Choice Programs

[A multiple-choice program allows the user to pick among several options: as with the search engine, the topic

An options table for a multiple-choice program should have the form

Table of GUI Options
topic	title	effect
"microsoft/word" or "microsoft word"	"Microsoft Word"	open-Word rule
"adobe illustrator" or "adobe/illustrator"	"Adobe Illustrator"	open-Illustrator rule

where the index will be filled in with numbers as appropriate, the title will label each numbered action, and the effect will be executed when the number is selected.]

A multiple-choice program is a kind of software.
	A multiple-choice program has a table-name called the options table.
	A multiple-choice program has some text called the out of bounds response. The out of bounds response is usually "Your selection, '[topic understood]', is not one of the available choices."

The description of a multiple-choice program is usually "[options-list of the item described]".

To say options-list of (chosen program - a multiple-choice program):
	say "The following options are visible on the screen:[paragraph break]";
	repeat through the options table of the chosen program:
		say "[title entry][line break]";
	say "[run paragraph on]".

Section 4 - Enumerated Multiple Choice Programs

[A simplified subset of the above, where options are automatically numbered for the player, who can select by number rather than by

An options table for an enumerated multiple-choice program should have the form

Table of Deeds
index	title	effect
--	"RESTORE ANIMAL-CREATION LIMITS"	bin-messing-up rule
--	"REMOVE ANIMAL-CREATION LIMITS"	bin-opening rule
--	"QUIT"	bin-closing rule

where the index will be filled in with numbers as appropriate, the title will label each numbered action, and the effect will be executed when the number is selected.]

An enumerated multiple-choice program is a kind of multiple-choice program.
	The specification of an enumerated multiple-choice program is "Uses the options table and automatically numbers options rather than letting the player choose keywords to select."
	The out of bounds response is usually "[The item described] beeps: your selection is not one of the available choices."

To say options-list of (chosen program - an enumerated multiple-choice program):
	say "The following options are visible on the screen:[paragraph break]";
	let N be 1;
	repeat through the options table of the chosen program:
		change the index entry to N;
		increase N by 1;
		say "[index entry]: [title entry][line break]";
	say "[run paragraph on]".

Table of Sample Deeds
index	title	effect
a number	some text	a rule

Section 5 - Email Programs

An email program is a kind of software.
	An email program has a table-name called the message table.
	An email program has some text called the new mail message. The new mail message of an email program is usually "You have new mail on [the random computer which is running the item described].".
	The description of an email program is usually "[inbox of the item described]".

To say inbox of (chosen email - an email program):
	if the number of filled rows in the message table of the chosen email is 0:
		say "Your email program is on screen, but no messages are available.";
	else:
		say "The following messages are available for you to read or reply to:[line break]";
		repeat through the message table of the chosen email:
			if there is an arrival time entry:
				LineBreak;
				if the read entry is false:
					say "[bold type]";
				say "[arrival time entry]:";
				say "[message entry]";
				if answered entry is true:
					say "(R)";
				say "[roman type]";
 		say "[run paragraph on]".

Table of Messages
topic	message	arrival time	read	answered	description
"SPAM"	"SPAM"	9:00 AM	false	false	"Money for you from Nigeria!"

To deliver (chosen message - text) to (chosen program - an email program):
	repeat through the message table of the chosen program:
		if message entry is chosen message:
			change the arrival time entry to the time of day;
			if the player can see the chosen program:
				say "[new mail message of the chosen program][paragraph break]";

Understand "read [text]" as email-reading when the player can see a switched on computer which is running an email program. Email-reading is an action applying to one topic.

Carry out email-reading the topic understood (this is the divert email reading to input reply rule):
	if an email program (called the software x) is visible:
		abide by the input handling rules for the software x.

Check someone email-reading (this is the block others reading email rule):
	stop the action.

Understand "reply to [text]" or "answer [text]" as email-replying when the player can see a computer which is running an email program. Email-replying is an action applying to one topic.

Check email-replying (this is the block replying to email rule):
	say "You can't think of any good response." instead

Check someone email-replying (this is the block others replying to email rule):
	stop the action.

Check email-replying (this is the refuse to reply to nonexistent messages rule):
	repeat with chosen software running through visible email programs:
		if the topic understood is a topic listed in the message table of the chosen software:
			if there is an arrival time entry:
				make no decision;
	say "No such message is available." instead.

Carry out email-replying (this is the mark messages replied rule):
	repeat with chosen software running through visible email programs:
		if the topic understood is a topic listed in the message table of the chosen software:
			if there is an arrival time entry:
				change the answered entry to true;
				rule succeeds.

Report email-replying (this is the standard report replying to email rule):
	say "You reply."

Chapter 3 - Which Program Receives Input?

To decide what object is the controlling program of (chosen computer - a computer):
	let the chosen screen be a random screen that is part of the chosen computer;
	repeat with item running through software which is part of chosen screen:
		remove item from play;
	if the chosen computer runs no software:
		decide on nothing;
	else:
		let the chosen program be the fiercest software run by the chosen computer;
		now the chosen program is part of the chosen screen;
		decide on the chosen program.


Chapter 4 - Input Methods

Section 1 - The Typing Action

Understand "type [text] into/on [a keyboard]" as typing it on. Understand "type [text] on/into [something]" as typing it on. Typing it on is an action applying to one topic and one thing.

The typing it on action has an object called the computer in question.
The typing it on action has an object called the software in question (matched as "controlling").

Understand "enter [text] into/on [a keyboard]" as typing it on. Understand "enter [text] into/on [something]" as typing it on.

Understand "type [text]" as typing it on.

Understand the commands "key" and "input" as "type".

Rule for supplying a missing second noun while typing the topic understood on (this is the guess a keyboard while typing rule):
	if the player can touch a keyboard (called target):
		change the second noun to the target;
	else:
		say "You'll have to specify what you want to type on." instead.


Setting action variables for an actor typing the topic understood on something which is not a keyboard (this is the adjust to correct keyboard rule):
	if the second noun is a computer:
		let the relevant keyboard be a random keyboard which is part of the second noun;
		change the second noun to the relevant keyboard;
	else if the second noun is something which is part of a computer (called the relevant computer):
		let the relevant keyboard be a random keyboard which is part of the relevant computer;
		change the second noun to the relevant keyboard;

Setting action variables for an actor typing the topic understood on something (this is the find correct software rule):
	if the second noun is keyboard:
		change the computer in question to a random computer which incorporates the second noun;
		change the software in question to the controlling program of the computer in question. [This kicks the logic back up to chapter 3.]

Check an actor typing the topic understood on something which is not a keyboard (this is the reject typing on non-keyboards rule):
	if the actor is the player:
		say "[The second noun] [is-are] not a keyboard." instead;
	rule fails.

Check an actor typing the topic understood on a keyboard which is part of a switched off computer (called the relevant computer) (this is the reject typing on switched off computers rule):
	if the actor is the player:
		say "[The relevant computer] [is-are] currently switched off.";
	rule fails.

Check an actor typing the topic understood on a keyboard controlling nothing (this is the claim a system error in the absence of software rule):
	if the actor is the player:
		say "[The computer in question] appear[s] to be suffering a system error and has no working software available to interpret your command.";
	rule fails.

Carry out an actor typing the topic understood on a keyboard which is part of a computer (this is the default typing rule):
	abide by the input handling rules for the software in question.


Understand "type on [keyboard]" as contentlessly typing. Understand "type on [something]" as contentlessly typing. Understand "type" as contentlessly typing.

Contentlessly typing is an action applying to one thing.

Rule for supplying a missing noun while contentlessly typing (this is the guess a keyboard while contentlessly typing rule):
	if the player can touch a keyboard (called target):
		change the noun to the target;
	else:
		say "You'll have to specify what you want to type." instead.

Check contentlessly typing:
	say "You'll have to specify what you want to type." instead.


Section 2 - Selection with a Selection Device

Understand "click on [text] with [a selection device]" or "select [text] with [a selection device]" or "pick [text] with [a selection device]" or "click [text] with [a selection device]" as selecting it with.

Understand "click on [text] with [something]" or "select [text] with [something]" or "pick [text] with [something]" or "click [text] with [something]" as selecting it with. Selecting it with is an action applying to a topic and one thing.

Understand "click [text]" or "select [text]" or "click on [text]" or "pick [text]" as selecting it with.

Rule for supplying a missing second noun while selecting the topic understood with (this is the guess a selection device while selecting rule):
	if the player can touch a selection device (called target):
		change the second noun to the target;
	else:
		say "You'll have to specify what you want to click with." instead.

The selecting it with action has an object called the selected computer in question.
The selecting it with action has an object called the selected software in question (matched as "controlling").

Setting action variables for an actor selecting the topic understood with something which is not a selection device (this is the adjust to correct selection device rule):
	if the second noun is a computer:
		let the relevant selection device be a random selection device which is part of the second noun;
		change the second noun to the relevant selection device;
	else if the second noun is something which is part of a computer (called the relevant computer):
		let the relevant selection device be a random selection device which is part of the relevant computer;
		change the second noun to the relevant selection device;

Setting action variables for an actor selecting the topic understood with something (this is the find correct selection device software rule):
	if the second noun is a selection device:
		change the selected computer in question to a random computer which incorporates the second noun;
		change the selected software in question to the controlling program of the selected computer in question. [This kicks the logic back up to chapter 3.]

Check an actor selecting the topic understood with something when the second noun is not a selection device (this is the click only with mice rule):
	if the actor is the player:
		say "[The second noun] [is-are] not a selection tool." instead;
	rule fails.

Check an actor selecting the topic understood with a selection device which is part of a switched off computer (called the relevant computer) (this is the reject mousing on switched off computers rule):
	if the actor is the player:
		say "[The relevant computer] [is-are] currently switched off.";
	rule fails.

Check an actor selecting the topic understood with a selection device controlling nothing (this is the claim a system error in the absence of selection device software rule):
	if the actor is the player:
		say "[The computer in question] appear[s] to be suffering a system error and has no working software available to interpret your command.";
	rule fails.

Carry out an actor selecting the topic understood with a selection device which is part of a computer (this is the default mousing rule):
	abide by the input handling rules for the selected software in question.

Section 3 - Input Handling

Input handling rules are an object-based rulebook.

An input handling rule for a password lock program (called chosen software) (this is the check for correct passwords rule):
	let N be indexed text;
	let N be "[the topic understood]";
	if N is the password of the chosen software:
		carry out the rewarding successful answering activity with the chosen software;
		rule succeeds;
	else:
		say "[rejection of the chosen software][paragraph break]";
		rule fails.

An input handling rule for an enumerated multiple-choice program (called chosen software) (this is the pick a number rule):
	let N be indexed text;
	let N be "[the topic understood]";
	repeat through the options table of the chosen software:
		let numero be indexed text;
		let numero be "[index entry]";
		if N is numero:
			follow the effect entry;
			rule succeeds;
	say "[out of bounds response of the chosen software][paragraph break]";
	try examining the chosen software.

An input handling rule for a multiple-choice program (called chosen software) (this is the pick a choice rule):
	if the topic understood is a topic listed in the options table of the chosen software:
		follow the effect entry;
		rule succeeds;
	else:
		say "[out of bounds response of the chosen software][paragraph break]";
		rule fails.

An input handling rule for a search engine (called chosen software) (this is the consult software rule):
	try consulting the chosen software about the topic understood instead.

An input handling rule for an email program (called chosen software) (this is the read email rule):
	if the topic understood is a topic listed in the message table of the chosen software:
		if there is an arrival time entry:
			say "[description entry][paragraph break]";
			change the read entry to true;
			rule succeeds;
	say "No such message is available.";
	rule fails.

Computers ends here.

---- Documentation ----

"Computers" implements a basic computer set-up. Implemented computers have peripherals: such as a screen and keyboard by default, and others optionally. They may run software; several types of default software are provided. They may also have data ports of various sorts, though the behavior of these ports is minimally elaborated here.

"Computers" does not deal with power sources (either cords or batteries).

Chapter: Hardware

Section: The computer kind; screens and keyboards

A computer is implemented as a device that may be switched on and off. "Computers" supplies every computer with a screen (which can also be called "monitor" by the player) and a keyboard. The keyboard is required for the computer to understand typing; if one is absent, the player will not be able to enter typed commands.

When switched on, a computer plays a startup noise and displays the contents of its screen. We may change the startup noise so:

	The startup noise of the PC is "[The item described] chimes cheerfully."

The contents of the computer's screen will depend on what software the computer is currently running. (See below.)

Section: Laptops and desktops; mice and trackpads

"Computer" has two subordinate kinds, "laptop" and "desktop computer". A laptop may be opened or closed (synonymous with switching it on and off, for simplicity) and has a trackpad. A desktop computer is by default fixed in place and has a mouse.

For non-standard configurations of computer, such as an ATM with a modified keyboard and no mouse/trackpad, we would fall back on the base "computer" kind and add the desired components by hand.

Trackpads and mice are both of the kind "selection device". If a computer does not incorporate any selection device, the player will not be able to click on things to select them on that computer. If we wished to implement a different type of console, we might alternatively make joysticks, touchpads, or trackballs as selection devices.

Section: Extension ports

"Computers" also has the concept of an "extension port", which is a generic kind suitable for implementing DVD or CD drive slots, USB ports, and any other realistic or futuristic reader for a data storage device; and the kind "data storage device", which is the only sort of item that may be placed into an extension port. An extension port may contain exactly one thing at a time.

So for instance we might write

	The CD slot is an extension port. It is part of the old PC.

	The CD-ROM is a data storage device.

...whereupon the CD-ROM may be placed in the CD slot, but nothing else will be permitted.

The extension assumes that the player who types

	INSERT STORAGE DEVICE INTO COMPUTER

really means to insert the storage device into the extension port that is part of the computer. Input will be redirected automatically if a given computer has only one extension port and the situation is unambiguous.

If we have a game in which multiple types of data storage devices exist and are to be placed in multiple types of extension ports, we may need to add subkinds of these two kinds, and restrict more thoroughly which storage devices may be put into which ports.

Furthermore, there is no default treatment of data storage devices or their effect on computers or computer software, as the possibilities are too diverse. We should decide on a per-game basis what happens when a given storage device is hooked up.

The examples show a very simple way to a storage device to extend the range of a search engine program.

Chapter: Software

Section: Software in general

A given computer may be running one or more pieces of software; whichever software is currently dominant receives the input sent by the keyboard, and is also visible when the player looks at the screen or the computer as a whole.

The appearance of the software on the screen is given by the software's description. Thus we might have

	The PC runs a password lock program called rudimentary passcode. The description of rudimentary passcode is "A box on the screen invites you to type a password to proceed."

A computer can run several programs at once, in which case the program with the lowest "software priority" is the one that is considered to be working and receiving input at the moment. By default, most software has a software priority of five, while password lock programs have software priority 1 (meaning they must be dealt with before other software becomes available). If it is intended that the user can change programs manually, we might handle this by changing software priorities during play to make the one in use uppermost; as in

	now the software priority of the email program is 1.

When the player uses a TYPE or CLICK ON command, the topic understood is passed on to the input handling rules. The input handling rules are an object-based rulebook and are keyed to the specific program currently dominant on the computer. One of the several input handling rules looks like this:

	An input handling rule for a multiple-choice program (called chosen software) (this is the pick a choice rule):
		if the topic understood is a topic listed in the options table of the chosen software:
			follow the effect entry;
			rule succeeds;
		else:
			say "[out of bounds response of the chosen software][paragraph 	break]";
			rule fails.

...and consequently we can make new input handling rules for any new software we write, or to customize the behavior of the default software kinds.

Section: Default software kinds

Five types of software are provided by default:

(1) a password lock program that renders the computer inoperable until the password is typed

(2) a search program that returns results on typed searches, as well as to standard syntax such as LOOK UP "whatever" IN SEARCH PROGRAM

(3) a multiple-choice program that allows the user to select options, and runs rules accordingly

(4) an enumerated multiple-choice program (the same kind of thing, but assigning a number to each choice instead of matching them with topic keywords)

(5) an email program capable of organizing incoming and outgoing messages, marking which messages are read, and reporting new arrivals.

Section: Password lock programs

To define a password lock program, we may write something like:

	The PC runs a password lock program called rudimentary passcode. The password of rudimentary passcode is "xyzzy".

Note that because of the way the z-machine handles typed input, the player's input will always be flattened to lower case before it is interpreted. Therefore passwords should always be in lower case.

We may also optionally define two other aspects of a password lock program, namely the text displayed when the player's attempt fails, and that displayed when it succeeds. Thus:

	The rejection of rudimentary passcode is "'Password incorrect.'"
	The success of rudimentary passcode is "The password field vanishes."

Section: Multiple-Choice Programs

A multiple-choice program is one that presents the player with a series of choices to type or click on, and executes a rule whenever one is selected. This is suitable for setting up operating systems, dedicated special-purpose computers such as ATMs, or other interfaces that involve negotiating a series of menus. Items from a multiple-choice list may be selected by typing or by mouse or trackpad if one of these is available.

To set up a multiple-choice program, we must establish an options table like so:

	The operating system is a multiple-choice program. The options table of the operating system is the Table of GUI Options.

	Table of GUI Options
	topic	title	effect
	"microsoft/word" or "microsoft word"	"Microsoft Word"	open-Word rule
	"adobe illustrator" or "adobe/illustrator"	"Adobe Illustrator"	open-Illustrator rule

If we wish a multiple-choice program to function as an operating system allowing access to various other programs on the computer, we might use these effect rules to change the software priority of other programs.

A subkind of multiple-choice program is the enumerated multiple-choice program, for when we wish the player to make a selection by number. Here instead of providing a topic list, we provide an index column, which will contain numbers (but, as these will be chosen at runtime, we do not need to specify them ourselves). We may add lines to the table or remove them again if we wish to change the player's available options.

	The ATM operation program is an enumerated multiple-choice program. The options table of the ATM operation program is the Table of Transactions.

	Table of Transactions
	index	title	effect
	--	"Check balance"	balance-check rule
	--	"Quick cash"	quick-cash rule
	--	"Buy stamps"	stamp-purchase rule
	--	"Cancel"	cancellation rule

Both enumerated and regular multiple-choice programs have a response to print if the player attempts to type or select something that is not understood as an option. We may change this by altering the out of bounds response, like so:

	The out of bounds response of the ATM operation program is "Your selection, '[topic understood]', is not one of the available choices."

Section: Search engines

To define a search engine, we must provide a table of data, such as

	The PC runs a search engine called Goggle. The data table of Goggle is the Table of Goggle Data.

	Table of Goggle Data
	topic	title	data
	"food/cake/yellow" or "yellow cake"	"OnlineRecipes.org"	"A delicious recipe for yellow cake."
	"yellow balloon" or "yellow/balloon"	"PartyPlanning.com"	"How to order yellow balloons online."

In keeping with the behavior of real search engines, this search engine will go through and match every possible topic on the list, reporting all hits, rather than matching only the first instance. This means that output can be very long if the individual descriptions are themselves long, so use with discretion.

Search engines have two pieces of text, the "no-records response" and "results-found response", as defined here:

	The no-records response of a search engine is usually "No records found.".
	The results-found response of a search engine is usually "Your search turns up the following results:".

...and as usual we may modify these to change the way search results are described.

Section: Email

Email is a program that allows the player to receive and read email from a list. To establish the email in an email program, we would write

	The message table of laptop email is Table of Laptop Messages.

	Table of Laptop Messages
	topic	message	arrival time	read	answered	description
	"memo"	"Memo"	9:00 AM	false	false	"Your boss would like to see you in his office right away."
	"SPAM"	"SPAM"	--	false	false	"Money for you from Nigeria!"
	with 10 blank rows.

Note that an arrival time is provided for "memo" but not for "SPAM". That is because memo is understood to have been delivered already, while SPAM has not. To deliver new email, we would write

	deliver "SPAM" to laptop email.

This would mark the spam message, which already exists in the Table of Laptop Messages, as available for the player to read. It would also set the arrival time.

If the player is in view of a switched on computer that is running this program, the arrival of the message will be reported at the moment when it happens. The text of this report is handled by the "new mail message" of the email program, like so:

	The new mail message of an email program is usually "You have new mail on [the random computer which is running the item described].".

To change this output, we would create a different new mail message for the email program in question.

Typing or clicking on one of the topic words will bring up what ever text we have put in the description field, which might be a brief summary or might be the full text of the email in question. READ email will also work.

REPLY TO email is implemented, but generally blocked by the "block replying to email" rule. This is because the behavior of replying to email is likely to vary quite a bit from game to game, depending on whether we want to allow the player some control over the email he composes and what other game-state changes result from sending that email.

If we wish to allow replies to email, we should first unlist the block replying to email rule, like so:

	The block replying to email rule is not listed in any rulebook.

At that point, default behavior of the action is to mark the email replied and to report simply "You reply." It is up to us to elaborate on this in some more interesting way.

Example: * Reading Email - A laptop set up with a password lock program that gives way to email we can read, and a new message that is delivered while we wait.

	*: "Reading Email"

	Include Computers by Emily Short.

	Conference room is a room.

	The conference table is a thing in the Conference Room. The small laptop is a laptop on the conference table.

	The small laptop runs a password lock program called laptop security. Laptop security is privately-named. The password of laptop security is "mulderxox".

	The small laptop runs an email program called laptop email. Laptop email is privately-named.

	The message table of laptop email is Table of Laptop Messages.

	Table of Laptop Messages
	topic	message	arrival time	read	answered	description
	"memo"	"Memo"	9:00 AM	false	false	"Your boss would like to see you in his office right away."
	"SPAM"	"SPAM"	--	false	false	"Money for you from Nigeria!"
	with 10 blank rows.

	At 9:10 AM:
		deliver "SPAM" to laptop email.

	Test me with "turn on laptop / x laptop / x screen / type mulderxox / read memo / read spam / z / z / z / z / z / x screen / read spam / reply to spam".

Example: * USB Drive - A very simple implementation of a laptop that can search for and find new data when a USB stick is inserted into its extension port.

	*: "USB Drive"

	Include Computers by Emily Short.

	The Ventilation Duct is a room.

	The quickbook is a laptop. It is carried by the player.

	The USB port is an extension port. It is part of the quickbook. The player carries a USB stick. The USB stick is a data storage device.

	Generic search is a search engine. The quickbook runs generic search. The data table of generic search is the Table of Dull Data.

	Table of Dull Data
	topic	title	data
	"myself/me/yourself/you/user/profile" or "user profile"	"your user profile"	"None of your user information has been filled in. For security reasons."

	Carry out inserting the usb stick into the USB port:
		now the data table of generic search is the table of secret data.

	Report inserting the usb stick into the USB port:
		say "You plug in the USB stick, making its valuable data available to the quickbook's search engine." instead.

	Carry out taking the usb stick when the usb stick is in the USB port:
		now the data table of generic search is the table of dull data.

	Report taking the USB stick when the USB stick was in the USB port:
		say "You deftly pull out the USB stick again." instead.

	Table of Secret Data
	topic	title	data
	"myself/me/yourself/you/user/profile" or "user profile"	"your user profile"	"None of your user information has been filled in. For security reasons."
	"Coca-Cola" or "recipe" or "coke/coca/cola"	"secret Coca-Cola recipe"	"Scrolling across your screen is the detailed secret recipe for Coca-Cola, including all the elements of the 7X 	formula."

	Test me with "x quickbook / open it / type recipe / insert usb stick in port / look up recipe in computer / take stick / search for recipe / take stick / drop stick / take stick".


Example: ** Operations - A desktop computer running an operating system that in turn allows the player to select and run either the browser or the email program.

We're going to use a multiple-choice program to implement our operating system, and also implement "type quit" and "select quit" to let the player quit out of other programs when he wishes to return to the OS. (By default, the player is not allowed to quit running programs; this makes it easier to implement single-use computers that are good for only one function, which is quite a common arrangement in IF if not in life.)

We also want the computer to revert back to the operating system if switched off while running some other program.

	*: "Operations"

	Include Computers by Emily Short.

	Conference room is a room.

	The conference table is a thing in the Conference Room. The old PC is a desktop computer on the conference table.

	The old PC runs a multiple-choice program called PCOS. PCOS is privately-named. The options table of PCOS is the Table of GUI Options.
		The software priority of PCOS is 1.

	Table of GUI Options
	topic	title	effect
	"mail/email"	"Mail"	open-Mail rule
	"browser/internet"	"Browser"	open-browser rule

	This is the open-Mail rule:
		repeat with item running through software run by the old PC:
			now the software priority of item is 5;
		now the software priority of PC email is 1;
		say "You select the mail.";
		try examining PC email.

	This is the open-Browser rule:
		repeat with item running through software run by the old PC:
			now the software priority of item is 5;
		now the software priority of Goggle is 1;
		say "You select the browser.";
		try examining Goggle.

	The old PC runs an email program called PC email. PC email is privately-named.

	The message table of PC email is Table of PC Messages.

	Table of PC Messages
	topic	message	arrival time	read	answered	description
	"memo"	"Memo"	9:00 AM	false	false	"Your boss would like to see you in his office right away."
	"SPAM"	"SPAM"	--	false	false	"Money for you from Nigeria!"
	with 10 blank rows.

	At 9:10 AM:
		deliver "SPAM" to PC email.

	The PC runs a search engine called Goggle. The data table of Goggle is the Table of Goggle Data.

	Table of Goggle Data
	topic	title	data
	"food/cake/yellow" or "yellow cake"	"OnlineRecipes.org"	"A delicious recipe for yellow cake."
	"yellow balloon" or "yellow/balloon"	"PartyPlanning.com"	"How to order yellow balloons online."

	Software can be quittable. A software is usually not quittable. PC email and Goggle are quittable.

	A first input handling rule for quittable software (called chosen software):
		let N be indexed text;
		let N be the topic understood;
		if N is "quit":
			reset to operating system;
			say "You return to the operating system.";
			try examining PCOS;
			rule succeeds.

	Carry out switching off the old PC:
		reset to operating system.

	To reset to operating system:
		repeat with item running through software run by the old PC:
			now the software priority of item is 5;
		now the software priority of PCOS is 1;

	After examining a quittable software (called chosen software):
		say "You can also select QUIT to return to the operating system."

	Test me with "turn on PC / click browser / look up food on computer / type cake / type quit / type mail on keyboard / select memo / reply to memo / type quit / click browser / turn off PC / turn on PC / click browser / reboot".

Example: *** Balance Checking - An ATM, or automatic teller machine, that requires a debit card and pin before allowing the player access to the main menu screen. Demonstrates the use of extension ports, enumerated multiple-choice programs, and a new software kind from scratch for the welcome screen.

We make the ATM a generic computer that can't be turned on or off. We create the debit card as a "data storage device" (even though, in practice, it's not being accessed for anything important -- but this does mean that we can make the card slot automatically accept it and reject all other kinds of contents).

	*: "Balance Checking"

	Include Computers by Emily Short.

	The Bank Forecourt is a room. The High Street is north of Bank Forecourt.

	The ATM is a computer in the Bank Forecourt. The ATM is switched on. The ATM runs welcome screen. The description is "The ATM is the sort with a small, roughly square screen; a keypad for numeric input; and a slot in which to insert a debit card."

	The examine described devices rule is not listed in any rulebook.

	Instead of switching off the ATM:
		say "Resetting the ATM is only possible for bank employees."

	The player carries a wallet. The wallet contains a debit card. The debit card is a data storage device. The description of the debit card is "It is a red card stamped with numbers and embossed with a hologram of a flying eagle. With a sharp needle, you scratched the PIN 2953 into the upper left corner. You're always forgetting it."

	The slot is an extension port. It is part of the ATM.

	Does the player mean inserting the debit card into the slot: it is very likely.

	The welcome screen is privately-named software. The description of the welcome screen is "WELCOME, reads the screen. PLEASE INSERT CARD TO PROCEED."

	An input handling rule for the welcome screen:
		say "INSERT CARD TO PROCEED, insists the screen.";
		rule fails.

	Carry out inserting the debit card into the slot:
		now the ATM does not run welcome screen;
		now the ATM runs PIN request screen;
		now the ATM runs ATM operation program.

	Report inserting the debit card into the slot:
		say "You slide your card into the slot.";
		let target screen be a random screen that is part of the ATM;
		try examining the target screen instead.

	Instead of taking the debit card when the debit card is in the slot:
		say "You reclaim your card.";
		now the player carries the debit card;
		clear the ATM screen;
		rule succeeds.

	Understand "insert [something]" as inserting it into.

	Rule for supplying a missing second noun when inserting something into:
		if the slot is visible:
			now the second noun is the slot;
		else:
			say "There is no obvious place to insert [the noun]." instead.

	The PIN request screen is a privately-named password lock program. The password of PIN request screen is "2953". The description is "The screen now reads, PLEASE INPUT YOUR PERSONAL IDENTIFICATION NUMBER." The rejection of PIN request screen is "INCORRECT IDENTIFICATION NUMBER. TRY AGAIN."

	The ATM operation program is an enumerated multiple-choice program. The options table of the ATM operation program is the Table of Transactions.

	Table of Transactions
	index	title	effect
	--	"CHECK BALANCE"	balance-check rule
	--	"QUICK CASH"	quick-cash rule
	--	"BUY STAMPS"	stamp-purchase rule
	--	"END TRANSACTION"	cancellation rule

	Price is a kind of value. $99.99 specifies a price.

	Checking account balance is a price that varies. Checking account balance is $2894.82.
	Cash in hand is a price that varies. Cash in hand is $15.97.

	After taking inventory:
		say "You are carrying [cash in hand] in cash."

	This is the balance-check rule:
		say "Your balance is [checking account balance]."

	This is the quick-cash rule:
		if checking account balance < $20.00:
			say "Insufficient funds!" instead;
		decrease checking account balance by $20.00;
		increase cash in hand by $20.00;
		say "The machine spits out a $20 bill.";

	This is the stamp-purchase rule:
		say "The machine is temporarily out of stamps."

	This is the cancellation rule:
		say "The ATM ejects your debit card, which you instinctively take.";
		now the player carries the debit card;
		clear the ATM screen.

	To clear the ATM screen:
		now the ATM runs the welcome screen;
		now the ATM does not run PIN request screen;
		now the ATM does not run ATM operation program;
		let target screen be a random screen that is part of the ATM;
		try examining the target screen.

	Test me with "x atm / x keyboard / turn off atm / reboot atm / i / put wallet in slot / put card in slot / x card / get card / put card in slot / input 3311 / type 2953 / type 1 / input 3 on keyboard / i / input 2 / i / type 1 / type 4 / put card in atm / take card / insert card / type 2953 / take card / type 1 / n / insert card".
