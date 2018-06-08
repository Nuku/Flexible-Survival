Version 4 of Questions by Michael Callaghan begins here.

"An extension to allow us to suspend normal parser input to receive and respond to answers to questions."

Chapter 1 - Global provisions for asking questions

Section 1 - Variables for asking questions

Current question is text that varies.
Current prompt is text that varies.
Saved prompt is text that varies.
Current question menu is a list of text that varies.
Current answer is indexed text that varies.

Section 2 - Default command line prompts for asking questions

Closed number prompt is text that varies. Closed number prompt is "Please enter a number >".
Open number prompt is text that varies. Open number prompt is ">".

Closed menu prompt is text that varies. Closed menu prompt is "Please select a number between 1 and [number of entries in current question menu] >".
Open menu prompt is text that varies. Open menu prompt is ">".

Closed yes/no prompt is text that varies. Closed yes/no prompt is "Please enter Y or N (Yes or No) >".
Open yes/no prompt is text that varies. Open yes/no prompt is ">".

Closed gender prompt is text that varies. Closed gender prompt is "Please enter M, F or N (Male or Female or Neuter) >".
Open gender prompt is text that varies. Open gender prompt is ">".

Closed text prompt is text that varies. Closed text prompt is "Please enter your answer >".
Open text prompt is text that varies. Open text prompt is ">".

Section 3 - Flag to determine if the question is open or closed

Closed question mode is a truth state that varies.

Section 4 - Phrase used to ask questions in closed mode

To ask a closed question, in number mode, in menu mode, in yes/no mode, in gender mode or in text mode:
	now closed question mode is true;
	now saved prompt is the command prompt;
	if in number mode:
		if current prompt is "":
			now the command prompt is the closed number prompt;
		else:
			now the command prompt is the current prompt;
		now number question mode is true;
	if in menu mode:
		if current prompt is "":
			now the command prompt is the closed menu prompt;
		else:
			now the command prompt is the current prompt;
		now menu question mode is true;
	if in yes/no mode:
		if current prompt is "":
			now the command prompt is the closed yes/no prompt;
		else:
			now the command prompt is the current prompt;
		now yes/no question mode is true;
	if in gender mode:
		if current prompt is "":
			now the command prompt is the closed gender prompt;
		else:
			now the command prompt is the current prompt;
		now gender question mode is true;
	if in text mode:
		if current prompt is "":
			now the command prompt is the closed text prompt;
		else:
			now the command prompt is the current prompt;
		now text question mode is true;
	if current question is not "":
		say "[current question][line break]";
	if in menu mode:
		repeat with counter running from 1 to the number of entries in the current question menu:
			say "[counter] - [entry counter of the current question menu][line break]";

Section 5 - Phrase used to ask questions in open mode

To ask an open question, in number mode, in menu mode, in yes/no mode, in gender mode or in text mode:
	now closed question mode is false;
	now saved prompt is the command prompt;
	if in number mode:
		if current prompt is "":
			now the command prompt is the open number prompt;
		else:
			now the command prompt is the current prompt;
		now number question mode is true;
	if in menu mode:
		if current prompt is "":
			now the command prompt is the open menu prompt;
		else:
			now the command prompt is the current prompt;
		now menu question mode is true;
	if in yes/no mode:
		if current prompt is "":
			now the command prompt is the open yes/no prompt;
		else:
			now the command prompt is the current prompt;
		now yes/no question mode is true;
	if in gender mode:
		if current prompt is "":
			now the command prompt is the open gender prompt;
		else:
			now the command prompt is the current prompt;
		now gender question mode is true;
	if in text mode:
		if current prompt is "":
			now the command prompt is the open text prompt;
		else:
			now the command prompt is the current prompt;
		now text question mode is true;
	if current question is not "":
		say "[current question][line break]";
	if in menu mode:
		repeat with counter running from 1 to the number of entries in the current question menu:
			say "[counter] - [entry counter of the current question menu][line break]";

Chapter 2 - Questions that require a number answer

Section 1 - Flag to set number question mode

Number question mode is a truth state that varies.

Section 2 - Action for number questions

Number questioning is an action applying to one number.

Understand "[number]" as number questioning when number question mode is true.
Understand "say [number]" as number questioning when number question mode is true.

Section 3 - Rules for number questions

Number question rules is a rulebook.

The number question rules have outcomes exit (success), retry (failure) and parse (failure).

The first number question rule (this is the invalid number reply rule):
	if the player's command does not match "[number]":
		if closed question mode is true:
			retry;
		if closed question mode is false:
			parse.

The last number question rule (this is the default number question rule):
	exit.

Section 4 - Processing number questions

After reading a command when number question mode is true:
	follow the number question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate number question mode;
		follow the every turn rules;
		follow the advance time rule;
		reject the player's command;
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate number question mode.

Section 5 - To deactivate number question mode

To deactivate number question mode:
	now the Command Prompt is the saved prompt;
	now the Current Prompt is "";
	now number question mode is false;

Chapter 3 - Questions that require an answer from a menu

Section 1 - Flag to set menu question mode

Menu question mode is a truth state that varies.

Section 2 - Action for menu questions

Menu questioning is an action applying to one number.

Understand "[number]" as menu questioning when menu question mode is true.
Understand "say [number]" as menu questioning when menu question mode is true.

Section 3 - Rules for menu questions

Menu question rules is a rulebook.

The menu question rules have outcomes exit (success), retry (failure) and parse (failure).

The first menu question rule (this is the invalid menu reply rule):
	if the player's command does not match "[number]":
		if closed question mode is true:
			retry;
		if closed question mode is false:
			parse;
	if the number understood < 1:
		retry;
	if the number understood > the number of entries in the current question menu:
		retry.

The last menu question rule (this is the default menu question rule):
	exit.

Section 4 - Processing menu questions

After reading a command when menu question mode is true:
	follow the menu question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate menu question mode;
		follow the every turn rules;
		follow the advance time rule;
		reject the player's command;
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate menu question mode.

Section 5 - To deactivate menu question mode

To deactivate menu question mode:
	now the Command Prompt is the saved prompt;
	now the Current Prompt is "";
	now menu question mode is false;

Chapter 4 - Questions that require a yes/no answer

Section 1 - Flag to set yes/no question mode

Yes/no question mode is a truth state that varies.

Section 2 - Value for use with yes/no questions

Decision is a kind of value. The decisions are Yes and No.

Understand "Y" as Yes when yes/no question mode is true.
Understand "N" as No when yes/no question mode is true.

Section 3 - Action for yes/no questions

Yes/no questioning is an action applying to one decision.

Understand "[decision]" as yes/no questioning when yes/no question mode is true.
Understand "say [decision]" as yes/no questioning when yes/no question mode is true.

Section 4 - Rules for yes/no questions

Yes/no question rules is a rulebook.

The yes/no question rules have outcomes exit (success), retry (failure) and parse (failure).

The first yes/no question rule (this is the invalid yes/no reply rule):
	if the player's command does not match "[decision]":
		if closed question mode is true:
			retry;
		if closed question mode is false:
			parse.

The last yes/no question rule (this is the default yes/no question rule):
	exit.

Section 5 - Processing yes/no questions

After reading a command when yes/no question mode is true:
	follow the yes/no question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate yes-no question mode;
		follow the every turn rules;
		follow the advance time rule;
		reject the player's command;
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate yes-no question mode.

Section 6 - To deactivate yes/no question mode

To deactivate yes-no question mode:
	now the Command Prompt is the saved prompt;
	now yes/no question mode is false;

Chapter 5 - Questions that require a gender answer

Section 1 - Flag to set gender question mode

Gender question mode is a truth state that varies.

Section 2 - Value for use with gender questions

Gender is a kind of value. The genders are Masculine, Feminine and Neutral.

Understand "M" as Masculine when gender question mode is true.
Understand "F" as Feminine when gender question mode is true.
Understand "N" as Neutral when gender question mode is true.

Section 3 - Action for gender questions

Gender questioning is an action applying to one gender.

Understand "[gender]" as gender questioning when gender question mode is true.
Understand "say [gender]" as gender questioning when gender question mode is true.

Section 4 - Rules for gender questions

Gender question rules is a rulebook.

The gender question rules have outcomes exit (success), retry (failure) and parse (failure).

The first gender question rule (this is the invalid gender reply rule):
	if the player's command does not match "[gender]":
		if closed question mode is true:
			retry;
		if closed question mode is false:
			parse.

The last gender question rule (this is the default gender question rule):
	exit.

Section 5 - Processing gender questions

After reading a command when gender question mode is true:
	follow the gender question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate gender question mode;
		follow the every turn rules;
		follow the advance time rule;
		reject the player's command;
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate gender question mode.

Section 6 - To deactivate gender question mode

To deactivate gender question mode:
	now the Command Prompt is the saved prompt;
	now the Current Prompt is "";
	now gender question mode is false;

Chapter 6 - Questions that require a text answer

Section 1 - Flag to set text question mode

Text question mode is a truth state that varies.
Punctuation removal is a truth state that varies.

Section 2 - Action for text questions

Text questioning is an action applying to one topic.

Understand "[text]" as text questioning when text question mode is true.
Understand "say [text]" as text questioning when text question mode is true.

Section 3 - Rules for text questions

Text question rules is a rulebook.

The text question rules have outcomes exit (success), retry (failure) and parse (failure).

The first text question rule (this is the remove punctuation from text questions rule):
	if punctuation removal is true:
		replace the regular expression "\p" in the current answer with "";

The last text question rule (this is the default text question rule):
	if closed question mode is true:
		retry;
	if closed question mode is false:
		parse.

Section 4 - Processing text questions

After reading a command when text question mode is true:
	now the current answer is the player's command;
	replace the regular expression "^say " in the current answer with "", case insensitively;
	follow the text question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate text question mode;
		follow the every turn rules;
		follow the advance time rule;
		reject the player's command;
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate text question mode.

Section 5 - To deactivate text question mode

To deactivate text question mode:
	now the Command Prompt is the saved prompt;
	now the Current Prompt is "";
	now text question mode is false;

Chapter 7 - Real number question mode (for use with Fixed Point Maths by Michael Callaghan)

Section 1 - Default command line prompts for real numbers

Closed real number prompt is text that varies. Closed real number prompt is "Please enter a number >".
Open real number prompt is text that varies. Open real number prompt is ">".

Section 2 - Phrase to ask a real number question in closed mode

To ask a closed question in real number mode:
	now closed question mode is true;
	now saved prompt is the command prompt;
	if current prompt is "":
		now the command prompt is the closed real number prompt;
	else:
		now the command prompt is the current prompt;
	now real number question mode is true;
	if current question is not "":
		say "[current question][line break]";

Section 3 - Phrase to ask a real number question in open mode

To ask an open question in real number mode:
	now closed question mode is false;
	now saved prompt is the command prompt;
	if current prompt is "":
		now the command prompt is the open real number prompt;
	else:
		now the command prompt is the current prompt;
	now real number question mode is true;
	if current question is not "":
		say "[current question][line break]";

Section 4 - Flag for real number question mode

Real number question mode is a truth state that varies.

Section 5 - Action for real number questions

Real number questioning is an action applying to one real number.

Understand "[real number]" as real number questioning when real number question mode is true.
Understand "say [real number]" as real number questioning when real number question mode is true.

Section 6 - Answer form for real numbers

Current number is a real number that varies.

Section 7 - Rules for real number questions

Real number question rules is a rulebook.

The real number question rules have outcomes exit (success), retry (failure) and parse (failure).

The first real number question rule (this is the invalid real number reply rule):
	let T be indexed text;
	let T be the player's command;
	replace the regular expression "^say " in T with "", case insensitively;
	now the current number is the number derived from T;
	if invalid conversion is true:
		if closed question mode is true:
			retry;
		if closed question mode is false:
			parse.

The last real number question rule (this is the default real number question rule):
	exit.

Section 7 - Processing real number questions

After reading a command when real number question mode is true:
	follow the real number question rules;
	if the outcome of the rulebook is the exit outcome:
		deactivate real number question mode;
		follow the every turn rules;
		follow the advance time rule;
		reject the player's command;
	if the outcome of the rulebook is the retry outcome:
		reject the player's command;
	if the outcome of the rulebook is the parse outcome:
		deactivate real number question mode.

Section 8 - To deactivate real number question mode

To deactivate real number question mode:
	now the Command Prompt is the saved prompt;
	now the Current Prompt is "";
	now real number question mode is false;

Chapter 8 - To decide if we are in question mode

Section 1 - Basic decision (for use without Fixed Point Maths by Michael Callaghan)

To decide if we are asking a question:
	if number question mode is true:
		decide yes;
	if menu question mode is true:
		decide yes;
	if yes/no question mode is true:
		decide yes;
	if gender question mode is true:
		decide yes;
	if text question mode is true:
		decide yes;
	decide no.

Section 2 - Extended decision (for use with Fixed Point Maths by Michael Callaghan)

To decide if we are asking a question:
	if number question mode is true:
		decide yes;
	if menu question mode is true:
		decide yes;
	if yes/no question mode is true:
		decide yes;
	if gender question mode is true:
		decide yes;
	if text question mode is true:
		decide yes;
	if real number question mode is true:
		decide yes;
	decide no.

Questions ends here.

---- DOCUMENTATION ----

This extension allows us to suspend normal parser input to enable questions to be asked and the answers to be processed.

Chapter: About questions

Section: Introduction

During the normal course of a game, the parser responds to commands given by the player. If we type look, the parser interprets the command and displays a description of the current room; if we type N, the player heads North (if that exit is available, and so on.

Occasionally, we may want to ask specific questions and process the answers. Examples may be asking the player's name or age or displaying a menu of options from which the player selects a choice. Answers to these types of questions fall outside the range of the normal parser functions. Therefore we need to intercept the player's answers to these types of questions and respond to them separately.

This extension provides a framework that can be used to ask different types of questions. The mechanics are hidden behind the scenes to allow us to concentrate on asking and responding to a question without having to implement the framework ourselves.

Section: What's new?

Version 1

The first public release of Questions.

Version 2

- Punctuation removal in text questions is now optional.

- Questions can now be used in conjunction with the Fixed Point Maths extension to allow questions that requires a real number to be asked.

- To decide phrase added to determine if we are asking a question.

Many thanks are due to Erik Temple for suggesting the changes implemented in version 2.

Version 3

The variable "current menu" has been changed to "current question menu" to avoid a namespace clash with Emily Short's Menu extension.

Version 4

Deprecated phases have been removed from the extension and the examples.

Chapter: Types of questions

Section: Overview

The extension allow us to ask questions that require different types of answers. The following questions types are allowed:

- Questions that require a number as an answer.

- Questions that require an item from a menu to be chosen.

- Questions that require a Yes or No answer.

- Questions that require a gender selection (Male, Female or Neuter).

- Questions that require a text answer.

- Questions that require a real number answer. For use in conjunction with the Fixed Point Maths extension by Michael Callaghan.

Section: Using this extension with fixed point maths

In order to use this extension with the fixed point maths extension, the fixed point maths extension must be included in our game before we include this extension.

Section: Open and closed questions

The extension makes a distinction between "open" and "closed" questions. The difference between the two is that closed questions will not allow the game to proceed unless and until we specify that a correct answer has been given to a question. With open questions, if an 'incorrect 'reply is given, the game proceeds and tries to parse the player's command using the normal parser rules. For example, if we ask the question "How old are you?" expecting a number answer, the extension will deal with replies differently depending on whether we ask an open or a closed question.

Open questions:

If player answered "inv" to a number question, the extension will exit question mode and proceed to parse the answer normally. In this case, the player's inventory will be displayed.
If the player answered 12, we determine whether this is an acceptable answer. If the answer is acceptable, the extension exits question mode and the play resumes. If the answer is unacceptable, for example the player enters 234 when asked his or her age, we can specify whether the question needs to asked again or whether play should proceed without an answer.

Closed questions:

If the player answered "inv", the answer will be rejected and the player will need to answer the question again.
If the player answered 12, we determine whether this is an acceptable answer. If the answer is acceptable, the game exits question mode and proceeds as normal. If the answer is unacceptable, for example the player enters 234, the player will need to answer the question again.

Section: Flag for open or closed questions

To test if a question is an open or a closed question, we can use the 'closed question mode' flag:

	if closed question mode is true:
		do this.

	if closed question mode is false:
		do that.

Chapter: Asking questions

Section: Setting the current question

To ask a question, we first set the text for the question. The form is:

	now the current question is "How old are you?";

Section: Setting items for menu questions

Before we ask a question that requires an answer from a menu of options, we need to set the menu items to be displayed. We do this by setting the variable "current question menu" to the list of options that we require.

	now current question is "What is your favorite color? >";
	now current question menu is {"Red", "Blue", "Green", "Yellow"};
	ask a closed question, in menu mode.

Section: Asking the question in closed question mode

To ask the question in closed mode, we use the following forms for closed questions:

	ask a closed question, in number mode;

	ask a closed question, in menu mode;

	ask a closed question, in yes/no mode;

	ask a closed question, in gender mode;

	ask a closed question, in text mode;

	ask a closed question in real number mode;

Note the slightly different syntax, omitting the comma, for real number mode.

Section: Asking the question in open question mode

To ask the question in open mode, we use the following forms for open questions:

	ask an open question, in number mode;

	ask an open question, in menu mode;

	ask an open question, in yes/no mode;

	ask an open question, in gender mode;

	ask an open question, in text mode;

	ask an open question in real number mode;

Note the slightly different syntax, omitting the comma, for real number mode.

Chapter: Setting the command prompt for questions

Section: Overview

When a question is asked, we can change the command prompt to indicate to the player that a question is being asked. By default, the extension sets a series of default prompts. These are specific to the type of question being asked; they are:

	Closed number prompt: "Please enter a number >".

	Open number prompt: ">".

	Closed menu prompt: "Please select a number between 1 and [number of entries in current question menu] >".

	Open menu prompt is ">".

	Closed yes/no prompt: "Please enter Y or N (Yes or No) >".

	Open yes/no prompt: ">".

	Closed gender prompt: "Please enter M, F or N (Male or Female or Neuter) >".

	Open gender prompt: ">".

	Closed text prompt: "Please enter your answer >".

	Open text prompt ">".

	Closed real number prompt: "Please enter a number >".

	Open real number prompt: ">".


Section: Changing the question prompt

To change the question prompt, we set the variable "current prompt" to the text that we want:

	Now current question is "How old are you?";
	Now the current prompt is "Enter a number between 5 and 111: >"
	Ask a closed question, in number mode.

If we set the current prompt to "", the relevant default prompt outlined above will be used.

Section: Combining the question and prompt

We can combine the question and the prompt. To do so, we set the current question to a blank string and the question prompt to the question that we want to ask:

	now current question is "";
	now current prompt is "What is your name? >";
	ask a closed question, in text mode.

Chapter: Responding to the answers given

Section: Player input

The player can answer a question by typing the number, menu number, yes / no response, gender response or text.
The player can also answer a question by using the form 'say X' where X is the answer given.

Section: Rulebooks

When we answer a question, the answer is processed by a rulebook. By adding our own rules in the game, we can tailor the Questions extension to provide the functionality that we require.

Each type of question has its own rulebook. These are:

Number questions: The number question rules.

Menu questions: The menu question rules.

Yes/No questions: The yes/no question rules.

Gender questions: The gender questions rules.

Text questions: The text question rules.

Real number questions: The real number question rules.

Section: Rulebook outcomes

Each rulebook has three named outcomes that we can use to control how the game proceeds. The outcomes are:

Exit: The answer to the question is discarded and the game proceeds as normal. Usually, we will have used the answer to set other conditions in the game before we use exit. The exit outcome automatically advances the game by one turn.

Retry: The answer to the question is discarded but we remain in question mode awaiting another answer. Usually, this will be because the answer to the question is not a valid answer.

Parse: The answer to the question is not disregarded and the question mode ends leaving the answer to be parsed as normal. Usually, we use this where there is an open question.

Section: Default rules

Each rulebook has default rules. If we do not create our own rules, the default rules control how answers are processed. The default rules are set out below.

Section: Adding our own rules

We can add our own rules in the game. For example:

	A number question rule (this is the set age rating rule):
		if the current question is "How old are you?":
			if the number understood < 5:
				say "It seems unlikely that a person of such tender years would be playing this game.";
				retry;
			if the number understood > 111:
				say "I find it hard to believe that this is your real age. Please be more realistic.";
				retry;
			if the number understood < 21:
				say "Setting the game mode to mild!";
				now gamemode is mild;
			else:
				say "Setting the game mode to crude!";
				now gamemode is crude;
			exit.

	A menu question rule (this is the channel rule):
		if the current question is "Which channel would you like to watch on the telly?":
			if the number understood is 1:
				say "Raucous music blasts out from the local music TV station.";
			if the number understood is 2:
				say "The film that comes on is so raunchy that even a hard-bitten army sergeant would blush with shame";
			if the number understood is 3:
				say "The latest trend in reality TV assails you - celebrity navel transplants!";
			if the number understood is 4:
				say "You stomach turns with disgust - the collected speeches of George Bush begin to play.";
			exit.

Section: Rules for number questions

We test the answer to a number question using the phrase 'the number understood'.

There are two default rules for processing answers to number questions.

The first rule, called 'the invalid number reply rule', operates where the player enters an answer to a number question that is not a number. If the question is a closed number question, the outcome is retry. If the question is an open question, the outcome is parse.

The last rule, called 'the default number question rule', has the outcome exit.

Section: Rules for menu questions

We test the answer to menu questions using the phrase 'the number understood'. The value should be between 1 and the number of items in the menu.

There are two default rules for processing answers to menu questions.

The first rule, called the 'invalid menu reply rule' first tests whether the player has entered a number. If the player has entered an answer that is not a number, the outcome is retry if the question was a closed menu question or parse if the question was an open menu question. If a numbered was entered that falls outside the range 1 to the number of items in the menu, the outcome is retry for both open and closed menu questions.

The last rule, called the 'default menu rule', has the outcome exit.

Section: Rules for Yes/No questions

We test the answer to yes/no questions using the phrase 'the decision understood'. The decision understood takes one of two values, 'Yes' or 'No'. 'Y' and 'N' are understood as Yes and No when the player types their response.

There are two default rules for processing the answers to yes/no questions.

The first rule, called the 'invalid yes/no reply rule' tests whether the player has entered Yes or No. If the player has not so responded, the outcome is retry if the question is a closed yes/no question or parse if the question is a closed menu question.

The last rule, called the 'default yes/no rule', has the outcome exit.

Section: Rules for gender questions

The test the answer to gender questions using the phrase 'the gender understood'. The gender understood takes one of three values, 'Masculine', 'Feminine' or 'Neutral'. 'M', 'F' and 'N' are understood as Masculine, Feminine and Neutral when the player types their response. Neutral is used instead of Neuter as Neuter is defined as an adjective in I7.

There are two default rules for processing the answers to gender questions.

The first rule, called the 'invalid gender reply rule' tests whether the player has entered a valid gender. If the player has not entered a valid gender, the outcome is retry if the question is a closed gender question or parse if the question is an open gender question.

The last rule, called the 'default gender rule', has the outcome exit.

Section: Rules for text questions

We test the answer to text questions using the variable "current answer". The current answer is set to the player's answer. If the answer was given in the form "say answer", the word "say" and the following space is also removed.

There are two default rules for text questions.

The first rule, called the 'remove punctuation from text questions rule' determines whether or not punctuation is removed from the player's answer before it is processed. We can control punctuation removal by setting the truth state 'punctuation removal'.

	now punctuation removal is true;
	now punctuation removal is false;

The last rule is called the 'default text rule'. If the question was a closed text question, the outcome is retry. If the question was an open text question, the outcome is parse.

Section: Rules for real number questions

We test the answer to a real number question using the variable "current number".

There are two default rules for processing answers to real number questions.

The first rule, called 'the invalid real number reply rule', operates where the player enters an answer to a real number question that is not a real number. If the question is a closed real number question, the outcome is retry. If the question is an open real number question, the outcome is parse.

The last rule, called 'the default real number question rule', has the outcome exit.

Chapter: Determining whether or not we are asking a question

If we need to determine whether or not we are currently asking a question, for example as a test in another rulebook, we can do so by using the phrase 'If we are asking a question'. This will decide Yes if an open or closed question is being asked.

Example: * Open Sesame - A short example to show the question rules with an initial open text question followed by an interview section to gather information about the player.

	*: "Open Sesame" by Michael Callaghan

	Include questions by Michael Callaghan.

	Canyon is a room. "You are at the far end of a canyon. A recent rock fall behind you prevents all further hopes of escape. A large boulder to the east emits a faint green light."

	A large boulder is a door. The large boulder is locked and closed.

	The large boulder is scenery. The description is "Inscribed in runic letters on the face of the boulder are the words 'Solve Oriel's Myth to find your way forward.'"

	Instead of doing anything other than examining the large boulder:
		say "There is an aura of magic about the large boulder that prevents you doing this.";

	Small cave is a room. "A flight of steps leads down into the darkness."

	The large boulder is east of the canyon and west of the small cave.

	Introduction is a scene.
	Introduction begins when play begins.
	Introduction ends when the large boulder is open.

	When introduction begins:
		follow the set open sesame rule.

	Every turn when introduction is happening (this is the set open sesame rule):
		now current question is "";
		now current prompt is ">";
		now punctuation removal is true;
		ask an open question, in text mode.

	A text question rule (this is the open sesame rule):
		if introduction is happening:
			if the current answer is "emily short":
				say "With an eerie screech, the boulder rolls to one side.";
				now the large boulder is open;
				now the large boulder is unopenable;
				exit;
			else:
				parse.

	Room of requirements is a room. Room of requirements is down from the small cave. The description is "The room smells musty.[If unvisited]  An alien presence invades your mind and deep in your bones you hear a voice echo 'Welcome brave soul. You have passed the first hurdle. Before you proceed, you must answer the following questions.'"

	Instead of doing anything in the room of requirements when gathering is happening:
		say "You are under a strange compulsion and unable to move.";

	Data is a kind of value. The data are name, age, sex, character, finalise and complete.

	Gathering is a scene. Gathering begins when the location is the room of requirements.
	Gathering ends when stage is complete.
	Stage is data that varies.

	When Gathering begins:
		now stage is name;

	Every turn during Gathering:
		if stage is name:
			now current question is "What is your name?";
			now current prompt is "Enter your name >";
			now punctuation removal is false;
			ask a closed question, in text mode;
		if stage is age:
			now current question is "How old are you?";
			ask a closed question, in number mode;
		if stage is sex:
			now current question is "Do you want to play as a male, female or neutral character";
			ask a closed question, in gender mode;
		if stage is character:
			now current question is "Which of the following is your preferred character type:";
			now current question menu is {"Wizard", "Warrior", "Sage", "Healer"};
			ask a closed question, in menu mode;
		if stage is finalise:
			say "You have chosen:[line break]Name: [player's name][line break]Age: [Player's age][line break]Sex: [Player's sex][line break]Character: [Player's character][paragraph break]";
			now current question is "Are you happy with your responses?";
			ask a closed question, in yes/no mode.

	The player's name is indexed text that varies.
	The player's age is a number that varies.
	The player's sex is a gender that varies.
	The player's character is text that varies.

	A text question rule (this is the gather name rule):
		if gathering is happening and stage is name:
			if the number of words in the current answer > 1:
				say "I think we will simply refer to you as [word number 1 in the current answer][line break]";
				now the player's name is word number 1 in the current answer;
			else:
				now the player's name is the current answer;
				say "Welcome to this venture, [player's name][line break]";
			now stage is age;
			exit.

	A number question rule (this is the gather age rule):
		if gathering is happening and stage is age:
			if the number understood < 5:
				say "It seems improbable that one of such tender years would be venturing so far.[line break]";
				retry;
			if the number understood > 111:
				say "Let's try to be realistic about this.";
				retry;
			now the player's age is the number understood;
			say "Thank you: You are [the player's age] for the remainder of your venture into the unknown[line break]";
			now stage is sex;
			exit.

	A gender question rule (this is the gather gender rule):
		if gathering is happening and stage is sex:
			now the player's sex is the gender understood;
			say "Thank you. You are [the player's sex] gender[line break]";
			now stage is character;
			exit.

	A menu question rule (this is the gather character rule):
		if gathering is happening and stage is character:
			let temp be the number understood;
			now the player's character is entry temp in the current question menu;
			say "Thank you, you are playing as a [player's character][line break]";
			now stage is finalise;
			exit.

	A yes/no question rule (this is the confirm answers rule):
		if gathering is happening and stage is finalise:
			if the decision understood is Yes:
				say "Thank you. Venture into the unknown brave [the player's character][line break]";
				now stage is complete;
				exit;
			else:
				say "OK. Let's start again, shall we[line break]";
				now stage is name;
				exit.

	Test me with "x boulder / push boulder/ say Emily Short / e / d / Peter / 34 / M / 3 / Y".

Example: * Quiz Night - A short example to show creating a multiple choice quiz.

	*: "Quiz Night" by Michael Callaghan

	Include questions by Michael Callaghan.

	The pub is a room. "The pub is crowded for the weekly quiz night. The barman is ready to call out the questions. Get one wrong and you will be barred from the pub for life."

	After looking for the first time:
		follow the pub rule.

	Table of quiz questions
	Qn	Options	Correct
	"In which year was the Battle of Hastings"	{"1256", "1066", "1589", "1790"}	2
	"What type of animal is Basil Brush"	{"Cat", "Dog", "Rabbit", "Fox"}	4
	"What is the square root of 126736?"	{"356", "289", "421", "321"}	1
	"How many books are there in the Old Testament"	{"23", "39", "37", "41"}	2
	"What is a Cantaloupe?"	{"Animal", "Star", "Fruit", "Vegetable"}	3

	The expected answer is a number that varies.

	Every turn when the location is the pub (this is the pub rule):
		choose a random row in the table of quiz questions;
		now current question is the Qn entry;
		now current question menu is the Options entry;
		now expected answer is the correct entry;
		blank out the whole row;
		ask a closed question, in menu mode.

	A menu question rule (this is the pub answer rule):
		if the number understood is the expected answer:
			if the table of quiz questions is not empty:
				say "Well done. You have survived to the next round.";
			else:
				end the story finally saying "Congratulations you have won!";
		else:
			end the story finally saying "You have been barred from the pub for getting a question wrong.";
