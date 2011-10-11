Alex by Nuku Valente begins here.
Alex is a person. Alex is in Alex's Condo.
The description of Alex is "A mostly humanoid male with ferret-like ears and a long sinuous tail.  He has a twitchy animal nose with whiskers around it.  He has a slightly rumpled suit on, still looking good despite his changes.  He is a pleasantly enough looking person who looks even better in those moments when he's not stress or worried by his clients.";

instead of entering the Confession Booth while progress of alex is 4:
	say "You ask the priest if she's seen anyone.";
	say "'Oh! Yes, I believe I know something that might help you.  A man has barricaded himself inside one of the storage sheds to the north of the beach.  There's a chance that he may be the one you're looking for.'  You profusely thank the priestess, who waves off the praise.  'Thank the Goddess for your good fortune, not me.  Stay safe and explore a newness of yourself through change, my child.'";
 
Lee's Shed is a room.
West of Dirty Sheds is Lee's Room.

Instead of going west from dirty sheds:
	if progress of alex is 4:
		say "     You come to a shed that has been barricaded shut.  'Stay away!  I don't want any of you freaks coming in here!'  You ask if the person inside is Lee, and you hear what might be a grunt in the affirmative, before he shouts again.  'Who's asking? Who sent you!?'  You tell him that Alex sent you, but it appears that, with all the madness going on, is something he's reluctant to believe.  He starts mumbling that it's all some kind of setup.  Do you attempt to persuade him to come with you? (Y/N)";
		let success be 0;
		if the player consents:
			let bonus be ( charisma of player minus 10 ) divided by 2;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 20 and score [dice plus bonus]: ";
			if dice + bonus is greater than 19:
				say "[line break]     'Oh... he really did send you, didn't he?'  You hear things being shoved aside, and the door opens a crack, a cat's eye peering out, trying to gauge if the coast is clear.  Seeing that it is, Lee steps out, and he isn't a he anymore.  In fact, he seems to have more in common with the gryphons and hyenas running around the city as far as her new gender at this point.  'C-come on, let's hurry.  I don't want anyone to see me!' she says.  She throws her coat over her head to cover her feline ears, holding it down with paw-like hands.";
				now success is 1;
			otherwise:
				say "[line break]     'Ha! As if I'd believe that!' He starts rambling on about lying monsters in his city, no longer listening to you. You get the feeling you[apostrophe]ll have to try again later to convince him to come out once he[apostrophe]s calmed down.";
		if success is 0:
			say "     Do you attempt to break down the door? (Y/N)";
			if the player consents:
				let bonus be ( Strength of player minus 10 ) divided by 2;
				let dice be a random number from 1 to 20;
				say "You roll 1d20([dice])+[bonus] vs 22 and score [dice plus bonus]: ";
				if dice + bonus is greater than 21:
					 say "[line break]     'Ahhhh!!!'  Upon breaking inside, you see for the first time that 'he' may not have been the correct way to call him.  She has fainted on the floor, and her body is obviously feminine, though bulged in the crotch of her now too-tight pants.  She has cute cat ears and paw-like hands.  You gingerly pick her up, and hurry to the High Rise district, before she wakes up.";
					now success is 1;
				otherwise:
					say "[line break]     You throw your body against the door, but it seems too tough for you.  Maybe you could try again later.";
		follow the turnpass rule;
		if success is 1:
			now progress of alex is 5;
			move the player to Alex's Condo;
			say "     Arriving back at the High Rise district, Alex is bemused to see that this latest client has made a rather serious reassignment in gender, but he is pleased to see that Lee at least seems to have her faculties in order.  'Alright,' he says.  'Here's your reward for the last bit.'  You receive one more food and one more water.";
			add "food" to invent of player;
			add "water bottle" to invent of player;
			increase score by 40;
			extend game by 10;
			say "[line break]     The weaselly lawyer looks you up and down, sizing you up.  'You know... I have a reputation as a hell of a lover,' he says, leering a little bit but remaining professional.  'What I'm saying is,' he chuckles, 'if you come and visit, I'd be willing to show you a good time.'";
			say "     He adjusts his tie.  'That wouldn't be professional to do while Lee and Lorenda still here,' he says.  'Give me about a day to find safe lodging for them in one of the other condos, and then we can see about those options.'";
			say "[bracket]Our apologies.  These scenes still remain to be coded. - the management[close bracket]";
	otherwise:
		say "     There's nothing interesting over there.";


Instead of conversing the Alex:
	if progress of alex is 0:
		say "     'Have you come back to reconsider my offer?  I could certainly use your help on this.  And remember, I'm willing to get you supplies for your assistance,' the mustelid lawyer says with a smile.  Do you agree to help him? (Y/N)";
		if the player consents:
			say "     'Oh, fantastic!  Trust me on this, I'm definitely going to make it worth your while.  My first client is named Lorenda.  She lives in the Red Light District.'  You are about to ask why she lives there, when he can see the question in your eyes before you even ask it, and sighs.  'Lorenda is a landlady there, who owns the buildings where many of the shops are set up there.  She prefers to live there so she can keep a close eye on her tenants.  Now, would you go get her?'  He seems impatient.  Of course, being a high-level lawyer brings a sizable ego.";
			now progress of alex is 1;
			now find lorenda is unresolved;
		otherwise:
			say "     His smile falters a little, but he tries to remain positive.  'Please continue to consider my proposal.  I think we'll both benefit from it.'";
	otherwise if progress of alex is 3:
		say "     Alex, just coming off a bout of ferretness, puts down the chew toy and looks up at you as you try to tell him you found Darrell.  He looks side to side for the missiing sports star, then at you in with a mix of confusion and anger on his face.  'Where's Darrell?  I thought you were saying that you'd found him.'  This is where you have to explain to Alex that Darrell survived the incident, but not in the same way he started it.  Upon hearing that Darrell was still sane and relatively secure mentally, Alex is pleased enough, anyway.  'He can still pay me,' says Alex, 'and that's good enough.  Here's your next installment.'  He hands you another bit of food and water as payment.";
		add "food" to invent of player;
		add "water bottle" to invent of player;
		increase score by 20;
		extend game by 2;
		say "[line break]     'Alright, there's only one client left, and this one's gonna be a doozy, I'll wager.  This last client of mine is an aide to a City Council Member - well, possibly ex-city council at this point.  He doesn't have a whole lot of money, but his case'll be pretty big news if I can get a court to listen to him.  So as far as publicity, this is a huge case for me.  I need you to find him and bring him here.'  He sighs a bit, and his nose wiggles, almost cutely, you think to yourself.  'I'm not sure where he is, honestly.  He was a bit of an outdoorsman, so you might be able to find him at the park or the beach.  Other than that, I can't offer you anything else, besides his name, which is Lee.'";
		now progress of alex is 4;
	otherwise if alextalk is 0 and progress of alex is less than 5:
		say "     Alex's whiskers twitch as he looks at you sternly.  'I need you back out there,' he grumbles before relaxing.  'Sorry, I'm just on edge lately.  My clients may need your help out there, too.  I'm worried about them.'[line break]     He points to his body.  'Besides, look at me.  Once we get out of this mess, out there in the real world, I'll be a joke if I don't have some big clients to get me started again.  I know there'll be a lot of legal ramifications from all this and I want to be poised to represent those who want a normal life despite their changes[if humanity of player is less than 100].  And from the looks of you, you may even end up wanting my services.  If you can come through, I'll even give you a big discount[otherwise].  And if something goes wrong out there before you're rescued, you may even end up wanting my services.  If you can come through, I'll even give you a big discount[end if].";
		now alextalk is 1;
	otherwise if progress of alex is 1 and a random chance of 3 in 5 succeeds:
		say "     'Please continue looking for Lorenda.  She's in the red light district.  Given what's happening in the city, I think she needs your help first' he says meaningfully.  You nod in understanding, as that part of town would be particularly vulnerable to the outbreak.";
	otherwise if progress of alex is 2 and a random chance of 3 in 5 succeeds:
		say "     'I need you to track down Darrell,' the weaselly lawyer says.  'Being a pro sports star, his case could be worth a lot to me.  He should be at the Smith Haven Mall.'  He points out his window, indicating the large shopping center in the distance and the main route leading to it.";
		Now Smith Haven Mall Lot is known;
	otherwise if progress of alex is 4 and a random chance of 3 in 5 succeeds:
		say "     The mustelid wrings his paws as he looks over his papers.  'Have you found Lee? He should be at the park or the beach.'";
	otherwise:
		say "[alexrandomtalk]";

to say alexrandomtalk:
	say "     Alex's whiskers twitch a little as he looks up from his legal briefs to talk with you for a moment.  [one of]'Thanks for agreeing to help me on this.'[or]'Yes? Something I can do for you?'[or]'The city's become really dangerous lately.'[or]'I tried talking to one of those wolverine out there before I met you.  Watch out for them - they've really lost it.'  He rubs his side, which is clearly still sore from the encounter.[or]'From my window, I saw a feline cop.  I thought he might be able to help me, but he assaulted one of the weaker mutants and laughed as fucked her hard.  He was twice my size, so I- I stayed inside until he was gone,' he says softly, ashamed of his weakness.[or]'I have to wonder if this is some sick joke,' he says sadly as he points to himself.  'A lawyer made into a weasel.'[or]'I spotted a peacock out there with my binoculars.  It seems to entrance its victims somehow before leading them off somewhere.'[or]'I was never a very physical guy.  I've gotten by mostly on luck for now, but I'm not strong enough to go out there and explore.  Thankfully, I'm safe enough in here.'[or]'The few other tenants I've seen left in here seem benign and leave me alone.  But please don't go snooping around or bothering them.  I don't want to risk upsetting them.'[or]'I've got to keep focused on my work.  It helps keep these strange instincts at bay.'[or]'There's a beautiful, butterfly creature fluttering around out there at times.  It's very pretty, in an odd sort of way.'[or]'One of my neighbours had a pet ferret.  I wonder if I caught this because of it.'[or]'I'd really like a moment to relax and unwind, if you know what I mean.'[or]'I've always been a sensitive guy, I think.  All this fighting, insanity and death is really upsetting.'[or]'Ahhh!  All this waiting is so frustrating,' he growls before getting up and running around and over his couch like a manic ferret for a bit.  Eventually, he settles down and collapses on the couch, panting and feeling much better after releasing all that pent up energy.[or]'Do you like my place?  I decorated it myself.  I'll miss it when we go,' he sighs softly.[or]'I've kept an eye out from my window using these,' he says, holding up a pair of binoculars.[or]'I don't like leaving here too often, as there are so many stairs to climb whenever I get back.'[or]'Being pent up in here makes the ferret in me go stir crazy at times.'  He grabs a nearby rubber ball and chews at it for a few times, churring softly as he does.  'If I don't give it some release, things can get... messy.'[at random]";


Instead of conversing the Rod while progress of alex is 2:
	say "    'Darrell?  Yeah, he was here when it all went down.  But... you might be a little surprised[if hp of ronda is greater than -1].  Go talk to my girl, she knows where he is.'[otherwise].'  He shrugs, and points to the north.  'Go ask the others.  They might know where he is.'  He seems a little bummed.[end if]";


instead of going north from Mall Foodcourt while progress of alex is 2:
	now the player is in Mall Atrium;
	if Ronda is in Mall Atrium:
		say "     You arrive in the atrium of the mall and approach Ronda, Rod's girlfriend.  'Yeah, I know where he is.  Darrell, c'mere!'  Another mall rat approaches, and it shortly becomes clear that the city's star point guard is now a good deal furrier and rattier.  He arrives and asks her 'What's up?'  She explains the situation, and he nods, facing you.  After some brief explanation, he nods.  'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.'  You try to convince him, but he stands firm on it.  'Nah, I'm good here, man.'  Darrell waves and heads back to talk to some of the other rats.  You sigh a bit, and you have some mixed news for Alex the next time you see him.";
	otherwise:
		 say "     You arrive in the atrium of the mall and approach one of the various mall rats there.  After going back and forth between a few of them, eventually you come to Darrell.  It shortly becomes clear that the city's star point guard is now a good deal furrier and rattier.  'What's up?' he asks.  After some brief explanation, he nods.  'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.'  You try to convince him, but he stands firm on it.  'Nah, I'm good here, man.'  Darrell waves and heads back to talk to some of the other rats.  You sigh a bit, and you have some mixed news for Alex the next time you see him.";
	now progress of alex is 3;


Find Lorenda is a situation.
The sarea of Find Lorenda is "Red".
Find Lorenda is resolved.
Lisacheat is a number that varies.

Instead of resolving Find Lorenda:
	let found be 0;
	if lisacheat is 1, now found is 1;
	if found is 0:
		let bonus be ( perception of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice is greater than 16:
			say "You manage to find her trail!";
			now found is 1;
		otherwise:
			say "Despite your search, you fail to find her.  She has to be around here somewhere.";
			stop the action;
	if humorous is banned or guy is banned:
		say "     You follow a hopeful trail and you suddenly realize there are other tracks following the same trail.  You rush forward and arrive to find a pair of creatures bearing down on a woman screaming frantically down one of the alleyways.  She is pinned to the wall, between the pair of them.  Thinking quickly, you rush to her aid!";
		now battleground is "Outside";
		fight;
		say "     Dealing with one mutant, you turn your attention to the second before it can reach Lorenda.";
		fight;
	otherwise:
		say "     You follow a trail and you suddenly realize that there's a trickle of cum that follows the same trail.  You arrive to find a pair of Cock Cannons aimed gainfully at a woman screaming frantically down one of the alleyways.  She is pinned to the wall, between the pair of them.  Thinking quickly, you rush to her aid!";
		challenge "Cock Cannon";
		say "     Dealing with one mutant, you turn your attention to the second before it can reach Lorenda.";
		challenge "Cock Cannon";
	say "     She whimpers, and you pull her up from her spot on the alley concrete.  'Wh-what were those things?' [if humanity of player is less than 100] 'What are you?'[end if] She seems a bit panicked, but has calmed significantly once you dealt with the pair.  She hasn't totally escaped the city's various mutations - her clothes are painfully strained with the size of her inflated breasts and she bears a floofy fox tail likely given to her by one of those latex foxes - but she remains mostly human.  You point out that what they were was patently obvious, which earns you a smirk.  Once you explain that Alex sent you, she nods and gladly follows you back to his condo in the High Rise District.";
	now the player is in Alex's Condo;
	say "     Upon arriving, the door is thrown open by the weaselly lawyer who ushers both of you inside.  He shuts it behind him, letting out a sigh of relief as he leans back against it.  First, he shows her to the living room and sets her down with a cup of coffee, then he returns to you.  'Thanks for bringing her in.  You've done me a major favor, so here you go.'  He gives you some food and water.  He even gives you an extra bottle as a bonus for coming through for him despite the danger.";
	say "     'My next client is an athlete.  He plays for the city's basketball team.  His name's Darrell.  I don't know where he was when the incident happened, but I believe he may have been at the mall.  The team was doing a promotion at the shoe store there some time before the accident.'";
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
Alex has a number called alextalk.

Instead of resolving Meet Alex:
	say "((This arc written by Khabi - enhanced by Stripes))[line break]";
	say "     As you explore the High Rise district, you hear a voice calling out to you. Spinning quickly, you see a man walking toward you, who is holding his hands up - he is wearing a business suit, and he is unarmed. Once you lower your hackles from being so surprised - this city has taught you to stay on your toes - he approaches you.";
	say "     'Good [short time of day], [if breast size of player is greater than 0]Ma'am[otherwise]Sir[end if]. My name is Alex... well, I don't suppose last names are important anymore, are they?'";
	say "     Now that you get a better look at him, even though he initially appeared unchanged, it's become quite clear upon closer inspection that he too has a few changes. His ears have mutated to become somewhat pointed, and now rest near the top of his head. He has a small button nose, with prodigious whiskers on either side, and a furry tail swivels from behind him. You think it looks somewhat... mustelid, perhaps a ferret or weasel of some sort. You are about to ask him about it when he continues.";
	say "     'Look, it's hard to find friends in this city after the incident. And so since you seem to be somewhat sane still... [if humanity of player is less than 100]despite your changes...[end if] I figure you might be able to help me. If you're out exploring the city, it means you can handle the monsters out there.' His nose twitches, as do his whiskers, as he seems to be pondering something. 'Before the incident, I was a high-priced lawyer, and once rescue comes, I plan on returning to that job. But I have three wealthy clients that won't be able to pay me if they get turned into creatures without a thought in their heads but sex.'";
	say "     You feel like you're starting to get the gist of what the shorter man is leading up to. He speaks very quickly, probably having something to do with his profession.  'Here's my proposition,' he says. 'I have access to a pretty solid stockpile of food and water. For each of my clients you manage to bring back to me, to my condo in the high-rise over there,' he points, 'I'll give you one of each. How's that sound?'";
	now Alex's Condo is known;
	if the player consents:
		say "     'Oh, fantastic! Trust me on this, I'm definitely going to make it worth your while. My first client is named Lorenda. She lives in the Red Light District.' You are about to ask why she lives there, when he can see the question in your eyes before you even ask it, and sighs. 'Lorenda is a landlady there, who owns the buildings where many of the shops are set up there. She prefers to live there so she can keep a close eye on her tenants. Now, would you go get her?' He seems impatient. Of course, being a high-level lawyer brings a sizable ego.";
		now progress of alex is 1;
		now find lorenda is unresolved;
	otherwise:
		say "     'Ah. Well then, if you change your mind, here's my address.' You now have access to Alex's Condo!";
	now Meet Alex is resolved;


Alex's Condo is a room. It is fasttravel. It is private.
The description of Alex's Condo is "     Near the top of the highrise condo building, Alex's room has an good view of the area, if partially blocked by several of the other surrounding highrises.  His place is fairly well-maintained, the mustelid tidying up occasionally.  It does have the faint, tangy smell of mustelid musk, but it's not too strong.  It is well-furnished, with expensive, trendy-looking furniture and decor.  The big screen television and large stereo are silent, but fill a sizeable portion of one wall.  Several pieces of classy art adorn the others, all matching nicely with each other and the room decor as a whole.  There are what you expect are legal briefs open on the coffee table in the living room.  Scattered around the floor are several colourful, rubber objects, clearly outlets for any ferretty urges.  A glance in the kitchen shows that it's not as tidy, and is equally ultra-modern, if now useless.  He's set up a small camper stove on his stovetop and is using that for cooking.  Between bouts of manic ferretness, the mustelid lawyer is sitting on his couch, focusing on his papers.";

Alex ends here.