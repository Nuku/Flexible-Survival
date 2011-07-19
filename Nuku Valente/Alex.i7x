Alex by Nuku Valente begins here.
Alex is a person. "A mostly humanoid male with ferret like ears and a long sinuous tail." Alex is in Alex's Condo.

instead of entering the Confession Booth while progress of alex is 4:
	say "You ask the priest if she's seen anyone.";
	say "'Oh! Yes, I believe I know something that might help you. A man has barricaded himself inside one of the storage sheds to the north of the beach. There's a chance that he may be the one you're looking for.' You profusely thank the priestess, who waves off the praise. 'Thank the Goddess for your good fortune, not me. Stay safe, my child.'";
 
Lee's Shed is a room.
West of Dirty Sheds is Lee's Room.

Instead of going west from dirty sheds:
	if progress of alex is 4:
		say "You come to a shed that has been barricaded shut. 'Stay away! I don't want any of you freaks coming in here!' You ask if the person inside is Lee, and you hear what might be a grunt in the affirmative, before he shouts again. 'Who's asking? Who sent you!?' You claim that Alex sent you, but it appears that these things are a little bit too easy for him to just accept you. Do you attempt to persuade him to come with you? (Y/N)";
		let success be 0;
		if the player consents:
			let bonus be ( charisma of player minus 10 ) divided by 2;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 20 and score [dice +bonus]: ";
			if dice + bonus is greater than 19:
				say "'Oh... he really did send you, didn't he?' You hear things being shoved aside, and the door opens a crack, an eye peering out, trying to gauge if the coast is clear. Seeing that it is, Lee steps out, and he isn't a he anymore. In fact, he seems to have more in common with the gryphons and hyenas running around the city as far as her new gender at this point. 'C-come on, let's hurry, I don't want anyone to see me!'";
				now success is 1;
			otherwise:
				say "'Ha! As if I'd believe that!' You get the feeling you'll have to try again later to convince him to come out.";
		if success is 0:
			say "Do you attempt to break down the door? (Y/N)"
			if the player consents:
				let bonus be ( Strength of player minus 10 ) divided by 2;
				let dice be a random number from 1 to 20;
				say "You roll 1d20([dice])+[bonus] vs 22 and score [dice +bonus]: ";
				if dice + bonus is greater than 21:
					 say "'Ahhhh!!!' Upon breaking inside, you see for the first time that 'he' may not have been the correct way to call him. She has fainted on the floor, and her body is obviously feminine, though bulged in the crotch of her now too-tight pants. You gingerly pick her up, and hurry to the High Rise district, before she wakes up.";
					now success is 1;
				otherwise:
					say "You throw your body against the door, but it seems too tough for you. Maybe you could try again later.";
		follow the turnpass rule;
		if success is 1:
			now progress of alex is 5;
			move the player to Alex's Condo;
			say "Arriving back at the High Rise district, Alex is bemused to see that this latest client has made a rather serious reassignment in gender, but he is pleased to see that Lee at least seems to have her faculties in order. 'Alright,' he says. 'Here's your reward for the last bit.' You receive one more food and one more water.";
			add "food" to invent of player;
			add "water bottle" to invent of player;
			increase score by 40;
			extend game by 10;
			if cunts of player is greater than 0:
				say "The weaselly lawyer looks you up and down, sizing you up. 'You know... I have a reputation as a hell of a lover,' he says, leering a little bit but remaining professional. 'What I'm saying is,' he chuckles, 'if you come and visit, I'd be willing to show you a good time.'";
				say "He adjusts his tie. 'That wouldn't be professional to do while Lee and Lorena still here,' he says. 'Give me about a day to find safe lodging for them, and then we can see about those options.'";
	otherwise:
		say "There's nothing interesting over there.";
 
Instead of conversing the Alex:
	if progress of alex is 3:
		say "Alex opens the door and hustles you inside, looking side to side for Darrell, then he follows you in with a mix of confusion and anger on his face. 'Where's Darrell? I thought you sent word that you'd found him.' This is where you have to explain to Alex that Darrell survived the incident, but not in the same way he started it. Upon hearing that Darrell was still sane and relatively secure mentally, Alex is pleased enough, anyway. 'He can still pay me,' says Alex, 'and that's good enough. Here's your next installment.' He hands you another bit of food and water as payment.";
		add "food" to invent of player;
		add "water bottle" to invent of player;
		increase score by 20;
		extend game by 2;
		say "'Alright, there's only one client left, and this one's gonna be a doozy, I'll wager. This last client of mine is an aide to a City Council Member --- well, possibly ex-city council at this point --- he doesn't have a whole lot of money, but his case is pretty big news, if I can get a court to listen to him, so as far as publicity, this is a huge case for me. I need you to find him and bring him here.' He sighs a bit, and his nose wiggles, almost cutely, you think to yourself. 'I'm not sure where he is, honestly. He was a bit of an outdoorsman, so you might be able to find him at the park or the beach. Other than that, I can't offer you anything else, besides his name, which is Lee.'";
		now progress of alex is 4;
		stop the action;
	if progress of alex is 4:
		say "'Have you found Lee? He should be at the park or the beach.'";
		stop the action;
	say "'Yes, something I can do for you?' 'The city's become really dangerous lately.'";


Instead of conversing the Rod while progress of alex is 2:
	say " 'Darrell? Yeah, he was here when it all went down. But... you might be a little surprised.'[if hp of ronda is greater than -1] 'Go talk to my girl, she knows where he is.'[otherwise] He shrugs, and points to the north. 'Go ask the others, they might know where he is.' He seems a little bummed.[end if]";
	
instead of going north from Mall Foodcourt while progress of alex is 2:
	if ronda is visible:
		say "You arrive in the atrium of the mall and approach Rhonda, Rod's girlfriend. 'Yeah, I know where he is. Darrell, c'mere!' Another mall rat approaches, and it shortly becomes clear that the city's star point guard is now a good deal furrier and rattier. He arrives, and asks her 'What's up?' She explains the situation, and he nods, facing you. After some brief explanation, he nods. 'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.' You try to convince him, but he stands firm on it. 'Nah, I'm good here, man.' Darrell waves and heads back to talk to some of the other rats. You sigh a bit, and you have some mixed news for Alex the next time you see him.";
	otherwise:
		 say "You arrive in the atrium of the mall and approach one of the various mall rats there. After going back and forth between a few of them, eventually you come to Darrell. It shortly becomes clear that the city's star point guard is now a good deal furrier and rattier. 'What's up?' he asks. After some brief explanation, he nods. 'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.' You try to convince him, but he stands firm on it. 'Nah, I'm good here, man.' Darrell waves and heads back to talk to some of the other rats. You sigh a bit, and you have some mixed news for Alex the next time you see him.";
	now progress of alex is 3;

	
	
Find Lorenda is a situation.
The sarea of Find Lorenda is "Red".
Find Lorenda is resolved.
Lisacheat is a number that varies.

Instead of resolving Find Lorenda:
	let found be 0;
	if lisacheat  is 1, now found is 1;
	if found is 0:
		let bonus be ( perception of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice is greater than 17:
			say "You manage to find her trail!";
			now found is 1;
	if found is 0:
		say "Despite your search, you fail to find her. She has to be around here somewhere.";
		stop the action;
	say "You follow a trail and you suddenly realize that there's a trickle of cum that follows the same trail. You arrive to find a pair of Cock Cannons aimed gainfully at a woman screaming frantically down one of the alleyways. She is pinned to the wall, between the pair of them. Thinking quickly, you rush to her aid!";
	if humorous is banned:
		now battleground is "Outside";
		fight;
		say "Dealing with one mutant, you turn your attention to the second before it can reach Lorenda.";
		fight;
	otherwise:
		repeat with X running from 1 to number of filled rows in table of random critters:
			choose row X from the table of random critters;
			if name entry is "Cock Cannon":
				now monster is X;
				now monsterhp is hp entry;
				challenge;
				break;
		say "Dealing with one mutant, you turn your attention to the second before it can reach Lorenda.";
		repeat with X running from 1 to number of filled rows in table of random critters:
			choose row X from the table of random critters;
			if name entry is "Cock Cannon":
				now monster is X;
				now monsterhp is hp entry;
				challenge;
				break;
	say "She whimpers, and you pull her up from her spot on the alley concrete. 'Wh-what were those things?' [if humanity of player is less than 100] 'What are you?'[end if] She seems a bit panicked, but has calmed significantly once you dealt with the pair. She hasn't totally escaped the city's various mutations --- her clothes are painfully strained with the size of her inflated breasts and she bears a floofy fox tail likely given to her by one of those latex foxes --- but she remains mostly human. You point out that what they were was patently obvious, which earns you a smirk. Once you explain that Alex sent you, she nods, and gladly follows you back to his condo in the High Rise District.";
	now the player is in alex's condo;
	try looking;
	say "Upon arriving, the door is thrown open by the weaselly lawyer who ushers both of you inside, and he shuts it behind him, letting out a sigh of relief. First, he shows her to the living room and sets her down with a cup of coffee, then he returns to you. 'Thanks for bringing her in. You've done me a major favor, so here you go.' He gives you some food and water, and nods. 'My next client is an athlete, plays for the city's basketball team, his name's Darrell. I don't know where he was when the incident happened, but I believe he may have been at the mall; the team was doing a promotion at the shoe store there some time before the accident.'";
	add "food" to invent of player;
	add "water bottle" to invent of player;
	add "water bottle" to invent of player;
	increase score by 50;
	extend game by 8;
	now progress of alex is 2;
	now find lorenda is resolved;
	
Meet Alex is an situation.
The sarea of meet alex is "High";
Alex has a number called progress.

Instead of resolving Meet Alex:
	say "((This arc written by Khabi))";
	say "As you explore the High Rise district, you hear a voice calling out to you. Spinning quickly, you see a man walking toward you, who is holding his hands up --- he is wearing a business suit, and he is unarmed. Once you lower your hackles from being so surprised --- this city has taught you to stay on your toes - he approaches you.";
	say "'Good [short time of day], [if breast size of player is greater than 0]Ma'am[otherwise]Sir[end if]. My name is Alex... well, I don't suppose last names are important anymore, are they?'";
	say "Now you get a better look at him, even though he initially appeared unchanged, it's become quite clear upon closer inspection that he too has a few changes. His ears have mutated to become somewhat pointed, and now rest near the top of his head. He has a small button nose, with prodigious whiskers on either side, and a furry tail swivels from behind him. You think it looks somewhat... mustelid, perhaps a ferret or weasel of some sort. You are about to ask him about it when he continues.";
	say "'Look, it's hard to find friends in this city after the incident. And so since you seem to be somewhat sane still... (if certain % is not human anymore, he says '...despite your changes...), I figure you might be able to help me. If you're out exploring the city, it means you can handle the monsters out there.' His nose twitches, as do his whiskers, as he seems to be pondering something. 'Before the incident, I was a high-priced lawyer, and once rescue comes, I plan on returning to that job. But I have three wealthy clients that won't be able to pay me if they get turned into creatures without a thought in their heads but sex.'";
	say "You feel like you're starting to get the gist of what the shorter man is thinking. He speaks very quickly, probably having something to do with his profession.";
	say "'Here's my proposition,' he says. 'I have access to a pretty solid stockpile of food and water. For each of my clients you manage to bring back to me, to my condo in the high-rise over there,' he points, 'I'll give you one of each. How's that sound?'";
	now Alex's Condo is known;
	if the player consents:
		say "'Oh, fantastic! Trust me on this, I'm definitely going to make it worth your while. My first client is named Lorena. She lives in the Red Light District.' You are about to ask why she lives there, when he can see the question in your eyes before you even ask it, and sighs. 'Lorena is a landlady there, who owns the buildings many of the shops there. She prefers to live there so she can keep a close eye on her tenants. Now, would you go get her?' He seems impatient. Of course being a high level lawyer brings a sizable ego.";
		now progress of alex is 1;
		now find lorenda is unresolved;
	otherwise:
		say "'Ah. Well then, if you change your mind, here's my address.' You now have access to Alex's Condo!";
	now Meet Alex is resolved;
		
		
Alex's Condo is a room. It is fasttravel. It is private.
	
Alex ends here.
