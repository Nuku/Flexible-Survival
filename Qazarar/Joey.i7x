Version 1 of Joey by Qazarar begins here.
[Version 1 - new NPC]

[ hp of Joey                                                 ]
[   0: slut Joey locked in                                   ]
[   1: towards slut                                          ]
[   2: failing training                                      ]
[   3: naive Joey                                            ]
[   4-9: towards warrior                                     ]
[   10: warrior Joey locked in                               ]

[ libido of Joey                                             ]
[   0: naive Joey, not sexable                               ]
[	1: warrior Joey, sexable                                   ]
[	2: slut Joey, sexable                                      ]

Section 1 - Basic Setup

Table of GameCharacterIDs (continued)
object	name
Joey	"Joey"

Joey is a man. The hp of Joey is usually 3.
The libido of Joey is usually 0.
The description of Joey is "[JoeyDesc]".
The conversation of Joey is { "<This is nothing but a placeholder!>" }.
The scent of Joey is "     Joey has a nice, furry scent.".

to say JoeyDesc:
	say "     The catboy is of average height, with a thin frame. He has effeminate facial features, that nicely match his feline appearance, with fine orange fur covering the visible parts of his body, along with ears and a tail to match. The only piece of clothing he is wearing is a pair of tight shorts with a noticeable bulge.";

Section 2 - Talk

instead of conversing the Joey:
	if libido of Joey is 0:
		say "     As you walk up to Joey, he brightens and smiles at you. 'Hey coach, what's up?'";
	else if libido of Joey is 1:
		say "     As you walk up to Joey, he gives a confident grin. 'Hey coach. Up for some more training?'";
	else:
		say "     As you walk up to Joey, he gives a seductive smile. 'Hey coach, is it time for more training?'";
	WaitLineBreak;
	say "[JoeyTalkMenu]";

	[set up different talks for naive Joey, slut Joey, and warrior Joey]
to say JoeyTalkMenu:
	LineBreak;
	say "What do you want to talk with Joey about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Joey's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Training";
	now sortorder entry is 2;
	now description entry is "Take him out into the city for training";
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
				if (nam is "Himself"):
					say "[JoeyTalk1]";
				if (nam is "Training"):
					say "[JoeyTalk2]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the Joey, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoeyTalk1: [talk about him]
	if libido of Joey is 0:
		say "     After you ask, it doesn't take long before Joey gives you an answer. 'The day of the incident, I was attacked by one of those feral catgirls on my way home, and I barely got away. After seeing what happened to me, and what else was out there, I was terrified of everything outside, and stayed cooped up where it would be safe. Eventually though, I got tired of hiding, and decided to stop being scared anymore. But it's hard to explore and leave safety when I can barely handle even the weakest things out there. And now I've got you to train me!' He smiles at you. 'Looking forward to it, coach!'";
	else if libido of Joey is 1:
		say "     'After all that training, I feel like a whole new person. I was never this strong or confident before. I like it. And I know I have you thank for it. If you ever need anything, be sure to ask.'";
	else:
		say "     Joey looks up at the ceiling for a moment, thinking. 'I used to want to be strong, so that nobody could push me around. Looking back, though, it seems so silly. Now I know that what I really wanted was to be pushed around more, and shown how weak I actually was.' He looks directly at you, and smiles impishly. 'So thanks for showing me what a huge slut I was deep down. Who knows how much longer it might have taken me to figure it out on my own, only getting railed by some of the massive cocks out there, instead of all of them?'";

to say JoeyTalk2: [training]
	say "[JoeyTraining]";

Section 3 - Sex

instead of fucking the Joey:
	say "     'I don't know, maybe we should just focus on my training right now.'";
	[if (lastfuck of Joey - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     Joey looks somewhat apologetic. 'Sorry, I'm still worn out from last time. You're almost more than I can handle. Definitely later though.'";
	else if libido of Joey is 0: [not convinced yet]
		say "     'I know you pretty well now and all, but I don't think I'm quite ready for that.'";
	else: [ready for sex]
		say "     As you ask about getting intimate, Joey immediately looks interested, and waits for you to say more.";
		WaitLineBreak;
		say "[JoeySexMenu]";
	]

to say JoeySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Joey suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Joey off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Taste his feline shaft";
	[]
	if player is male: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the catboy";
		now sortorder entry is 3;
		now description entry is "Take Joey's ass for a ride";
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
				if (nam is "Get a blowjob"):
					say "[JoeySex1]";
				if (nam is "Suck Joey off"):
					say "[JoeySex2]";
				if (nam is "Fuck the catboy"):
					say "[JoeySex3]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the catboy, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoeySex1: [oral on the player]
	say "     Text";

to say JoeySex2: [oral on Joey]
	say "     Text";

to say JoeySex3: [Joey fucked]
	say "     Text";

Section 4 - Events

Stray Catboy is a situation.
The level of Stray Catboy is 5.
The sarea of Stray Catboy is "Outside".

instead of resolving a Stray Catboy:
	say "     While exploring the area, your attention is drawn by the sounds of battle. Curious about what is going on, you head in that direction, rounding a corner just in time to see the end of the fight, with a short feline lying prone on the ground, clearly worse for wear, and a feral wolf looming over him. From the rigid member hanging below the wolf, you can clearly tell what is about to happen. If you stepped in, you could almost certainly do something.";
	say "     [bold type]Do you want to save the cat from their fate?[roman type][line break]";
	LineBreak;
	if player consents: [Protecting Joey]
		LineBreak;
		now inasituation is true;
		now fightoutcome is 0; [reset]
		challenge "Feral Wolf";
		if fightoutcome < 20: [Winning the fight]
			say "     With the feral wolf defeated, you turn your attention to the feline on the ground, who is only just starting to climb to their feet. No longer occupied in battling the mutant, you notice much more detail about the cat before you. They are a little shorter than most you see around the city, and their overall features seem somewhat feminine, though the completely flat chest makes it more difficult to say for certain. That, combined with the slight bulge visible around his crotch, leads you to assume the feline is male. Finally the feline seems to gather his wits, and looks at you. 'Can you teach me?' You're thrown off slightly by the sudden statement, but before you can respond, he speaks again. 'Okay, let me try that again. I'm Joey, and I'm sick of getting beaten up by everything in this city. You really seem to know what you're doing, can you train me, please?' The catboy looks at you pleadingly.";
			say "     [bold type]Do you want to train Joey?[roman type][line break]";
			LineBreak;
			if player consents: [Agreeing to train Joey]
				say "     You nod, and tell the catboy that you will help train him. He claps his hands together, and looks at you expectantly. 'Fantastic! I can't wait to learn from someone as awesome as you.' He darts forward and hugs you, his head against your shoulder. 'If you have space for me, I'll come with you, so that you can train with me as often as possible. The best would be somewhere higher up, if there's a spot like that.' After several minutes of Joey expressing thanks and clinging to you, you finally get on your way, taking him to the library.";
				now hp of Joey is 1;
				move Joey to Grey Abbey 2F;
				move Player to Grey Abbey Library;
				now Stray Catboy is resolved;
			else: [Denying training]
				say "     You shake your head and tell the catboy that you're too busy handling other things right now, and won't be able to train him. He looks crestfallen, and you think you see a glimmer of tears in the corners of his eyes, but he turns away before you can be sure. After that, he goes running off into the city. You doubt you'll be seeing him again soon.";
				now Stray Catboy is resolved;
		else if fightoutcome > 19 and fightoutcome < 30: [Losing]
			say "     When you come to after failing to defeat your foe, you are alone. It seems the feline took the opportunity left when the wolf was distracted, and fled. Perhaps you'll see them again.";
		else if fightoutcome > 29: [Fleeing]
			say "     You decide to cut your losses and flee from the wolf, unable to defeat it. As you run away, you take one glance back over your shoulder, and see the wolf advancing on the prone feline once more, this time with nobody to stop him. Maybe another day you'll see that feline again, but for now, you try not to think about what you've done, and continue fleeing.";
	else: [Watching]
		LineBreak;
		say "     You decide not to interfere, and instead to simple watch what is about to happen. The feline on the ground begins to come to fully as the wolf paws at him, and starts to look somewhat panicked. His reaction shifts instead towards embarrassment when the wolf tears the shorts he was wearing, demonstrating that he is certainly a male, and leaving his average endowment in the open. Once the cat is naked, the wolf advances forward until it is standing on top of him. The large canine shaft hangs briefly in the air, dwarfing the feline member beneath it, before the tip traces its way down along that member, eventually settling just outside the cat's rear hole.";
		say "     The cat seems about to say something, perhaps an object, but instead lets out a gasp of shock as the canine cock enters him in a single swift stroke, stopping only when his ass meets the knot. For a few moments, he is impaled on the knotted shaft, breathlessly waiting for something else to happen. The wolf then breaks that silence by starting to move, thrusting in and out, the knot repeatedly slapping against the feline's flesh as the dick spreads him open. The expression on his face has become one of almost unwilling bliss as he is continually hammered by the feral beast above him. Eventually it comes to an end, and the wolf slams fully into the catboy, locking the knot into him, and finishing. He lets out a mewling moan as he is filled by the canine seed. The two remain in that position, enjoying the sensations, and you decide it's time for you to go.";
		now Stray Catboy is resolved;
	now inasituation is false;

to say JoeyTraining: [Training Joey] [{]
	if hp of Joey is 3:
		say "     The first thing you do is explain to Joey exactly how the training is going to work. You'll definitely teach him some things the normal way, but that isn't enough to really learn how to fight. For that, he needs practical experience. Because of that, the main thing you'll be doing is taking him to fight creatures out in the city, and telling him how to improve, to let him put his skills to use. Once the catboy understands the purpose of the combat, you move on and explain the other major thing. If the fight doesn't feel real, if there are no consequences, he won't be able to learn anywhere near as well. Because of that, you won't step in for any of his fights or what may follow, unless his life is in serious danger. Joey is a bit more nervous about that, but you eventually convince him, and are ready to take him for his first day of training.";
	say "     When you tell him you're going to take him out for training, it doesn't take long at all for Joey to get ready, and to meet you at the door. He looks at you expectantly, leaving the training up to you. You know that the best way for him to get better at fighting is to fight something he can beat, though the thought of taking him to fight something he can't handle to watch what would happen is tempting.";
	LineBreak;
	say "What do you want to take Joey to fight?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "A Latex Fox";
	now sortorder entry is 1;
	now description entry is "Test him against an easy creature.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A Centaur";
	now sortorder entry is 2;
	now description entry is "Test him against a more challenging creature.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A Feral Wolf";
	now sortorder entry is 2;
	now description entry is "Test him against a somewhat dangerous creature.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A Minotaur";
	now sortorder entry is 2;
	now description entry is "Test him against a very dangerous creature.";
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
				if (nam is "A Latex Fox"):
					say "[FoxTraining]";
				if (nam is "A Centaur"):
					say "[CentaurTraining]";
				if (nam is "A Feral Wolf"):
					say "[WolfTraining]";
				if (nam is "A Minotaur"):
					say "[MinotaurTraining]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You tell Joey that you aren't going to be able to train him right now. He looks disappointed, but says he understands.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say FoxTraining:
	say "     Your choice made, you take Joey out into the city in search of a monster you know he can defeat. Slipping through the streets until you find the signs of your target, Joey eagerly following behind[if libido of Joey is 1]. As you go, you give him as much advice as you can about combat, and the basics. When you think he has the basics down, you focus fully on finding your target[end if]. Once you manage to track down a latex fox, it's time for your student to take the lead. You tell him what to do, and he nods, approaching the fox.";
	WaitLineBreak;
	if libido of Joey is 2 or hp of Joey is 0: [Slut option only]
		say "     At this point, Joey abandons all pretense of training, showing what he is really here for. He comes out into the open by the fox, and calls out to it to get its attention. When the latex creature looks his way, turns the opposite direction, and gets on all fours. He looks over his shoulder back at the fox, and gives his best cute wiggle, showing off his ass in the tight shorts he is wearing. The fox's interest is clearly piqued, and it starts walking to the kneeling catboy. As it advances, Joey continues to give it something of a show, reaching back behind him with one hand and starting to pull down his shorts, wiggling all the while, until they were just far enough down for his hole to be clearly on display for the vulpine behind him.";
		say "     From there it is only moments before the fox gives him what he so dearly wants, getting into a mating position above him, and prodding the head of its shaft up against his taint as it searches for the right spot. Joey has begun exhaling groans of pleasure already, the simple anticipation of what is coming enough to arouse him incredibly, but is not so out of it that he can't use his free hand to guide the fox into place, putting the tip right up against his puckered star. Without warning, the fox humps forward, driving the cock into the feline below it, causing the cat to let out a pleasured yelp, before settling into more of a rhythmic series of moans and groans as the latex creature begins fucking him in earnest. As the fox humps him repeatedly, Joey also reciprocates the motion, pressing himself backwards onto the dick with each motion.";
		say "     At last it comes to an end, as the fox presses right up against Joey, releasing a wave of seed into the depths of the catboy. At the same time, the tent in the front of his tight shorts seems to bob up and down, with the tip of that bulge soaking through. It seems the catboy came from the sensation of having his slutty ass filled with fox cum. Eventually the fox pulls out, and scampers off back into the city, leaving Joey in the same state you found him so long ago, prone on the ground. This time, however, he is truly the way his is meant to be, basking in the pleasure of the act he has just finished, and his needy hole dripping streaks of white. You smile, knowing you were the one who unleashed his inner slut. Time to let him enjoy it for a few more minutes before you bring him back to the library.";
		if libido of Joey < 2:
			now libido of Joey is 2;
	else:
		say "     Joey springs into action, rushing at the fox for a surprise attack, and sending it reeling when it connects. Following what he's learned from you, he doesn't give the fox a chance to recover, as he keeps attacking it. Soon enough the fox whimpers, and Joey lets up, allowing it to run away[if hp of Joey is 3]. Joey seems pleased at his first victory, and the fact that he was able to win that fight on his own[end if]. Joey returns to where you stood, watching the fight, ready to listen to what you have to say about it. You tell him he did well[if libido is 0], but point out what you noticed that could maybe help him improve[end if], and then bring him back to the library, training concluded for the moment[if hp of Joey is 4]. Next time, you think he'll be ready to face something harder[end if].";
		if hp of Joey < 4:
			increase hp of Joey by 1;

to say CentaurTraining:
	say "     For this bout of training, you decide to take Joey to the edge of the city, nearer the plains, to challenge a different creature from what is in the heart of the city. It doesn't take long before you spot a lone equine shape galloping across the plains, and you know you've found your target. You give Joey a few last minute words of advice for the fight before moving to stand in a more shaded spot, leaving Joey to his own devices. After that, it's almost no time at all before the shape gets close enough that you can tell it is a centaur that stands before the catboy.";
	WaitLineBreak;
	if hp of Joey < 4:
		say "     The catboy hesitates at the sight of the creature, but the centaur has no such issue. He lets loose an arrow at Joey, leaving causing him to scramble out of the way. Now that Joey is on the defensive, the battle quickly falls out of his favor. The catboy is able to use his quick reflexes to dodge the arrows for several minutes, with the centaur laughing all the while. However, he soon succumbs to exhaustion, and falls to his knees. When he does so, the centaur stops firing, putting the bow away. The creature then trots forward, toward the kneeling catboy, until he looms over the feline. Joey looks slightly out of sorts, but seems to become fully aware of his surroundings once again when the centaur's overly large endowment is left directly in front of his face, with the tip just barely touching his cheek.";
		say "     Joey is unable to take his eyes off of the cock dangling in front of him, his eyes following the motions each time it bobs. Eventually Joey gives in to the temptation he seems to feel, and reaches up both of his hands, gently grasping the equine member. Slowly he starts stroking it, running his hands up and down the length, never taking his eyes away from the flared head. The feline starts to mix up his technique, alternating hands, adding more than simple stroking, and it soon pays off. The centaur lets out a bestial noise, and the throbbing length beneath him unloads, streaks of seed arcing out onto the face of the shocked catboy, the load large enough that it coats his face and still has enough to drip downward, leaving streaks of cum all over his body.";
		WaitLineBreak;
		say "     For several moments, the catboy is still, drenched in lust. His eyes are closed, and he seems almost intoxicated by the scent. Then he licks his lips, perhaps partially out of nerves, and ends up with the taste of the centaur cum to accompany the scent. You can tell he likes it when his tongue darts out again, collecting more and more of the sticky coating. He soon remembers that the source is there for the taking, and he eagerly leans back towards the dangling equine dick, only partially flaccid from its release. Using his hands once again, Joey starts to urge the centaur back to full hardness, teasing up and down the length with his hands, and occasionally licking the head, growing used to the strong musky taste of it. Finally the shaft is fully erect once more, and the cum-splattered feline seems to be working up the courage to take it into his mouth.";
		say "     Joey's focus is broken by the centaur getting impatient, and thrusting forward. Having the head of the massive dick bumping into his face is enough to prompt the feline into action, and he starts to work on the head, licking and sucking at it, trying and failing to fit it into his mouth. He pulls back for a moment, steeling himself, and then puts all his effort into getting the cock he wants so badly into his mouth. With his new resolve, he manages to stretch his mouth farther than he thought, and get his lips around the flare of the horsecock. No matter how much he struggles, he can't get any further than that down the shaft, but it proves to be sufficient, as the centaur comes once more. He releases less of a flood this time, partially drained from the earlier handjob, but it is more than enough to fill Joey's stomach with seed, leaving the catboy stunned and dazed. Finally satisfied, the centaur pulls out of his mouth, and canters back into the plains, leaving the slutty feline alone.";
		if hp of Joey > 0:
			decrease hp of Joey by 1;
	else:
		say "     Joey is confident, and rather than wait or hesitate, he seizes the initiative, striking at the centaur before it can start the fight. The sudden attack from the catboy catches the equine off guard, leaving him reeling when Joey darts under him and strikes low at one of his legs. The blow is strong enough to unbalance the quadruped, causing him to fall to his knees. The centaur is not yet defeated, however, and is visibly angered, making a swing at Joey as he comes back around to face the centaur. The catboy doesn't quite dodge, leaving him with some minor injuries from the attack. However, his training with you has paid off, and he doesn't let that injury distract him.";
		say "     He unleashes several more blows at the centaur, wearing the larger creature down. Before Joey can completely knock him out, however, the centaur manages to trip the feline, and uses the brief moment to stand back up fully. Rather than press that momentary advantage, the centaur rears up, turns around, and flees. The catboy may not have completely beaten the centaur, but you can tell he has improved a great deal. He walks back over to where you were watching the fight, beaming widely, clearly satisfied with himself. Before he can get too full of himself, you give him all the feedback you can about his fight, making sure that he'll win the next time. As you teach him, you also escort him back to the library, musing about how you'll train him next.";
		if hp of Joey < 6:
			increase hp of Joey by 1;

to say WolfTraining:
	say "     This time, you think it will be best to bring Joey to face off against a Feral Wolf, giving him a chance to beat the creature he lost to when you first met him - or perhaps to see what it would have done to him if you didn't interfere. You lead your student out of the central part of the city, nearer to where those wolves make their homes. It doesn't take very long before you spot one sniffing around on a street, otherwise deserted. You nod to Joey, and he returns the gesture, before walking confidently towards the waiting wolf.";
	WaitLineBreak;
	if hp of Joey < 6:
		say "     The battle begins quickly, the wolf leaping at the prey before it. Joey makes an attempt to dodge, but isn't fast enough, instead being knocked to the side by the canine. Unable to recover quickly enough, the catboy is easy pickings for the wolf, which lunges at him again, another blow knocking him to the ground, leaving him dazed. The feline on the ground begins to come to clarity fully as the wolf paws at him, and starts to look somewhat panicked. His reaction shifts instead towards embarrassment when the wolf tears the shorts he was wearing, leaving his average endowment in the open. Once Joey is naked, the wolf advances forward until it is standing on top of him. The large canine shaft hangs briefly in the air, dwarfing the feline member beneath it, before the tip traces its way down along that member, eventually settling just outside the cat's rear hole. Joey seems about to say something, perhaps an object, but instead lets out a gasp of shock as the canine cock enters him in a single swift stroke, stopping only when his ass meets the knot.";
		say "     For a few moments, he is impaled on the knotted shaft, breathlessly waiting for something else to happen. The wolf then breaks that silence by starting to move, thrusting in and out, the knot repeatedly slapping against the feline's flesh as the dick spreads him open. The expression on his face has become one of almost unwilling bliss as he is continually hammered by the feral beast above him. Eventually it comes to an end, and the wolf slams fully into the catboy, locking the knot into him, and finishing. He lets out a mewling moan as he is filled by the canine seed. The two remain in that position, enjoying the sensations. Several minutes later, the wolf has lost interest, and Joey is left panting on the ground. Once he recovers, you'll take him back to the library.";
		if hp of Joey > 0:
			decrease hp of Joey by 1;
	else:
		say "     The wolf doesn't hesitate to leap at Joey, a quick attack meant to catch prey off guard. However, the feline is prepared, and sidesteps the surprise attack. He takes advantage of the opportunity that leaves to attack the canine's open flank, causing it to scramble around to face him once more. For several moments, the two combatants simply circle each other, watching carefully. This time Joey makes the first move, darting forwards to attack the wolf, surprising it. The battle continues as such, with the catboy's speed and mindfulness allowing him to outmaneuver the wolf, until finally he defeats it. Victorious, he returns to you, ready to celebrate his victory. You let him enjoy it for now, knowing you'll help him correct the errors he made on the way back to the library.";
		if hp of Joey < 9:
			increase hp of Joey by 1;

to say MinotaurTraining:
	say "     You decide that it's time to really put Joey's skills to the test. You lead him out of the main city, giving him as much advice as you can along the way. Once you reach the right area, you spend some time with the catboy searching the area, looking for the perfect opponent. After some time, you spot it: a hulking minotaur, striding along the plains. Defeating something like that is enough to prove anyone a true warrior, something Joey is looking forward to. But losing to something like that carries serious risks - something he might also end up looking forward to. Slightly nervous, but not overwhelmed, Joey leaves you standing where you are, and goes to meet the beast face to face.";
	WaitLineBreak;
	if hp of Joey < 9:
		say "     Joey seems set on defeating the minotaur, but is at a significant disadvantage. When faced with a creature so much larger and stronger, he seems to hesitate. The catboy readies himself for the battle anyway, prepared to evade, planning his attacks, but his thoughts are cut off. The minotaur lets out a bellowing roar as it charges, the terrifying sound shattering the feline's concentration, leaving him wide open to the oncoming attack. Joey fails to dodge, as the massive minotaur crashes into him like a truck, leaving him collapsed on the ground several meters away. The minotaur takes a moment to beat on its chest, reveling in victory, before it goes to claim the spoils.";
		say "     The large beast picks up the smaller catboy easily, holding him up in front of him. The motion causes Joey to come to again, though still somewhat out of sorts. However, clarity returns as he realizes what the minotaur intends for him - the head of the massive cock it has pressed lightly against rear making it exceedingly obvious. His eyes widen, and he looks panicked. 'No, don't! It's too-' His protests are cut short by a loud gasp, and you can see that the minotaur has pulled him down, the massive bull cock tearing through the tight shorts and impaling the feline deeply. The feral creature wastes no time in beginning the action, and starts to pump the massive shaft in and out, the smaller catboy letting out gasps and moans with each motion.";
		WaitLineBreak;
		say "     The fucking Joey is receiving is relentless and powerful, long thrusts varying in pace, keeping it from becoming routine. And by the look on the feline's face, the sensation he is feeling is anything but. When the rutting first began, he was afraid and surprised. Now, however, he is squirming in the minotaur's hands as he is lifted up and down, panting hard, unable to contain the pleasure he is now feeling. You can clearly see his average feline prick straining through what remains of his shorts, eager for attention it won't be getting. Instead, the constant thrusting into his ass is causing all the pleasure, and at this rate it will be no time at all before he spills his seed without even the slightest touch to his own member.";
		say "     Eventually the pace set by the minotaur increases further, even more furiously hammering into the catboy he holds, training his entrance to handle his cock's full length. The additional stimulation is finally enough, and Joey's much smaller dick unleashes his load, most of it catching on what's left of his pants, and the rest landing on his chest. The feline seems to be completely lost in pleasure, enough to not even notice when the minotaur finally follows his lead, depositing a significantly larger amount of seed into the catboy, before finally lifting him off of the cock he was riding. Sated, the minotaur leaves, and you end up needing to carry the catboy back to the library.";
		if hp of Joey > 0:
			decrease hp of Joey by 1;
	else:
		say "     The battle before you is going to be a difficult one, but you have faith in your pupil. The fragile catboy you first met is not nearly so helpless now. He is faster, stronger, and more experienced. You could go on, but your musings are cut short by the start of the fight. By now the feline knows better than to let his opponents have the initiative, so he darts in quickly. What follows is an incredible display of combat ability. Joey uses his agility to his advantage, outmaneuvering the larger and slower minotaur, ducking under its swings, sidestepping its charges, all the while connecting with minor blows. He seems completely in control of the battle, a combination of your lessons and all the experience he has gained under your watchful eyes.";
		say "     The minotaur is growing angrier from the battle, and because of that is growing more careless as well. He sees what he thinks is a moment of weakness from the catboy, and tries to end the fight right there with a powerful overhead smash. However, Joey was ready for it, darting forward and sliding between the minotaur's legs, the massive cock that hangs there slapping against his face as he passes. The feline remains unfazed, and quickly turns and vaults up onto the back of the staggered minotaur. Once the catboy has a solid grip around the minotaur's neck, you know the match is decided. The large creature isn't flexible enough or clever enough to dislodge him.";
		WaitLineBreak;
		say "     From there, it doesn't take long before the minotaur is kneeling, exhausted, with Joey standing before him, victorious. Your student has come a long way since you first found him, unable to fend for himself. Now he is skilled, a true warrior, exactly as he wanted to be. The sight of him looming over the defeated minotaur brings to mind other possibilities as well. Joey seems to have similar thoughts, as you can see that he's now pitching a tent in his tight shorts.";
		say "     The victorious warrior smirks, and presses his clothed crotch up against the minotaur, rubbing the covered erection up against his muzzle. The bestial creature seems resigned to the action and his defeat, making no move to stop him. Following that, Joey unbuttons his shorts, freeing his average cock, and drapes it onto the minotaur's face, simply leaving it there for a few moments. Soon enough the catboy persuades the minotaur to act, and the bull begins to service the prick before him, licking it slowly, and taking it into his large mouth with ease. For several minutes, Joey is content to let the creature work, but as he nears his climax, he takes matters into his own hands. He grabs the minotaur by the horns, and starts fucking his mouth, slamming in and out much more rapidly than before. The increased pace pays off soon, with Joey releasing his load into the bull's maw. Finally he lets go, and leaves the defeated minotaur where he lies, before returning over to you, victorious. Now you have nothing left to teach him.";
		if hp of Joey < 10:
			increase hp of Joey by 1;
			now libido of Joey is 1;
[}]

Joey ends here.
