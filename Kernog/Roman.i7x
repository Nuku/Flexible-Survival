Roman by Kernog begins here.

"Adds the Team Captain Roman NPC, who hangs around Astroslide Football Field and is tied to the Tenvale Gorillas Football Team Quest."

[0: secret unknown]
[1: secret known]
[2: Roman confronted]
[3: Roman's trust earned]
[4: Roman humiliated ?]
[5: Roman comforted ?]
romanPeeped is a number that varies.
romanEncouraged is a number that varies.

Team Captain Roman is a man. Understand "Roman" as Team Captain Roman.

The description of Team Captain Roman is "[RomanDesc]";

to say RomanDesc:
	if Roman is in Astroslide Field Locker-room:
		say "You look at the former team captain. Roman is tied on his back to one of the benches. Old jerseys are pinning his arms under the bench, and pulling his legs up against his chest, exposing his pussy to everyone. Someone has covered his entire body in writings with a red marker. Dirty names, like [']bitch['], [']whore['], or [']team pet['], an arrow pointing down to his crotch, with the mention [']For public use['], and another on his head, pointing at his mouth, saying [']Feed the monkey[']. Roman's eyes meet yours, but he looks absent. He tries to mumble something, but his mouth has been filled with socks, and only a muffled whisper escapes his lips.";
	else:
		say "[first time]This is the captain of the Tenvale Gorillas. You hear some of the apes address him as 'captain Roman'. [only]Roman stands out from the rest of the players. He looks more mature, and in opposition to his teammates, who strut on the field with only a helmet and a shoulder-pad, [if romanPeeped is 5]and nothing else. He now lets out his feminine parts proudly, for everyone to see.[else if romanPeeped > 1]he wears a tank-top and a pair of shorts, which are simply padded with cotton in order to hide his gynomorphism, as you now know.[else]he wears a tank-top and a pair of shorts, who outline his strong body and the large bulge of his crotch. Damn, he must be hung![end if]";

The conversation of Team Captain Roman is { "Yap!" }.
Team Captain Roman is in Astroslide Football Field.

instead of sniffing Team Captain Roman:
	say "     The scent of Roman's slightly sweaty fur reaches your nose. It's definitely a male smell, albeit not as strong as the other, more active gorillas.";

[Team scenes are in Tenvale Gorillas Football Team Quest]
instead of conversing the Team Captain Roman:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat";
	now sortorder entry is 1;
	now description entry is "Chat with Roman";
	[]
	if ((GorillasMember is 0 or GorillasMember is 1 ) and Guy is not banned and Furry is not banned and Roman is in Astroslide Football Field):
		choose a blank row in table of fucking options;
		now title entry is "Join";
		now sortorder entry is 2;
		now description entry is "Tell Roman that you want to join the team.";
	[]
	if (GorillasMember is 2 and Roman is in Astroslide Football Field):
		choose a blank row in table of fucking options;
		now title entry is "Results";
		now sortorder entry is 2;
		now description entry is "Ask Roman about the results of the tryouts.";
	[]
	if (GorillasMember is 3 and Roman is in Astroslide Football Field):
		choose a blank row in table of fucking options;
		now title entry is "Laundry";
		now sortorder entry is 3;
		now description entry is "Do the team's laundry";
	[]
	if (GorillasMember is 3 and Roman is in Astroslide Football Field):
		choose a blank row in table of fucking options;
		now title entry is "Water-boy";
		now sortorder entry is 4;
		now description entry is "Take your shift as a water boy.";
	[]
	if (GorillasMember is 3 and GorillasRep > 3 and Roman is in Astroslide Football Field ):
		choose a blank row in table of fucking options;
		now title entry is "Training";
		now sortorder entry is 5;
		now description entry is "Spend some time training with your fellow players";
	[]
	if (GorillasMember is 3 and GorillasRep > 8 and Roman is in Astroslide Football Field):
		choose a blank row in table of fucking options;
		now title entry is "Special training";
		now sortorder entry is 6;
		now description entry is "Join the main team for a special training session.";
	[]
	if (romanPeeped is 1 ):
		choose a blank row in table of fucking options;
		now title entry is "Confront";
		now sortorder entry is 7;
		now description entry is "Confront Roman about his secret.";
	[]
	if (romanPeeped is 2):
		choose a blank row in table of fucking options;
		now title entry is "Convince";
		now sortorder entry is 8;
		now description entry is "Try to earn Roman's trust.";
	[]
	if (romanPeeped is 3):
		choose a blank row in table of fucking options;
		now title entry is "Encourage";
		now sortorder entry is 9;
		now description entry is "Encourage Roman to come out to the other players";
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
					else if (romanPeeped is 4):
						say "[RomanTalk3]";
					else if (romanPeeped is 5):
						say "[RomanTalk4]";
					else:
						say "[RomanTalk2]";
				if nam is "Join":
					say "[JoiningTheTeam]";
				if nam is "Results":
					say "[FootballTryoutsResults]";
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
				if nam is "Confront":
					say "[RomanConfront]";
				if nam is "Convince":
					say "[RomanConvince]";
				if nam is "Encourage":
					say "[RomanEncourage]";
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
	say "      You sadistically ask Roman how he is doing. Roman recognizes your voice, and tilts his head to look at you. His broken stare slowly turns into hate. 'Whm? Whm... Mhm hhmm muuuh!' It seems Roman does not appreciate his current treatement. Then again, he should not have been so careless about his secret, didn't he?";

to say RomanTalk4:
	say "      'Hey, if it isn't my best friend! Come here for a hug, buddy! [one of]You should show me your place, one of these days.[or]We should hang around, one of these days.[or]As you can see, I lost the bottom. The cotton was always tickling me, anyway![at random]'";

to say JoiningTheTeam:
	if GorillasMember is 0:
		say "     Roman glances up and down at you, and nods slowly. 'So you want to join the big leagues huh?' he asks, putting one of his big hands on your arm to feel your muscles. 'Fine, we can always use more members... but it's got to be the right people, you understand? We'll have another try-out in which you can and the other hopefuls can show their stuff. Come back sometime tomorrow and remind me that you want to [bold type]join[roman type], and you can have a go.' The gorilla pats your shoulder, then turns back to supervize the ongoing game.";
		now GorillasMember is 1; [quest to join started]
		now GorillasMemberQuestCounter is turns;
	else if GorillasMemberQuestCounter - turns <= 8:
		say "     'Yeah, I remember, don't worry,' Roman replies. 'We are not ready yet. Come back later.'";
	else:
		say "[FootballTryouts]";

[TryoutScore is in Tenvale Gorillas Football Team extension]
to say FootballTryoutsResults:
	say "     'Just in time. I was just done with the results.' The team captain shouts some instructions to the unruly throng of football players all around, sending some of them to train on the field while cheering on those who're currently involved in a gangbang on near the door to the locker-room. After calling out, 'I'll be over in a moment, hold me a place in the line to fuck her!' he walks over and turns his attention to you. 'Okay. Let's see...'";
	WaitLineBreak;
	now GorillasMember is 3;
	if TryoutScore is 7: [maximum points]
		say "     'You really wowed us out there,' the primate says with a broad grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, it immediately became clear that we had to have you on the team. Hell, you were at the top in front of everyone else. That'll make a fine addition to our team!' Waving his hand to indicate the entrace to the locker-room, he goes on to say, 'Be sure to come by regularly to either train or play a match. The Fourmont Wolves got stuck on the campus with the infection, and they are always eager for a play-off.' You thank him and walk away, and into the midst of the gathered football players, getting a very warm welcome (and a few friendly gropes) from the guys.";
		now GorillasRep is 9; [star player]
	else if TryoutScore > 4: [okay results]
		say "     'Congratulations you made it into the team,' the primate says with a grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, you rated well in the upper third. Didn't take much convincing for everyone to agree that you deserve a shot on the team.' Waving his hand to indicate the large locker room, he goes on to say, 'Be sure to come by regularly to train. You should make it to the main team in no time.' You thank him and walk away, and into the midst of the gathered football players, getting a very warm welcome (and a few friendly gropes) from the guys.";
		now GorillasRep is 4;  [b team player]
	else: [moderate to bad results]
		say "     'Listen, we had a look at your results and... made a team decision that you will not be joining as a player,' the primate tells you with a somewhat apologetic expression. Yet as you bow your head in shame and begin turning to walk away, he grabs hold of your arm and adds, 'Wait I haven't finished yet. I thought it was brave of you to do the tryouts, no matter what came of it, so... I have an offer for you. A way you can still be part of the team and help out. You could be either a [if player is female]water girl or a laundry girl[else]water boy or a laundry boy[end if].' Roman gives you a supportive slap on the shoulder. 'It will be no small job, managing all these boys' laundry, but every effort counts, and for that you have my thanks. [bold type]If you work for the team enough times, I am certain that someone will put a good word for you, and put your name forward for the next drafy[roman type]. Come back anytime you want, champ, I'm sure that I'll see you on the football field in no time.'";
		now GorillasRep is 0;


to say RomanConfront:
	say "     You ask Roman to talk with him in private. 'Okay. One moment, boys!' he tells the other players, while you guide him to an isolated area of the football field. 'What's the problem? Some of the boys making trouble?' he asks.";
	say "      Sheepishly, you admit that you saw Roman naked, and his private bits. The team captain looks at you for a moment, looking like he was hit by a freight train. 'Y-You what?' he asks. 'You... Why are you telling me this? Are you trying to mock me? To blackmail me?'[line break]You try to reassure him, that you would tell no one, but that his attitude about it was strange, considering all the manner of beings roaming the city nowadays. 'You know nothing,' he replies, giving you a stern look. 'It's a personal issue, and I don't want to talk about it. Not now, at least.'";
	say "      It seems that you will need to convince Roman to trust you. Maybe being a member of the team and/or a trans-man yourself may help with this";
	now romanPeeped is 2;

to say RomanConvince:
	let bonus be (( the Charisma of the player minus 10 ) divided by 2);
	if GorillasMember > 3:
		increase bonus by 2;
	if cunts of player > 0 and breast size of player is 0:
		if cocks of player is 0:
			increase bonus by 5;
		else:
			increase bonus by 2;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]20[roman type] (Charisma Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 20:
		say "     Roman sighs. 'Okay. Just... Come here a minute.' The gorilla leads you to the same, isolated place than last time.";
		say "      'It happened at the start of this whole mess. I had been already turned into an ape by then. I was strolling the city, curious about how it looked like outside and, and I got ambushed. Some crazy husky male ambushed me. Then, he knocked me out, and had me raped by his pack of bitches again, and again, for fun. It was not enough to turn me into a dog, but it was well enough to make my bits shrink, and eventually be replaced by this.' Roman gestures at his padded shorts. 'They mocked me all the way until I turned into a woman down there. It was not pleasant, to say the least. And I just can't confront the guys about it. I... You see them. [if cunts of player > 0]You see the lewd looks they give you because of your lady parts. If they learn, they will throw me out; or worse.'";
		say "     The large primate wipes a tear which was beginning to form in the corner of his left eye. 'So, now you're on the page. You know, it feels kinda good to let it out, to someone you can trust.' Roman gives you a warm smile. 'And, who knows. When there will be enough women and herms in the team, their look will change, and I'll be able to loose the shorts. But for now, I trust you with this. Don't let me down, buddy.'";
		say "     Roman parts from you, and you feel that you are at a crossroad. You could try to talk more to Rohan, and [bold type]encourage him to come out[roman type] on his own terms, helping him find closure. You could let your inner sadist loose, go to the locker-room, [bold type]divulge the captain's secret with the team[roman type], and enjoy the ensuing torment. The choice is yours.";
		now romanPeeped is 3;
	else:
		say "     'We already talked about it:  I don't trust you enough to tell you about it. Please let it go,' Roman replies to your query.";

to say RomanEncourage:
	let bonus be (( the Charisma of the player minus 10 ) divided by 2);
	increase bonus by romanEncouraged;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]20[roman type] (Charisma Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 20:
		say "     'Yes... Yes, I see your point. Better let the cat out the bag,' Roman says after hearing your arguments. He promptly assembles the entire team, staff included. Some curious fans are also here to hear him. 'Guys, and girls, I have something to tell you. It is something important for me, on a personal level, and something that I kept to me since this whole mess began. Hear me out...'";
		say "     With sober words, Roman explains his current state, and the context during which it happened. You can hear the emotion in his voice, but he manages to keep it contained. 'And this is it. I hope that you will forgive me for not having told everything sooner. I was afraid. I did not trust you, although I should have, from the start. I also hope that you understand but, if you do not feel comfortable, I am ready to step out of my position, and...'[line break]'Shut up!'[line break]Everyone turns around the voice. It is one of the newest players, a strong-looking female bear. 'How can you be so ashamed of what you are. You did so much for us! For this college! You...' The bear reprimes a sob before resuming her speech: 'You are the pillar of this team. You gave all of us a home, away of all the madness that swept the city, and a way to be proud of ourselves, and our bodies. Don't leave like this!'[line break]'Yeah, coach!'[line break]'We don't blame you!'[line break]'We love you coach! Don't abandon us like this!'";
		say "     One after the others, the entire team starts to shout and protest to Roman. To accept himself. To stay. The reaction of the senior players, all male gorillas, is more lukewarm, but some of them rally to the rest of the crowd, and the rest seem to simply accept the situation. 'Roman! Roman! Roman! Coach!' they all chant.[line break]'Sniff... Sob... You... You big morons! Look at you! You're making me cry!' You are crying too.";
		say "       Everyone goes back to their business, and once Roman finishes to say goodbye to the last group, he traps you in a very, very tight hug. 'I cannot find the words to thank you,' he says. 'It's like a weight just lifted from my shoulders. If I can do anything... [italic type]anything[roman type] to repay you, tell me. I consider you one of my closest friends.'";
		now romanPeeped is 5;
	else:
		say "     You give your best arguments to Roman. 'Thank you for your concern, but I don't think I am ready yet,' he replies. Nonetheless, your words had some effect on him.";
		increase romanEncouraged by 1;

instead of fucking Team Captain Roman:
	if Roman is in Astroslide Field Locker-room:
		say "    ((Sex content will be added to Team Captain Roman at a later date. Stay tuned - Kernog)) ";
	else:
		say "    ((Sex content will be added to Team Captain Roman at a later date. Stay tuned - Kernog))";

Roman ends here.
