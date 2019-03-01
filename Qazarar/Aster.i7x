Version 1 of Aster by Qazarar begins here.
[Aster, a gentle giant of a minotaur who wants to get a job at the museum.]

Section 1 - NPC

[ Loyalty of Aster                                             ]
[   0: haven't spoken to                                       ]
[   1: waiting to get quest                                    ]
[ 	2: quest accepted                                          ]
[		3: quest ready to turn in                                  ]
[   4: quest completed                                         ]

Table of GameCharacterIDs (continued)
object	name
Aster	"Aster"

Aster is a man.
ScaleValue of Aster is 4. [above human sized]
SleepRhythm of Aster is 1. [day active]
Cocks of Aster is 1.
Cock Length of Aster is 14. [check values]
Cock Width of Aster is 7. [check values]
Testes of Aster is 2.
Cunts of Aster is 0.
Cunt Length of Aster is 0.
Cunt Width of Aster is 0.
Breasts of Aster is 2.
Breast Size of Aster is 0.
PlayerMet of Aster is false.
PlayerRomanced of Aster is false.
PlayerFriended of Aster is false.
PlayerControlled of Aster is false.
PlayerFucked of Aster is false.
OralVirgin of Aster is true.
Virgin of Aster is true.
AnalVirgin of Aster is true.
PenileVirgin of Aster is true.
SexuallyExperienced of Aster is false.
Aster is nowhere.
The description of Aster is "[AsterDesc]".
The conversation of Aster is { "<This is nothing but a placeholder!>" }.
The scent of Aster is "     He smells powerful, but also somewhat earthy.".

to say AsterDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Aster] <- DEBUG[line break]";
	say "     Aster is a large minotaur, towering above most humanoids. Further, he is wearing clothing that makes him resemble an eccentric uncle or university professor, with a pair of slacks sized for his frame, a collared shirt that seems fit to burst from trying to contain his musculature, and to top it all off, a pair of reading glasses resting on his nose.";

an everyturn rule:
	if TimekeepingVar is 3 or TimekeepingVar is -5:
		if player is in Museum Foyer and Aster is in Museum Foyer:
			say "     Aster gets up from his desk and stretches, straining his shirt. 'Well, it's getting a bit late. I'm going to head home for the night, but feel free to come by tomorrow if you like.' With a short wave, he heads out the door.'";
			wait for any key;
		now Aster is nowhere;
	else if TimekeepingVar is 6 or TimekeepingVar is -2:
		if player is in Museum Foyer and PlayerMet of Aster is true:
			say "     As you stand in the foyer, you notice the door open, and a familiar minotaur comes walking through. He pauses to wave at you as he passes by. 'Good morning! Nice to see you here. If you want to speak with me, I'll be over at my desk, working.'";
		if PlayerMet of Aster is true:
			now Aster is in Museum Foyer;

Section 2 - Events

Table of GameEventIDs (continued)
Object	Name
China Shop	"China Shop"

China Shop is a situation.
The level of China Shop is 5.
The sarea of China Shop is "Outside".

instead of resolving a China Shop: [Meeting Aster]
	say "     As you wander through the city, you notice a store display teeming with fancy tablewares. Shockingly, they seem to be almost completely intact, with only a few damaged or destroyed. Before you have a chance to investigate further, however, you notice there is a very large figure moving around inside the shop. Do you want to investigate the shop?";
	LineBreak;
	if player consents:
		say "     You're far too curious to simply leave now. Instead, you carefully enter the shop, attempting to stay quiet and unnoticed by whatever the figure was. However, when you step into the main area, you can't see any such creature in the space by the display. For a moment you're confused, wondering where something so large could have hidden, but then you see that there's a small table set up in the corner, almost hidden by shelves, and seated at the table is a large minotaur. Contrary to what you would expect from such a tall and dangerous looking creature, this minotaur is carefully perched in his chair, taking care not to break any of the dishes around him as he slowly turns the pages of a book. Further, he is attired in something one would expect more out of an eccentric uncle or university professor than a savage beast, with a pair of slacks sized for his frame, a collared shirt that seems fit to burst from trying to contain his musculature, and to top it all off, a pair of reading glasses resting on his nose.";
		say "     Your surprise leaves you waiting for several moments, reeling slightly from the sight before you. The pause is long enough that the minotaur has a chance to look up from his book and notice you. His eyes widen in matching surprise, before he starts to compose himself. 'Oh, I didn't realize anyone else was here.' He fidgets around slightly. 'Normally I'm the only person to come in here, nowadays. There aren't really any sort of supplies, but I think it's very peaceful. Reminds me of simpler times, you know?' He gives a somewhat awkward smile. 'Well, I suppose if I'm going to start giving you my life's story, I should introduce myself. You can call me Aster. And you are?' The well-dressed minotaur extends a hand.";
		say "     After a moment, you reciprocate, sharing a handshake with him, and give him your name. 'It's nice to meet you.' The two of you spend a brief while idly talking about the area, when he looks down at a watch resting on his arm. 'Unfortunately, I don't think I can stay to chat much longer. But if you'd like to speak more later, get to know each other, I'd be happy to. I always welcome a friendly face, especially since I'm usually much more nervous when talking to people. Come by the [bold type]Museum[roman type] sometime if you'd like, since I'm trying to get a job assisting there.' You shake his hand once more as he gathers a few items from the table, and heads out the door. Maybe you'll see him again.";
		now China Shop is resolved;
	else:
		say "     Deciding it's no concern of yours, you carry on with your wandering, and return to the streets.";

Table of GameEventIDs (continued)
Object	Name
Trial of Courage	"Trial of Courage"

Trial of Courage is a situation.
The level of Trial of Courage is 5.
The sarea of Trial of Courage is "Park".
Trial of Courage is inactive.

instead of resolving a Trial of Courage: [Finding the amulet in the park]
	say "     While navigating through the park, you come upon what seems to be a large amphitheater. It looks distinctly Greek, composed of stone in intricate designs, though the details of the works seem to be faded and worn with age. Everything about the structure paints it as something far older than should be in this park. Despite the strangeness of the world, this still stands out as particularly interesting, and the sight of it reminds you of what Aster asked you to look for. After all, there are very few places that look more like they hold forgotten treasures of ancient heroes than this.";
	say "[bold type]Do you want to investigate?[roman type]";
	LineBreak;
	if player consents:
		say "     You decide it's worth checking out more closely, and you move carefully towards the ancient amphitheater. Soon enough, you find an entrance, and when you enter you can easily see that the interior looks much more well-kept than the outer portions. The first thing to catch your eye when you enter is a tall column, with text inscribed on the front in large lettering. At first, it seems to be in an unknown language, but as you examine it in more detail, it seems to resolve itself into something more familiar. While it seems almost like a riddle, you're reasonably certain that it describes a trial necessary to obtain the 'treasures' within. If you're going to get that amulet, you'll have to play along.";
		say "     As you step up onto the stage, several other people step out from backstage. They all line up in front of you, except for a single one who steps even closer. 'If you wish to pass the trial of the stage, you must act in our play. A worthy attempt will be rewarded, while poor performance will leave you with nothing.' You nod, prepared to do your best as part of this strange test.";
		[replace this with a scene that involves selecting lines. Better lines, better score, better result. Total failure gives bad end maybe?]
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Charisma Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 15:
			say "     While you have little time to prepare, you manage to pull off a passable performance, delivering your lines at the right times, with enough emotion. The other actors seem satisfied, leaving as their parts end. When the play concludes, it's just you and the man who gave you the thespian ultimatum that remain. He stands before you, and gives a small bow. 'Your skills are more enough to prove your bold nature. As proof of your accomplishment, you may claim your prize.' With that, he extends a hand, holding a small amulet, with a symbol of a lion on the front, clearly the prize you have been searching for. You thank him, and take the amulet before leaving the amphitheater. When you look over your shoulder on the way out, however, it seems to have disappeared.";
			increase Loyalty of Aster by 1;
			now SexuallyExperienced of Aster is true;
			now Trial of Courage is resolved;
		else:
			say "     Unused to this kind of performance, you stumble over your lines, mistime your interjections, and often the emotion falls flat. As the play progresses, the other actors seem to grow further and further dissatisfied with you. Finally the seemingly-endless performance comes to a close, and you realize you are now alone with the lead figure. 'Unfortunately, you lack the required skills to earn the prize within. Perhaps you may someday succeed, but for now, you have failed.' When he finishes speaking, you feel a strange sensation and your vision goes dark for a moment. Before you have time to panic, however, your sight returns, bringing with it vision of the park, with no amphitheater in sight.";
	else:
		say "     You decide not to examine the amphitheater just yet, and go back to exploring the park. Maybe another time you'll see what mysteries it holds.";


instead of navigating Museum Foyer while (China Shop is resolved and PlayerMet of Aster is false): [meeting in the Museum]
	say "     When you enter the museum, you see the minotaur you spoke to before, Aster, sitting in a chair near the doorway, his head held between his hands. When you step a little closer, he looks up and sees you. His previously glum expression brightens to a more neutral one, and he greets you. 'Hey, good to see you. Hopefully your day is going a bit better than mine.' Curious, you ask him about what happened to get him down. 'Well, I tried to get a job here, since history is a big passion of mine, and this place is in better shape than a lot of other areas around here. But I blew it. I didn't even get rejected, I just froze. I'm always like this at the worst times.' He shakes his head before lowering it back into his hands.";
	now PlayerMet of Aster is true;
	now Aster is in Museum Foyer;
	move player to Museum Foyer;

Section 3 - Conversation

instead of conversing the Aster:
	say "[AsterTalkMenu]";

to say AsterTalkMenu:
	say "     What do you want to talk about with Aster?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Aster about himself and his history";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Job";
	now sortorder entry is 2;
	now description entry is "Ask Aster about the museum";
	[]
	if Loyalty of Aster > 4:
		choose a blank row in table of fucking options;
		now title entry is "Valerie";
		now sortorder entry is 3;
		now description entry is "Ask Aster about his new boss.";
	[]
	if Loyalty of Aster is 3:
		choose a blank row in table of fucking options;
		now title entry is "Amulet";
		now sortorder entry is 3;
		now description entry is "Give Aster the amulet.";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
					say "[AsterTalk1]";
				else if (nam is "Job"):
					say "[AsterTalk2]";
				else if (nam is "Valerie"):
					say "[AsterTalk3]";
				else if (nam is "Amulet"):
					say "[AsterTalk4]";
				wait for any key;
				say "[AsterTalkMenu]"; [looping back into the menu]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AsterTalk1: [himself]
	say "     'You want to know more about me? Well, I was studying history out of state before all of this happened, and was just visiting town at the time. The whole incident is kind of a blur, too. I remember a lot of running, but I still don't know what could have gotten me and caused this.' Aster gestures broadly at himself. 'It's all very ironic, really. I've always been a fan of history, and I especially loved various kinds of mythology. I got it from my parents, who were big fans of Greek myths themselves. That's where my name comes from. My full name is Asterios, after the original Greek minotaur, but I've always thought it was too much of a mouthful. And now here I am, turned into a minotaur myself. Still, I consider myself lucky that I seem to have only changed physically. I've seen far too many who haven't been so fortunate.'";

to say AsterTalk2: [museum job]
	if Loyalty of Aster is 0:
		say "     When you ask about the job he was trying for, Aster seems slightly more hopeful. 'Well, I know I should be qualified for the position, especially right now, since there isn't much competition. The only issue is that I clammed up, and didn't get the chance to show it. If I could just be more confident, It would be no problem at all.' He looks directly at you, a great deal of his former misery wiped away. 'So that's what I need, then. A way to be more confident. With all the strange things around, I'm sure we could find some sort of... relic or the like, that could give me that confidence.' You see a flash of inspiration in his eyes. 'I think I have a good idea of what to look for, actually. I need to do a bit of research first, though. Why don't you come by again tomorrow, and I'll tell you what I've found?' Not even waiting for an answer, Aster starts quickly takes a spare desk and begins digging through several tomes, far less glum than before.";
		increase Loyalty of Aster by 1;
	else if Loyalty of Aster is 1:
		say "     This time, Aster beats you to the punch. The moment you are about to ask for more information, he starts explaining his plan. 'Alright, based on some of my research, I think it's possible that there is a particular treasure in this city. An amulet that was said to have been once worn by Odysseus, the famous hero of the Odyssey. Supposedly, it gives the wearer incredible courage. I don't know if it would truly work, but if it does, it could certainly solve my social problems.' He pauses to gather his thoughts, and you nod at him in return. 'There have been some rumors that for some reason it can be found in the park. As unlikely as it might be, I think it's worth checking out. Supposedly, this trinket has an image of a lion. If you find it, please, bring it to me.' Before you even have a chance to respond, he returns to his studies, seemingly checking for more information. Apparently it's time for you to check out the [bold type]Park[roman type].";
		now Loyalty of Aster is 2;
		now Trial of Courage is active;
	else if Loyalty of Aster < 4:
		say "     Aster looks up at you. 'Are you having any trouble finding the talisman? Take your time if you need to, I don't need you getting hurt for my sake.'";
	else:
		if SexuallyExperienced of Aster is true:
			say "     'You are a lifesaver, you know that? That amulet was exactly what I needed. Total confidence. I kept eye contact, spoke clearly, and everything else I normally couldn't do. And now I'm officially working here, ready to make history, or rather, study it. It's basically my dream job, even if it's a fairly basic position so far. I can't wait to see how it goes from here.";
		else:
			say "     <talks about his job sub version>";

to say AsterTalk3: [valerie]
	if SexuallyExperienced of Aster is true:
		say "     'Honestly, Valerie is a pretty great boss. She might be a little too into riddles, but we all have our quirks. She really knows her stuff, and runs a tight ship around here, or as much as anyone could at least. Plus, now that I can actually carry a conversation, I've enjoyed just chatting with her. Maybe one of these days I'll learn a bit more about her, but right now it's mostly just surface level stuff.'";
	else:
		say "     <sub conversation>";

to say AsterTalk4: [amulet]
	if SexuallyExperienced of Aster is true:
		say "     When Aster realizes what you're here for, he gets visibly excited, giving you a bit of a glimpse under his shell. Once you present him with the amulet, he only gets more animated, quickly taking hold of it, and examining it closely. After a moment he realizes what he's done, however. 'Whoops, getting a bit ahead of myself. I can hardly believe that something this historic was actually so close. I'm very impressed you managed to track it down, and even if it turns out to be just a trinket, I'll be grateful.' With that, he looks down at the talisman you collected once again, and you can see him muster what confidence he has. 'Alright, here we go, time to see if it works.'";
		say "     The minotaur begins to put on the amulet, suffering only some difficulty in getting it around his horns. Once it is in place, you both observe expectantly, waiting for something to happen. When nothing does Aster seems somewhat puzzled. 'I was expecting that I'd know if something had changed, but I can't quite tell. I think I do feel better, but it seems almost more like being... healthier, instead of more confident.' He pauses for a moment, thinking. 'Then again, I'm not used to it, so maybe this is what confidence should feel like? Only one way to find out, I suppose. Stay right here, and I'm going to go talk to Valerie again.' He quickly stands up and walks across the room to Valerie's desk, his sudden actions leaving you quite convinced that the amulet worked exactly as intended.";
		WaitLineBreak;
		say "     After several minutes of speaking with the sphinx, Aster returns to his own desk, his newfound confidence even more visible. He smiles broadly, and immediately begins speaking. 'I got the job this time! I guess this thing really does work, and just in time. I was getting kind of antsy about what else I would do if I couldn't work here.' At that, the newly minted minotaur claps a hand down on your shoulder. 'And I couldn't have done it without you. I think I'm going to start getting to work with my newly acquired job, but feel free to drop by any time, friend!' He then gives you a suggestive look infused with every ounce of his new confidence. 'And if you ever want some repayment, if you know what I mean, my desk is always open.'";
	else:
		say "     <Sub turn in>";
	now Loyalty of Aster is 4;

Section 4 - Fucking

instead of fucking the Aster:
	say "[SexWithAster]";

to say SexWithAster:
	if (lastfuck of Aster - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'I'm still a bit worn out from last time, but I'd be happy to chat with you instead.' Aster gives you a light smile.";
	else if Loyalty of Aster is 0:
		say "     You haven't even spoken to him!";
	else if Loyalty of Aster < 4:
		say "     Aster blushes and stammers when you ask to have sex with him. After several moments of being completely still, he abruptly changes the subject.";
	else: [ready for sex]
		if SexuallyExperienced of Aster is true:
			say "     Aster grins and looks at you hungrily. 'Well, I'd be happy to have sex with you. I'll even let you decide what to do, if you'd like. As long as you pick quickly, that is.";
			say "[AsterDomMenu]";
		else:
			say "     When you ask for sex, the minotaur nods, ready to go along with whatever you choose.";
			say "[AsterSubMenu]";

to say AsterDomMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer a BJ";
	now sortorder entry is 1;
	now description entry is "Suck Aster off under the desk.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him to fuck you";
	now sortorder entry is 2;
	now description entry is "Ask him to take you right there on his desk.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 3;
		now description entry is "Tell the minotaur you're interested in his ass.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Offer a BJ"):
					say "[AsterDom1]";
				if (nam is "Ask him to fuck you"):
					say "[AsterDom2]";
				if (nam is "Ask to fuck him"):
					say "[AsterDom3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the confident minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AsterDom1: [oral]
	say "     'So you're interested in my cock, hmm? Well, I suppose I could let you use it. But I have some work to do, so how about you crawl under the desk and take care of me.' While he phrases it like an offer, you have no intention of denying his request. Somewhat awkwardly, you shuffle your way into the space under his desk. Once you're in position, on your knees before the dominant minotaur, you are left face to face with the large bulge in his slacks. Taking the initiative, you unbutton his pants, and carefully extricate his large package from its cloth prison. For a moment, you simply stare at the towering pillar before you, mentally preparing yourself for the task of pleasing it.";
	say "     Soon enough your preparation is cut short, as Aster grows impatient with your delay. He reaches one hand down and starts to gently pull you towards him. Taking the cue, you lean in and put your mouth against the tip of his oversized shaft. From there you start to work the tip into your mouth, pushing forward slowly, acclimating yourself to the size as you go. Finally, the entire head is past your lips, and you're able to begin in earnest. You start moving your head down the cock slowly, until it becomes difficult to advance, and then glide back up until only the head remains. You start to repeat the motion, going slightly deeper, slightly faster, with each attempt.";
	WaitLineBreak;
	say "     Aster releases his hold on you, allowing you to go at your own pace now that you've gotten going. You keep it up, bobbing up and down his dick in long strokes, savoring the sensation of the rod passing through your lips. However, you the feeling of the shaft straining tells you that soon the minotaur will come to a climax, and your job will be done. You barely have time to process that thought before the action comes to a peak, and the cock in your mouth starts throbbing intensely, flooding you with his release. You spend some time swallowing down his load, gasping for air in between spurts, until at last his orgasm abates. He pulls away from the desk just enough to allow you out, and gives a confident grin at you when you climb to your feet. 'Good work down there. Feel free to come back whenever.'";
	PlayerDrink 3;
	now lastfuck of Aster is turns;

to say AsterDom2: [ask to be fucked]
	say "     You tell Aster you want him to fuck you, and he responds with a broad grin. 'Alright, then, I'll give you what you want. But first I want you to get up on the desk, so I can do this properly.' You waste no time in listening to the confident minotaur, and in moments you're lying on your stomach across his desk, with papers and books strewn about you. Being so exposed, out in the open museum atrium, adds a thrill to what's about to happen. He doesn't leave you waiting, and in almost no time at all you feel a very sizeable shaft drop down onto your rear, allowing you to feel all the weight of his package resting on you.";
	say "     There is only a moment of peace, savoring the touch of the minotaur cock, before he begins to pull it back. The tip drags its way across your back, tracing a line directly towards your opening. For a scant few seconds, he is motionless, poised to take you without actually doing so. Then the seconds pass, and without warning the broad head of his shaft is resting deep within you as you gasp for breath. From there Aster begins to hammer in and out, plowing you right in the open. The thrusting of his member starts to build a well of pleasure within you, growing significantly alongside the force of his thrusts. Finally it rises to a peak, and with one final slam he hilts his dick in you, flooding you with his bovine essence.";
	say "     For a time you feel adrift in the pleasure you were given by the incredible plowing from the once-shy minotaur. Afterwards, however, you start to come down from the sensation when Aster pulls out of you, leaving you simply lying on his desk, with minotaur spunk dripping from you. 'Hey, you were a pretty excellent fuck, I've gotta say. I'd love to stick around, but I have some more work to get to. Go ahead and take five to get yourself together, though. If you need to get properly railed again later, you know who to call.' With that, the studious minotaur leaves you, presumably to perform some menial task. Eventually you do gather yourself, despite your embarrassment, and you follow suit.";
	now lastfuck of Aster is turns;

to say AsterDom3: [ask to fuck him]
	say "     'Hmm, is that so? Well, I'll let you enjoy my ass, but it will be on my own terms.' He gets up from his desk, and gestures at his chair. 'How about you take a seat and let me work?' With no need to refuse his request, you comply, setting yourself down in his desk chair. In expectation of what is about to happen, your [cockname of player in lower case] member begins to harden. The minotaur grins at the sight, already stripping off his slacks, exposing his own hardening shaft at the same time. For a moment you simple look at his impressive physique, until he steps forward and climbs up onto the seat[if strength of player > 17]. You can comfortably support his weight as he adjusts himself until his rear is hovering just above the tip of your rod[else]. His full weight is more than you can easily handle, leaving you pinned under him as he maneuvers his rear into place above your rod[end if]. Finally, he lowers himself down with much more speed than you were expecting, impaling himself on your cock.";
	say "     The minotaur begins to ride you with far more fervor than you expected, and with a skill that can only be born of the amulet you gave him. The up and down motion combined with the way his hole grips your cock bring you incredible pleasure, enough that you can do nothing except wait and allow him to have his way with you. The only thing you can focus on is the feeling on your dick and the sound of his voice. 'Ha, even when I let you use your cock, it's still me in charge, and it always will be. Isn't that right?' You can only nod in response, as your helpless state more than proves him right. 'Well, I only need you to do one more thing. Cum for me, now!' Driven on by his words, you find yourself climaxing, faster than you expected, unloading your cream directly into the bull. As you do so, he comes a stop, allowing it to fill him, before he smiles. 'Well done, just like I asked. Now, I'm going to get up, and then you'll need to get up as well. I still need that chair.' After the experience he just gave you, there's really nothing to do but what he requests.";
	now lastfuck of Aster is turns;


to say AsterSubMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer a BJ";
	now sortorder entry is 1;
	now description entry is "Suck Aster off under the desk";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Demand his dick";
	now sortorder entry is 2;
	now description entry is "Take control and powerbottom Aster";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 3;
		now description entry is "Tell the minotaur you wanna ride his ass";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Offer a BJ"):
					say "[AsterSub1]";
				if (nam is "Present yourself for fucking"):
					say "[AsterSub2]";
				if (nam is "Ask to fuck him"):
					say "[AsterSub3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gentle minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AsterSub1: [oral]
	say "     <suck off Aster under his desk";
	now lastfuck of Aster is turns;

to say AsterSub2: [ask to be fucked]
	say "     <scene>";
	now lastfuck of Aster is turns;

to say AsterSub3: [ask to fuck him]
	say "     <scene>";
	now lastfuck of Aster is turns;

Aster ends here.
