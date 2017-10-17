Version 1 of Gordon by Rikaeus begins here.
[Version 1 - new npc]

[   hp of Gordon                                           ]
[   0: Not Placed                                          ]
[   1: In Lockup                                           ]
[   2: In the Half-Renovated Room                          ]

[   GordonFurSuspicion                                     ]
[   0: Not Talked about yet                                ]
[   1: Says can't be his, that his fur is black            ]
[   2: Has learned that it used to be brown from Tawnya    ]
[   3: Has learned that it used to be brown from sex       ]

[   GordonMotive                                           ]
[   0: Not talked about yet                                ]
[   1: says he has no motive                               ]
[   2: Tawnya says that Gordon is Tyler's ex               ]
[   3: Says that he would've killed Kevin instead          ]

Gordon is a man.
The description of Gordon is "[GordonDesc]".
The conversation of Gordon is { "<this is a placeholder!>" }.
The scent of Gordon is "The monkey smells like cologne, bananas and musk. An odd combination of scents but you guess it works for him."

to say GordonDesc:
	say "     The monkey has pitch black fur and hazel eyes. Personally you think the black is really weird because you don't recall ever hearing about monkeys having that color of fur, at least completely covering their body. But after a while you guess that you've probably haven't seen every type of monkey. Besides the fur and his eyes, he's wearing what amounts to a chef outfit, minus the hat. You figure that's his uniform for the Doggy Bowl, which makes complete and total sense, since he's the head chef. The monkey winks at you suggestively when he notices that you're staring at him, which causes you to quickly look away."

instead of conversing the Gordon:
	if hp of Gordon is 0: [should be not yet available]
		say "     ERROR: Gordon shouldn't be where a player can see him yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [hp of Gordon]";
	else if hp of Gordon is 2:
		say "     You walk up to your monkey sex slave, or servant in Nermine's words, and smirk at him. The monkey just tries to sneer at you but the magic beholding him to your will sends a small shock through him.";
	else:
		say "     You walk up to the monkey who smiles widely at you before asking what you're here for. You tell him, and the guard watching the suspects, that you're here to interrogate him. The guard nods and takes both of you to the interrogation room.";
		wait for any key;
		say "[GordonTalkMenu]";

to say GordonTalkMenu:
	say "[line break]";
	say "What do you wish to talk about with the monkey?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if GordonFurSuspicion < 1:
		choose a blank row in table of fucking options;
		now title entry is "Fur Suspicion";
		now sortorder entry is 1;
		now description entry is "Try to learn about him and the fur";
	[]
	if (GordonMotive < 3 or TawnyaMotive is 1):
		choose a blank row in table of fucking options;
		now title entry is "Motive Suspicion";
		now sortorder entry is 2;
		now description entry is "Try to learn about his motives for killing Tyler";
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
				if (nam is "Fur Suspicion"):
					say "[GordonFurEvidence]";
				if (nam is "Motive Suspicion"):
					say "[GordonMotive]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head and tell the guard at the door that you don't have anything to say to him. He takes both of you back to lockup.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say GordonFurEvidence:
	if GordonFurSuspicion is 0: [never talked about it]
		say "     You take out the fur and set it onto the table before proceeding to tell the monkey that this was found in the victim's hand. 'What are you showing me this for? Is this your way of saying you want to bed me?' He asks, wagging his eyebrows. You shake your head at his horny response and tell him that you'd figure that you'd ask if it was his. 'Ahahah! It's obviously not mine as I do have black fur here.' Gordon says, gesturing to his fur. However, that isn't all the guy says as the lewd look returns to his face. 'Of course... you could always check down below with your mouth.' The monkey says.";
		say "     [bold type]Do you want to blow him or take him by his word?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Yes, you have to know for sure.";
		say "     ([link]N[as]n[end link]) - No, you'll take him by his word.";
		if player consents:
			say "     With a sigh you tell him that you'll do it. The monkey's face lights up with glee when you do. You turn and ask the guard to leave the two of you alone. The wolverine gives you a questioning look but shrugs his shoulders before leaving, probably now standing outside the door. Gordon quickly pushes his chair back so that his legs are open and not under the table. He quickly unbuttons his pants to show you that he goes commando, his dick out for the world to see, already hardening. You quickly move over to the monkey and kneel in front of his cock, taking a quick glance at it before bringing your mouth to the tip. Your tongue darts out and tastes the cock-head, the flavor something that strikes you as good. With that you start licking all over the cock, from the top to simply dragging it all over it, the musk driving you further and further into your task. It's not long before you decide to engulf the entirety of the cock with your mouth, diving right onto it.";
			say "     During all of this, the monkey is moaning loudly, clearly enjoying your blowjob skills. Eager to cum, Gordon takes control of your head and begins to thrust quickly into your mouth. You take the facefucking rather well, thankfully the monkey knowing not to keep your down long enough for your gag reflex to kick in for long. You're able to tell that the monkey is getting close to cumming by the fact that as time goes on, he's getting more and more desperate with his thrusts. Sure enough, you can feel his cock tense as he thrusts you down completely on him. Ropes of cum start to spurt out of Gordon's manhood and into your stomach. You swallow the cum as best as you can, the fact that he's balls deep in you probably helps the situation.";
			WaitLineBreak;
			say "     Soon though, the monkey's orgasm comes to an end and he pulls out. In an odd gesture, he wipes the cum off of his cock-head and... licks it off his hand? Well, it's not completely odd, you're sure other people do that. Swallowing once more to get rid of any leftover cum, you stand up. 'That was a great blowjob. But as you can see I'm one hundred percent pure black fur.' Gordon says with a satisifed smile. You nod but something catches your attention as he turns around to pull his pants up. You spot a small area on his ass that is actually brown and seems to be missing some fur. Could it really be that simple?. Shaking your head and deciding to think about it later, you call the wolverin guard in. Once he's in, you tell him that the two of you are done... talking. He gives you an odd look before shrugging his shoulders. The guy takes the two of you back to lockup where you wonder what your next step is, and if Gordon could possibly be the murderer.";
			now GordonFurSuspicion is 2;
		else:
			say "     You shake your head at the monkey and decline his offer, telling him that for now you'll take him at his word. 'Aw, really? Well, if you want to then you know where to find me.' Gordon says with a disappointed look on his face. You turn to the guard and tell him that you're done with this suspect for now. The wolverine nods at you and grabs the guy by his arm and takes you and him back to lockup. There you wonder what you'll do next. Should you go back to the monkey and show him the fur again, accepting his offer or find out some other way?";
			now GordonFurSuspicion is 1;
	if GordonFurSuspicion is 1: [Says it's not his due to it being brown]
		say "     You once more take out the fur and ask him about it. This appears to create a look of excitement on his face as the lewd smile returns. 'Ohoho! Have you thought about my offer?' Gordon says, once more wagging his eyebrows suggestively at you. You sigh and ask him if he wouldn't just let you check his whole body to see that it truly is black fur. The monkey shakes his head at you. 'Nope! It's not as fun this way! At least my way I'd get a blowjob.' He says, causing you to inwardly groan. You guess it's time for you to decide if you'd blow him or not.";
		say "     [bold type]Do you want to blow him or take him by his word?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Yes, you have to know for sure.";
		say "     ([link]N[as]n[end link]) - No, you'll take him by his word.";
		if player consents:
			say "     With a sigh you tell him that you'll do it. The monkey's face lights up with glee when you do. You turn and ask the guard to leave the two of you alone. The wolverine gives you a questioning look but shrugs his shoulders before leaving, probably now standing outside the door. Gordon quickly pushes his chair back so that his legs are open and not under the table. He quickly unbuttons his pants to show you that he goes commando, his dick out for the world to see, already hardening. You quickly move over to the monkey and kneel in front of his cock, taking a quick glance at it before bringing your mouth to the tip. Your tongue darts out and tastes the cock-head, the flavor something that strikes you as good. With that you start licking all over the cock, from the top to simply dragging it all over it, the musk driving you further and further into your task. It's not long before you decide to engulf the entirety of the cock with your mouth, diving right onto it.";
			say "     During all of this, the monkey is moaning loudly, clearly enjoying your blowjob skills. Eager to cum, Gordon takes control of your head and begins to thrust quickly into your mouth. You take the facefucking rather well, thankfully the monkey knowing not to keep your down long enough for your gag reflex to kick in for long. You're able to tell that the monkey is getting close to cumming by the fact that as time goes on, he's getting more and more desperate with his thrusts. Sure enough, you can feel his cock tense as he thrusts you down completely on him. Ropes of cum start to spurt out of Gordon's manhood and into your stomach. You swallow the cum as best as you can, the fact that he's balls deep in you probably helps the situation.";
			WaitLineBreak;
			say "     Soon though, the monkey's orgasm comes to an end and he pulls out. In an odd gesture, he wipes the cum off of his cock-head and... licks it off his hand? Well, it's not completely odd, you're sure other people do that. Swallowing once more to get rid of any leftover cum, you stand up. 'That was a great blowjob. But as you can see I'm one hundred percent pure black fur.' Gordon says with a satisifed smile. You nod but something catches your attention as he turns around to pull his pants up. You spot a small area on his ass that is actually brown and seems to be missing some fur. Could it really be that simple?. Shaking your head and deciding to think about it later, you call the wolverin guard in. Once he's in, you tell him that the two of you are done... talking. He gives you an odd look before shrugging his shoulders. The guy takes the two of you back to lockup where you wonder what your next step is, and if Gordon could possibly be the murderer.";
			now GordonFurSuspicion is 3;
		else:
			say "     Shaking your head, you again decline the monkey's advances. Gordon sighs at you before he too, shakes his head. 'Darn! I'll wear you down soon enough.' He says. You roll your eyes at that, before turning to the wolverine guard. The guy asks you if you want to return to the lockup, to which you nod. Taking that as agreement, he takes the suspect by the arm and guides the two of you back to where you were prior to interrogation. There you muse about what you should do. If you really don't want to get the information about Gordon by blowing him, then maybe his coworkers know something, just show them the fur. ";

to say GordonMotive:
	if GordonMotive is 0:
		say "     Once the two of you are seated, you get to the point. You tell him that you want to know if he had a motive to kill Tyler. 'Kill him? I would never do that, we were best friends.' The monkey says. Although if you look closely, you can see a wince at the mention of him and the victim being friends. In fact, you bring that up but Gordon instantly clams up. 'I won't say anything else about me. Although I will tell you that Tyler did steal Tawnya's backpack, something that she really couldn't live without.' He says before asking the guard to take him back to lockup. When you're there you think about what to do next, and how you'd get the information about Tyler and Gordon...";
		now GordonMotive is 1;
		now TawnyaMotive is 2;
	else if GordonMotive is 2:
		say "     Back in the room, you instantly hit him with the hard evidence, that he and Tyler used to be boyfriends. The happy look on the monkey's face disappears and is replaced by a sad frown. 'Yeah, we used to date, like a week ago, and have been for a few years. Then out of nowhere he dumps me for Kevin,' the monkey says. This time you wince, thinking that maybe you shouldn't have brought this up. No, you should continue, if only to solve the mystery and get peace for Tyler. So, you instead tell him that it'd give him a motive. 'No! I'd never kill him! I loved him too much. If I would have picked someone to kill, it'd be Kevin for stealing Tyler away.' Gordon says. You sigh and nod before telling the guard that you're done. He takes both of you back to the lockup where you wonder what you'll do next.";
		now GordonMotive is 3;

instead of fucking Gordon:
	if hp of Gordon is 1:
		say "     The monkey makes a laughing sound, not disimilar to his current species. 'If you want to fuck then maybe somewhere private ahah!' he says, smiling lewdly at you.";
	else if (lastfuck of Gordon - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     Despite the fact that he's practically forced to obey your orders, it seems the magic has a failsafe to allow him time to recover. So instead you step away to allow that to happen.";
	else if hp of Gordon is 2:
		say "     The magically beholden monkey tries to refuse but the magic pushes him to obey. Although if the glint in his eyes say anything, he's quite eager for it.";
		wait for any key;
		say "[GordonSexMenu]";

to say GordonSexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Make Gordon suck you off";
	][
	choose a blank row in table of fucking options;
	now title entry is "Suck Gordon off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the monkey's hard shaft";
	][
	if cocks of player > 0: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the unrepentent monkey";
		now sortorder entry is 3;
		now description entry is "Take Gordon's ass for a ride";
	][
	if cunts of player > 0: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Gordon's shaft in your pussy";
		now sortorder entry is 4;
		now description entry is "Take Gordon's cock for a ride";
	][
	choose a blank row in table of fucking options;
	now title entry is "Take Gordon's shaft in your ass";
	now sortorder entry is 5;
		now description entry is "Take Gordon's cock for a ride";
	]
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
				if (nam is "Get a blowjob"):
					say "[GordonSex1]";
				if (nam is "Suck Gordon off"):
					say "[SonnySex2]";
				if (nam is "Fuck the unrepentent monkey"):
					say "[GordonSex3]";
				if (nam is "Take Gordon's shaft in your pussy"):
					say "[GordonSex4]";
				if (nam is "Take Gordon's shaft in your ass"):
					say "[GordonSex5]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step away from the enslaved monkey, who oddly looks a bit disappointed.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say GordonSex1: [oral on the player]
	say "     A";
	now lastfuck of Gordon is turns;

to say GordonSex2: [oral on Gordon]
	say "     A";
	now lastfuck of Gordon is turns;

to say GordonSex3: [Gordon fucked by player]
	say "     A";
	now lastfuck of Gordon is turns;

to say GordonSex4: [Gordon fucks player pussy]
	say "     A";
	now lastfuck of Gordon is turns;

to say GordonSex5: [Gordon fucks player ass]
	say "     A";
	now lastfuck of Gordon is turns;
[]

Gordon ends here.
