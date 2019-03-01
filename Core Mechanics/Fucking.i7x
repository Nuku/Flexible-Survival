Version 4 of Fucking by Core Mechanics begins here.
[Version 4-AF - April Fool's version w/numerical selection]
[- Originally Authored By: Nuku Valente -]

Section 1 - Fucking action and table

A person has a number called lastfuck. lastfuck is usually 255.
A person has a text called fuckscene. fuckscene is usually "".

Fucking is an action applying to one thing.

Understand "fuck [person]" as fucking;

before fucking:
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;

check fucking:
	if noun is not visible, say "Who?" instead;
	if noun is a pet:
		if noun is not tamed:
			say "Who?" instead;
		else if noun is not companion of player:
			say "I don't see them around right now. You'll have to call them over first." instead;

Carry out fucking:
	if fuckscene of noun is empty:
		if noun is a pet:
			say "You cannot initiate sex with this companion.";
		else:
			say "They don't seem very interested.";
	else:
		say "[fuckscene of noun]";

[No sex responses for some NPCs]
instead of fucking Doctor Matt:
	say "Doctor Matt recognizes the glint of arousal in your eyes as you imagine peeling him out of the suit. He takes a few steps towards the back wall of the room, hovering his hand over the intercom. 'You're not going feral on me, are you? Control yourself, or I'll have to call Orthas!'";

[Fucking v2.0 table]

Table of fucking options
title	sortorder	subtable	description	toggle
"Nothing"	1	--	"Nothing here."	sexytable rule
with 40 blank rows.

This is the sexytable rule:
	say "I'm a placeholder! :)";

sextablerun is a number that varies. sextablerun is usually 0.


Section 2 - Demonstration Example

[*** BELOW IS AN EXAMPLE OF A CHARACTER USING THE NEW FUCKING TABLE SYSTEM ***]
[To build your own, the various Testerbot components would have to be renamed to prevent duplication.]

Table of GameCharacterIDs (continued)
object	name
Testerbot	"Testerbot"

Testerbot is a person.
[ Testerbot is in Primary Lab.	]			[Removed again - testing over]
The description of Testerbot is "[testerbotdesc]".
The conversation of Testerbot is { "Disgusting!" }.
lastfuck of Testerbot is usually 555.

to say testerbotdesc:				[Description]
	say "Testerbot is a boxy robot with a collection of orifices and probes built in, created as part of Dr Matt's continued testing of the infection. There are several buttons, dials and lights on its chest, as well as a pair of handles built onto its sides and another handle of the top of its head. There are several sticky stains on the robot's aluminum chassis. Despite the grin stickered on its face, it is quite aggressively slumped in the corner.";

instead of conversing the Testerbot:	[Talking]
	say "[one of]'Why was I programmed to feel pain?'[or]'You organic creatures are disgusting.'[or]'Why do you lifeforms make so many fluids?'[or]'Why must you use me to satisfy your squishy, biological urges?'[or]'I am unfortunately programmed to submit to your repulsive, animal desires,'[at random] the robot complains.";

the scent of Testerbot is "Testerbot reeks of sex, as that's what it's used for. What a sad, sad life it leads.". [Smell]

the fuckscene of Testerbot is "[sexwithTesterbot]". [Fucking]

to say sexwithTesterbot:
	if lastfuck of Testerbot - turns < 4:
		say "     Having already been used within the last twelve hours, the testerbot needs to recharge.";
	else:
		say "     The testerbot comes over to you, resigned to fulfilling its function.";
		wait for any key;
		say "[testerbotselection]";
		now lastfuck of Testerbot is turns;

[The part below creates the table of options available to the player upon each request for sex.]
[It can be used for NPCs/monsters with numerous (and variable) options, but is not required.]
[This way, a changing player or changing events will be reflected each time.]
[You must ensure that there is always at least one choice available on the menu. The best way...]
[...to do this is to have at least one that has no 'if' requirements.]
[The 'title entry' is the name the displayed option will have. Avoid repetition within the same character's listing.]
[The 'sortorder' entry is the order they'll be displayed to the player in the menu. A different number...]
[...should be used for each, but they don't have to be sequential number, or be written into the selection subroutine.]
[The 'description entry' is the description/added text displayed when confirmation is requested.]
[The 'toggle entry' no longer performs a function when this table is used for numerical selection.]

to say testerbotselection:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Anal";
	now sortorder entry is 5;
	now description entry is "Have the robot fuck your ass.";
	now toggle entry is testerbotsexy rule;
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Face fuck";
		now sortorder entry is 1;
		now description entry is "Use testorbot to orally please you.";
		now toggle entry is testerbotsexy rule;
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Testerbot";
		now sortorder entry is 2;
		now description entry is "Fill one of the robot's pussy-like orifices.";
		now toggle entry is testerbotsexy rule;
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Fucked by Testerbot";
		now sortorder entry is 3;
		now description entry is "Order the robot to push one of those probes in you.";
		now toggle entry is testerbotsexy rule;
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Anal on Testerbot";
		now sortorder entry is 4;
		now description entry is "Fill the robot's anal orifice.";
		now toggle entry is testerbotsexy rule;
	sort the table of fucking options in sortorder order;
	while sextablerun is 0:
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Face fuck":
					say "     Ordering the robot onto its knees, you bring your cock to its false mouth. 'Oh. It is so big,' the robot says in a bored, monotone voice before leaning forward and taking your cock into its mouth. The artificial orifice squeezes and sucks at your cock, leaking some lube to keep the hole slick as you start fucking its face. You grab onto the handle on the top of its head and pound away. You hear a whirr and a click before a recording starts playing of soft, wet moans, clearly lifted from some porno to play on a cassette inside the robot. You pump the robot's face over your cock until finally you grunt and cum hard, blasting your seed into his mouth. Finished, the robot stands up slowly and the leaking cum from the orifice with a disdainful wipe of its hand, then drags itself back over to the corner to plug in and recharge.";
					increase libido of player by 10;
				else if nam is "Fuck Testerbot":
					say "     Ordering the robot onto the floor, you climb over its cold, hard body and line your cock up with its pussy. As you get ready to penetrate the clearly well-used hole, the robot flatly says, 'Go easy. It's my first time.' You thrust into it and start pounding away with a dull clang with every slap against its cold, metal body. The artificial pussy squeezes and clenches around your cock, leaking some lube to keep it pleasantly slick as you fuck that hole. Sitting up, you grab the handles at the robot's side and start fucking harder. You hear a whirr and a click before the robot's internal cassette player starts up with a mix of moans and cries to be fucked harder, clearly recorded from some porn movie. You pound away at the false cunt until finally you cum hard, shooting your seed into it. Finished, the robot stands up and somehow visibly shudders in disgust before slouching its way back to the corner to recharge.";
					decrease libido of player by 15;
				else if nam is "Fucked by Testerbot":
					say "     Spreading your legs, you order the sex robot to fuck you. It sighs audibly before saying, 'Oh baby, you are so hot' in a monotone voice. There is a whirr and clicking sound as one of the probes is moved and locked into position. The dildo attachment slides into you, filling your cunt nicely before a light vibration starts and the robot begins a measured series of thrusts into you. The shapely false cock pumps into you again and again, filling you with pleasure as the rumbling teases your clit. There is a whirr and a click inside the robot before a recording of sex sounds taken from a porno starts up. The sex robot fucks you harder as you reach up and grab its handles, pulling it to pound you harder to drive you to orgasm. Finished, the robot stands up, gingerly unhooks the used probe and holds it at arm length before dropping into a cleaning vat and returning to its seat by the wall socket.";
					decrease libido of player by 15;
				else if nam is "Anal on Testerbot":
					say "     Ordering the robot to bend over, you bring your hard cock to its artificial anal orifice. 'Yes, do me hard... uhhh...' It shudders visibly before continuing. 'I've been... ugh... such a bad robot bitch.' As you sink your cock into it, the robot clenches down on the worktable, cracking the wood a little. Ignoring it, you start thrusting into it as the snug back entrance clenches and squeezes much like an asshole. As you pound away, a hidden cassette player starts up inside the robot, playing some grunts and wet, slapping sounds lifted from a porno. This almost is enough to cover the dull, metal thumps as you bang against the boxy, metal robot's body. Grabbing the robot's side handles, you thrust hard into it and shoot your hot semen into that gripping hole until your balls are drained. Finished its duty, the robot slowly walks back to the wall socket to recharge, leaking your cum as it goes.";
					decrease libido of player by 15;
				else if nam is "Anal":
					say "     At your order, the robot bends you over a worktable. You can her a motor whirring, followed by a clicking sound as one of the probes is moved and locked into position. The robot lines up the cock with your asshole and sighs audibly before saying 'I will make you my bitch' in a monotone voice before sliding the self-lubricating dildo up your butt. You grunt a little as it starts pressing into you, then start to enjoy it as the robot thrusts into you with measured strokes[if player is male]. The cock attachment presses at your prostate with every thrust, pleasantly stimulating the sensitive gland[else]. The cock attachment pleasantly stimulates you as it slides back and forth inside you[end if]. An internal tape player starts up, playing back some grunts and moans from some porno. As the robot pounds into you, the dildo starts to vibrate, increasing the pleasure you receive until finally you cum with a moan of ecstasy. Finished its duty, the robot gingerly unhooks the used probe and holds it at a distance in its pincher hand before releasing it into a cleaning vat. After shuddering and bemoaning that it feels so dirty, the robot slumps back by the wall socket and plugs in to recharge.";
					decrease libido of player by 15;
				wait for any key;
		else:
			say "Invalid Option.";
			wait for any key;
		clear the screen;

[This is the section to put the chosen option into effect, playing out the sex scene.]

[The below method no longer needs to use this rule, but some older implementations still use this column]
This is the testerbotsexy rule:
	say "I'm now redundant! :)";

Fucking ends here.
