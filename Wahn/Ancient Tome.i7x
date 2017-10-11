Version 1 of Ancient Tome by Wahn begins here.
[ Version 1 - First Event ]

[ TomeFound  - Tracking variable for interaction with Eric                             ]
[   0: not found                                                                       ]
[   1: Eric got the book                                                               ]
[   2: Eric is reading the book                                                        ]
[   3: Eric is was tentacle-fucked, player saw nothing                                 ]
[   4: Eric is was tentacle-fucked, player watched                                     ]
[  20: player took the book after Eric was almost tentacle-fucked                      ]
[  21: player told Eric the truth about him being almost tentacle-fucked               ]
[  22: player told Eric he doesn't have the book                                       ]
[  23: player told Eric the truth about him being tentacle fucked                      ]
[  24: player told Eric he doesn't have the book (after tentacle fucking)              ]
[  97: player gave Eric the book back after he got almost tentacle-fucked              ]
[  98: player took the book after Eric was tentacle fucked (unknown to the player)     ]
[  99: player took the book after Eric had a read                                      ]
[ 100: player took the book right from the start                                       ]
[ 101: Eric is afraid of the book and was offered it back before                       ]

TomeFound is a number that varies.
lastTomeInteraction is a number that varies.

instead of navigating Grey Abbey Library while (Eric is in Bunker and hp of Eric > 9 and hp of Eric < 99 and TomeFound is 0 and a random chance of 1 in 2 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Eric finds a book - TomeFound: [TomeFound], lastTomeInteraction: [lastTomeInteraction], current turn: [turns][line break]";
	say "     As you enter the library, you find Eric sitting cross-legged on one of the sofas close to the entrance. A dusty box sits on the low sofa table he has dragged close and is apparently in the progress of unpacking. Small stacks of old, sometimes damaged-looking books are spread out next to him as he takes stock. Looking up from the box, Eric smiles at you and calls out, 'Hey there - look what I found back in one of the storerooms! I got bored just sitting around and since it is so dangerous to go outside, I looked around a bit in here...' Leaning forward, the college athlete pulls another item out of his mystery box - an old crucifix made from blackened wood this time.";
	say "     'Oh, another one. Guess now we know where all the crosses from the old abbey went, hm?' he says, putting the piece of wood on a pile of similar items next to him.' Curiosity makes you step up closer and check the crosses out - are they supposed to look... singed? Then Eric suddenly pulls a thick book out of the box, bound in black leather. 'Hey, this looks interesting. And old... I wonder what it is about.' The book - well, more like a tome actually - is clearly quite old and looks heavy enough to break someone's foot if dropped. It bears a triangle symbol with a slit-pupiled eye on the front, branded into the leather.";
	say "     [bold type]This find somehow seems... ominous to you. Maybe you should let Eric give it to you...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yup. Better safe than sorry.";
	say "     ([link]N[as]n[end link]) - You're just imagining things. Let him have the book, it'll give him something to do.";
	if player consents: [take it]
		LineBreak;
		say "     Clearing your throat, you ask Eric to hand you the book - twice actually, as he doesn't react the first time and just keeps staring at the cover. Only when you repeat yourself does he look up, blinking a few times before focusing on you. With a shrug, he holds out the book and you quickly pack it away into your backpack.";
		increase carried of ancient tome by 1;
		say "(You gain an ancient tome.)";
		now TomeFound is 100; [player took the book right at the start]
		now lastTomeInteraction is turns;
	else: [let Eric have the book]
		LineBreak;
		say "     Eric keeps staring at the symbol of the book for a long moment, then shakes his head as if chasing a stray thought away. He puts the tome down after that, placing it on the sofa right next to him - so close that his bare leg actually touches the leather constantly. After that, Eric proceeds to delve further into the old box, but doesn't find anything more that is really interesting.";
		now TomeFound is 1; [Eric got the book]
		now lastTomeInteraction is turns;

instead of going inside from Grey Abbey Library while (Eric is in Bunker and hp of Eric > 9 and hp of Eric < 99 and TomeFound is 1 and lastTomeInteraction - turns > 10 and a random chance of 1 in 2 succeeds):
	move player to Bunker;
	if debugactive is 1:
		say "     DEBUG: Eric reads the book - TomeFound: [TomeFound], lastTomeInteraction: [lastTomeInteraction], current turn: [turns][line break]";
	say "     Walking down the multiple flights of stairs to the bunker under the library, you step through the doorway into the underground chamber. As let your gaze sweep over the room, you spot Eric, lying stretched out on his bed and reading - but not just any book but that old tome he found not long ago. Elbows braced on the mattress, his head is bent over the book and he seems to be studying with an intent gaze. Curious, you wander over to the college student and glance over his shoulder. The page he is looking at is filled with strange curving squiggles, following no script you can really recognize. Clearing your throat, you manage to draw Eric's attention away from the book after a few seconds and he looks up at you with a curious expression.";
	say "     Asking if he can understand what the book says, your red-headed friend replies, 'Not really, no - but sometimes I kinda feel like I do. Certainly looks very interesting. You should see some of the pictures in here!' With that, he turns a few pages back, revealing more of the unknown script. 'Strange, I could have sworn there was an image there. Oh well, I'll put in a bookmark if I find it again and you can have a look next time,' Eric says in a distracted tone of voice, then turns the page back to where he was before.";
	say "     [bold type]Something doesn't seem quite right here. Do you take the book from Eric?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yup. Better safe than sorry.";
	say "     ([link]N[as]n[end link]) - You're just imagining things. Let him have the book, it'll give him something to do.";
	if player consents: [take the book]
		LineBreak;
		say "     Clearing your throat, you ask Eric to hand you the book - and he doesn't react to that at all, almost as if he hadn't heard a word you said. After waiting a moment or two, you finally decide to just take it. Reaching down, you pull the book out from under Eric's nose, closing the cover with a thud and tugging the tome under your arm. 'Hey!' Eric reacts with a slight delay, almost as if he had been in a trance. 'I was reading that, give it back!' the red-headed college student complains, but you tell him in a friendly, but firm, tone that you'll have to check this thing out for yourself first. He reaches out in a bid to snatch the book back, but you keep it out of his reach. Finally, he sits up and gives a sigh, then adds, 'Fine. I'll get something else to read then.' With a somewhat sullen expression on his face, Eric walks off towards the stairwell.";
		increase carried of ancient tome by 1;
		say "(You gain an ancient tome.)";
		now TomeFound is 99; [player took the book after Eric had a read]
		now lastTomeInteraction is turns;
	else: [leave it]
		LineBreak;
		say "     You simply shrug and leave Eric to get back to... well, not exactly reading - more like looking at the symbols and following their shapes with his gaze. Maybe he'll figure out what it all means eventually.";
		now TomeFound is 2; [Eric is reading the book]
		now lastTomeInteraction is turns;

instead of going inside from Grey Abbey Library while (Eric is in Bunker and hp of Eric > 9 and hp of Eric < 20 and TomeFound is 2 and lastTomeInteraction - turns > 10 and a random chance of 1 in 2 succeeds):
	move player to Bunker;
	if debugactive is 1:
		say "     DEBUG: Eric gets tentacled - TomeFound: [TomeFound], lastTomeInteraction: [lastTomeInteraction], current turn: [turns][line break]";
	say "     Walking down the multiple flights of stairs to the bunker under the library, you step through the doorway into the underground chamber. As let your gaze sweep over the room, you spot Eric, lying in his bed under a thin blanket. He is sleeping, yet from the looks of it it seems a bit fitful as he moves around, his head lolling back and forth slowly as he pants visibly.";
	say "     [bold type]Maybe you should check on him...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Walk over and wake him if he is having a nightmare or something.";
	say "     ([link]N[as]n[end link]) - It'll just be a strange dream. You'd bet that he will forget all about it by the time he wakes up naturally.";
	if player consents: [check on him]
		LineBreak;
		say "     Moving over to the bed in which the college athlete sleeps, you see that he is indeed very unruly in his sleep. Sweat glistens on his face and he is breathing quickly, letting out some sudden pants from time to time. His feet and legs seem especially agitated, twitching and moving under the blanket. Concerned, you step forward in order to feel his forehead for fever and in doing so, hit something with your foot. It is the leather-bound tome Eric has been reading lately. Must have fallen off the bed due to Eric's fidgeting. It lies there, opened with the face down. Somehow you can't help yourself and pick it up. One of the images Eric mentioned is visible in between the strange text on the open page - a depiction of countless black tentacles that almost seems to move as you look at it.";
		say "     Suddenly, Eric lets out a noise that you can only describe as a moan and bucks his hips up under the blanket. With the ancient tome still held in your arm, you feel the college student's forehead - sweaty, but not feverish. Deciding that waking him should would be best, you shake Eric by the shoulder after that, but he just groans a little with his eyes closed, no further sign of coming to except that. And then it hits you - he may be twitching unruly in his sleep, but unless Eric has suddenly grown an... extra appendage between his legs, there is one too many bulges under that blanket!";
		WaitLineBreak;
		say "     Throwing the book aside to bounce off the next row of beds and tumble behind them, you wrench the blanket off Eric. He is far from sleeping alone! More than a dozen jet-black tentacles are snaked up around the edge of his mattress at the foot of the bed, seemingly in constant movement as they wrap around and stroke Eric's lower legs and thighs. One strand of the appendages is thicker than the rest and comes to a somewhat bulbous end. That tentacle is right between your transgendered friend's legs, rubbing back and forth over his crotch and leaking a slow but steady throb of clear slimy fluid on him. It rears up almost like a cobra at suddenly being exposed like this, turning the head as if to look at you with its vertical slit.";
		say "     The creature's tentacle cock turns from you to Eric's pussy, then back to you and it spurts out a small string of further... goop, or pre-cum, or lube? Doesn't take much to guess what it is trying to tell you, as the other tentacles wrap even tighter around Eric's body and the big one tenses, as if to ready itself for movement.";
		say "     [bold type]Uh-oh! Quick - What do you do?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Watch in shock (or arousal?) as Eric is penetrated by the creature.";
		say "     ([link]N[as]n[end link]) - Stop it!";
		if player consents: [watch]
			LineBreak;
			say "     In the blink of an eye, the tentacle cock strikes, plunging in between Eric's nether lips and making the transgendered teen buck and moan on the bed - still asleep though, with not even being fucked able to wake him from the clearly unnatural slumber. [if EricVirginityTaken is 0]A groan leaves his mouth as the relentless plunge breaks through Eric's hymen, losing his virginity to this black-tentacled beast - and that without Eric even consciously realizing it. [end if]The creature worms into him deeper and deeper while its other tentacles seem to hold the college student in a firm but gentle embrace, making sure he isn't pushed back or accidentally falls out of the bed while thrashing and moaning in helpless lust. You can't help but gape as his belly starts to bulge out a little, showing the shape of the tentacle cock's head - the creature pushed all the way into Eric's womb!";
			say "     You watch with tense attention as Eric gets tentacle-fucked hard and deep, the thick appendage between his legs writhing and throbbing as it thrusts into his pussy and womb again and again. Satisfied burbling noises come from beneath the bed as the creature violates the sleeping college student, its sounds of pleasure eventually rising in a way that reminds you of a kettle about to boil. Then the smaller gripping tentacles suddenly tighten their hold on the naked human and you can literally see a series of slightly thicker bulges move up the tentacle cock in a rapid progression. Before you can even think of maybe doing anything about that, the first heavy throb of monster cum gushes deep into Eric, followed by countless others.";
			WaitLineBreak;
			say "     The pulsing and throbbing of the black tentacle cock seems endless, delivering its fertile load into the trans teen's [if EricVirginityTaken is 0]receptive [end if]body. You've long lost count by the time you find yourself stepping forward a little bit more and laying a hand on the slowly swelling belly on Eric. You can literally feel each spurt of cum blasting into him! Eventually, the monster's orgasm slowly ebbs off when he looks a month or two pregnant, with a visible bulge to his tummy. By that time, the creature loosens its hold on Eric and retracts appendages under the bed, with the thick shaft between his legs being the last one. Slipping out of Eric's pussy with a wet slurp and a gush of cum from his over-filled body, the tentacle rears up for a moment, aiming its cock-head at you as if its dripping cum-slit was an eye.";
			say "     The thing seems to wink at you, closing and opening in quick secession, then splurts out a last gob of off-white cum and sinks out of sight behind the bed. Maybe a message - but it's anyone's guess what that was supposed to mean. Crouching down, you look under the bed... and there's nothing there, just empty air. With a shrug, you turn your attention back to Eric - who is still out for the count, despite everything that has happened to him just now! The steady trickle of monster cum from between his legs has the potential to make a hell of a mess of the bed, so you quickly snatch up the t-shirt he took off before going to bed and position the bunched-up fabric under his crotch to soak up what it can. Snatching up another piece of usable fabric, you then start working on cleaning him up from all the other goop that came off the tentacles, and Eric's own sweat from being fucked.";
			WaitLineBreak;
			say "     It'll be better if he doesn't wake up all slimed up - since the college student slept through the whole situation, he otherwise would be in for quite a shock. You'll have to see what he will or will not remember when he wakes up. By the time you're done cleaning up everything that made his naked body wet and sticky, Eric's belly has gone down to normal once more, no longer showing the slight bulge all the cum gave it. The t-shirt between his legs is a soppy mess as you pull it away and do a final wipe over Eric's pussy with your other cum-rag. Well, that's about as good as this will get - from looking at him now, you couldn't tell he was fucked by a tentacle monster ten minutes ago. With a concerned look at the young guy's now peaceful face, you cover him with a blanket again and go pick up the tome. It clearly has something to do with all this. Better to confiscate it and keep it out of Eric's hands for now unless you want to see a repeat of this...";
			if hp of Eric is 10: [virgin cboy]
				now hp of Eric is 14; [tentacles took his virginity]
				now EricVirginityTaken is 7; [impregnated with tentacle spawn]
			increase carried of ancient tome by 1;
			say "(You gain an ancient tome.)";
			now TomeFound is 4; [Eric is was tentacle-fucked, player watched]
		else: [stop it]
			LineBreak;
			say "     [bold type]Err - how?![roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Grab the tentacle cock and wrestle it away from Eric!";
			say "     ([link]N[as]n[end link]) - Quickly drop to the ground and look under the bed. Maybe this thing follows the classic rules...";
			if player consents: [wrestle]
				LineBreak;
				say "     Throwing yourself forward, you manage to intercept the tentacle cock - barely - as it pounces on Eric. Hands closing around the wriggling appendage, you stop it short just before it touches the moaning trans-boy's crotch and burrows in between his nether lips. In reply, a strange burble of sound from under the bed seems to express the creature's displeasure. The tentacle in your grip splurges another throb of defiant ooze over Eric's crotch, then begins to writhe against your hold as you pull it away from him. Further black tentacles snake from beneath the bed or let go of Eric to attack you and things quickly escalate to a full-on wrestling match between the monster and yourself.";
				say "     The smaller tentacles move franticly against you - wrapping around anything they can reach or snaking directly under your clothing to touch you in rather intimate places, leaving behind slimy feelings of ooze against your skin. A few times as you let go with one hand to deal with such mostly annoying distractions, the big tentacle cock almost writhes out of your grasp, really throwing around every little bit of power in it. But no, you keep hold of it with grim determination, resisting any attempt to pull away and turn back on its original target, creating a considerable amount of frustration for the beast (if you are judging the sound of wet clay being punched correctly that comes from beneath the bed).";
				WaitLineBreak;
				say "     Then suddenly, the creature switches tactics and instead does its best to subdue you directly! Its smaller appendages squeeze tighter around your arms and legs, with the tentacle cock now trying to... head-butt you? At least that's the least disturbing option why it keeps pushing towards your face. It is quite hard to keep hold of the slimy shaft of its cock, especially as it now pushes itself through the grip of your hands lengthwise, no longer trying to worm away sideways. The worst thing is that it seems to be enjoying your hands firm hold, leaking more of its slimy pre-cum that gets flung everywhere as you wrestle - hitting yourself, the sheets and even stretched-out Eric with clear splatters of goop.";
				say "     The sounds coming from beneath the bed quickly increase in intensity, kinda reminding you of a kettle that is about to boil over. And fitting to that, the energy of the creature's struggle builds in turn, surprising you with a sudden wrench that almost flings you off the bed. Somehow you can hold on but in the course of which get struck in the cheek by the rubbery dickhead, leaving a trail of goop on your face. Pushing the tentacle away from your head with both hands, you soon come eye to... cum-slit with it and really have to strain as it resists you with all its might. Then the vertical opening almost seems to wink, closing and reopening even wider than before - followed by a splurge of off white monster cum hitting you right in the face!";
				WaitLineBreak;
				say "     In shock, you can do little but squeeze your lids shut and try not to get any goop in your eyes. As you feel another spurt and another of the creamy cum cover your features, you realize that an outcome like this was kinda inevitable - you've been basically jerking the creature off by wrestling with its cock! Well, at least you managed to keep it from getting to Eric - or entering your mouth... a small consolation to being creamed by this tentacled creature. As the further splurges of its seed ebb off, the beast starts to pull back - retracting its smaller appendages and tugging the big one against your grasp. With a shrug, you let go and raise your hands to wipe the goop off your face.";
				say "     By the time you can open your eyes again without the danger of something oozing into them, there is no sight at all of the creature. It must have vanished under the bed once more, leaving behind yourself and Eric in a somewhat bedraggled and slimy state. You lean over the edge of the bed and peer at the space beneath - it is empty, with only a few trails of slime indicating that something was there just moments ago. With a sigh, you sit up and take stock of the situation. Eric is surprisingly still asleep - it really must have dosed him with something or other - naked and with his crotch glistening wetly from its external stimulation. You yourself are fairly slimy too, both with the creature's pre as well as cum, so you start to wipe it all up with the worn t-shirt Eric must have taken off before going to bed.";
				WaitLineBreak;
				say "     Soon dabbing away the last of the cum on Eric's crotch with a gentle touch, you look down at his naked form and hope that whatever the monster did to him will wear off soon. It'll be better if he doesn't wake up all slimed up - since the college student slept through the whole situation, he otherwise would be in for quite a shock. You'll have to see what he will or will not remember when he wakes up. With a concerned look at the young guy's now peaceful face, you cover him with a blanket again and go pick up the tome. It clearly has something to do with all this. Better to confiscate it and keep it out of Eric's hands for now.";
			else:
				LineBreak;
				say "     You throw yourself on the ground and look under Eric's bed, coming face to... black mass with an azure blue slitted eye. The creature hisses and seems to recoil from actually being observed, then quickly disintegrates into a cloud of black dust that vanishes into nothingness in a few seconds. Phew, good thing that monsters under people's beds do not like to be looked at! You make doubly sure that it really is gone, halfway crawling under the bed yourself and groping around, then even checking under the bunched up blanket you wrenched off the bed. Relieved that you seem to be alone for the moment, you then stand up again and check on Eric.";
				say "     He still is in a state of oddly deep sleep, not having woken up from anything that happened so far. You just hope that this will pass given enough time. As there is nothing much else you can do right now, you grab the t-shirt Eric took off before going to sleep and gently dab it at his crotch, wiping away the goop that the creature squirted on him. It could be the reason he is in that sleep-trance after all, and Eric would surely be freaked out if he woke up all slimed up. With a concerned look at his now peaceful face, you cover him with a blanket again and go pick up the tome. It clearly has something to do with all this and you should keep it out of Eric's hands for now.";
			increase carried of ancient tome by 1;
			say "(You gain an ancient tome.)";
			now TomeFound is 20; [player took the book after Eric was almost tentacle-fucked]
		now lastTomeInteraction is turns;
	else: [don't do anything]
		LineBreak;
		say "     With a shrug, you leave Eric in peace and turn to other things. When you glance over to him again some while later, he has indeed calmed down and is again sleeping peacefully.";
		now TomeFound is 3; [Eric is was tentacle-fucked, player saw nothing]
		if hp of Eric is 10: [virgin cboy]
			now hp of Eric is 14; [tentacles took his virginity]
			now EricVirginityTaken is 7; [impregnated with tentacle spawn]
		now lastTomeInteraction is turns;

Ancient Tome is a grab object. Ancient Tome is not temporary.
Ancient Tome has a usedesc "[TomeUse]".

Table of Game Objects (continued)
name	desc	weight	object
"ancient tome"	"A large book, bound in black leather. There is no title on its cover, only a triangle-symbol with a slit-pupiled eye branded into the leather."	1	ancient tome

to say TomeUse:
	LineBreak;
	if cocks of player is 0 and cunts of player > 0:
		say "     You open the old book and flip through a few pages. Sadly, it seems to be written in a squiggly script that you can make no heads or tails of, and the images in it are mildly disturbing, full of weird creatures and situations. A shiver runs down your spine as you close the book again.";
	else:
		say "[TomeExpansionUse]";

instead of trading the ancient tome when the current action involves the Eric:
	if TomeFound is 100: [Eric never looked into it]
		say "     Pulling your backpack off, you dig around in it and find the thick tome. As you pull it out, Eric steps up and thanks you as he accepts the book. He exchanges some more words in friendly conversation with you, then walks off with the book held tightly to his chest.";
		decrease carried of ancient tome by 1;
		now TomeFound is 1; [Eric got the book now]
	else if TomeFound is 4 or TomeFound is 20: [player took the book after watching Eric be tentacle-fucked or almost tentacle fucked]
		say "     Just handing the book back to Eric after what you observed might not be such a good idea. You really should talk to him about it first.";
	else if TomeFound is 21 or TomeFound is 23: [Eric was told about the creature the book summoned]
		say "     Eric goes deathly pale as you hold up the book. His left hand rises to reach out and touch it seemingly on its own accord, only to be snatched back by the trembling teenager. 'I - I...' he stutters in a terrified tone, then whirls around and runs to the other side of the small-ish bunker room. From there he calls out, 'Please keep it away from me! I'm afraid what it - or I - might to...'";
		now TomeFound is 101; [Eric refuses any further contact with the book]
	else if TomeFound is 22: [player told Eric he doesn't have the book]
		say "     Pulling your backpack off, you dig around in it and find the thick tome. As you pull it out, Eric's eyes seem to have an inner glow for a heartbeat or two and he steps up close to you, holding out his hands with a hungry expression. Snatching the book from your grasp, he pulls it tightly to his chest and thanks you, then walks off with a thoughtful expression on his face.";
		decrease carried of ancient tome by 1;
		now TomeFound is 97; [player gave Eric the book back after he got almost tentacle-fucked]
	else if TomeFound is 24: [player told Eric he doesn't have the book (after tentacle sex)]
		say "     Pulling your backpack off, you dig around in it and find the thick tome. As you pull it out, Eric's eyes seem to have an inner glow for a heartbeat or two and he steps up close to you, holding out his hands with a hungry expression. Snatching the book from your grasp, he pulls it tightly to his chest and thanks you, then walks off with a thoughtful expression on his face.";
		decrease carried of ancient tome by 1;
		now TomeFound is 96; [player gave Eric the book back after he got tentacle-fucked]
	else if TomeFound is 98: [player took the book after Eric was tentacle fucked (unknown to the player) ]
		say "     Pulling your backpack off, you dig around in it and find the thick tome. As you pull it out, Eric's eyes seem to have an inner glow for a heartbeat or two and he steps up close to you, holding out his hands with a hungry expression. Snatching the book from your grasp, he pulls it tightly to his chest and thanks you, then walks off with a thoughtful expression on his face.";
		decrease carried of ancient tome by 1;
		now TomeFound is 3; [player gave Eric the book back after he got almost tentacle-fucked, so same state as never having taken the book at all]
	else if TomeFound is 99: [player took the book after Eric started reading               ]
		say "     Pulling your backpack off, you dig around in it and find the thick tome. As you pull it out, Eric's eyes seem to have an inner glow for a heartbeat or two and he steps up close to you, holding out his hands with a hungry expression. Snatching the book from your grasp, he pulls it tightly to his chest and thanks you, then walks off with a thoughtful expression on his face.";
		decrease carried of ancient tome by 1;
		now TomeFound is 2; [Eric is back to reading the tome]
	else if TomeFound is 100: [Eric never opened the book before]
		say "     Pulling your backpack off, you dig around in it and find the thick tome. As you pull it out, Eric steps up and thanks you as he accepts the book. He exchanges some more words in friendly conversation with you, then walks off with the book held tightly to his chest.";
		decrease carried of ancient tome by 1;
		now TomeFound is 1; [Eric got the book now]
	else if TomeFound is 101: [Eric is afraid of the book and was offered it back before]
		say "     You shouldn't tease Eric with the tome any further. He was genuinely afraid the last time. Confronting him with the book would just be cruel after that.";


Ancient Tome ends here.
