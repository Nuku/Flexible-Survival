Version 1 of Darius by Wahn begins here.
[Version 1 - New Character]


Section 1 - Introduction

Joe Tales 1 is a situation.
The sarea of Joe Tales 1 is "Nowhere".

after going to Darius's Crib while (HP of Darius > 0 and Joe Tales 1 is not resolved and a random chance of 1 in 3 suceeds):
	say "     As you enter the short hallway to Darius's dingy apartment, you hear voices from ahead. Peeking into the room, it becomes clear that the dalmatian has another visitor right now. A towering doberman is standing next to Darius, sporting a ripped physique with a V-shaped torso. He is dressed in little but a bandanna around his neck and a flimsy pair of shorts with a broad belt at the top. The outline of his weighty cock is very clearly visible through the fabric. Both canines are holding bottles of beer in their hands. As Darius's visitor takes a swallow from his, barks from what sounds like puppies come from the apartment next door, through the hole that has been knocked into the connecting wall. 'Man, you're one lucky dude Dar. Just grabbing yourself a bitch right from the street and having all the tail you need at home, all the time.' The spotted canine laughs and grins at his buddy, 'What can I say Tyke, you just gotta know how to pick em. Hannah is a great bitch, even if she started out as a dude. But not for long once she felt my dick of course.'";
	say "     The doberman's eyes go wide and he makes a choking sound as his beer goes the wrong way, then coughs and gapes at Darius. 'You lucky dog! So she just switched to a babe right away? I'm still not used to how things work these days. Or maybe they don't do so for everyone. Bitches haven't been all that plentiful for myself I have to say.' Tyke is silent for a few seconds, then adds, 'For example, when things were just starting out with all this shit, an Asian dude crossed my path one morning. I thought I'd just threaten him a little bit and get his money, try out my new bod, but nope, even though he was just a human, he threw down and we tussled. Had crazy moves and all that shit, that guy. And the weirdest part was - he kept rubbing my junk as he passed me. Then he kicked my paws out from under me and before I know it, the freaky faggot was ramming his ass down my dick!'";
	WaitLineBreak;
	say "     Tyke grumbles as Darius lets out a full-throated laugh and murmurs, 'Yeah yeah, you're lucky we're friends. What am I supposed to do if most people I run into a flaming faggots who just want to ride my cock? I'm not gay or anything, but some of them admittedly do have some sweet holes on them.' A visible twitch goes through the cock barely contained by Tyke's shorts, prompting Darius to comment, 'Seriously? Chubbing up for the love of your life?' The dobie gives him a punch in the shoulder and replies, 'Oh please! Just saying that the dude had a tight ass that really milked my cock. And a huge ego too - 'Joe Arashi wins again!' he shouted, raising his arms and posing as if people were taking photos of him bouncing on my cock and being blasted full of nut-milk. Bastard splattered me with his come too, then pulled off my dick and just strutted away.'";
	say "     Darius looks at the other canine thoughtfully and smirks. 'Wait, he just stayed human? Man, I think you're shooting blanks or something. Hannah turned right before my eyes in just a few moments. And you know that she's a fully working bitch. I've got enough puppies to prove it.' The large doberman replies, 'Nope, that's not it. I left my share of dobie converts out there over the last little while.' 'Yeah, all dudes who sucked you off I bet,' Darius bursts out in amusement. 'Okay, fuck this. I'll go find myself a bitch right now! Can't call me a fag if I drag a preggers puppy machine here, can you?!' Tyke scoffs and grumbles at his buddy, then stomps out of the apartment, passing you without a glance and throwing the front door shut behind him as he leaves.";
	now Joe Tales 1 is resolved;


Section 3 - NPC

Darius is a man.
The description of Darius is "[DariusDesc]".
The conversation of Darius is { "<This is nothing but a placeholder!>" }.
The scent of Darius is "     ...".

to say DariusDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Darius] <- DEBUG[line break]";
	say "     ...";

Section 3 - Conversation

instead of conversing the Darius:
	say "[DariusTalkMenu]";


to say DariusTalkMenu:
	LineBreak;
	project the figure of Darius_face_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 3;
	now description entry is "Make Darius tell you about his background";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				else if (nam is "Ask him about himself"):
					say "[DariusTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the muscular dalmatian, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say DariusTalk3: [himself]
	say "     ...";

Section 4 - Fucking

instead of fucking the Darius:
	say "[SexWithDarius]";

to say SexWithDarius:
	if (lastfuck of Darius - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Darius doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Darius, <positive reaction at being approached for sex>";
		wait for any key;
		say "[DariusSexMenu]";

to say DariusSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Darius suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Darius off";
	now sortorder entry is 2;
	now description entry is "...";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get a blowjob"):
					say "[DariusSex1]";
				if (nam is "Suck Darius off"):
					say "[DariusSex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

Darius ends here.
