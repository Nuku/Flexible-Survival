Roman by Kernog begins here.

"Adds the Team Captain Roman NPC, who hangs around Astroslide Football Field and is tied to the Tenvale Gorillas Football Team Quest."

[Character Variables]
[HP :
0: secret unknown
1: secret known
2: Roman confronted
3: Roman's trust earned
4: Bad ending
5: Good ending]
[ XP is used at step 3. Is incremented by 1 at each failed attempt to encourage Roman to come out, in order to make the next attempt easier]

Team Captain Roman is a man. Understand "Roman" as Team Captain Roman.

The description of Team Captain Roman is "[RomanDesc]";

to say RomanDesc:
	if Roman is in Astroslide Field Locker-room:
		say "You look at the former team captain. Roman is tied on his back to one of the benches. Old jerseys are pinning his arms under the bench, and pulling his legs up against his chest, exposing his pussy to everyone. Someone has covered his entire body in writings with a red marker. Dirty names, like [']bitch['], [']whore['], or [']team pet['], an arrow pointing down to his crotch, with the mention [']For public use['], and another on his head, pointing at his mouth, saying [']Feed the monkey[']. Roman's eyes meet yours, but he looks absent. He tries to mumble something, but his mouth has been filled with socks, and only a muffled whisper escapes his lips.";
	else:
		if HP of Roman is 0:
			say "[first time]This is the captain of the Tenvale Gorillas. You hear some of the apes address him as 'captain Roman'. [only]Roman stands out from the rest of the players. He looks more mature, and in opposition to his teammates, who strut on the field with only a helmet and a shoulder-pad, he wears a tank-top and a pair of shorts, who outline his strong body and the large bulge of his crotch. Damn, he must be hung!";
		else if HP of Roman is not 5:
			say "Roman stands out from the rest of the players. He looks more mature, and in opposition to his teammates, who strut on the field with only a helmet and a shoulder-pad, he wears a tank-top and a pair of shorts, which are simply padded with cotton in order to hide his gynomorphism, as you now know.";
		else:
			say "Roman stands out from the rest of the players. He looks more mature, and in opposition to his teammates, who strut on the field with only a helmet and a shoulder-pad, and nothing else. His shorts are not padded anymore, letting everyone see that he is now transgender.";

The conversation of Team Captain Roman is { "Yap!" }.
Team Captain Roman is in Astroslide Football Field.

instead of sniffing Team Captain Roman:
	say "     The scent of Roman's slightly sweaty fur reaches your nose. It's definitely a male smell, albeit not as strong as the other, more active gorillas. Roman raises an eyebrow as he notices you smelling him. 'I'm working here. If you want more of that smell, you should just go to the locker-room, or take care of our laundry.";

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
	if Roman is in Astroslide Football Field:
		if (GorillasMember is 2):
			choose a blank row in table of fucking options;
			now title entry is "Results";
			now sortorder entry is 2;
			now description entry is "Ask Roman about the results of the tryouts.";
		[]
		if (GorillasMember is 3):
			choose a blank row in table of fucking options;
			now title entry is "Laundry";
			now sortorder entry is 3;
			now description entry is "Do the team's laundry";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Water-boy";
			now sortorder entry is 4;
			now description entry is "Take your shift as a water boy.";
			[]
			if (GorillasRep > 3):
				choose a blank row in table of fucking options;
				now title entry is "Training";
				now sortorder entry is 5;
				now description entry is "Spend some time training with your fellow players";
				[]
			if (GorillasRep > 8):
				choose a blank row in table of fucking options;
				now title entry is "Match";
				now sortorder entry is 6;
				now description entry is "Play a match.";
			[]
	if (HP of Roman is 1 ):
		choose a blank row in table of fucking options;
		now title entry is "Confront";
		now sortorder entry is 7;
		now description entry is "Confront Roman about his secret.";
	[]
	if (HP of Roman is 2):
		choose a blank row in table of fucking options;
		now title entry is "Convince";
		now sortorder entry is 8;
		now description entry is "Try to earn Roman's trust.";
	[]
	if (HP of Roman is 3):
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
					else if (HP of Roman is 4):
						say "[RomanTalk3]";
					else if (HP of Roman is 5):
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
	say "     'Hey, if it isn't [if player is not defaultnamed][name of player], [end if]my favorite [if GorillasMember is 3]laundry boy[else if GorillasMember is 4]water-boy[else]player[end if]!' Roman welcomes you, before giving you a warm and breath-cutting hug. The large-and-in-charge primate makes small talk with you, giving news of every other member of team. 'Did you know that [one of]Bradley[or]Brian[or]Gavin[or]Nate[or]Andy[or]Ike[or]Vinny[or]Reid[or]Tom[or]Everett[at random] [one of]got himself a cheetah girl when he visited the zoo, the other day?[or]almost got molested by that goat janitor when he went to the hospital[or]scored himself one of these husky gals roaming the street?[or]got gangbanged by a gang of hyenas[or]found that neat bar; the Palomino, it was called.[or]tried to score one of these rats who hang around in the mall, but got rejected[or]almost ended up zipped up in a pooltoy, at the beach?[at random]";

to say RomanTalk3:
	say "     You sadistically ask Roman how he is doing. Roman recognizes your voice, and tilts his head to look at you. His broken stare slowly turns into hate. 'Whm? Whm... Mhm hhmm muuuh!' It seems Roman does not appreciate his current treatment. Then again, he should not have been so careless about his secret, didn't he?";

to say RomanTalk4:
	say "     'Hey, if it isn't my best friend! Come here for a hug, buddy! [one of]You should show me your place, one of these days.[or]We should hang around, one of these days.[or]As you can see, I'm not using padding anymore. The cotton was always tickling me, anyway![at random]'";

to say JoiningTheTeam:
	if GorillasMember is 0:
		say "     Roman glances up and down at you, and nods slowly. 'So you want to join the big leagues huh?' he asks, putting one of his big hands on your arm to feel your muscles. 'Fine, we can always use more members... but it's got to be the right people, you understand? We'll have another try-out in which you can and the other hopefuls can show their stuff. Come back sometime tomorrow and remind me that you want to [bold type]join[roman type], and you can have a go.' The gorilla pats your shoulder, then turns back to supervise the ongoing game.";
		now GorillasMember is 1; [quest to join started]
		now GorillasMemberQuestCounter is turns;
	else if GorillasMemberQuestCounter - turns <= 8:
		say "     'Yeah, I remember, don't worry,' Roman replies. 'We are not ready yet. Come back later.'";
	else:
		say "[FootballTryouts]";

[TryoutScore is in Tenvale Gorillas Football Team extension]
to say FootballTryoutsResults:
	say "     'Just in time. I was just done with the results.' The team captain shouts some instructions to the unruly throng of football players all around, sending some of them to train on the field while cheering on those who're currently involved in a gangbang on near the door to the locker-room. After calling out, 'I'll be over in a moment, hold me a place in the line to fuck her!' he [if HP of Roman is 0]asserts[else]lies[end if], as he walks over and turns his attention to you. 'Okay. Let's see...'";
	WaitLineBreak;
	now GorillasMember is 3;
	if TryoutScore is 7: [maximum points]
		say "     'You really wowed us out there,' the primate says with a broad grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, it immediately became clear that we had to have you on the team. Hell, you were at the top in front of everyone else. That'll make a fine addition to our team!' Waving his hand to indicate the entrance to the locker-room, he goes on to say, 'Be sure to come by regularly to either train or play a match. The Fourmont Wolves got stuck on the campus with the infection, and they are always eager for a play-off.' You thank him and walk away, and into the midst of the gathered football players, getting a very warm welcome (and a few friendly gropes) from the guys.";
		now GorillasRep is 9; [star player]
	else if TryoutScore > 4: [okay results]
		say "     'Congratulations you made it into the team,' the primate says with a grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, you rated well in the upper third. Didn't take much convincing for everyone to agree that you deserve a shot on the team.' Waving his hand to indicate the large locker room, he goes on to say, 'Be sure to come by regularly to train. You should make it to the main team in no time.' You thank him and walk away, and into the midst of the gathered football players, getting a very warm welcome (and a few friendly gropes) from the guys.";
		now GorillasRep is 4;  [b team player]
	else: [moderate to bad results]
		say "     'Listen, we had a look at your results and... made a team decision that you will not be joining as a player,' the primate tells you with a somewhat apologetic expression. Yet as you bow your head in shame and begin turning to walk away, he grabs hold of your arm and adds, 'Wait, I haven't finished yet. I thought it was brave of you to do the tryouts, no matter what came of it, so... I have an offer for you. A way you can still be part of the team and help out. You could be either a [if player is female]water girl or a laundry girl[else]water boy or a laundry boy[end if].' Roman gives you a supportive slap on the shoulder. 'It will be no small job, managing all these boys['] laundry, but every effort counts, and for that you have my thanks. [bold type]If you work for the team enough times, I am certain that someone will put a good word for you, and put your name forward for the next draft[roman type]. Come back anytime you want, champ. I'm sure that I'll see you on the football field in no time.'";
		now GorillasRep is 0;


to say RomanConfront:
	say "     You ask Roman to talk with him in private. 'Okay. One moment, boys!' he tells the other players, while you guide him to an isolated area of the football field. 'What's the problem? Some of the boys making trouble?' he asks.";
	say "     Sheepishly, you admit that you saw Roman naked, and his private bits. The team captain looks at you for a moment, looking like he was hit by a freight train. 'Y-You what?' he asks. 'You... Why are you telling me this? Are you trying to mock me? To blackmail me?' You try to reassure him, that you would tell no one, but that his attitude about it was strange, considering all the manner of beings roaming the city nowadays. 'You know nothing,' he replies, giving you a stern look. 'It's a personal issue, and I don't want to talk about it. Not now, at least.'";
	say "     It seems that you will need to convince Roman to trust you. Maybe being a member of the team and/or a trans-man yourself may help with this";
	now HP of Roman is 2;

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
		say "     'It happened at the start of this whole mess. I had been already turned into an ape by then. I was strolling the city, curious about how it looked like outside and, and I got ambushed. Some crazy husky male ambushed me. Then, he knocked me out, and had me raped by his pack of bitches again, and again, for fun. It was not enough to turn me into a dog, but it was well enough to make my bits shrink, and eventually be replaced by this.' Roman gestures at his padded shorts. 'They mocked me all the way until I turned into a woman down there. It was not pleasant, to say the least. And I just can't confront the guys about it. I... You see them. [if cunts of player > 0]You see the lewd looks they give you because of your lady parts. [end if]If they learn, they will throw me out; or worse.'";
		say "     The large primate wipes a tear which was beginning to form in the corner of his left eye. 'So, now you're on the page. You know, it feels kinda good to let it out, to someone you can trust.' Roman gives you a warm smile. 'And, who knows. When there will be enough women and herms in the team, their look will change, and I'll be able to loose the shorts. But for now, I trust you with this. Don't let me down, buddy.'";
		say "     Roman parts from you, and you feel that you are at a crossroad. You could try to talk more to Rohan, and [bold type]encourage him to come out[roman type] on his own terms, helping him find closure. You could let your inner sadist loose, go to the locker-room, [bold type]divulge the captain's secret with the team[roman type], and enjoy the ensuing torment. The choice is yours.";
		now HP of Roman is 3;
	else:
		say "     'We already talked about it: I don't trust you enough to tell you about it. Please let it go,' Roman replies to your query.";

to say RomanEncourage:
	let bonus be (( the Charisma of the player minus 10 ) divided by 2);
	increase bonus by XP of Roman;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]20[roman type] (Charisma Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 20:
		say "     'Yes... Yes, I see your point. Better let the cat out the bag,' Roman says after hearing your arguments. He promptly assembles the entire team, staff included. Some curious fans are also here to hear him. 'Guys, and girls, I have something to tell you. It is something important for me, on a personal level, and something that I kept to me since this whole mess began. Hear me out...'";
		say "     With sober words, Roman explains his current state, and the context during which it happened. You can hear the emotion in his voice, but he manages to keep it contained. 'And this is it. I hope that you will forgive me for not having told everything sooner. I was afraid. I did not trust you, although I should have, from the start. I also hope that you understand but, if you do not feel comfortable, I am ready to step out of my position, and...'";
		say "'Shut up!'";
		WaitLineBreak;
		say "     Everyone turns towards the voice. It is one of the newest players, a strong-looking female bear. 'How can you be so ashamed of what you are. You did so much for us! For this college! You...' The bear reprimes a sob before resuming her speech: 'You are the pillar of this team. You gave all of us a home, away of all the madness that swept the city, and a way to be proud of ourselves, and our bodies. Don't leave like this!'";
		say "'Yeah, coach!'";
		say "'We don't blame you!'";
		say "'We love you coach! Don't abandon us like this!'";
		say "     One after the others, the entire team starts to shout and protest to Roman. To accept himself. To stay. The reaction of the senior players, all male gorillas, is more lukewarm, but some of them rally to the rest of the crowd, and the rest seem to simply accept the situation. 'Roman! Roman! Roman! Coach!' they all chant.";
		say "'Sniff... Sob... You... You big morons! Look at you! You're making me cry!' You are crying too.";
		say "     Everyone goes back to their business, and once Roman finishes to say goodbye to the last group, he traps you in a very, very tight hug. '[if player is not defaultnamed][name of player], [end if]I cannot find the words to thank you,' he says. 'It's like a weight just lifted from my shoulders. If I can do anything... [italic type]anything[roman type] to repay you, tell me. I consider you one of my closest friends. Actually...'";
		say "     Roman runs to the locker-room, and comes back a couple of minutes later, a football helmet in his hands. 'I want you to take this. First one I received when joining the team, and still good,' the Gorilla explains as he lobs the helmet in your arms. 'You're going back into the city, right? You'll need it.' Thanking profusely Roman, you strap the helmet to your backpack.";
		say "[bold type]You gain a football helmet![roman type][line break]";
		increase carried of football helmet by 1;
		now HP of Roman is 5;
	else:
		say "     You give your best arguments to Roman. 'Thank you for your concern, but I don't think I am ready yet,' he replies. Nonetheless, your words had some effect on him.";
		increase XP of Roman by 1;


[SEX SCENES]

instead of fucking Team Captain Roman:
	setmonster "Football Gorilla";
	if HP of Roman is 4:
		if (lastFuck of Roman - turns > 4):
			say "[RomanFuck1]";
			decrease libido of player by 20;
		else:
			say "     Poor Roman is currently [one of]already taken by a couple of visitors[or]spitroasted by two horny wolfmen footballers[or]forced to rim one of his former teammates['] ass[or]having his pussy toyed with by a pair of cheerleaders.[at random] You will have to try again later.";
	else if HP of Roman is 5:
		if (lastFuck of Roman - turns > 8):
			say "[RomanFuck2]";
			decrease libido of player by 40;
		else:
			say "     'Already?' Roman asks. 'Sorry, [if player is not defaultnamed][name of player], [else]pal, [end if]but I have some team business to take care of. Can it wait a little?'";
	else if HP of Roman > 1:
		say "     'Look, don't get the wrong idea,' Roman sighs. 'You're nice and all that, but I don't feel like having sex after what happened. And with you-know-what. People aren't as [']fluid['] as you, you know?'";
	else:
		say "     'Oh. Well... Um...' Roman scratches the back of his head with his big fingers. 'Would have been nice but, er, I have to take care of some business. Boys being rowdy at the locker-room. You know them.' Roman gives you a small laugh before taking his leave abruptly. [if HP of Roman is 0]What's up with him?[else]Is he embarrassed about his sex?[end if]";

[1 - Roman bad ending]
to say RomanFuck1:
	say "     You approach the helpless Roman, a glint of lust in your eyes. [bold type]How are you going to ruin your favorite ape today?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal fuck";
		now sortorder entry is 1;
		now description entry is "That's all he is good for, is he not?";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck";
		now sortorder entry is 2;
		now description entry is "Assert Roman's progress in his gag suppression training.";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Strap-on";
		now sortorder entry is 3;
		now description entry is "Someone has left a strap-on next to the bench.";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "Have him work his tongue on your cunt.";
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
				if nam is "Vaginal fuck":
					say "[RomanFuck1Vag]";
				if nam is "Face-fuck":
					say "[RomanFuck1Blow]";
				if nam is "Strap-on":
					say "[RomanFuck1Strap]";
				if nam is "Cunnilingus":
					say "[RomanFuck1Cuni]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     Having second thoughts, you abstain from using Roman to satiate your needs. You step away, letting the ape rest for now.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RomanFuck1Vag:
	say "     You circle the bench on which Roman is tied, and close on him. His cunt-man pussy is slightly gaping, but still looks usable. Nanites do wonders for sexual stamina, as usual. The gorilla looks at your predatory approach. He mumbles through the sock that plugs his mouth. Is he asking for you to release him? No matter. You grind a pair of fingers against his lower lips, delighting yourself when you hear the ape grunt in a low voice, then grunt louder when you slip your fingers as deep as you can. You prod and test; when you pull out, your fingers are wet, and not just from the remnants of semen from Roman's previous users. You line up your member, and push forward.";
	WaitLineBreak;
	if (cock length of player < 12):
		say "     You take your time breeding the gorilla. His pussy accommodates your cock easily, and you allow yourself to pound him lazily. After countless forced fucks, Roman does not try to pull on his bindings anymore. He just takes it, his breathing getting quicker and quicker, as his nanites do their jobs and provide pleasure for him, and lubrication for you. Life continues as usual around you; you are not the first to fuck the ape, nor will you be the last.";
	else if (cock length of player < 18):
		say "     Roman heaves as your cock head splits his hole apart. Despite the continuous ponding, the size of his pussy can only do so much to accommodate your [cock size desc of player] maleness. You still manage to bottom out inside the gorilla. He grinds his teeth and pulls on his bindings, but in the meantime you lean over him and give hearty thrusts that make the sturdy bench creak. Eventually, you hear him moan into your ear, thanks to the action of the nanites. Life continues as usual around you, although a couple of onlookers do stop what they are doing, to watch you pound Roman's pussy with wild abandon.";
	else:
		say "     Roman's eyes bulge. Is someone trying to fist him, like last time? You grin, all teeth bared, as he realizes the size of your [cock size desc of player] maleness. Grabbing the sides of the bench for leverage, you ram your member as far as you can, rearranging the poor ape's insides. Everyone around you stops what they are doing to look at you. They can all witness Roman's bulging belly, the shape of your [cock of player] cock deforming the layer of fat and muscles, which retreats then plunges further as you push it into his rapidly stretching womb. The sight is both shocking and alluring, especially when you manage to push your dick almost all the way in. Roman is in his own world, his eyes empty and his body limp, but you can tell from the many tremors that reverberate through your rod that the nanites make him go through orgasm after orgasm.";
	WaitLineBreak;
	if cock width of player < 12:
		say "     You feel your [short ball size] balls churn, and a powerful orgasm overtakes you. Your cock spurts your [cum load size of player] load inside Roman's womb, mixing it with the many already present.";
	else if cock width of player < 25:
		say "     You feel your [short ball size] balls churn, and a powerful orgasm overtakes you. Your cock floods Roman's womb with your [cum load size of player] load, the overfill spilling out quickly.";
	else:
		say "     You feel your [short ball size] balls churn, and a powerful orgasm overtakes you. Your cock cums, and cums, and cums. Roman's belly bulges obscenely, as your cock acts as a plug and as the ape's body cannot keep up with the quantity of your [cum load size of player] release. When you pull out, it is followed by a flush of thick seminal fluid pooling on the locker-room's floor.";
	if cock length of player >= 18:
		say "     Roman pants heavily though his sock gag. Meanwhile, a waiting line has formed behind you. But nobody seems in a hurry to pass after you, and take Roman's now [italic type]very[roman type] gaping cunt. It seems that the football team's sex pet earned himself a few hours of rest.";
	else:
		say "     Roman pants heavily though his sock gag. Meanwhile, a waiting line has formed behind you. It seems that the football team's sex pet will not have any rest until a few hours.";

to say RomanFuck1Blow:
	say "     You walk near Roman's head, and pull out the sock which is muffling his sounds. 'You... You trait-umg!' You are not here to hear the pussy-boy whine, and silence him by plugging his mouth with your cock. Roman gives you a weak glare, but the fear of punishment prevents him from biting your bits off. You grin, grab the ape's big head, and start fucking his face.";
	WaitLineBreak;
	if cock length of player < 8:
		say "     You enjoy the gorilla's warm mouth. You cram your entire length inside, and feel Roman instantly suckling on it. He barely gags on your meat, too. How many times did he do this already? The marker scribbles on his forehead have stopped counting at fifteen, but it must be more. You savor the long leisurly blowjob, occasionally pumping your hips to make things faster. Eventually, you feel the need to cum.";
	else if cock length of player < 18:
		say "     You enjoy the gorilla's struggles to take your entire length inside his mouth; not that he has a choice in the matter. You feel the tip of your cock leave the confines of Roman's muzzle, and dive into his throat. You eventually reach as far as your [cock length of player] inches cock allows you. With Roman's head tilted upwards like this, the sensations are very nice. When the ape's gag reflex starts to make him retch, and pull on his bindings, you pull out, only to push back again right after he takes a breath, turning this quickly into a proper face-fuck, until you feel the need to cum.";
	else:
		say "     Roman whines, as you stretch his mouth to the limits with your [cock size desc of player] cock. You have barely pushed the head in, when you already feel his uvula. The gorilla coughs and wheezes, but still does his best. He suckles your tip, and tries to use his tongue. Eventually, you have enough. You pull out, and using Roman's attached legs as lever, you frot your dick against the furry chest. 'Mmf! Wmmf! Nnnf!' Roman whimpers. Your [ball size] pouch smacks him like a metronome, smothering his protests. Eventually, you feel the need to cum and push your glans back inside Roman for the finale.";
	WaitLineBreak;
	if cock width of player < 12:
		say "     You unload your [cum load size of player] release inside Roman's mouth. The thick male juice trickles down his throat, mixing it with the many already present in his stomach. You ensure that Roman has taken all of your seed, one way or another, then put the sock back in his mouth and let the big ape digest his meal.";
	else if cock width of player < 25:
		say "     You block Roman's throat for several seconds as you empty [cum load size of player] load inside his stomach, filling it to the brim. When you finally pull out, Roman coughs violently, strands of cum escaping his mouth, having followed your [cock of player] dick on the way out. You ensure that Roman has taken all of your seed, one way or another, then put the sock back in his mouth and let the big ape digest his meal.";
	else:
		say "     You drown Roman with your [cum load size of player] release. His belly bulges more and more as you overload it with your cum. The sheer quantity makes the gorilla throw up cum through his mouth and nose, and after you pull out, each of his coughs is accompanied by a glob of semen. You ensure that Roman has taken all of your seed, one way or another, then put the sock back in his mouth and let the big ape digest his meal.";

to say RomanFuck1Strap:
	say "     You circle the bench on which Roman is tied, and close on him. His cunt-man pussy is slightly gaping, but still looks usable. Nanites do wonders for sexual stamina, as usual. The gorilla looks at your [body of player] approach, like a predator. He mumbles through the sock that plugs his mouth. Is he asking for you to release him? No matter. You grind a pair of fingers against his lower lips, delighting yourself when you hear the ape grunt in a low voice, then grunt louder when you slip your fingers as deep as you can. You prod and test; when you pull out, your fingers are wet, and not just from the remnants of semen from Roman's previous users. You fasten the strap-on on you. The toy is double-ended, with a small, bulbous end that you insert in your [cunt width of player] pussy. You feel it press from the inside against the region of your clitoris. Once you are ready, you line up your toy with Roman's lower hole, and push forward.";
	WaitLineBreak;
	say "     You take your time fucking the gorilla. His pussy accommodates your strap-on easily, and you allow yourself to pound him at your own rhythm. The vibrations of the strap-on reverberates on the bulbous end of the sex-toy, which are then distributed to the rest of your crotch, and you take an immense pleasure topping the gorilla. After countless forced fucks, Roman does not try to pull on his bindings anymore. He just takes it, his breathing getting quicker and quicker as his nanites do their jobs, and provide pleasure for him, and lubrication for you. Life continues as usual around you; you are not the first to fuck the ape, nor will you be the last.";
	say "     Roman eventually cums. His man-pussy contracts violently around the dildo of the strap-on. The resulting rumbling through the rubber-toy pushes you past your limits as well, and you too go through a powerful climax. Your sexual urges satisfied, you pull out, and put the strap-on back where you found it. As you go back to your own business, a [one of]gorilla[or]wolfman[or]horse[or]cat[or]satyr[at random] wastes no time taking your place. [one of]He plunges his dick, a real one this time, inside Roman's wet pussy[or]She picks up the femcum-covered strap-on, and prepares to give Roman another round of rubber dildo fuck.[at random]";

to say RomanFuck1Cuni:
	say "     You walk near Roman's head and pull out the sock which is muffling his sounds. 'You... You trait-umg!' You are not here to hear the pussy-boy whine, and silence him by sitting on him, and smothering his complaints with your crotch. Roman gives you a weak glare, but the fear of punishment prevents him from biting your bits off. You grin, grab the ape's big head, and start grinding his face.";
	WaitLineBreak;
	say "     Roman whines, although you can tell that he welcomes the change from the way he instantly starts lapping your slit. And he's good at it, too! You turn around on your living seat and look the gorilla right in the eye, giving him directions. You have him focus on your clit. Then, once you are aroused enough, you grab the back of his head, and encourage him to delve as deep as he can inside of your [cunt length] pussy.";
	say "     Eventually, you feel your climax approaching. You squeeze Roman's head between your quivering [body of player] legs, and grind your orgasm on the ape's immobilized face, gushing femcum over his thick, black fur. You order Roman to clean up his mess. Once you judge that he did a proper job, you stand up. To his dismay, a [one of]gorilla[or]wolfman[or]horse[or]cat[or]satyr[at random] hastily replaces you and [one of]plunges his dick inside Roman's lube coated mouth[or]straddles him as well[at random] while you go back to your own business.";

[2  - Roman good ending]
to say RomanFuck2:
	say "     Roman ponders your proposition for a moment. A very short moment. 'I guess I do need a distraction from the business, [if lastFuck of Roman is 0]and I trust you to show me a good time[else]especially if we have as much fun as last time[end if].' The both of you skedaddle to Roman's former changing room. It returned to its original function and is now cluttered with football equipment, but there is still enough space for Roman to unroll an exercise mattress on the floor. He looks back at you expectantly and asks, [bold type]'What do you have in mind?'[roman type] You hug the big gorilla tenderly as you whisper the answer in his ear.[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal fuck";
		now sortorder entry is 1;
		now description entry is "Show Roman the pleasures of being a woman.";
	[]
	if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 2;
		now description entry is "Everything is in the name.";
	[]
	if (cunts of player > 0 and Breast Size of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Sex-ed";
		now sortorder entry is 3;
		now description entry is "Have some [']girl time['] with Roman.";
	[]
	if (cunts of player > 0 and Breast Size of player is 0):
		choose a blank row in table of fucking options;
		now title entry is "Cunt-boy special";
		now sortorder entry is 4;
		now description entry is "Let us have fun together in the campus.";
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
				if nam is "Vaginal fuck":
					say "[RomanFuck2Vag]";
				if nam is "69":
					say "[RomanFuck269]";
				if nam is "Tribadism":
					say "[RomanFuck2Trib]";
				if nam is "Cunt-boy special":
					say "[RomanFuck2Cunt]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     Having second thoughts, you abstain from using Roman to satiate your needs. You step away, letting the ape rest for now.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RomanFuck2Vag:
	say "     Roman's eyes light up. The both of you take your time to go through foreplay. You grope each other, and make out, sprawled on the mattress. You prepare your partner's pussy by inserting one finger, then two. You even manage to insert a third one and pump them for some time, before Roman urges you to let him take your [cock of player] dick in. You kiss one more time, as you gently lay on your back. Roman puts himself in position, and lowers himself gently on your maleness.";
	if (cock length of player < 12):
		say "     Your dick slides effortlessly down the ape's warm pussy. The both of you let out an almost simultaneous coo, as Roman bottoms out your entire length inside of him. You can feel his primate heart pulse rapidly through your member. Roman wastes no time pumping up and down your rod. His usual timidness is now gone as he rides you like there was no tomorrow, his trained body ensuring that he will not run out of stamina any time soon. You try to follow the rhythm, but each time you try to get your bearings, a well-place bump or squeeze makes you gasp. Eventually, Roman leans over you and slips his tongue inside your mouth, playing with your own appendage as you both approach climax";
	else:
		say "     Roman tries his best to accommodate your [cock size desc of player] maleness. You want to tell him that he does not have to try so hard, but the primate uses your pinned body as a leverage, and keeps trying to push more and more of your [cock length of player] inches cock inside of him. The nanites helping, he eventually manages to fit all of it inside, and you have a close view of his distended belly, showing the silhouette of your cock behind the short black fur. Roman seems ready to cum at any moment, and you are already seeing stars, but the gorilla carries on and uses his well-built legs to lift his stretched body up and down as much as he can. The both of you do not last very long.";
	WaitLineBreak;
	if cock width of player < 12:
		say "     You feel your [short ball size] balls churn, and a powerful orgasm overtakes you. You spurt your [cum load size of player] load inside Roman's womb, his own inner muscles milking your cock for all it is worth. Roman moans loudly and keeps your member as deep as he can inside you, while you give your last squirts of semen. Roman and you look at each other. After one last, deep kiss, you head for the showers. As you get out, you notice a crowd hurriedly going back to its own business, as if you had interrupted something. It looks like you had your own peepers.";
	else:
		say "     You feel your [short ball size] balls churn, and a powerful orgasm overtakes you. You flood Roman's womb with your [cum load size of player] load, the overfill spilling out quickly. Roman's pussy milks you for all you are worth, but even he cannot hold out everything, and the pressure soon obliges him to pull out. You squirt the rest of your load all over his chest. Roman and you look at each other. After one last, deep kiss, you head for the showers. As you get out, you notice a crowd hurriedly going back to its own business, as if you had interrupted something. It looks like you had your own peepers.";

to say RomanFuck269:
	say "     Roman's eyes light up. You fall together on the mattress, and start making out with each other. Eventually, you let Roman straddle you and turn around, giving you access to his pussy. You grab his large thighs and adjust his crotch to the level of your mouth. As you were about to give Roman's pleasure button a playful lick, you feel the ape's mouth wrap around [if cocks of player > 1]each of your cocks in turn[else if cocks of player is 1]your [cock size desc of player] cock[else]your clit[end if] and suckle heartily. You gasp of surprise and pleasure; the bets are on, then. You plunge your face into your friend's crotch and give a long, rough lick. Roman's loud 'Ook!' reverberates around the room. The team captain understood the message, and the both of you go at each other and test the other's endurance.";
	if cocks of player > 0:
		say "     Roman's tongue focuses on your glans, making you moan with each assault on the sensitive flesh. Then, without warning, he gulps your rod down as far as he can. He keeps it there a moment, sucking on it like a lollipop, before rising his head and focus again on the head of your dick. He alternates between the two, while his hands keep your other cock[if cocks of player > 2]s[end if] occupied. Feeling brave, he even tries to take [if cocks of player is 2]both[else]two of them[end if] simultaneously in his mouth, as far as they can, squeezing them together in the tight confines of his mouth.";
	else if player is herm:
		say "     Roman's tongue focuses on your glans, making you moan with each assault on the sensitive flesh. Then, without warning, he gulps your rod down as far as he can. He keeps it there a moment, sucking on it like a lollipop, before rising his head and focus again on the head of your dick. He alternates between the two, while his fingers keep your pussy occupied, prodding inside your [Cunt Size Desc of player] or playing with your clit.";
	else if player is female:
		say "     Roman's tongue focuses on your clit, making you moan with each assault on the sensitive button. Then, without warning, he presses his mouth against your pussy and slip his tongue as far as he can. He keeps it there a moment, lashing the inside with powerful tongue strikes, before leaving his head and focus again on your clitoris. He alternates between the two, keeping you on your toes.";
	WaitLineBreak;
	say "     You are seeing stars, but you remain as focused as you can on Roman's private bits, giving them every kind of attention you can think of. You find out quickly that the gorilla seems to like you exploring his cunt with your tongue while pinching his clit with your fingers [italic type]very[roman type], judging by the loud moans and the erratic oral ministrations from your partner. Eventually, the both of you reach orgasm almost simultaneously. Your concert of moans is quickly followed by gush of femcum flooding your face, while [if cocks of player > 0]Roman gulps down dutifully your [cum load size of player] release, not letting a single drop escape[else]the inner muscles of your pussy contracts around Roman's tongue, coating it in slick lubrication fluid[end if]. Roman and you cuddle for a moment, letting the high of your common orgasm subside slowly. After one last, deep kiss, you head for the showers. As you get out, you notice a crowd hurriedly going back to its own business, as if you had interrupted something. It looks like you had your own peepers.";

to say RomanFuck2Trib:
	say "     Roman's eyes light up. You fall together on the mattress, and start making out with each other. Eventually, you sit on the mattress, and pass one of your legs over Roman's crotch, while he does the same under your direction. You feel his black-skinned pussy touch yours. It is already slick wet from the mere excitement. You begin to move, and make circles against Roman's crotch. His puffy lower-lips frot with yours, the odd movement making them stroke your pleasure buttons. 'Oh, this feels... Good...' Roman pants. Encouraged by his reaction, you give his cunt a hearty grind that makes him jerk his head back in pleasure. 'Oh! Oh...'";
	say "     Basking in please, the trans-man rests on his back, and brings his hands to his nipples, caressing and pinching them while you take care of his pussy. His leg wiggles slowly against your chest, and this gives you an idea. You put the gorilla's big, prehensile foot at face level, and give the sole a good lick. This makes Roman jump, and his big, flexible foot grab your head reflexively. Amused, you give it a tongue bath, extracting a lewd moan from the gorilla with each lick. 'Ah! Pl-please stop[if player is not defaultnamed], [name of player][end if]. I'm gonna... Ah!' Instead of stopping, you accelerate both your tongue lashes, and the grinding of your pussy against his.";
	WaitLineBreak;
	say "     'C-cummnng!' Roman's body tenses up in the throes of climax. Judging by the way his back arches, or his prehensile foot squeezes your head, it seems to be an intense one. It goes on for a long minute, until you feel the ape finally relax. You need your own release too. However, as you were starting to lower your hand to your crotch, Roman stops you. 'Since it seems you like my feet so much... Let me help you.' Without warning, his free foot grabs your pussy, and cradles it. You lose your own self-control when you feel one of the toes part your lower lips and prod inside your [cunt size desc of player] cunt, and it is your turn to cum hard in Roman's hands -well, toes.";
	say "     Roman and you cuddle for a moment, letting the high of your common orgasm subside slowly. After one last, deep kiss, you head for the showers. As you get out, you notice a crowd hurriedly going back to its own business, as if you had interrupted something. It looks like you had your own peepers.";

to say RomanFuck2Cunt:
	say "     'What do you mean by [']having fun outside[']?' Roman asks. You do not answer; instead, you grab his arm and lead him to the campus grounds. You head towards one of the many green spaces that pepper the campus. [if daytimer is day]You find a good spot, basked in daylight, and explain to Roman that you will [']work on your tan['][else]You find a good spot, with a view on the nocturnal sky, and explain to Roman that you want [']to see stars together['][end if], accompanying the statement with a cartoonishly obvious wink. Still puzzled, but trustful, he follows you, as you set yourself on the grass, body sprawl.";
	say "     As soon as you are settled, you give the gorilla a big kiss, which makes his cheeks flush red. 'B-but, everyone can see us,' he says. That's the goal, you explain. You and him are trans, and proud to be, and you want to show him that he does not have to be ashamed of flaunting his body. 'If you say so,' Roman replies, unconvinced. You give the ape a warm smile, and cuddle him.";
	WaitLineBreak;
	say "     The cuddle eventually turns into fondles. You and Roman quickly makes abstraction of the openness of the area. One of your hands instinctively descend to his pussy, and you give it a soft squeeze which makes the ape moan. Suddenly, a sharp whistle startles the both of you. The whistle is quickly followed by catcalls and encouragements. The both of you look towards the walkway, and see that you had gathered a small crowd of onlookers. Even the other walkers cannot help but watch the scene as they pass by. 'Don't stop for us, guys.' 'Yeah, that's hot. Keep going.'";
	say "     'Are they here for you?' Roman asks. No, you answer, they are here for [italic type]us[roman type]. As a demonstration, you turn around and straddle your gorilla friend. You spread his legs apart, giving the audience a nice view of his privates and, under the cheers of the onlookers, you begin to go to town on them. You kiss and suckle Roman's clit, while your fingers do pumping motions in and out of his slit. The gorilla gives vocal appreciations of your efforts, and so do the crowd. One of the women even sat on a nearby bench and is now busy masturbating herself, reproducing your movements as best as you can.";
	WaitLineBreak;
	say "     Eventually, two persons walk up to you, in your field of vision. [one of]A muscular bunny jock, and no-less well-built wolfman football player are approaching you. 'Hey, babes,' the bunny starts. 'Seeing you have fun is getting us all worked up, and we want to give you a helping hand... Or more, if you wish. What do you say?'[or]You recognize the bunny jock and the wolfman football player from earlier. 'At it again, babes?' the bunny asks, winking. 'I would have proposed you to visit our room at the dorms, but this seems to be your favorite spot. How about we [']help['] this time too?'[stopping] Roman raises his head, awaiting you to decide, but you make it clear that it is his body, and thus his decision.'";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     'O-okay,' Roman replies. 'But I don't feel up for... You know.'";
			say "     'Don't worry, big guy,' the wolfman replies. 'We'll keep it [']tame['].'";
			say "     You sit up alongside Roman, and the both of you give spread your legs, and give access to the jock and the footballer. They crouch down in front you and, after having set you properly with their big arms, start eating your pussy. They seem to make a game of it, as they give as many playful looks towards each other as to their respective playmate. You and Roman bask on the almost-professional tongue bath the two jocks grant you. Roman seems to take even more pleasure than you; feeling empowered and complimented has done wonders on his confidence, and in turn his pleasure. The memories of his molestation and transformation seem to have faded away, and you can feel him squeeze your hand tightly.";
			WaitLineBreak;
			say "     You share kisses and caresses, which become more and more erratic as the both of you get close to orgasm. Roman comes first. He almost crushes your hand as his body tenses up and his breath accelerates. You try to accompany him in his climax, but you reach your limit shortly after him, and you two squirt your pussy juice onto the smiling male's face.";
		-- 2:
			say "     'Okay,' Roman replies. 'I mean, you look... Hot'";
			say "     'You too, big guy,' the wolfman compliments. 'And a nice change from all these big-dicked apes from the football field.' The bunny jock sits on the ground, and pulls you gently on his lap. While your pair french-kisses, and fondle each other's privates, Roman's lupine partner leans over him, letting the big ape grab his muscular body with his arms and legs, while he grinds his knotted cock against Roman's entrance. 'Ready?' the wolf asks. 'Y-yes, do it,' Roman replies. The wolfman spreads Roman's folds apart, as he plunges into his pussy. The gorilla squeezes his partner tight with his arms and legs. 'Yeah, push it deep, big guy,' the wolf encourages him.";
			WaitLineBreak;
			say "     Roman is given a slow, deep fuck. The bunny jock claims your own pussy, and lets your body sink on his large cock. With the sight of Roman being mated by the wolfman, [if daytimer is day]under the soft rays of the sun[else]under the pale moonlight[end if], you slide up and down the jock's maleness with wild abandon. The both of you cum quickly, and as you ride your orgasm, savoring the feeling of lapine cum flooding your womb, you enjoy Roman pair's finish. 'I-I'm gonna cum', the wolf say. 'Fuck... My knot. Take it!'";
			say "     'Yes! Yes! Ah! Yes!' Roman howls.";
			say "     The pop of the wolf's knot in his tight pussy turns his chant into a silent gasp. His body clamps down on the wolf's as he goes through an intense orgasm. 'F-fffuuuck!' The wolf gives his last throes into Roman. From your position, you can see his balls spasm, as they deliver their load into the climaxing ape.";
		-- 3:
			say "     'Actually,' Roman says, blushing profusely, 'I-I wanted to try something with... Several peoples. You know...'";
			say "     'Oh, we [italic type]do[roman type] know,' the wolfman says, winking. 'How come a gorgeous guy like you never got this kind of attention on the football field?'.";
			say "     'Actually, I don't really play', your friend replies meekly.";
			say "     'Is that so? Let's give you a preview, then. Right guys?'";
			say "     The jock and you nod. The bunny lies down on the grass, and hoists Roman on his furry body. His explorative fingers play with the gorilla's mouth and nipples, then his crotch. 'Let's make you all wet and needy for our friend.' In the meantime, you and the wolfman put on a show, french-kissing and groping each other's privates. Eventually, the wolfman points at Roman, as the bunny jock lifts up the ape's ass. You understand the message. Licking a finger, you prod roman's ass. It's tight, but with some finger prodding and tongue work, you open it enough to slip a pair of fingers inside. 'Don't worry, I'll go slow,' the bunny jock whispers to Roman's ears, before planting a kiss.";
			WaitLineBreak;
			say "     The bunny lets gravity make Roman's ass fall slowly on his cock. The gorilla winces at first, but additional attention from you and the wolf helps him relax. Very quickly, the nanites relay the both of you, and the bunny resumes the ape's controlled descent on his rod. The wolf takes his turn, and slips in dick in Roman's awaiting pussy. 'Fuck, he's tight,' the wolf says. 'Yeah, here too. Feels godly.' Smiling, you approach from Roman's face and give him access to your crotch. The ape, encouraged by the bunny jock, immediately begins to give your pussy a licking, mere inches from the lapine's horny gaze.";
			say "     The four of you wave on the sea of grass, like a living boat. True to their promise, your two new friends['] thrusts are slow, but firm. To your amusement, you can see Roman's eyes roll in their sockets, as he got his fantasy granted, and even more. He's the captain of that boat, and you and the other two cater to his pleasure, stepping up the pace, to throw him out of rhythm, slowing down when you feel he is reaching his limits, and more generally making this a moment to remember.";
			say "     You can tell that Roman went through several orgasms during the foursome, judging by the two males' reactions, when his insides squeezed their dicks like vices. Eventually, the rest of you cum as well. You can hear the wolfman behind you grunt, and the bunny jock in front of you close his eyes and grit his teeth, as they paint Roman's holes white with their cum.";
	say "     Spent, the four of you lie down on the grass. Everyone has a smile on their face, and Roman's is probably the happiest. Eventually, you part ways with the two males. 'See you soon, babe,' the bunny says.";
	say "     'We should stay in contact, Roman. Have a [']private match['] just the two of us, one of these days', the wolfman picks up.";
	say "     You walk back an elated Roman back to the football field. 'These were among the best hours of my life. Actually, the times when you are around are all the best hours of my life.' Roman accompanies his thanks with a warm kiss. 'Gotta go back to supervise training. See you around, [if player is not defaultnamed][name of player][else]champ[end if].'";

[Outside event for finding Roman's tape]
Grocery Store Security Camera is a situation.
The sarea of Grocery Store Security Camera is "Outside".

instead of resolving Grocery Store Security Camera:
	say "     You find a grocery store on your way. The place has been looted until only the metallic shelves remain, but you still decide to give the place a quick check, just in case. As you have guessed, the store is totally empty. The floor is covered with cum stains, who go all the way to the back room. A soft whirr catches your attention to the ceiling, and your eye meet the one of a small motion-activated security camera. Taken by a sudden inspiration, you fetch a stool lying nearby, and open the security camera to grab its tape. This could prove useful[if Lost Camera is unresolved], provided you find some kind of viewing equipment, like a video camera[end if].";
	say "[bold type]Grocery Store Tape has been added to your tape inventory![roman type][line break]";
	add "Grocery Store Tape" to tapes of player;
	now Grocery Store Security Camera is resolved;

to say RomanTransformationFootage:
	say "     When you press the play button, the screen displays the black-and-white, soundless feed of a security camera. It seems that the camera only filmed when there was motion in the field of vision of the recording device. The recording starts the day following the infection. You see the shopkeeper enter his shop from the back-room with wooden planks, about to barricade himself. Unfortunately, he is ambushed by a hyena. The pair leaves the field of the camera during the scuffle but, when it records again, it shows two hyena herms rushing out of the shop. The following recordings show several looters visit the store. [if BrennanRelationship >= 2]You even recognize Brennan at one point. [end if]With each passing day, the visitors are less and less human. The date of recording suddenly jumps forward several weeks when a large gorilla rushes into the store. He is quickly followed by a pack of husky girls, accompanied by an alpha husky. They surround the gorilla, then pile on him. The ape puts a tough resistance, but is eventually taken down.";
	say "     The alpha has the gorilla brought up to his knees and held fast by his bitches, before pushing his cock inside the primate's mouth. Long minutes of mouth-rape pass. The alpha husky keeps talking. You cannot hear what he says, but the gorilla seems to not like what he hears. The dog cums eventually, and force the ape to drink his cum by pushing his knot past his victim's lips. The husky seems unsatisfied by something, and gives the gorilla a small kick to his package. He gives his girls an order, and the female huskies begin to force themselves on the gorilla's cock. Each time one of the huskies pull out, you notice that the gorilla's cock becomes smaller and smaller. Eventually, the penis completely recedes into the dark-furred body, and in its place is a vagina.";
	WaitLineBreak;
	if HP of Roman > 2:
		say "     You suddenly realize that the gorilla on the footage matches Roman's story about his transformation. You cannot help but feel a little sorry for him. In the meantime, the alpha husky used the show to make himself hard again. Pulling Roman by the fur of his head, he throws the football trainer on the cash counter and takes Roman's new and ephemeral virginity. He humps the ape hard and fast. Despite his teary eyes, Roman seems to take more and more pleasure in the pounding, until the dog pushes all the way in. Roman's eyes open wide, and you are actually thankful that the footage does not have sound, considering the scream that he just pushed. More pounding ensued until the alpha husky reached his climax. After a dozen more minutes where the husky slaps Roman's butt to spend time, he eventually pulls out from the gorilla and, with a final butt slap, takes his leave.";
		say "     Roman slowly slides down from the counter and forces himself to stand up. He explores his body, a look of despair on his face. He frantically looks around, and eventually rushes to the backroom. He gets out a couple of minutes later, wearing the pants of the shopkeeper in order to cover his new sex. As he meekly walks out from the store, the footage stops for the final time.";
	else:
		say "     You cannot help but feel a little sorry for him. In the meantime, the alpha husky used the show to make himself hard again. Pulling the gorilla by the fur of his head, he throws the former male on the cash counter and takes his new and ephemeral virginity. He humps the ape hard and fast. Despite his teary eyes, the gorilla seems to take more and more pleasure in the pounding, until the dog pushes all the way in. His eyes open wide, and you are actually thankful that the footage does not have sound, considering the scream that he just pushed. More pounding ensued until the alpha husky reached his climax. After a dozen more minutes where the husky slaps the primate's butt to spend time, he eventually pulls out from the gorilla and, with a final buttslap, takes his leave.";
		say "     The ape slowly slides down from the counter and forces himself to stand up. He explores his body, a look of despair on his face. He frantically looks around, and eventually rushes to the backroom. He gets out a couple of minutes later, wearing the pants of the shopkeeper in order to cover his new sex. As he meekly walks out from the store, the footage stops for the final time.";


Roman ends here.
