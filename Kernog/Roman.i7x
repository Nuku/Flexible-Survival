Roman by Kernog begins here.

"Adds the Team Captain Roman NPC, who hangs around Astroslide Football Field and is tied to the Tenvale Gorillas Football Team Quest."

Team Captain Roman is a man. Understand "Roman" as Team Captain Roman. "[first time]This is the captain of the Tenvale Gorillas. You hear some of the apes adress him as 'captain Roman'. [only]Roman stands out from the rest of the players. He looks more mature, and in opposition to his teammates, who strut on the field with only a helmet and a shoulder-pad, he wears a tank-top and a pair of shorts, who outline his strong body.".
The conversation of Team Captain Roman is { "Yap!" }.
Team Captain Roman is in Astroslide Football Field.

instead of sniffing Team Captain Roman:
	say "     The scent of Roman's slightly sweaty fur reaches your nose. It's definitely a male smell, albeit not as strong as the other, more active gorillas.";

[Team scenes are in Tenvale Gorillas Football Team Quest]
instead of conversing the Team Captain Roman:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Chat";
		now sortorder entry is 1;
		now description entry is "Chat with Roman";
	[]
	if (GorillasMember is 0 or GorillasMember is 1):
		choose a blank row in table of fucking options;
		now title entry is "Join";
		now sortorder entry is 2;
		now description entry is "Tell Roman that you want to join the team.";
	[]
	if (GorillasMember is  3):
		choose a blank row in table of fucking options;
		now title entry is "Laundry";
		now sortorder entry is 3;
		now description entry is "Do the team's laundry";
	[]
	if (GorillasMember is 3):
		choose a blank row in table of fucking options;
		now title entry is "Water-boy";
		now sortorder entry is 4;
		now description entry is "Take your shift as a water boy.";
	[]
	if (GorillasMember is 3 and GorillasRep > 3 ):
		choose a blank row in table of fucking options;
		now title entry is "Training";
		now sortorder entry is 5;
		now description entry is "Spend some time training with your fellow players";
	[]
	if (GorillasMember is 3 and GorillasRep > 8):
		choose a blank row in table of fucking options;
		now title entry is "Special training";
		now sortorder entry is 6;
		now description entry is "Join the main team for a special training session.";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Chat":
					if GorillasMember < 3:
						say "[RomanTalk1]";
					else:
						say "[RomanTalk2]";
				if nam is "Join":
					say "[RomanTalk3]";
				if nam is "Laundry":
					if the player is a laundry sniffer:
						say "[GorillaLaundryService2]";
					else:
						say "[GorillaLaundryService1]";
				if nam is "Water-boy":
					say "[GorillaWaterService]";
				if nam is "Training":
					say "[GorillaTraining]";
				if nam is "Match":
					say "[FootballMatch]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from Roman, who gives you a puzzled look in return.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	
[Talks]
to say RomanTalk1:
	say "     [first time]'Oh, a new head. Welcome to the Astroslide Football Field. The name's Roman,' the team captain greets you. [only]You make small talk with Roman, while the large gorilla keeps an eye on the football field. The discussion seems to switch back and forth between girls -and men-, and the best ways to fuck them, and many sportive anecdotes about him and the other players, both before and after the infection. He seems like an amicable, if slightly obnoxious, man.";
	
to say RomanTalk2:
	say "     'Hey, if it isn't my favourite [if GorillasMember is 3]laundry boy[end if][if GorillasMember is 4]water-boy[end if][if GorillasMember is 5]player[end if][if GorillasMember is 6]star player[end if]!' Roman welcomes you, before giving you a warm and breath-cutting hug. The large-and-in-charge primate makes small talk with you, giving news of every other member of team. 'Did you know that [one of]Bradley[or]Brian[or]Gavin[or]Nate[or]Andy[or]Ike[or]Vinny[or]Reid[or]Tom[or]Everett[at random] [one of]got himself a cheetah girl when he visited the zoo, the other day?[or]almost got molested by that goat janitor when he went to the hospital[or]scored himself one of these husky gals roaming the street?[or]got gangbanged by a gang of hyenas[or]found that neat bar; the Palomino, it was called.[or]tried to score one of these rats who hang around in the mall, but got rejected[or]almost ended up zipped up in a pooltoy, at the beach?[at random]";

to say RomanTalk3:
	if GorillasMember is 0: 
		say "     Roman glances up and down at you, and nods slowly. 'So you want to join the big leagues huh?' he asks, putting one of his big hands on your arm to feel your muscles. 'Fine, we can always use more members... but it's got to be the right people, you understand? We'll have another try-out in which you can and the other hopefuls can show their stuff. Come back sometime tomorrow and remind me that you want to [bold type]join[roman type], and you can have a go.' The gorilla pats your shoulder, then turns back to supervize the ongoing game.";
		now GorillasMember is 1; [quest to join started]
		now GorillasMemberQuestCounter is turns;
	else if GorillasMember is 1 and GorillasMemberQuestCounter - turns <= 8:
		say "     'Yeah, I remember, don't worry,' Roman replies. 'We are not ready yet. Come back later.'";
	else if GorillasMember is 1:
		say "[FootballTryouts]";
	else:
		say "[FootballTryoutsResults]";
	
instead of fucking Team Captain Roman:
	say "     'Easy, tiger,' Roman chuckles. 'I am a little busy for the moment, but we'll definitely hook up in the near future, so check again another time.' ((Sex content will be added to Team Captain Roman at a later date. Stay tuned - Kernog)) ";

Roman ends here.
