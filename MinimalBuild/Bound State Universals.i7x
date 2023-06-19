Bound State Universals by MinimalBuild begins here.
[These are functions and variables for use in bound states, but bound states are not nessecarily required to use them. Beyond what is in this script, Bound states are Implemented in a spaghetti code manner, so they can be copy pasted and modified into new bound states. when the name of that copied bound state is called, it'll trap the code in a bound state loop using the 'while' keyword, so it will require conditions for exiting the loop(using a variable typically named Trixieexit) and a customized menu. The decision 'decide which text is what the player chooses from (choices - a list of text)' located in 'Basic Functions.i7x' may be useful in creating the menu.]

boundsegment is a number that varies.	[represents the stages of being bound or restricted, ie when gradually being enveloped]
boundmod is a number that varies.
boundcounter is a number that varies.


lustatt is a number that varies. lustatt is usually 0.[lustatt is a temporary libido variable to be modified and used for deciding when the player reaches orgasm so that player libido doesn't change or wind up increasing uncontrollably at the end of the bound state. it is usually set to the players libido before the bound loop begins and after orgasm. At the end of the loop, authors can decide how actual player libido should be affected.]
struggleatt is a number that varies. struggleatt is usually 0. [represents the amount the player has struggled, which can be compared to determine if freedom should be obtained]
bsextimer is a number that varies. bsextimer is usually 0.
boundstate is a truth state that varies. boundstate is usually false.
psycheadjust is a number that varies. psycheadjust is usually 0.
lustadjust is a number that varies. lustadjust is usually 0.

boundrecover is a truth state that varies. boundrecover is usually false. [this has a chance to change to true on each loop. checking it can be useful for situations when you want the player to have a chance of recovering in some way. see 'to checkboundrecover' for details. ]
recoverchance is a number that varies. recoverchance is usually -1.
enduring is a truth state that varies. enduring is usually false.
obliging is a truth state that varies. obliging is usually false.

Section 1 - Routines


[When called on each code loop, this Routine has a chance of setting boundrecover to true that increases each time it is called, then resets when it finally turns true. The next two loops are gaurunteed to false unless boundrecover hasn't been set to false yet before this routune was called. This routine can be useful when the author wants to have a chance of recovering in some way during the bound state, usually for sanity. It is also useful for toggling between displaying the endure option and the recover option in the menu of some bound states. ]
to checkboundrecover:
	if boundrecover is false, increase recoverchance by 1;
	if a random chance of recoverchance in 9 succeeds:
		now boundrecover is true;
		now recoverchance is -1;
	if "Sanity Saver" is listed in the feats of Player, now humanity of Player is 100;[NOTE: Why is this here? makes this feat provide immunity to sanity loss durring bound states, and can be used to increase sanity to max by entering a bound state voluntarily.]

to cleanboundmemory: [Zeroes out all variables used in bound states]
	now boundstate is false;
	now struggleatt is 0;
	now wyvkinocc is 0;
	now wyvkin1att is 0;
	now wyvkin2att is 0;
	now wyvkin3att is 0;
	now wyvkin4att is 0;
	now wyvkin1lib is 0;
	now wyvkin2lib is 0;
	now wyvkin3lib is 0;
	now wyvkin4lib is 0;
	now wyvkin1gen is 0;
	now wyvkin2gen is 0;
	now wyvkin3gen is 0;
	now wyvkin4gen is 0;
	now wyvkinassign is 0;
	now wyvkinatt is 0;
	now lustatt is 0;
	now bsextimer is 0;
	now boundcounter is 0;
	now boundmod is 0;
	now obliging is false;
	now boundrecover is false;
	now recoverchance is -1;
	now enduring is false;
	now boundsegment is 0;

to wyvhumanityroll: [Pending a rename - it's used in all standard vore sanity rolls]
	now tempnum is ((hunger of Player + thirst of Player) / 2) / 10;
	if tempnum < 1, now tempnum is 1;
	let endurvariance be 1;
	if enduring is true, now endurvariance is 2;
	decrease humanity of Player by (((5 * tempnum) + (psycheadjust * tempnum)) - 2 ) / endurvariance;

Section 2 - Templates

[Not Yet Implemented!]
[Below is a simplified version of a bound state that can be copied and modified. warning, try to check for logical inconsistancies when filling it out in case a mistake was made.]
[
to boundstatename:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0: [Beginning of the bound state loop]
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;[generates a random true or false value that can be checked later to do recovery checks.]
		if clearnomore is 0, clear the screen;
		[decide if the player should orgasm before the next phase]
		if lustatt > 99:
			[Orgasm scene goes here.]
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1; [affects the player's libido after the loop ends, could theoretically be any formula]
			now lustatt is Libido of Player; [resets orgasm progress]
			[decide if and how the player's humanity should be affected for orgasming in a bound state, can be rigged to vary depending on if the player is enduring]
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				if struggleatt > 0, decrease struggleatt by 1;
				decrease humanity of Player by 15 + (psycheadjust * 5);


		now enduring is false; [resets enduring so the player can choose to continue doing so in the menu]
		[a situational scene goes here, describing the player's current predicament and bound state. this can vary using [one of]x[or]y[at random] embedded code, or author created variables that change based on options available to the player or other factors the author creates.]
		[describe the player's options, below is an example but it can be edited to be anything]
		say "     You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		[create the menu for the player]
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";
		[decide the outcome of the player losing all humanity, if desirable for the bound state.]
		if humanity of Player < 1:
			now Trixieexit is 1;[allows the bound loop to exit when this current loop ends]
			trigger ending "Sierrasaur's Sex Toy";
			end the story saying "You lost your mind while bound!";
		else:
			[code for fetching input from the player.]
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":[loops the code again to keep prompting for player input when input is invalid]
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";

			[if player input matches the struggle option]
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;[increase struggle progress]
				[decide what should happen here based on the player's current struggle progress. as the player struggles, struggleatt will increase, and the scene can vary based on it or other factors an author creates]
				if struggleatt < 3:
					say "     [one of]You start a bit of a ruckus inside[or]You writhe about and push around[or]You quickly and forcibly make known your protest from within[at random] [one of]this fleshy prison[or]these firm confines[at random], forcing the beast to groan. [if struggleatt is 1]It seems less annoyed and more confused by your disapproval[else]It becomes increasingly difficult for the beast to keep you down. At this rate, it might not see you as worth the trouble[end if].[line break]";
					[This example has a chance to trigger a sex scene. this is optional.]

					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
						[sierrasex;
						if BodyName of Player is "Sierrasaur" and Player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						now bsextimer is 2;
						if BodyName of Player is "Sierrasaur", decrease humanity of Player by 1;
						if FaceName of Player is "Sierrasaur" and "Strong Psyche" is not listed in feats of Player, decrease humanity of Player by 1;
						decrease humanity of Player by 3 + psycheadjust;]
						WaitLineBreak
						[ending of optional sex scene]

					else:
						[increase Lustatt over time, allowing the player to reach orgasm at some point.]
						increase lustatt by 7 + (lustadjust * 2);

						[increase bsextimer by 2;][for optional sex scene timer]
						WaitLineBreak;
				else:
					[describe a successful escape of the bound state as a result of the struggle]
					cleanboundmemory;[This is to prevent interferance with other bound states when they access variables from bound state Universals]
					now Trixieexit is 1;[allows the bound loop to exit when this current loop ends]
					follow the turnpass rule;[trigger the passage of time]
				next;[This keyword stops the code here and immediately begins a new loop starting at the last while keyword used.]

			[if player input matches the obliging option or the abide option]
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;

				if obliging is true:
					[describe what the player does when obliging, and determine what should happen]
					LineBreak;
					[increase lustatt to allow the player to progress to orgasm]
					increase lustatt by 14 + (lustadjust * 2);

				else:
					[describe what the player does and should happen when abiding]
					LineBreak;
					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
					[increase lustatt to allow the player to progress to orgasm]
					increase lustatt by 7 + (lustadjust * 2);
				WaitLineBreak;
				next;

			else: [if player input matches the enduring option.]
				now enduring is true;

				if boundrecover is true:[used in this case to check if the player should recover sanity]
					LineBreak;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					LineBreak;
					SanBoost 3;
					increase lustatt by 5 + (lustadjust * 2);
					now boundrecover is false;[this should be set to false each time it is found to be true so that it resets for the next loop]
				else:
					LineBreak;
					say "     You fight to maintain clarity while stuck in these confines, your captor [one of]choosing to rest for a moment, the weight of its body bearing down on you slightly[or]choosing to mull about idly, with little mind paid to its occupant[or]rumbling lowly in approval of their occupant[at random].";
					LineBreak;

					decrease humanity of Player by 2 + psycheadjust;

					increase lustatt by 5 + (lustadjust * 2);
				WaitLineBreak;
				next;

			say "Invalid action.";[informs the player before restarting the player input loop]
	[this line runs after the bound state ends. if there's anythying that an author wants to happen after that, it could go here.]
]

Section 3 - Modifiers

to libidoeval:
	if "Horny Bastard" is listed in feats of Player: [lust adjust check]
		now lustadjust is 1;
	else if "Cold Fish" is listed in feats of Player:
		now lustadjust is -1;
	else:
		now lustadjust is 0;

to psycheeval:
	if "Weak Psyche" is listed in feats of Player: [psyche adjust check]
		now psycheadjust is 1;
	else if "Strong Psyche" is listed in feats of Player:
		now psycheadjust is -1;
	else:
		now psycheadjust is 0;

Bound State Universals ends here.
