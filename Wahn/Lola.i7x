Version 1 of Lola by Wahn begins here.
[ Version 1.0 - New NPC - by Wahn  ]

Lola is a woman. The HP of Lola is usually 0.
The description of Lola is "[LolaDesc]".
The conversation of Lola is { "<This is nothing but a placeholder!>" }.
The scent of Lola is "     Lola has a light, floral scent with an underlying note of clean fur.".

to say LolaDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Lola: [HP of Lola] <- DEBUG[line break]";
	say "     The bunny-girl before you is a young woman with snow-white fur, as well as platinum-blonde hair hanging down to the middle of her back. It is pulled into a tight ponytail, the hairdo suiting Lola's confident character well. While she may be dressed in the typical short skirt and light blouse made from slightly translucent fabric, the bunny is clearly more than just a pliant office girl. She meets your gaze openly, raising an eyebrow at the fact that you're checking her out, followed by a slight rise in the corner of her mouth. Something tells you that she enjoys being the object of someone's desires, coupled with the power that this earns her over the other.";

instead of conversing the Lola:
	if HP of Lola is 0: [first time]
		say "     As you approach the bunny girl's desk, she acknowledges your presence with a businesslike smile and says, 'Just a second,' before she finishes typing a sentence or two in the document she has open. Saving it and locking her workstation with a practiced move of her slender fingers, she stands up and points the way at one of the glass-walled side rooms. 'Why don't we have our chat in there, [sir].' You allow yourself to be led into the small meeting room, where Lola closes the glass door to give you some privacy. ";
		if libido of Melanie is 1: [player groped during the introduction]
			say "She ignores the table and chairs in the little room, instead just looking at you with a somewhat confrontational expression on her face and crossing her arms. 'While we're talking in private here, let me make some things clear: You're not my boss. I don't work for you. What I am is the key account manager dealing with Mr. Branson's most important clients.'";
			say "     Lola lets her words sink in for a second, her face never wavering from the uncompromising expression she is giving you. Her stony gaze makes additional words of explanation unnecessary, as you can easily guess that making any unrequited moves on her wouldn't end well for you. 'I'm glad we understand each other,' she states with a smile that would have been at home with a proud lioness. Casually waving at the desk next to her own where the pretty Labrador girl of the team is sitting, Lola adds in a business-like tone, 'But of course, as a business partner of Mr. Branson, you will be treated as a welcome guest here. My assistant Elise will take care of your needs, whatever they may be. She's a good girl - it's in her nature.' It isn't hard to recognize the air of superiority in her tone as Lola says this. Seems like she doesn't have too high an opinion of Elise's intelligence.";
			WaitLineBreak;
			say "     After waiting a few seconds, Lola turns her head to direct your attention to the other desks more toward the front of the room, occupied by a regal tigress and the second bunny girl of the bunch. The anthro woman explains, 'Bella is a junior manager. She can make her own arrangements with you. As for her assistant - Layla, my little sister - she'll spread her legs at the drop of a hat for anyone. She's always been that way.' Sighing about the low standards of her twin, Lola calmly adds, 'But she's family, you know. I'll gut you if you hurt her, so you'd best control any violent impulses you may have.' The matter of fact way she says those words creates the impression that this bunny girl is definitely ready to make good on her threat despite her delicate build.";
			say "     'Glad we had this talk. Have a nice day in our office,' your conversation partner adds, and her practiced smile returns effortlessly as she turns and opens the door. Without waiting for a reaction, she walks back over to her desk and takes a seat.";
		else if libido of Melanie is 2: [player was business-like during introduction]
			say "She and you take a seat at the table in the little room, with the white-furred anthro leaning back a little in her chair. The move pushes out her breasts just a little bit and gives her an air of confident security, as you are on Lola's turf here. 'While we're talking in private, let me make some things clear: While you are a business partner for Mr. Branson, and a new, junior partner at that, I still am the key account manager dealing with his most important clients. I'm sure we won't have any problems as long as you remember this.'";
			say "     Lola lets her words sink in for a second, her face friendly in a professional way that does little to mask her rock-solid will. 'I'm glad we understand each other,' she states with a smile that would have been at home with a proud lioness. Casually waving towards the desk next to her own where the pretty Labrador girl of the team is sitting, Lola adds in a business-like tone, 'But of course, as a business partner of Mr. Branson, you will be treated as a welcome guest here. My assistant Elise will take care of your needs, whatever they may be. She's a good girl - it's in her nature.' It isn't hard to recognize the air of superiority in her tone as Lola says this. Seems like she doesn't have too high an opinion of Elise's intelligence.";
			WaitLineBreak;
			say "     After waiting a few seconds, Lola turns her head to direct your attention to the other desks more toward the front of the room, occupied by a regal tigress and the second bunny girl of the bunch. The anthro woman explains, 'Bella is a junior manager, she can make her own arrangements with you. As for her assistant Layla, who is also my little sister...' Lola stops for a second and lets out a short sigh. 'I won't mince words. She's a slut, but that doesn't mean she isn't my family. Do not hurt her, or we'll have some words.' The calm way she says that makes you guess that it'll be more than just words she has for you in that case, and despite her delicate build as a slender and not too tall female, you're fairly certain that she could make quite an impact if antagonized.";
			say "     'Glad we had this talk. Have a nice day in our office,' your conversation partner adds, and her practiced smile returns effortlessly as she stands up and gives you a respectful nod. Without waiting for a reaction, she walks out of the room and goes back to her desk.";
		else if libido of Melanie is 3: [player was friendly during introduction]
			say "She and you take a seat at the table in the little room, with the white-furred anthro leaning back a little in her chair. The move pushes out her breasts just a little bit and gives her an air of confident security, as you are on Lola's turf here. 'You do seem like a nice enough person, but let me make one thing clear: I am the key account manager dealing with Mr. Branson's most important clients. As long as you remember that, I'm sure we won't have any problems.'";
			say "     Lola lets her words sink in for a second, her face friendly but still showing some of her underlying, rock-solid will. She holds you in her gaze long enough to ensure you know that she's a person to be reckoned with, then relaxes in a slight but still noticeable way. 'Anyways, glad to have you on the team. The fact that you turned on the power and got us that data really moved Mr. B's plans ahead. And another friendly face in here is great, especially with so many beasts and assholes roaming the streets these days.' Something else fills Lola's eyes for a second, and you can't help but feel like you're being evaluated as a potential mate by not a bunny, but a proud lioness. Seems like you didn't rate too badly, as she shows a slight, somewhat calculating smile before letting her gaze wander towards the desks in the office.";
			WaitLineBreak;
			say "     'Of course, as a business-partner of Mr. Branson, you will be treated as a welcome guest here. Should you need anything, my assistant Elise will take care of your needs, whatever they may be. She's a good girl - it's in her nature.' It isn't hard to recognize the air of superiority in her tone as Lola says this. Seems like she doesn't have too high an opinion of Elise's intelligence. After waiting a few seconds, Lola turns her head to direct your attention to the other desks more toward the front of the room, occupied by a regal tigress and the second bunny girl of the bunch. The anthro woman explains, 'Bella is a junior manager, she can make her own arrangements with you. As for her assistant Layla...' Lola stops for a second and lets out a short sigh, 'I won't mince words about my little sis[']. She's a slut. I don't doubt she'll offer herself to you. Do treat her nicely when she does, please.'";
			say "     Looking at you again in that same look of beginning sexual interest she had before, Lola stays silent for a few seconds, then glances at her watch. 'Guess I should get back to work. Glad we had this talk. Have a nice day in our office,' your conversation partner adds and stands up. She lightly pats your shoulder as she passes you, then makes her way back to her desk.";
		now HP of Lola is 1;
	else if HP of Lola is 1:
		say "[LolaTalkMenu]";


to say LolaSexMenu:
	LineBreak;
	say "     What do you want to talk with her about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mr. Branson";
	now sortorder entry is 1;
	now description entry is "Talk about the boss";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her sister Layla";
	now sortorder entry is 1;
	now description entry is "Talk about Lola's twin";
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
				if (nam is "Mr. Branson"):
					say "[LolaTalk1]";
				if (nam is "Her sister Layla"):
					say "[LolaTalk2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the white-furred bunny, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say LolaTalk1: [Mr. Branson]
	say "     A";

to say LolaTalk2: [Layla]
	say "     A";

instead of fucking the Lola:
	if (lastfuck of Lola - turns < 6): [she got fucked in the last 18 hours = 6 turns]
		say "     Raising an eyebrow to a slightly annoyed tilt, Lola gives you an incredulous look. 'Not everyone can just laze around and fuck away the hours of a given day, you know. I am busy right now.' She turns back to her monitor and types on the keyboard for a moment, then notices you haven't left and adds in a sharp tone, 'I meant it. For all I care, you can go ask Elise to share the tennis ball she keeps and chase that around right now.'";
	else if HP of Lola is 0: [never talked to her]
		say "     This building doesn't really seem to be the place where you can just walk up to anyone and grab them to have your way with. You should at least talk to her first.";
	else: [ready for sex]
		say "     As you walk up to Lola, she instantly catches the lusty impression in your eyes and gives you a calculating look. Pushing back her office chair and crossing her legs, the bunny-girl strikes a pose that makes you feel like a supplicant approaching a noblewoman. 'Yes? Did you want something?' she asks in an artfully sweet voice, not quite masking her underlying expectant tone.";
		wait for any key;
		say "[LolaSexMenu]";

to say LolaSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat her out";
	now sortorder entry is 1;
	now description entry is "Get under Lola's desk and service her";
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
				if (nam is "Eat her out"):
					say "[LolaSex1]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the white-furred bunny, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say LolaSex1: [oral on Lola]
	say "     A";


Lola ends here.
