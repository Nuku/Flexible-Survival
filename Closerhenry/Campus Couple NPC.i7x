Version 1 of Campus Couple NPC by Closerhenry begins here.
[ Version 1 - New NPCs ]

[Jadako is pronounced Ja-day-co]

[ CampusCoupleRelationship                                              ]
[   0: Have not met Jadako and Coach Weber                              ]
[   1: Have learned where the couple's room                             ]
[   100: Permanantly locked out of the two.                             ]

CampusCoupleRelationship is a number that varies.

Section 1 - Declaring the Room

[Room Declaration]
Jadako's Room is a room.
The description of Jadako's Room is "[jadakoroomdesc]".

To say jadakoroomdesc:
	say "     Jadako's room is a standard college dorm room. It's got different video game and anime posters hanging throughout, most depicting buff male characters. A television sits on a table with a collection of different DVDs, all of some anime or movie. A large, open glass window is on the other end of the room. Atop it's windowsill are a collection of exotic sex toys, all proudly on display. The sheets to Jadako's bed are thrown about, suggesting he doesn't do a great job of staying tidy.";

Section 2 - Declaring Jadako and Joseph

Jadako is a man.
The description of Jadako is "[jadakodesc]".
The conversation of Jadako is { "<This is nothing but a placeholder!>" }.
The scent of Jadako is "The lithe feline smells of exotic cologn, covering a heavy scent of sex and sweat.".

To say jadakodesc:
	say     "Jadako is an anthro feline. His fur has a variety of different colors, mostly oranges, blacks, and whites. His large cat ears stand straight up, with a single piercing in his left ear. His frame is thin and wiry, but not without muscle. He wears no clothes, displaying his sheathed cock and long tail. You can't currently see it, but you know it is a bright red shaft, humanoid looking but covered in smooth barbs. His golfball sizes testicles hang below the sheath,covered in his orange fur. Jadako notices you checking him out, as he flexes and performs a couple of poses to show off his body more. He lets out a smooth purr, clearly enjoying the attention.";

Joseph is a man.
The description of Joseph is "[josephdesc]".
The conversation of Joseph is { "<This is nothing but a placeholder!>" }.
The scent of Joseph is "The bulky canine smells of sweat and potent male musk.".

To say josephdesc:
	say "     Joseph is an anthro canine. He has shaggy brown fur covering his body, uniform in color. Stemming from the sides of his head are floppy canine ears. The man is muscular and bulky, without a single hint of fat. His thighs are thick with muscle, showing how much he works out. The coach wears his official jacket, colored a bright green with gold colored cuffs, zipper collar, and a gold 'W' on the back, most likely standing for Weber. He also wears a pair of short, black athletic shorts which go down a little more than halfway down his thighs. A small hole is cut in the back for Joseph's fluffy tail. You can see a large bulge in his shorts however, which seems to occasionally twitch. Looking up, you see Joseph staring at Jadako's bare ass, tail raised up. Joseph sees that you notice, and looks away with embarassment.";

Section 3 - Talking to the Couple

Instead of conversing the Jadako:
	if CampusCoupleRelationship < 1 or CampusCoupleRelationship is 100: [should not be available yet]
		say "     ERROR: Jadako shouldn't be where a player can see him yet and said player should not be able to be in the Jadako's Room! Please report to Closerhenry on the FS Discord and quote this tracking number for easier bugfixing: [CampusCoupleRelationship]";
	otherwise:
		say "     You approach the colorful feline, who places his hand on his hip and stands waiting,";
		wait for any key;
		say "[JadakoTalkMenu]";

to say JadakoTalkMenu:
	say "[line break]";
	say "What do you want to talk with Jadako about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Jadako's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Coach Weber";
	now sortorder entry is 2;
	now description entry is "Talk to him about his coach and lover.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sports";
	now sortorder entry is 3;
	now description entry is "Ask him what sport he plays.";
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
				if (nam is "Himself"):
					say "[JadakoTalk1]";
				if (nam is "CoachWeber"):
					say "[JadakoTalk2]";
				if (nam is "Sports"):
					say "[JadakoTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back Jadako, who looks at you a little funny. 'Ok, nevermind, I guess?' he questions.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JadakoTalk1:
	say "     You ask Jadako about himself, where he comes from, and other questions. 'Huh, didn't know you were so interested in me. Well, my parents were immigrants, and they used all the money they had to send me to college here without student loans. That's why I'm still here, you know? I can't let them down after they gave me so much. I didn't have the easiest time adapting here. Most of the people were nice, but there were always the people who picked on me because of my heritage. Thank god that, at least now, no one can tell where you're from anymore, and no one really cares,' he muses. You nod your head in understanding, and put a hand on his shoulder. 'Thanks, I appreciate the support. Things are getting better, especially now that I got with Joseph.'";

to say JadakoTalk2:
	say "     You ask Jadako about his partner, Coach Weber. 'Oh, the coach? He's the best. He always supported me, pushing me to try harder and always do better. I was worried after all of this started that I'd never see him again, but then we found each other... I'll be honest, even before this, I kinda had a crush on him... I never told him, because I thought he'd laugh me off, but now, I'm so happy we're together. Not only is he a great guy, though, he's got a great cock!' Jadako laughs, as his sheath trembles and the tip of his red cock pokes out. Clearly the feline can't get enough of the handsome coach.";

to say JadakoTalk3:
	say "     You inquire about what sports Jadako plays. 'Oh, I do Track and Field. I've never been very good at lifting heavy things, but I'm a natural at running. I always did really great in the events, and my teammates were so proud of me! Some of the few times I really felt wanted and admired. It's also where I met Coach Weber. He's such a great coach, always pushing everyone to try their best, but also being accepting of faults. The perfect mix of encouragement and strictness. I wonder what happened to everyone else on the team, though. Coach Weber is the only one from the team that I've seen since this all started... I'm sure they're fine, being such great runners, they could get away from anything short of a cheetah!' Jadako jokes, however you can tell he is genuinely worried about them.";

Instead of conversing the Joseph:
	if CampusCoupleRelationship < 1 or CampusCoupleRelationship is 100: [should not be available yet]
		say "     ERROR: Joseph shouldn't be where a player can see him yet and said player should not be able to be in the Jadako's Room! Please report to Closerhenry on the FS Discord and quote this tracking number for easier bugfixing: [CampusCoupleRelationship]";
	otherwise:
		say "     You approach the muscular canine, who looks at you warmly. 'Is there something you want to talk about?'";
		wait for any key;
		say "[JosephTalkMenu]";

to say JosephTalkMenu:
	say "[line break]";
	say "What do you want to talk with Joseph about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Joseph's history.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jadako";
	now sortorder entry is 2;
	now description entry is "Talk to him about his student and lover.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sports";
	now sortorder entry is 3;
	now description entry is "Ask him what sport he teaches.";
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
				if (nam is "Himself"):
					say "[JosephTalk1]";
				if (nam is "Jadako"):
					say "[JosephTalk2]";
				if (nam is "Sports"):
					say "[JosephTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back Joseph. He gives you a humorous look, before saying, 'If there's anything you need to talk about, I'm all ears.'";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JosephTalk1:
	say "     You ask Joseph about himself. How did he get his job, where he came from, and other things. 'Well, I always wanted to stick with Track and Field after college, and it just so happened the the previous coach was retiring the year I graduated. The college hired me pretty quickly since I did so well as a student. I think this would have been my 14th year teaching. Shame that this whole thing happened, lots of people got hurt because of it,' he says solumnly, but quickly shakes himself out of the moment of sadness.";

to say JosephTalk2:
	say "     You ask Joseph about Jadako. 'Ah, Jay's a great student. He took Track and Field really seriously. You wouldn't believe how often I'd see him on the track running, trying to build his endurance and speed. He was one of the best students in the program. Had a bit of a problem making friends, though. I'm glad to see that he's gotten a lot more social, though. I'll admit, it surprised me when I met him after all this happened, him being a cat all of a sudden, and then when he came onto me, I guess I realized I always saw a lot of myself in him. I feel bad breaking professionallity, but these are changing times. I'd rather him be with me then some person who'd just take advantage of him,' he states protectively. It seems like these two really do love each other. It makes you happy to know more people experience more than just blind lust.";

to say JosephTalk3:
	say "     You inquire about Track and Field and the team. 'Well, our school may be known for it's football team, but we had one hell of a track team. We'd always place high up, and not just because of my expert coaching skills,' he chuckles. 'No, the students cared a lot about track. Always practicing together and trying help each other, the team was like a family. Sad to say, other than Jadako, I don't know what happened to the other students. I hope they're alright. I don't know what I'd do if I found out something bad happened to them...' You assure him that they're probably fine. He nods, saying, 'Thank you. Usually, the teacher is supposed to give the encouragement, but I appreciate it.'";

Section 4 - Fucking the Couple

Instead of fucking the Jadako:
	if (lastfuck of Jadako - turns < 3): [he got fucked in the last 9 hours = three turns]
		say "     'Hey, sorry to be a bummer, but I'm not really up to it right now... maybe later? Sorry, I'm still a bit worn out from last time,' Jadako sighs.";
	else:
		say "     You ask Jadako how he and Joseph feel about going for a round, who both agree they're up for it.";
		wait for any key;
		say "[CampusCoupleSexMenu]";

Instead of fucking the Joseph:
	if (lastfuck of Joseph - turns < 3): [he got fucked in the last 9 hours = three turns]
		say "     'Sorry to dissapoint, but Jadako is still recovering. You can wait until he's ready, right?' he asks, turning you down.";
	else:
		say "     You ask Joseph how he and Jadako feel about going for a round, who both agree they're up for it.";
		wait for any key;
		say "[CampusCoupleSexMenu]";

to say CampusCoupleSexMenu: 
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Be Spitroasted";
	now sortorder entry is 1;
	now description entry is "Get Spitroasted by the couple";
	[]
	 if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Spitroast Jadako";
		now sortorder entry is 2;
		now description entry is "Spitroast the tiny little feline";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cockworship";
	now sortorder entry is 3;
	now description entry is "Take care of both of their cocks";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Be Spitroasted"):
					say "[CampusCoupleSex1]";
				if (nam is "Spitroast Jadako"):
					say "[CampusCoupleSex2]";
				if (nam is "Cockworship"):
					say "[CampusCoupleSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation";
			if the player consents:
				now sextablerun is 1;
				say "     You change your mind, deciding now isn't a good time. The two understand, since they can always fuck each other later.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say CampusCoupleSex1:
	say "     You suggest that the two lovers take you in between them. Jadako agrees eagerly, happily exclaiming 'Sounds good to me! Isn't everyday I get to top.' Jadako reaches down, lightly stroking his already hard feline cock. [if cunts of player > 0] 'Ok, but I'll just let you know I'm an ass-man,' [else] 'Sounds good to me. I'll take a piece of that ass,' [end if] Joseph chuckles as he walks around behind you, squeezing your ass. You and the coach both strip bare, while Jadako lets out a little laugh. 'You both really should just go au naturel. It's way easier,' he suggests sultrily. Joseph lets out a sarcastic laugh, but you can't help but think you wouldn't mind seeing more of the coach naked. Jadako opens a nearby cabinet and pulls out a bottle of lube, which he tosses to the canine behind you. Coach Weber catches the bottle, but looks at it closely. 'I thought you kept the lube in that cabinet,' the muscular anthro wonders. 'Oh, I do. I also keep some in this cabinet. And the nightstand, and the dresser, and the closet...' Jadako lists.";
	Line Break;
	say "     The room is silent for a moment as you (and most likely Joseph as well) consider why Jadako has so much lube. 'Okaaaaaay...' Joseph says as he uncaps the bottle of lube and gets a healthy amount on his hands. 'You should probably get on your knees now,' Jeremy instructs. You comply to the coach as he rubs the lube over his cock, getting his shaft nice and slippery.";
	
to say CampusCoupleSex2:
	say "     Template";

to say CampusCoupleSex3:
	say "     Template";

Campus Couple NPC ends here.