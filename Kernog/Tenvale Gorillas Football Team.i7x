Tenvale Gorillas Football Team by Kernog begins here.

[Quest Steps]
[ 0: not started]
[ 1: started, waiting for tryouts ]
[ 2: waiting for results ]
[ 3: member of the team]

[point system for progressing in the team]
[ 0 - 3: laundry or water ]
[ 4 - 8: player ]
[ over: star player ]
[ Player starts at the lower limit corresponding to his tryouts performance, and earns points by working for the team ]
[ if Player reaches the top limit, he can talk to the team captain in order to get promoted (talk: promotion) ]
[ Promotion will be a stat check, on the model of tryouts]

[Variables]
GorillasMember is a number that varies.
GorillasMemberQuestCounter is a number that varies.
GorillasRep is a number that varies.
TryoutScore is a number that varies.

laundryProgress is a number that varies.

to FootballTeamQuestLog:
	if GorillasMember is:
		-- 1:
			say "[bold type]The Tenvale Gorillas[roman type]: I talked to Roman about joining the football team. He regularly organize tryout sessions, so [bold type]I should come back later and talk to him again.[roman type].";
		-- 2:
			say "[bold type]The Tenvale Gorillas[roman type]: Roman does not want to talk with me about it. [bold type]I should insist, or improve my charms, and try again[roman type].";
		-- 3:
			say "[bold type]The Tenvale Gorillas (COMPLETED)[roman type]: I am part of the team now! [if GorillasRep < 3]I am only a helper for now, but if I work enough times for the team, they may let me train with them[else if GorillasRep < 8]The team captain accepted me among the players. I may train with the team anytime[else]I managed to rise to the top. I wonder when the next match is[end if].";

to say FootballTryouts:
	say "     'Hey, you arrive just in time,' Roman tells you, a smile on his face. [bold type]So, ready to start the tryouts? Be careful, since we only got so much candidacies, you can only pass them once.[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - You're as ready as one can be.";
	say "     ([link]N[as]n[end link]) - You do not feel ready yet for taking the test. You'd rather try another time, when you're in better shape.";
	if Player consents: [do the tryout]
		now TryoutScore is 1;
		say "     Roman gives you an appreciative nod. 'Good choice. We need people who got balls, and who can keep it in their pants, at least until the down is over. Let's go out onto the field and start with the dash test then.' You follow Roman to the forty-yard line. 'Stay here, and on my signal, sprint as fast as you can to the goal zone,' the team captain instructs.";
		say "[GorillaCheck1]"; [Dexterity]
		WaitLineBreak;
		say "     Roman guides you back inside, and brings you to an exercise room and points at a lifting bench. 'Alright, this one should be easy - just lift the weights as many times as possible,' he says, trying to sound supportive. You lay down onto the cold surface of the weight bench and position yourself underneath the bar, then grab hold of it with both hands. Two more gorillas standing behind it help lift the weights off their rack and keep watch so that you'll not hurt yourself.";
		say "[GorillaCheck2]"; [Strength]
		WaitLineBreak;
		say "     Stepping out of the building, the team captain points at a building in the distance - the Welcome Center at the entrance of the college. 'Alright, this drill is self-explanatory - all you have to do is run a mile. You will be judged based off your time... assuming you make it back,' the Gorilla says as you take your place at the starting line. 'Just get to that building and back. There'll be information leaflets in holders all over the place, so bring one to prove you've been there. You will be on your own out there, but don't worry - we'll allow a certain bit of 'being distracted' and have a fairly easy target time set. Doesn't mean you shouldn't give your best of course.'";
		say "[GorillaCheck3]"; [Stamina]
		now GorillasMember is 2;
	else: [ come back another day]
		say "     Deciding that now is not the time for you to take on the try outs, you politely take your leave from Roman. The ape grunts, as you explain your reasons. 'Very well. I can't blame you from wanting to be at your best. But the team will not wait forever. You'd better not wait too long.'";
	now GorillasMemberQuestCounter is turns; [to count the time till the next stage]

to say GorillaCheck1:
	let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]21[roman type] (Dexterity Check):[line break]";
	increase diceroll by bonus;
	if diceroll < 11:
		say "     You take your place at the start line and wait for the signal to start. After a few moments wait you hear the shrill shriek of a whistle and burst forward. During your first stride one of your feet slides beneath you causing you to fall. The Gorillas watching burst into laughter. Trying to save yourself the embarrassment you get up and finish the test as quickly as you can.";
	else if diceroll < 21:
		say "     You take your place at the start line and wait for the signal to start. After a few moments wait you hear the shrill shriek of a whistle and burst forward. You focus on keeping yourself from slipping and try to run in a straight line. After a few seconds you lunge your way past the finish line. 'Not bad,' Roman says, holding out his hand as he goes on to add, 'Not great, but not bad. We can work with that.'";
		increase TryoutScore by 1;
	else:
		say "     You take your place at the start line and wait for the signal to start. After a few moments wait you hear the shrill shriek of a whistle and burst forward. Reaching your stride after the first few fast steps, you make it to the finish line in near record time. 'I have to admit,' Roman says, holding out his hand to congratulate you, 'That was damned impressive for a rookie.'";
		increase TryoutScore by 2;

to say GorillaCheck2:
	let bonus be (( the Strength of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]21[roman type] (Strength Check):[line break]";
	increase diceroll by bonus;
	if diceroll < 11:
		say "     Once the gorillas let go of the bar you try your hardest to keep the bar up. Not even a second after they back away your arms can no longer hold the weight and the bar comes crashing down onto your chest. A roar of laughter comes from behind you as you struggle to push the bar off your chest. Before too long the same two gorillas help to pull it off you, allowing you to breathe freely and place the weights back on the rack. 'Well, that was a bit underwhelming,' roman comments, clearly disappointed. After a minute of rest you get back up and prep for the next test.";
	else if diceroll < 21:
		say "     Once the gorillas step away from the bar you quickly drop the bar down to your chest and push it back up again. Your arms begin to grow more tired with each rep. After ten or so reps your arms start to uncontrollably shake and you are forced to place the bar back on the rack. After a minute of rest you get back up and prep for the next test.";
		increase TryoutScore by 1;
	else:
		say "     Once the gorillas step back from the bar you let the bar drop to just above your chest before fully extending your arms again. After ten reps your pace starts to slow down, and your arms slowly become weaker. Yet you keep going, and it is another five reps before your arms become to tired and you are forced to put the bar back on the rack. 'Damn,' Roman reacts, 'You must been pumping a lot of iron before this.' After a minute of rest you get back up and prep for the next test.";
		increase TryoutScore by 2;

to say GorillaCheck3:
	let bonus be (( the Stamina of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Stamina Check):[line break]";
	increase diceroll by bonus;
	if diceroll < 16: [fail]
		say "     Then Roman blows his whistle and with its piercing shriek, you're off - at a light pace to begin with. Yet somehow, this just isn't your day. Not even out of sight of the gorillas, you start feeling exhaustion creep into your muscles. Maybe you've been pushing yourself too hard out on the streets in the last little while, or you should have trained harder before trying this. No matter which, your legs start to burn - first a little, then more and more, eventually beginning to feel like... well, basically like melting gummy-bears left in a car standing in the summer sun. You see the welcome center ahead of you, and there's an info-column stuffed with leaflets!";
		say "     The relief at (almost) having made it half-way is short-lived, as putting all your attention forward has you miss a little irregularity in the old paving stones, sending tumbling to sprawl to the ground. Ouch! You bump your head hard against the stones. Feeling wetness on your forehead, you dab at it with your fingers and feel a stinging pain at the touch, drawing your fingers back red with blood. Nnngh, you feel a bit woozy. Starting to push yourself up as best as you can next, you can't help but notice a pair of little green feet quite close before you. 'I did intend to just pick up some loo- err... souvenirs at the welcome center, but it seems today is my lucky day,' the owner of those bare feet says - a goblin with a platinum blond mohawk and more than a few golden earrings.";
		WaitLineBreak;
		say "     Standing before you with both hands on his hips, a total of three feet in height, the little green man doesn't look unattractive - yet somehow, the predatory gleam in his eyes is a bit disconcerting since their gaze rests right on you. Trying to get your feet back under you by pushing off from the ground with both arms, you find your strength break halfway through it and can just barely catch yourself before doing another face-plant on the stones. 'Let's have a look at you,' the goblin says, grabbing your head relatively roughly to glance at your forehead. 'Looks like the only thing dripping out is a little blood, nothing worse. How many fingers am I holding up?' Uncrossing your eyes, you can tell it is one - his middle finger waving left and right through your line of sight.";
		say "     As you start to grumble about him giving you the finger, the goblin lets go of you and nods. 'You'll be alright then - even if you got a concussion, those little metal thingys we all got in us will patch you up soon-ish. Which means I better use the opportunity now before it's over!' Something about his tone tells you that - yup, he's pulling his loincloth aside, gripping a rapidly hardening dick. 'Start sucking,' comes a command given with a broad grin. Weak as a kitten right now, you've got no options but to plead with him - only to get a throbbing member pushed into your mouth as you open it.";
		WaitLineBreak;
		say "     With your physical and mental faculties a little bit compromised right now, it seems almost like your body moves on its own to react to the demand for oral sex. Is this a 'present' from the ever-present nanites infecting you like anyone else in the city? Programmed muscle memory that guides people to having more sex? Whatever it is - you find yourself licking around the tip of the little goblin's cock a couple times before wrapping your lips around it. Sliding his cock deeper into your mouth, soon you can feel his little nut-sack bump against your chin. As your tongue plays over his manhood, following the veins along its shaft, you start feeling a bit more clear-headed. Yet are you well enough to fight the guy off? Better just continue and get this over with so you don't lose massive amounts of time...";
		say "     Shrugging, you begin to slide his cock in and out of your mouth. As you blow the goblin, you keep playing your tongue over his cock, sometimes wrapping it around as far as you can get. After a few minutes of this, your head is pushed off his cock and the little green man begins to rapidly jerk off. It doesn't take long before he throws his head back, shouting in pleasure as he starts to come all over your face. Spurt after spurt of cum splashes your features wetly, leaving streaks that feel warm on your skin. For someone his size, the guy blasts you with a massive load, liberally coating your face with his cum. 'Suits you,' the goblin says with a grin, then gives a little wave with his hand. 'Okay then, I'm off - got some offices to ransack, you know.' After that, he trots off into the distance, leaving you to sink down on the ground once more.";
		WaitLineBreak;
		say "     After wiping your face as good as possible, it still takes a little while longer for you to recover enough to stand. With a sigh, you walk over to the information column and pull out a colorful leaflet playing up the advantages of Tenvale College. Then you do your best to make it back to the football field as fast as possible. Upon your return Roman notes down the time from his stopwatch and comments, 'Wow, that took a while. I said you had some time, but... hey, what's that on your chin?' You wipe a hand over your face and realize that you missed a little bit of cum from your incident with the goblin. Too embarrassed you explain, you just duck past the football player to make your way to the locker room and wash up. With a shrug, he calls after you, 'Fine, then don't talk about it. Come back in a day or so, we'll have everyone's results then.'";
		increase TryoutScore by 1;
	else: [succeed]
		say "     Then Roman escort blows his whistle and with its piercing shriek, you're off - at a light pace to begin with. The buildings and areas of the college campus seem to streak past you as you keep going in a smooth jog, bypassing groups of creatures (friendly or not) as you do your best to get a good time. Soon, you arrive at the welcome center and make a beeline for an information column, snatching a colorful leaflet as you zoom past. On your way back you begin to notice that you're getting a little winded - but you are able to outlast your exhaustion and make it to the football field with no problems. Upon your return Roman notes down the time from his stopwatch and comments, 'Great work - not everyone who tries out makes it back. And in a quite good time too.' He accepts the leaflet from you with a grin, then pats you on the shoulder. 'It'll take a little while for us to evaluate all of the guys and gals who were in the tryout. Come back a tomorrow and we'll let you know if you made the team.' You give a quick thanks in return and make your way back to the locker room.";
		increase TryoutScore by 2;

to say FootballTryoutsResults:
	say "     'Just in time. I was just done with the results.' The team captain shouts some instructions to the unruly throng of football players all around, sending some of them to train on the field while cheering on those who're currently involved in a gangbang on near the door to the locker-room. After calling out, 'I'll be over in a moment, hold me a place in the line to fuck her!' he walks over and turns his attention to you. 'Okay. Let's see...'";
	WaitLineBreak;
	now GorillasMember is 3;
	if TryoutScore is 7: [maximum points]
		say "     'You really wowed us out there,' the primate says with a broad grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, it immediately became clear that we had to have you on the team. Hell, you were at the top in front of everyone else. That'll make a fine addition to our team!' Waving his hand to indicate the entrance to the locker-room, he goes on to say, 'Be sure to come by regularly to either train or play a match. The Fourmont Wolves got stuck on the campus with the infection, and they are always eager for a play-off. Oh, and before I forget...' Roman fetches some football pads and hands them to you, under the cheers of your new teammates. 'Here's your gear. Take care of it, okay?'";
		say "[bold type]You gain football pads![roman type][line break]";
		increase carried of football pads by 1;
		now GorillasRep is 9; [star player]
	else if TryoutScore > 4: [okay results]
		say "     'Congratulations you made it into the team,' the primate says with a grin and holds out his hand in congratulation. Accepting a firm grip on your forearm and returning the same on his powerful furry limb, you are told, 'When we put everyone's data on the planning board, you rated well in the upper third. Didn't take much convincing for everyone to agree that you deserve a shot on the team.' Waving his hand to indicate the large locker room, he goes on to say, 'Be sure to come by regularly to train. You should make it to the main team in no time. Oh, and before I forget...' Roman fetches some football pads and hands them to you, under the cheers of your new teammates. 'Here's your gear. Take care of it, okay?'";
		say "[bold type]You gain football pads![roman type][line break]";
		increase carried of football pads by 1;
		now GorillasRep is 4;  [b team player]
	else: [moderate to bad results]
		say "     'Listen, we had a look at your results and... made a team decision that you will not be joining as a player,' the primate tells you with a somewhat apologetic expression. Yet as you bow your head in shame and begin turning to walk away, he grabs hold of your arm and adds, 'Wait I haven't finished yet. I thought it was brave of you to do the tryouts, no matter what came of it, so... I have an offer for you. A way you can still be part of the team and help out. You could be either a [if Player is female]water girl or a laundry girl[else]water boy or a laundry boy[end if].' Roman gives you a supportive slap on the shoulder. 'It will be no small job, managing all these boys['] laundry, but every effort counts, and for that you have my thanks. [bold type]If you work for the team enough times, I am certain that someone will put a good word for you, and put your name forward for the next draft[roman type]. Come back anytime you want, champ. I'm sure that I'll see you on the football field in no time.'";
		now GorillasRep is 0;

[Laundry boy scenes]
to say GorillaLaundryService1:
	say "     You make your way to the locker-room, taking in the state of it - with dirty clothes are scattered across the floor and lockers. There is all sorts of stuff - everything from jock-straps to jerseys, as well as some more intimate pieces - several bras and even a tiger-pattern thong with a well-sized pouch at the front are strewn about too. You wonder where they come from, considering that everyone plays naked, when you realize that this is actually the product of everyone undressing, and of the guys had lots of fun with some fans who came in here. Sighing, you find a cart in the corner of the room and begin taking any dirty clothes and dumping them into the cart.";
	say "     Once you are about halfway done the players come back in and start removing their gear. You can't help but look around at the undressing gorillas. It is quite a sight - with their rippling muscles clearly outlined beneath short, often sweat-matted fur. Snapping back to reality after catching yourself staring at a player's rock hard abs for a little bit too long, you continue picking up the gear. Once the floor is clean, you notice some of the players are leaving, and others headed towards the showers. Soon, the last of them present pulls off his jock, just dropping it to the ground as he strolls over to the shower with his balls and cock swinging freely.";
	WaitLineBreak;
	say "     Tired of cleaning up and with no one in sight, you decide to take a quick break. Sitting on one of the benches, you idly glance around in the room and listen to the scraps of banter you can hear coming from the showers. Then your gaze falls upon the jock strap you saw dumped on the ground. Something about it draws you closer, and you find yourself standing over the flimsy bit of fabric...";
	say "     [bold type]What do you want to do with the piece of clothe?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take it and bury your nose in the gorilla's used underwear.";
	say "     ([link]N[as]n[end link]) - Put it in the laundry cart with the rest of the dirty clothes.";
	if Player consents:
		LineBreak;
		say "     Picking up the jock-strap, you press it up towards your nose. You take a large whiff, getting the smell of the gorilla's sweat and musk in your nose. Somehow, this makes your arousal soar, [if Player is male]your dick growing hard during your inhale[else if Player is female]your pussy getting wet and tingly as a result[else]sending a shiver of lust up and down your spine[end if]. You decide to remove your gear and strip down, then begin touching yourself. Knowing you'll get caught if you don't hurry you rapidly stoke [if Player is male]up and down over your cock[else if Player is female]over your sensitive clit[else]over the sensitive skin of your crotch[end if] while still smelling the musky jockstrap. Before long you reach a climax, panting hard as you [if Player is male]blow your load all over the ground[else if Player is female]squirt femcum all over the ground[else]ride out the high[end if]. Luckily you manage to keep quiet - partly by moaning into the crumpled jockstrap held against your face.";
		say "     After taking one last sniff you turn to throw the jock into the cart. When you turn around, a gorilla is just strolling into the room from the showers, dripping water from his freshly washed fur. You panic a little at being caught nude and breathless from the orgasm only just ebbing off. 'Enjoy yourself?' the ape asks. You simply nod, accepting the fact that you've been caught. 'Smells good doesn't it?' the large primate says as he walks up to you, grinning widely as you nod again. Grabbing his crotch, he leans over you and whispers in your ear, 'Next time catch me before I shower, and you can smell the real thing all you want.' [if Player is male]Your cock grows hard again causing the large gorilla to laugh[else if Player is female]Your pussy throbs with another little spurt of femcum, dripping to the floor as the large gorilla watches and laughs[else]Your body trembles in lust as the large gorilla watches and laughs[end if]. After giving you a friendly grope, he returns to his locker and puts on normal clothing before leaving.";
		WaitLineBreak;
		say "     After quickly getting your clothes back on, you decide it's best to get back to work and proceed to finish cleaning the room, adding a load of wet towels to your cart too. After manoevering the by now quite heavy cart to the laundry room, you sort the stuff, then put it in several big machines in parallel, hanging it all up to air dry before making your way out. Exhausting work, but worth it for your favorite football team.";
		now laundryProgress is 1; [laundry boy jock sniffer]
		increase GorillasRep by 1;
	else:
		LineBreak;
		say "     With a shrug, you bend down to take the jock and fling it over towards the laundry cart, hitting its opening on the first try. 'Not a bad throw,' someone says from behind you - it is the owner of the jock that you just picked up, now clean and dripping with water from his wet fur. He grins widely as you can't help but take in his magnificent naked form - a well-trained muscular body on full display. The moment stretches out for a few more seconds, him standing there and you staring hungrily - then more team-members come out of the showers and the room gets filled with their chatter.";
		say "     You decide it's best to get back to work and proceed to finish cleaning the room, adding a load of wet towels to your cart too. After manoevering the by now quite heavy cart to the laundry room, you sort the stuff, then put it in several big machines in parallel, hanging it all up to air dry before making your way out. Exhausting work, but worth it for your favorite football team.";
		increase GorillasRep by 1;

to say GorillaLaundryService2:
	say "     You head for the locker-room and begin your new laundry shift. The team heads out for practice, their horde of horny fans following closely. You are once again alone, with a big pile of dirty clothes and underclothes from all genders waiting to be picked up. You sigh in front of this general lack of tidiness, but console yourself and decide that you would 'borrow' a few of these jock-straps and thongs for your personal use.";
	say "     Suddenly, someone arrives from behind and grab your [face of Player], pressing something against your nose and startling you. As you inhale, a strong smell of sweat reaches your nostrils, making your shudder. 'How's my sniffer buddy doing?' a familiar voice asks.";
	LineBreak;
	say "     You recognize the voice of the gorilla from earlier, and relax somewhat. 'Yup, it's me,' the ape confirms after you voiced your thought. 'So, fond of my smell?' You take another, bigger breath through the used thong that the footballer keeps pressed on your face, groaning in pleasure. Grinning, the male lowers his other hand towards your crotch and [if Player is male]fondles your growing endowment[else]grinds his large fingers against your [cunt size desc of Player] pussy[end if].";
	say "     'Looks like I'm late for training. A hyena friend came to visit and we lost track of time as we 'caught up' with each other. Someone is filling in for me for today's session, so I guess we could hang out here until training ends. [bold type]What do you say?[roman type]'";
	LineBreak;
	say "     ([link]Yes[as]y[end link]) - You hungrily accept the offer for kinky sex.";
	say "     ([link]No[as]n[end link]) - You politely decline the invitation.";
	if Player consents:
		say "     Instead of voicing an answer, you grind back against the gorilla. He chuckles, and you chuckle too when you feel his rock-hard cock against your butt. 'You are addicted to the smell, don't you? Wanna get your fix directly where it came from?' You nod eagerly in response. 'Then turn around and get on your knees, my little panty sniffer.'";
		say "     He does not have to say it twice. You fall on your knees and dive your [face of Player] into his crotch. 'Ho ho, someone is eager, it seems.' You do not answer, busy basking yourself into the male scents. 'Give them a good tongue bath,' the male orders. You comply, and start licking his heavy ballsack. You worship his balls, coating them in your saliva, and occasionally sucking them in your mouth one by one, before letting them out with a loud pop noise. At the same time, your hands absentmindedly [if Player is male]stroke your [Cock Size Desc of Player] [cockname of Player] [end if][if Player is herm] and[end if][if Player is female]play with your pleasure button[end if]. After several minutes of this, the primate sits on a nearby bench, and point at his rigid cock, which was bobbing up and down over your head for some time now. 'Time to take care of the big boy too,' he asks, grinning.";
		say "     You open your mouth and slip your tongue inside your partner's foreskin, before sucking the rest of the glans in. From the gasp that he made, you know that he loved the gesture. After having pulled back the foreskin, you roll your tongue around the sensitive flesh. The gorilla puts his hand on your hair; not to force you to go faster or deeper, but to make you relent. 'Oh, fuck, that tongue! Slow down, champ.'";
		LineBreak;
		say "     In order to give the gorilla some pause, you run your tongue over the shaft, basking in the strong male scent when you press your face against his crotch. After this, you resume your fellatio. You keep assaulting the gorilla's glans with your tongue, amusing yourself when you feel his thick legs jiggle on each side of your head. You occasionally take the ape's dick deep in your mouth, going as far as you can, taking a whiff of football player's musk, before pulling out.";
		say "     Suddenly, his breath accelerates, and you feel his body tense up. 'Oh shit, here it comes! Here it... Nnng!' Before you can react, the pair of thick, furry legs press on each side of your [face of Player], and the big jock seems to attempt to crush you against his crotch. Your nose and windpipe blocked by the massive slab of gorilla meat, your brain overwhelmed with sweaty musk, you tremble and cum hard, while he sends several ropes of cum down your gullet.";
		WaitLineBreak;
		say "     After his powerful orgasm, the ape's muscles seems to turn into jelly, and you immediately pull away, gasping for air. 'D-Damn. Between you and my friend, you're definitely the best sucker,' he says. After the both of you recovered, the football player goes to fetch a can of soda and throws it in your direction. 'As thanks.' You catch it mid-flight, making it grin. 'Nice catch. Once you build some strength, you should talk to the team captain about some promotion. You'd make a good player.' On these words, the gorilla heads for the exit. 'Good luck with the rest of the laundry,' he wishes you.";
		say "     You say goodbye too, and go back to your duty. Meeting your new friend has put you in a good mood, and you manage to handle the rest of the clothes way before the team comes back from training. You are even able to take some time to sit on a bench and take some whiffs at the thong that he gave you. It's not the same smell than the other time. Is it his hyena friend's? Your thoughts are interrupted by the hubbub of the team and its groupie escort. After another round of sweaty clothes collection, Roman tells you that you are done for today and free to go.";
		add "soda" to invent of Player;
		increase GorillasRep by 2;
		now laundryProgress is 2;
	else:
		LineBreak;
		say "     You explain to the gorilla, through his big primate hand, that you do not feel up for [italic type]this[roman type] kind of fun today.";
		say "     'Really? It's a shame. But hey, I understand. Everyone needs a pause from this 24/7 fuck-fest, from time to time.' The football player gives your neck a mischievous lick, and lets you go, after handing you a bag of chips. 'Good luck with your laundry, then. I'm gonna join the training. See you around!";
		say "     You say goodbye too, and go back to your duty. Meeting the team captain has put you in a good mood, and you manage to handle the rest of the clothes way before the team comes back from training. You are even able to take some time to sit on a bench and take some whiffs at the thong that he gave you. It's not the same smell than the other time. Is it his hyena friend's? Your thoughts are interrupted by the hubbub of the team and its groupie escort. After another round of sweaty clothes collection, Roman tells you that you are done for today and free to go.";
		increase GorillasRep by 1;

to say GorillaLaundryService3:
	say "     You start your new laundry shift. You pickup the dirty jockstraps and shorts one by one, and throw them in your basket. Suddenly, a large hand friendly taps your shoulder. 'How's it going, laundry [if Player is male]boy[else]girl[end if]?' your laundry friend asks. You greet him back, and exchange news about each other. [one of]Apparently, he broke up with the hyena. 'Couldn't work. Wanted something more serious, [italic type]monogamous[roman type] as he said. But who can stay monogamous in that city, now, right?' The ape grins. 'So, short story is, I'm pent up like crazy. So, how about we get some fun. Who'll care if you take a little more time to put everything in the washing machine, heh?'[or]He is still swinging from partner to partner. 'You are the only acquaintance I have not fucked in a while. Come ooon! You won't spend your days picking up laundry until the rescue arrives. If it ever does. Let's [']catch up['],' he says with a wink.[stopping]";
	say "You consider his proposition. [if Libido of Player > 50]You are quite pent-up yourself, so this would be a good way to release some of your own tension. [else if Libido of Player > 10]You do deserve some fun, but would it not be better to wait after you are done? [else]You do not think it would be wise, but... Free sex, right? [end if][bold type]'What is your answer?'[roman type]";
	LineBreak;
	say "     ([link]Yes[as]y[end link]) - Let's get crazy.";
	say "     ([link]No[as]n[end link]) - This is not the moment.";
	if Player consents:
		say "     As soon as you voice your approval, your ape friend throws himself on you, and pushes his tongue against yours. Your vigorous French kiss makes you [if Player is herm]hard and wet[else if Player is male]hard[else]wet[end if] in a few moments; the gorilla's cock is also hard as a rock. After a while, he steps back, and grabs a condom on a pile negligently lying in a corner. 'Let's get serious, this time.'";
		if Player is puremale and anallevel is 1:
			say "     You understand what your friend wants, and tells him that you'd prefer not to have anal with him. 'Oh, that's not your thing too,' he says. 'I would have never thought, considering how well you sucked my meat, last time. I've got an idea. Get on all fours, but trust me.' He hurriedly forms a small cushion of used underwear and jockstraps, and makes you kneel on it. The jock positions himself behind you, and you feel his cock brush against your balls. For a moment, you thought he would try to trick you, but then he makes you squeeze your thighs. 'Keep [']em close, and enjoy.'";
			say "     The gorilla pushes his cock between your thighs. You feel it frot against your [Cock Count of Player] [cock of Player] cock[smn]. He starts humping vigorously, as if he was fucking your ass, letting you enjoy the sensations of anal sex without any of the inconvenience. Your partner does not forget you, and his hand grabs the top of your dick and rubs it slowly. To get you over the edge and cum with him, the ape picks up a thong from the pile, and press it against your [facename of Player] nose. This had an even more potent effect than expected. The two of you reach your climax one shortly after the other, and your touching cocks pour down a rain of cum on the underwear.";
		else if Player is puremale:
			say "     You smile at your friend's proposal. 'And with a rubber, no risk of infection,' he says. 'So on all fours, my little panty sniffer.' He hurriedly forms a small cushion of used underwear and jockstraps, and makes you kneel on it. The jock positions himself behind you, and you feel his cock rub the space between your buttcheeks, while the ape coats it in a copious amount of lube. For a moment, you thought he would never do it, but then he parts your thighs apart, and press the tip of his cock against your anus. 'Enjoy.'";
			say "     The gorilla pushes his condomed cock inside your ass. The rubber-coated shaft spreads your hole and quickly rushes in. The ape slowly pumps his hips inside of you, digging in inch by inch. Just as it was starting to get uncomfortable, the gorilla picks up a thong from the pile, and press it against your [facename of Player] nose. A rush of pleasure fills your body, and you surprise the jock by pushing the last couple of inches inside of you. He grins, and starts humping vigorously. His other hand reaches for your [Cock Count of Player][cock of Player] cock[smn] and strokes [itthemm], taking his time in order to find and rub all the sweet spots. You do not last long, and neither does he. While he fills his condom with his cum, your [cock size desc of Player] shaft[smn] pour[smv] down a rain of cum on the underwear.";
		else if Player is herm and anallevel is 3:
			say "     You smile at your friend's proposal. 'And with a rubber, no risk of infection,' he says. 'So on all fours, my little panty sniffer.' He hurriedly forms a small cushion of used underwear and jockstraps, and makes you kneel on it. The jock positions himself behind you, and you feel his cock rub the space between your buttcheeks, while the ape coats it in a copious amount of lube. For a moment, you thought he would never do it, but then he parts your thighs apart, and press the tip of his cock against your anus. 'Enjoy.'";
			say "     The gorilla pushes his condomed cock inside your ass. The rubber-coated shaft spreads your hole and quickly rushes in. The ape slowly pumps his hips inside of you, digging in inch by inch. Just as it was starting to get uncomfortable, the gorilla picks up a thong from the pile, and press it against your [facename of Player] nose. A rush of pleasure fills your body, and you surprise the jock by pushing the last couple of inches inside of you. He grins, and starts humping vigorously. His other hand reaches for your [Cock Count of Player] [cock of Player] cock[smn], alternating between stroking [itthemm] and rubbing your engorged clitoris, taking his time in order to find and rub all the sweet spots. You do not last long, and neither does he. While he fills his condom with his cum, your [cock size desc of Player] shaft[smn] pour[smv] down a rain of cum on the underwear, accompanied by the vaginal fluid of your cunt[sfn].";
		else if Player is female and anallevel is 3:
			say "     You smile at your friend's proposal. 'And with a rubber, no risk of infection,' he says. 'So on all fours, my little panty sniffer.' He hurriedly forms a small cushion of used underwear and jockstraps, and makes you kneel on it. The jock positions himself behind you, and you feel his cock rub the space between your buttcheeks, while the ape coats it in a copious amount of lube. For a moment, you thought he would never do it, but then he parts your thighs apart, and press the tip of his cock against your anus. 'Enjoy.'";
			say "     The gorilla pushes his condomed cock inside your ass. The rubber-coated shaft spreads your hole and quickly rushes in. The ape slowly pumps his hips inside of you, digging in inch by inch. Just as it was starting to get uncomfortable, the gorilla picks up a thong from the pile, and press it against your [facename of Player] nose. A rush of pleasure fills your body, and you surprise the jock by pushing the last couple of inches inside of you. He grins, and starts humping vigorously. His other hand reaches for your [Cunt Count of Player] puss[yfn], alternating between fingering [itthemf] and rubbing your engorged clitoris, taking his time in order to find and rub all the sweet spots. You do not last long, and neither does he. While he fills his condom with his cum, your cunt[sfn] pour[sfv] down a rain of fem-cum on the underwear.";
		else if Player is herm:
			say "     You smile at your friend's proposal. 'And with a rubber, no risk of infection or pregnancy,' he says. 'So on all fours, my little panty sniffer.' He hurriedly forms a small cushion of used underwear and jockstraps, and makes you kneel on it. The jock positions himself behind you, and you feel his cock rub against your pussy lips, as the ape lets his length get coated it in a copious amount of your natural lube. For a moment, you thought he would never do it, but then he parts your thighs apart, and press the tip of his cock against your cunt. 'Enjoy.'";
			say "     The gorilla pushes his condomed cock inside your vagina. The rubber-coated shaft spreads your hole and quickly rushes in. The ape slowly pumps his hips inside of you, digging in inch by inch. Just as it was starting to get uncomfortable, the gorilla picks up a thong from the pile, and press it against your [facename of Player] nose. A rush of pleasure fills your body, and you surprise the jock by pushing the last couple of inches inside of you. He grins, and starts humping vigorously. His other hand reaches for your [Cock Count of Player] [cock of Player] cock[smn], alternating between stroking [itthemm] and rubbing your engorged clitoris, taking his time in order to find and rub all the sweet spots. You do not last long, and neither does he. While he fills his condom with his cum, your [cock size desc of Player] shaft[smn] pour[smv] down a rain of cum on the underwear, accompanied by the vaginal fluid of your cunt[sfn].";
		else:
			say "     You smile at your friend's proposal. 'And with a rubber, no risk of infection or pregnancy,' he says. 'So on all fours, my little panty sniffer.' He hurriedly forms a small cushion of used underwear and jockstraps, and makes you kneel on it. The jock positions himself behind you, and you feel his cock rub against your pussy lips, as the ape lets his length get coated it in a copious amount of your natural lube. For a moment, you thought he would never do it, but then he parts your thighs apart, and press the tip of his cock against your cunt. 'Enjoy.'";
			say "     The gorilla pushes his condomed cock inside your vagina. The rubber-coated shaft spreads your hole and quickly rushes in. The ape slowly pumps his hips inside of you, digging in inch by inch. Just as it was starting to get uncomfortable, the gorilla picks up a thong from the pile, and press it against your [facename of Player] nose. A rush of pleasure fills your body, and you surprise the jock by pushing the last couple of inches inside of you. He grins, and starts humping vigorously. His other hand reaches for your engorged clitoris, pinching and stroking it to make you moan at his leisure. You do not last long, and neither does he. While he fills his condom with his cum, your cunt[sfn] pour[sfv] down a rain of fem-cum on the underwear.";
		WaitLineBreak;
		say "     You look at each other, tired but contented, when a loud cough interrupts you. The rest of the team is here, watching you as not only you slacked off on your job, but you used their clothes in such fashion. Roman had the both of you pick up the clothes, under the amused or annoyed eye of your teammates, then lectured you. 'I thought you were better than this, [if Player is not defaultnamed][name of Player][else]my friend[end if],' Roman says to you. Then, to the other gorilla 'As for you, you seem to be a lost cause already. I will find an appropriate punishment for you.' After this, Roman lets the both of you go. Your friend walks away, an uncaring smile on his face. As for you, you realize that, while you satiated your lust, it came at the cost of alienating Ronan and the others. Time will allow you to make up for it; but you can't shake the feeling that this incident has hurt your progression into the team.";
		if Libido of Player > 50:
			decrease Libido of Player by 50;
		else:
			now Libido of Player is 0;
		decrease GorillasRep by 2;
		now laundryProgress is 3;
	else:
		say "     [one of]'Better off sniffing pants than getting the real deal, huh? Well, I'm not judging,' your friend says. However, he seems disappointed. 'Well, I'm gonna head out. See you around, sniffer [if Player is male]boy[else]girl[end if].'[or]'Are you angry at me or something? You keep pushing me back.' The gorilla scratches his chin in annoyance. 'What's up with people like you and my ex? Have fun picking up others['] dirty clothes, then.'[stopping]";
		say "     With this, the jock walks out of the locker-room and leaves you alone. You resume your task. You find the time to take a couple of whiffs from some nice-smelling underwear, and eventually you finish your job just in time. The rest of the team congratulates you for your good job, before the usual mayhem of the locker-room sets itself up once more.";
		increase GorillasRep by 1;

[Expansion idea: develop this character]
to say GorillaLaundryRepeat:
	say "     You start your new laundry shift. You pickup the dirty jockstraps and shorts one by one, and throw them in your basket. 'What's up?' a familiar voice asks from the entrance. As you give him a resentful look, the jock raises his hands in the air. [one of]'Sorry, sorry. Who knew we'd get so much into things, last time, huh?' he sort-of apologized. 'Anyway, I'm just here to chat for now. And to help. Coach asked me to do laundry work for a week or face expulsion from the team.'[or]'We're on the same shift again, huh? Let me help you.'[stopping]";
	say "     With the two of you picking up clothes, things go very fast, and there is still twenty minutes until the end of the training. You take the opportunity to chat with your teammate.";
	LineBreak;
	let randomnumber be a random number from 1 to 3;
	if randomnumber is 1:
		say "     'The Fourmont Wolves are a decent bunch, once you get to know them. Their mouths are as good for talking than for drinking. And sucking. And sucking then drinking. Fucking a muzzle changes a lot of things, y'know?'";
	if randomnumber is 2:
		say "     'I'm screwing a lot of guys, and girls too. All you need is roam the campus and pick up the first one you fancy. Most of the time they can't resist if you [']insist['] a little, heh heh. By the way... Have we met elsewhere?'";
	if randomnumber is 3 :
		if HP of Roman is 5:
			say "     'So captain Roman is a girl down there? Who could have guessed! No wonder he was so prude. I've never screwed a trans guy before, maybe you could put a word for me to the cap, eh?'";
		else:
			say "     'Captain Roman is a strange guy. For the leader of a pack of hornballs, he is surprisingly prude. He's never fucked anybody, and he's always changing in his own room. You should open your eye for him, next time you come here.'";
	increase GorillasRep by 2; [Since there's nothing else for now, I give the player a little "help" to unlock the next stage, if needed]


[Water Boy scenes]
to say GorillaWaterService:
	say "     'Okay, boy. Pick up your tools and join us outside,' the captain asks. You comply, and go get your tools. [first time]You find the usual bucket of water, but also a hose; and a sponge; and soap. You are understandably puzzled, but you pick up the items nonetheless, as you will soon discover the reason of these incongruities. [only]You and the rest of the team head for the training field. After the usual stretching, and the unusual cock stroking, the trainer comes to meet you. He quickly divides the team in two halves and have them practice their scrums. You stand on the side, with your water bottles and your cleaning implements. This is a messy affair, since each time two or more players get into each other, sex ensues. You dutifully scrub each of them clean, as they come by. You take a liking massaging their thick fur with soap, and handling their genitals, and it seems that so do they. Every time, the gorillas arrive dirty and tired, and leave horny and hard. Eventually, several groups come at the same time, and you need to prioritize one, while the other water-boys will take care of the others.";
	LineBreak;
	say "     [bold type]Which group should you [roman type][line break]";
	say "     [link](1)[as]1[end link] - A large, bully-looking ape, whose dirty look gives you bad vibes.";
	say "     [link](2)[as]2[end link] - Two players who look very close to each other and with an air of family.";
	if HP of Roman >= 7:
		say "     [link](3)[as]3[end link] - Isn't that Willy the orca, over there?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-[if HP of Roman >= 7]3[else]2[end if])>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or (calcnumber is 3 and HP of Roman >= 7):
			break;
		else:
			say "Invalid choice. Type [link]1[end link], [link]2[end link][if HP of Roman >= 7]or [link]3[end link][end if] to choose an incoming group.";
	if calcnumber is 1:
		LineBreak;
		say "[GorillaWater1]";
	else if calcnumber is 2:
		LineBreak;
		say "[GorillaWater2]";
	else:
		LineBreak;
		say "[GorillaWaterWilly]";
	say "     The team captain calls for the end of the training session. You pick up your empty bucket and put your bross and soap in it. Roman congratulates you for a job well done, with a wink. It seems that he caught what happened earlier. He gives you some freecred for you to spend.";
	CreditGain 30;
	increase GorillasRep by 2;

to say GorillaWater1:
	say "     'Hey, [if Player is male]boy[else]girl[end if]!' the player calls rudely as you walk towards him. Looking at him from head to toe, you notice that his belly and his crotch are covered in residues of cum from the field. 'You think we're on vacation? Faster!' he orders you, even though you are already only a dozen feet away from him. Grunting, he snatches a bottle in your bucket, drink about half of it in one go, then pours the rest on his head, crushing the plastic bottle as he does so. 'Ew. It feels better. Hey, water boy, scratch this off,' he sighs, pointing at his dirty belly. You try to ignore the primate's uncouth attitude, and, grabbing your hose and your soap bar, you start to wash him. You notice right away that, if his chest is messy, his back is only slightly sweaty, and his butt squeaky clean. You extrapolate easily what kind of person the jock is, and decide to do your job as quickly and fusslessly as possible. But, as you were about to rinse the ape's, black fur, the football player grabs your wrist. 'Oi, oi. Not so quick. [one of]You are new here, aren't you?[or]Haven't seen you much here, have I?[stopping] Wanna have a taste of a champ's cock?'";
	if Player is submissive:
		say "     Your cheeks flush red when you hear the ape's lewd comment. Grinning, you let go of your hose, and let the jock pull you to his lap and force a kiss from your lips. 'I knew it. You little hands are a bunch of horny bitches, after all. Scooping some soap with his hand, he reaches down and runs a finger down your [if Player is female][Cunt Size Desc of Player] slit, before slipping it in, quickly joined by a second. 'It's been days since I got myself some pussy. I'm starting to get tired of the boys['] asses,' the jock says before pushing a little further inside of you[else]ass, turning it inside and pressing against your prostate, before a second joins in. 'Nice tight ass. I would have preferred a pussy, but at least, yours'll feel new,' the jock says before pushing a little further inside of you[end if]. The feeling of these big fingers prodding you put you on your toes, and you must bite your lips to prevent a big moan from drawing the attention of the team captain. 'I can feel your muscles squeeze tight around my fingers. What an eager slut you are. Let's get to business then, shall we?' You nod affirmatively and, laughing the jock pulls you closer to him, aligning his manhood with your hole. Then, he lowers you down.";
		WaitLineBreak;
		say "     You stifle another moan, as the gorilla's cock hits all the right spots. [if Player is male]Your manhood is hard from excitement, and slowly slides down the ape's belly with your descent, leaving pre in its trail. [end if]After what seems an eternity, you finally feel the primate's pelvis bump with your butt, but you barely have the time to breathe that he hoists you up... 'Heave...' Before slamming you down to the hilt. 'Ho...' You gasp, but understand, as you feel yourself being lifted again, that you are just getting started.";
		say "     Five minutes, which felt like fifty, later, the jock lets out a hearty grunt, and you feel his warm sperm take residence into your [if Player is female]pussy[else]bowels[end if]. [if Player is herm]You have already orgasmed by then, with the last remnants of your climax rolling down the ape's chest and dribbling down his balls. [else if Player is male]You have already orgasmed by then, with the last remnants of your climax rolling down the ape's chest. [else if Player is female]You have already orgasmed by then, with the last remnants of your climax dribbling down his balls. [end if]The footballer stands up, letting you lie on your back with stars in the eyes, and look at his crotch. 'Look at the mess you made. Gotta clean this up again,' he says with a grin. You groan. 'Don't worry. I'm gonna pester another of you bitches. No use for a spent hole, right?' You chuckle, and slowly sit up, while you hear the jock call another water-boy in the background.";
	else:
		say "     You try to pull your wrist away from the jock's grab, but he simply laughs, and reel you in towards in. 'Ga ha ha! Getting cold feet, bitch? That's why you're here for, no?' You try to protest but the gorilla steals a kiss from you before taking the plastic hose and starting to coil it around your arms. You realize what he is doing and struggle, but the ape's natural strength and his four prehensile limbs allows him to pin your arms behind your back and tying them up. You open your mouth to shout, but before you can make any significant sound, he jams one of the rags you carry with you in order to towel the players, muffling your voice. Once he is done, the gorilla throws you on the grass, and hoists up your ass.";
		say "     'So, what have we got here?' you can hear him say, before giving your ass a hearty slap. You gasp through your gag, as you feel one, then two, then three fat fingers slide into [if Player is female]your cunt, exploring it, testing its tightness and its size. 'Fine pussy you got there, water-bitch. I was starting to get fed up with the boy's ass anyway.'[else]your ass, exploring it, testing its tightness and its size. 'Too bad there's only an ass to play with. Make sure to get fucked and grow one by the next time.'[end if] You wince at the ape's harsh words[if Player is herm], even more so that, because of the nanites['] action, your cock is starting grow hard, and your pussy wettens[else if Player is female], even more so that, because of the nanites['] action, your pussy wettens[else if Player is male], even more so that, because of the nanites['] action, your cock is starting to grow hard[end if]. But already, the fingers were done. They were here to judge, not to arouse. You quickly feel the ape's slab of meat present itself to your hole, and push forward.";
		WaitLineBreak;
		if Player is female:
			say "     The rag dampens your howl as the thick primate cock stretches your inside in a relentless advance. [if Cunt Length of Player < 8]It quickly reaches the end of your vagina and bumps into your cervix. Not deterred, with a few inches to go, the gorilla pumps hard against the tight entrance of your uterus, like a football player ramming into a wall. Arms tied, manhandled by the large gorilla, you feel each new ramming inside of your womanhood tremor through your body, and forcing a whole of twisted sensations inside of you, as you are forcibly brought towards orgasm. After what felt like an hour of uninterrupted coitus, the primate jock makes several, final thrusts, which eventually go through your worn down defenses. You feel the large cock spread your cervix apart, and deposit a load of warm cum directly into your womb. [end if][if Cunt Tightness of Player < 5]More than its length, it is his width that makes you squeal each time the male slaps into you. You can feel your pussy stretch to its limits to accommodate the intruder, and your own body betrays you as femjuice rolls down your orifice each time the cock retreats, giving it additional lubrication. Eventually, the ape pushes as far as he can, and your pussy is so tightly squeezing on it that you can feel the veins of the shaft pulse, as it throws a load of cum inside of you. The sheer tightness of your cunt forcing the large quantity of sperm directly into your womb. [end if]You hold out the best you can, but with your arms tied, you are at the mercy of the gorilla, who uses you like a cocksleeve in a brutal, relentless, doggy style fuck. Your own body betrays you as femjuice rolls down your orifice each time the cock retreats, giving it additional lubrication. Eventually, the ape pushes as far as he can, spraying his cum down your hole, a lot of it splashing out of your pussy.";
		else:
			say "     The rag dampens your howl as the thick primate cock stretches your inside in a relentless advance. The jock fucks you doggy style, hard and relentless, pushing your anal ring to its limits. Each time his cock squeeshes your prostate, a long trail of pre escapes your [Cock of Player] member, which bobs up and down with the tremors of the mating. After what felt like an hour of coitus, which was actually only half-a-dozen minutes at most, the primate jock makes several, final thrusts, which eventually go through your worn down defenses. You can feel a flow of cum go up your intestines, filling you with warm, thick spunk.";
		say "     As the ape gave his final thrusts, your vision suddenly fills with stars, and a powerful orgasm overtakes your body. [if Player is herm] You squeal, while your duo of genitals spasm and let out streams of sexual fluids splash out on the gorilla's tummy and on the ground. [else if Player is male]You squeal, while your cock spasms several times, before launching several ropes of cum in direction of the grass, under you. [else if Player is female]You squeal, while your pussy spams violently, launching several squirts of cyprine on your molester's belly. [end if]Laughing, the sportsman pulls out, letting you roll on your side like a discarded fleshlight. 'Damn, that felt good! But now, look at that. I'm all dirty again.' You let out a tired whimper, but the jock promptly ignores you. He has already set his eyes on another water boy, and you can do nothing about it as you are, tied up, gagged and tired. Some of your teammates notice your predicament and help you out of your bondage. You can see at their looks that it is not the first time this has happened, and that they can't or won't do much about it. You barely have the time to recover that you hear the sound of a whistle.";

to say GorillaWater2:
	say "     You head towards the two gorillas with your bucket. They seem to get along with each other very well, judging by the playful buttslapping and penis-pulling happening. 'Thanks,' the first one says as he fetches two bottles from the bucket. 'Big bro, catch!' [first time]Curious, you ask the first ape if the pair is related. 'Yup. We're brothers,' the player confirms. My name's Zach, and he's Mike. We were already rather close, but this mini-apocalypse got us even... Closer. If you see what I mean.' [only]You have the two brothers sit and begin to soap their black fur. Foam begins to build, and the two brothers begin to play at wiping the soap from each other's face and washing the other's fur, until they cannot hold it anymore and begin to make out with passion.";
	say "     'Zach...' Mike moans as his brother's adventurous hand ventures down his groin. The two siblings look at each other, and you get the impression that they are thinking the same thing. Your hunch is confirmed when they look at you, at the same time, and Mike pulls you between their soap-covered bodies. 'Wouldn't be fair if you only watch, do you?' Zach and Mike cover you with kisses and caresses, which you return in kind. They playfully cover you in soap too, and you spend several minutes like this, pleasuring each other playfully. 'Should we give him a taste of our [italic type]special move[roman type], Mike?' Zach says. His brother chuckles, and you suddenly find yourself upside down, as each brother grabs one of your legs.";
	WaitLineBreak;
	if Player is herm:
		say "     The brothers bury their faces against your crotch. Zach [if Cunt Count of Player is 1]alternates between giving your clit powerful suction and lapping at your [Cunt Tightness of Player] pussy[else]explores each of your pussies with his tongue, filling the unused ones with his fingers[end if], while Mike [if Cock Count of Player is 1]gobbles down your [cock of Player] cock with loud noises of wet slurps, sometimes going for your balls while stroking your [cockname of Player] penis with a firm hand[else]takes turn sucking down on each of your shafts, stroking the ones that he is not busy covering in saliva[end if].";
		say "     You try to return their cocks favor, but quickly turn into a quivering mess thanks to their relentless assault. They 'help' you as they can, pressing their large cocks against your lips, and frotting them with each other and the inside of your mouth. You climax first, and hard, sending simultaneously a squirt of femjuice and a dose of cum, which are then promptly swallowed by the two brothers, who take pleasure in prolonging your orgasm as long as they can. With this out of the way, they focus on pumping their cocks in your mouth, making out and exchanging your sexual fluids as they do so. They cum not long after, painting your face white with their semen.";
	else if Player is male:
		say "     [if Cock Count of Player is 1]Mike gobbles down your [cock of Player] cock with loud noises of wet slurps, sometimes going for your balls while stroking your [cockname of Player] penis with a firm hand. Meanwhile, Zach rims your butt with gusto, circling your pink ring with small laps before plunging in and tickling your prostate[else]The siblings share your [Cock Count of Player] dicks, sucking down two of them with almost perfect synchronicity, before switching and renewing their assault, sometimes even focusing on a single cock before stroking firmly the remaining ones and playing with your balls. Zach's fingers are buried in your ass, constantly harassing your prostate[end if].";
		say "     You try to return their cocks favor, but quickly turn into a quivering mess thanks to their relentless assault. They 'help' you as they can, pressing their large cocks against your lips, and frotting them with each other and the inside of your mouth. You climax first, and hard, sending simultaneously a large dose of cum, which each brother tries to swallow the most of; they only manage to cover their face with the stuff, but in their endeavor, they take pleasure in prolonging your orgasm as long as they can. With this out of the way, they focus on pumping their cocks in your mouth, making out and exchanging your sexual fluids as they do so. They cum not long after, painting your face white with their semen.";
	else:
		say "[if Cunt Count of Player is 1]Mike and Zach share duties. Mike applies his mouth against your clit and give it a series of powerful sucks, and licks, while Zach explores your [cunt size desc of Player] pussy with his tongue, making sure to let no square inch untouched[else]The siblings share your [Cunt Count of Player] pussies, exploring them with their dexterous tongue. They playfully try to feel each other's tongue inside of your body, which sends you all kind of sensations through your body[end if].";
		say "     You try to return their cocks favor, but quickly turn into a quivering mess thanks to their relentless assault. They 'help' you as they can, pressing their large cocks against your lips, and frotting them with each other and the inside of your mouth. You climax first, and hard, sending simultaneously a large dose of cyprine, which each brother tries to swallow the most of; they only manage to cover their face with the stuff, but in their endeavor, they take pleasure in prolonging your orgasm as long as they can. With this out of the way, they focus on pumping their cocks in your mouth, making out and exchanging your sexual fluids as they do so. They cum not long after, painting your face white with their semen.";
	say "     The three of you take a short rest, during which you realize that your activities had covered the three of you with various fluids. 'Guess we need another clean-up,' Mike says winking. You sigh, and Zach too. 'Don't worry, we'll keep to ourselves this time. Or at least I will.' Mike held his word, and you eventually manage to clean the two gorillas, who then take your leave after thanking you for indulging them.";

to say GorillaWaterWilly:
	say "     You head towards Willy, and greet the orca. 'Oh, hey! How's it going?' he welcomes you. He plunges his large hands into your bucket, grabbing four bottles. He crushes them together over his head, letting the water fall into his large mouth. 'Haaaah, that feels good. I needed that.' You quickly fetch the hose and cover the cetacean in more water. Willy groans of satisfaction at the pleasure. You grab your towel and the soap, and start wiping sweat and other fluids off his sleek skin. There is a rather impressive amount of it around his cock. 'Hey, careful with that,' Willy says. 'Take it slow. I'm supposed to get some rest, right? You nod, as you continue your washing job, the orca so massive that you feel like you are washing a car.";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is 1:
		say "     'Like, it does not have to be sex [italic type]all[roman type] the time, you know?' Willy suddenly says, as you are running the towel on his massive ballsack. 'Even on the beach, people are [']Oh, hey, nice to meet you! Let's fuck!['] Like, I know it's the mutant apocalypse and everything. But manners, [if Player is defaultnamed]man[else][name of Player][end if]. Manners! [bold type]What's your opinion about this?[roman type]'[line break]";
		say "     ([link]Y[as]y[end link]) - Things did get a little out of hand.";
		say "     ([link]N[as]n[end link]) - Consequence-free sex is awesome.";
		if Player consents:
			LineBreak;
			say "     'Yeah. I mean, I don't mind, from time to time, ramming a girl or a dude, or a dude who's a girl, or, well, you know what I mean. But you can't fuck all the time,' Willy replies. 'Plus, it can't be good. Like, do you like drinking sodas. If you drink one can every ten minutes, you'd die of sugar overdose before the day ends!' [if intelligence of Player >= 17]You object that the nanites would break down the sugars so, technically, you could not die that way even if you wanted it. 'Look at you, mister smartass! Less smugging, more wiping!' the orca says with a chuckle[else]You can't help but agree with Willy. 'So, the moral is, drink water, kids. A lot of water.'[end if].";
		else:
			LineBreak;
			say "     'Ah, you're one of those types,' Willy replies. 'Well, it's all fun and games, as long as you're the one on top! Like, there's that group of otters, roaming the beach. They tried to pull a fast one on me, so what I did is feign to surrender. Then, I grabbed their leader by the neck as soon as he got in reach and... Well, let's just say that they won't bother any killer whale again. Still... Otters really [italic type]flexible[roman type], when I remember it.'";
	if randomnumber is 2:
		say "     'Man, these trainings are crazy,' Willy suddenly says, as you dutifully scrub his rear. 'Every time an action is going on, it must end with two players or more screwing each other. It's fun times, but I can't help but think that we're not really playing football. Not after the first 10 minutes anyway. [bold type]I'm not the only one thinking that, am I?[roman type]'[line break]";
		say "     ([link]Y[as]y[end link]) - This team is more of a sexual outlet than anything.";
		say "     ([link]N[as]n[end link]) - Think of it like fantasy football.";
		if Player consents:
			LineBreak;
			say "     'Ah! See! I'm not the only one!' Willy replies. 'I mean, people come and go from training whenever they like, and every time it devolves into an orgy, on the field or in the lockers.' You ask the orca if he has second thoughts coming here. 'Here? Oh, no. It's not just the football team, you know? I've been to the swimming pool earlier, and I could swear that there was more cum than water in the pool.' The orca sighed. 'At least, people spend their energy on a sport. They're not scourging the streets, jumping on everyone they find.'";
		else:
			LineBreak;
			say "     'Fantasy football? Like, the one with the orcs, and the lizard-men, and all that?' Willy seems to ponder your idea for a moment. 'That's actually a clever way to see things. What should we call it then? I think [']Cum Bowl['] would fit,' he says, with all the seriousness in the world. 'We're going to have a hard time exporting these rules outside the city, if we ever see the outside. I mean, poor normie boys would be unable to sit for a month after a match. Or a training session, even.'";
	if randomnumber is 3:
		say "     'Do you think a whale mutant eating whale meat is cannibalism?' Your hands stop on the orca's shaft, as you hear his sudden question. 'It's all theoretical. After all, whale meat is banned here, but just for the sake of argument. Like, there are lamb mutants, rabbit mutants, and so on. [bold type]What do you call a mutant eating meat of his own species?[roman type]'[line break]";
		say "     ([link]Y[as]y[end link]) - When you [italic type]do[roman type] think about it...";
		say "     ([link]N[as]n[end link]) - That's totally different!";
		if Player consents:
			LineBreak;
			say "     'I know, right? You behave like the human you were, you go to your supermarket (or its remnants), and you see first-choice beef in the meat section. Then, you look at yourself, at your hooved body, at the horns growing from your head, at your ginormous cock hanging down your legs. That would be so awkward.' You ponder if this nanite apocalypse would not be the occasion to have everyone try veganism. 'That would not be a bad idea,' Willy concedes. 'But what about cheese? Like, is it also awkward if a goat mutant eats goat cheese?' You are actually surprised that goat cheese is a thing. 'It is! I should go scavenge for some, if I have time. Ah, but don't tell any Satyr, right?'";
		else:
			LineBreak;
			say "     'I guess. I mean, despite our mutation, we're still human after all. Or an entirely new species. I'm completely lost with this shit. But I [italic type]do[roman type] have one reservation. Vore is just wrong.' You look at Willy, puzzled. 'Yeah. Would you believe it? I met another whale like me at the beach. He tells me how he found a strange case full of vials on the streets, and that thanks to them, he does not have any hunger problem anymore. Then, he proceeds to catch an otter who was passing by and then... Gulp! In one go!' Willy shudders. 'I mean, that's creepy. He's looking just like me too. Like, even [italic type]you[roman type] could be one of them, and I would not even know. You're not one of them, are you?' [if Playercanvore is true]You give Willy an embarrassed smile and shake your head quickly, as you were about to talk about your own situation[else]You vehemently shake your head[end if].";
	say "     Willy groans and stands on his two feet. He stretches his arms, letting the powerful muscles play under the slick skin. 'Well, that felt good. Time to head back.' Willy's half-hard cock swings under your nose. When you point that to the orca, he lets out a good-hearted laugh. 'Ha! Don't worry about that. I'll take care of it later. Thanks for the conversation, [if Player is defaultnamed]man[else][name of Player][end if]. It was really nice to be able to sit down and chit-chat with someone. We should do it again, next time you're on water-boy duty!'";

[Training scenes]
to say GorillaTraining:
	say "     'Okay, champ. [first time]I assigned you a locker. [only]Go Gear up and come back here,' Roman instructs you. You jog to the locker-room[one of], and after a couple of minutes of search while evading the various sex piles spread through the room, you manage to find your locker[or] and head towards your locker, evading the various sex piles spread through the room[stopping]. You put on your gear and hurry back to Roman with a dozen other players. 'Okay, team. I guess that the others are either coming back at another time, or busy in the locker-room. I will make several groups, as usual. Choose one and have fun.'";
	say "[bold type]Which group do you want to join?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Reception and interception.";
	say "     [link](2)[as]2[end link] - Join Noire for some tackle training.";
	say "     More options coming soon.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to train in receiving and intercepting passes, or [link]2[end link] to train with Noire.";
	if calcnumber is 1:
		LineBreak;
		say "[GorillaTraining1]";
	if calcnumber is 2:
		LineBreak;
		say "[GorillaTrainingNoire]";
	say "[GorillaTrainingEnd]";
	PlayerDrink 25;
	increase GorillasRep by 3;

to say GorillaTraining1:
	say "     You join the group that practices throws. One of your seniors take the lead, and grabs a ball. 'Okay, one of you goes to throw, another one heads over there for catching, and the others act as defenders,' the experienced footballer explains. 'We will rotate with each throw, so don't worry, everyone will have a turn, so to speak. Burt, Zach, you start.' You go take your own place, [one of]wondering why everyone has to practice throws, and why one at a time[or]smiling as you anticipate what will comes next[stopping].";
	say "     The senior player gives the signal. Burt throws the ball for Zach as he runs forward, while your group tries to intercept the ball from either. [one of]But you seem to be the only one interested by the ball[or]But your focus is obviously not the ball[stopping]. Their asses are spread open by hungry cocks, and their own package is manhandled by another player. [one of]After a short moment of confusion, you[or]You[stopping] eagerly join the fray. [bold type]Would you rather top, or bottom?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Top.";
	say "     ([link]N[as]n[end link]) - Bottom.";
	if Player consents:
		LineBreak;
		if Player is male:
			say "     As much as you'd like a piece of gorilla ass, the place is already taken. But Zach's mouth seems rather unproductive, and you decide to put it to work. You plant your legs on each side of his face, and push your [Cock Size Desc of Player] against his lips. Zach does not put much resistance as you bury your male member all the way into his mouth. [if Cock Length of Player > 6]Zach does his best, trying to take your member, but you can hear him gag and choke on your shaft several times, forcing you to give him some breathing room[else]Zach seems to appreciate your size, and you shudder as you feel his tongue roll against your glans[end if]. You cum hard several times, throwing ropes of cum down Zach's gullet.";
		else:
			say "     As much as you'd like a piece of gorilla ass, the place is already taken. But Zach's mouth seems rather unproductive, and you decide to put it to work. [if Player is female]You sit on his face, mashing your [Cunt Size Desc of Player] vagina against his mouth. You grind a few times in order to entice him, but do not have long to wait before you feel a tongue lap at your inner folds, and eventually slip inside with more coaxing. You cum hard several times, coating Zach's face with the product of your orgasmic squirts.";
	else:
		LineBreak;
		say "     Your eyes spot poor Zach's cock, standing up proudly, and unused. You straddle the gorilla, and line [if Cunt Count of Player is 1]your pussy[end if][if Cunt Count of Player > 1]one of your pussies[end if][if Player is not female]your butthole[end if] with his maleness. You slowly sit down on the rod of meat, and you can feel Zach quiver under your body. You take your time to milk him for all he's worth, and are rewarded by multiple spurts of thick white man-juice. You cum several times yourself, squeezing your inner muscles around the gorilla dick[if Player is male], and unloading your own cum on Zach's panting chest.";
	WaitLineBreak;
	say "     Once everyone is done, and after a short pause during which you are allowed to go fetch some water and wash your [body of Player] body, the senior teammate calls you back. 'Okay, next series. Pat and you there.' You realize that he was addressing you, and you feel the look of everyone turn upon you. Pat takes the ball, while you take your positions. When you hear the whistle, you start running as fast as you can, then turn around to focus on the ball. Here it came; alongside a pack of four of your teammates. You barely have the time to grab the ball that you are grabbed and tackled down. You roll on the grass with the others for a few feet, but they are quick to pin your body and turn the tables around. Especially Zach, that you spot among those who intercepted you.";
	say "     The next minutes were filled with confusion, and sex. [if Cunt Count of Player is 1]A rock-hard cock does not lose anytime slipping into your pussy, while another invades your ass, and both start pumping into you. [end if][if Cunt Count of Player > 1]Two rock-hard cocks target two of your pussies and slide in, making you gasp as your brain receives twice the sensations of sudden penetration. [end if]After this initial assault, your head is tilted upward, in order to insert a third, pre-dribbling cock into your throat. [if Player is male]The fourth player wants to satisfy another kind of lust, and you feel a tight and warm ass slide onto your cock[else]The fourth player resolves himself to lead your hand to his cock and have you jerk him off[end if].";
	WaitLineBreak;
	say "     The gangbang lasts quite some time, during which a corner of your brain counts at least two orgasms traversing your body, after which you lost count and let yourself be fucked by your four lustful teammates. They eventually cum, each at a time, and covering you with cum. Everyone smiles, and the other players help you stand up and accompany you to the water-boy.[first time] Exhausted and panting, you start to realize why these apes seem to always be in training.[only]";

to say GorillaTrainingNoire:
	say "     You greet Noire as you walk with the rest of your six-man group to the training. 'Oh, hello,' she replies. 'I'm glad you could join us. I was about to show these apes the traction power of a horse.' Someone neighs behind you, and the rest of the team giggles, as Noire turns around. 'Not taking me seriously, are you?' She scoffs. The equinoid grabs the ball, and turns towards the rest of you. 'Here's what I propose you as a training: you will try to block me and make me lose the ball. If I win, you get to service me. If you win, I'll give everyone some service. Deal?' The rest of the group agrees heartily. [bold type]You may tilt the balance in the player's favor if you participate. What do you do?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - You're in.";
	say "     ([link]N[as]n[end link]) - You're better off watching.";
	if Player consents:
		LineBreak;
		say "     Noire scoffs. 'One more or less makes no difference to me'. Now, get into position, the rest of you.' The four other gorillas get ready, and Noire suddenly sprints forward. The first gorilla tries to stop her, only to get deflected away, as if he was hit by a truck. The second player wraps his arms around Norie's waist, but it barely slows down the equine's momentum, who jerks the ape away. The remaining players go at her together, and for a moment it looks like Noire is about to flinch. That's the moment you were waiting for. You lunge at her, aiming at her legs. The three of you eventually manage to unbalance, then topple Noire, with some effort.";
		say "     'Well done. The five of you took down the one of me,' the Equinoid says, dripping with sarcasm.";
		say "     'Hey, no walking off the bet,' one of the teammates replies.";
		say "     'I do not intend to. Get in a circle, all of you!' You contain a chuckle as you place yourself with the others in from the equine. Noire wastes no time and gulps down the cock of the ape in front of her. 'Oh... Oook!' the gorilla said as he reacted to Noire's maw closing on his length. She took it flaccid, and it was already hard when she popped it out of her mouth. In the meantime, her hands went to the others. When she reaches you, Noire [if Player is male]grabs your dick firmly and gives it several strokes, making it grow to full length in no time[else]plunges her fingers into your pussy. She moves them inside while her thumb rubs your clitoris and, by the time she passes to your neighbor, you are already wet[end if].";
		say "     A few minutes later, the gorilla that Noire sucked groaned loudly came, the horse taking every single drop into her mouth. Once he is milked for all he's worth, the equine switched to another teammate, letting the spent ape walk away, his cock slick and clean. You wait impatiently your turn as Noire sucks the second gorilla, then a third one. At least, the smaller the circle, the more time her hand is keeping you busy.";
		WaitLineBreak;
		if Player is male:
			say "     When your turn has come, and Noire's lips wrap around your dick, you understand how she made the other guys cum so fast. Thanks to the elongated shape of her muzzle, she could take your entire [cock size desc of Player] effortlessly, trapping it in the tight confines of her [if Cock Length of Player < 12]mouth[else]throat[end if]. Every time she swallowed your [cock of Player] length to the hilt, she sucked on the sensitive flesh so strongly that you almost double over. After a dozen minutes, you signal that you are almost there. At this point, Noire lets one of her hands go, and stick one of her thick fingers into your taint. The addition of the pressure on your prostate makes you see star as you too unload your [Cum Load Size of Player] load in her. [if Ball Size of Player < 20]She swallows every single drop[else]She tries to swallow as much as she can, but you produce so much spunk that she has to let your cock out of her mouth, splashing semen all over her chest[end if].";
		else:
			say "     When your turn has come, and Noire pushes her mouth against your mound, you understand how she made the other guys cum so fast. Her flat, thick tongue lapped at your [cunt size desc of Player] pussy, spreading its folds apart with strong up-and-down moves which, each time, gave your pleasure button a vigorous flicker. Gasping, you hold yourself to Noire's mane as the hermaphrodite mare licks your cunt as if it was a plate of her favorite dish. Your woman juices run down your trembling thighs during the long minutes that the cunnilingus lasted. After you signal that you are almost there, Noire grabs your hips for leverage, and push her large tongue as deep inside of you as she could. Your muscles squeeze down on the flexible appendage, as you cum hard. You are reduced to a moaning, trembling body while Noire audibly gulps down every squirt of your pussy.";
		say "     Once everyone is done, Noire gets back on her feet, licking her chops. 'What are you all doing, sitting tired on the ground. You lack stamina, boys!' she says to you and the rest of the group. 'I will make sure to make you all work on that during next training.' Everyone else reacted with a collective groan, as she trots away like sucking[if Player is not male] and eating out[end if] five people was nothing to her.";
	else:
		LineBreak;
		say "     Noire scoffs. 'Wise of you. Now, get into position, the rest of you.' The four other gorillas get ready, and Noire suddenly sprints forward. The first gorilla tries to stop her, only to get deflected away, as if he was hit by a truck. The second player wraps his arms around Norie's waist, but it barely slows down the equine's momentum, who jerks the ape away. The remaining players go at her together, and for a moment it looks like Noire is about to flinch. But she breathes loudly through her nostrils and powers through, easily passing the goal line.";
		say "     'Pathetic. Now, pay your bet!' Noire says.";
		say "     'W-Wait a minute, let's get somewh-hmmmpf!' Noire sacked the gorilla who just spoke, and the two of them crash on the grass. The horse-herm straddles the ape's face, and starts grinding her cunt against his mouth. 'Now!'";
		say "     'Mmmmf!' the gorilla groans as he tries to prevent himself to be smothered by the black-furred posterior.";
		say "     'You!' Noire orders the nearest ape. 'Suck my cock.'";
		say "     'Now wait a min-'";
		say "     'Suck my cock or I'll take your ass when I'm done with him.'";
		say "     'Eek!' the gorilla says, as he gets on his knees, and begin taking care of the harm's equine cock. 'Ish thickk,' he complains as he tries to take the flared head in his mouth.";
		say "     'Don't care', Noire replies, grabbing his head and pushing him forward.";
		say "     'Ggggk!'";
		say "     Then, Noire glared at the other two trainees. 'You two. Breasts. Suck. Now.' Your teammates obey reluctantly, and kneel on each side of her, and start working on her breasts. You look at the scene, at Noire working her four gorillas like a conductor managing his orchestra. 'Yeah, like that. Work on the clit. (Mmmf!) And you, take that medial ring already! (Gggk! Ggmmf!) Aaaah... You two don't be shy, pull on these nipples (suck, nnn, shlllk). And don't you dare touch yourself. You're servicing [italic type]me[roman type]. [if Player is defaultnamed]You there[else][name of Player][end if], hit any of them in the groin if they disobey (collective groan).";
		WaitLineBreak;
		say "     After spending the entire time devoted to the training like that, Noire lets out a surprisingly horse-like neigh as she reaches climax. She coats the gorilla under her with her fem-cum squirts, and pumps her male load inside the second ape's belly, while the other two fall back on their asses, their mouths dripping with warm milk. Noire takes a moment to recover from her orgasm, then get back on her hooves. 'That was good, although I wonder if that was all you're good for. I expect all of you to make more efforts, next time!' she says the rest of the group, as she trots away. Your teammates let out another collective groan, most of them rubbing their filled bellies. Training is over for today, it seems.";


to say GorillaTrainingEnd:
	say "     You hear the sound of Roman's whistle, followed by his strong voice. 'Okay, boys! That's enough training for now. Time to let another group work. Go get some water, or take a shower, and get some rest.' You can hear your comrades around you groan like teenagers asked to stop playing, and you surprise yourself by letting out a small sigh as well.";
	say "     You grab a water bottle from the nearest water-boy, then head straight for the showers. After a playful shower with the other members of the team, you come back on the field and take your leave of Roman. 'Yeah, nice work back there, champ. You're more than welcome to come back tomorrow'";
	if carried of football pads is 0:
		say "     You see some of the other players leaving with their football pads still on them. 'I know. Since the campus is not quite safe, and the city even less, I allow the boys to take their gear with them if they want,' Roman replies, when asked. 'Of course, it applies for you, too. Keep these pads, you never know what kind of sick bastard you could meet out there.' You thank Roman for the advice, and grab back your football pads from the locker.";
		say "[bold type]You gain football pads![roman type][line break]";
		increase carried of football pads by 1;


[Football match.]
[future plans: quest because of fixed matches?]
[Long-term project: having several variations]
to say FootballMatch:
	say "     'Right on time. We are going to play against the Fourmont Wolves in half-an-hour, and I was about to fill the last positions in our line-up. Go get your gear, champ[first time]. I assigned you a personal locker, by the way[only].' You hurry to the locker-room, and put on your helmet and shoulder-pads. You meet the other teammates there and, after some greeting and some motivation ritual, you go back on the field.";
	say "     You find Roman chatting with the captain of the Wolves. 'Now, where were we?' you can hear him ponder. [first time]Curious, you interrogate one of the other players about the issue. 'Oh, that's right. It's your first match,' your teammate ponders. 'You see, since there is a lot of [italic type]action[roman type] going on, we barely have the time to play a couple of phases, before we stop for the day. And to be honest, these two are the only ones who keep the tabs. Even the ref stopped caring; he's only here to prevent the players from hurting each other, and keep us focused on the match. When he's not busy jacking and fingering himself, of course.' [only]'If I'm correct, we're pushing, and we stopped right on your thirty yards line,' the canine replies as he scratches his head, trying to remember, 'and we're still stuck at 7-7. In which quarter are we, by the way?'";
	say "     'Does it really matter?' Roman replies, and both of them smile mischievously at each other.";
	say "     Everybody takes its position on the field[if HP of Roman >= 11], while the cheerleaders make an elaborate dance to psyche you up. 'Tenvale! Ten-vale! 10 V! Go go go!' [else]. [end if]Roman positions you as a cornerback. Safe from the middle-field melee, your job is to intercept receivers as they try to catch the pass from their quarterbacks.";
	WaitLineBreak;
	say "[FootballMatchDefense]";
	say "[FootballMatchOffense]";
	WaitLineBreak;
	say "[FootballMatchEnd]";

to say FootballMatchDefense:
	say "     After a short moment of tension, the Fourmont Wolves play the ball. While most players throw themselves against each other, the Wolves['] quarterback readies a long pass towards the receiver facing you.";
	let bonus be (( the Perception of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Perception Check):[line break]";
	increase diceroll by bonus;
	[preparing stamina roll]
	let bonus be (( the Stamina of the player minus 10 ) divided by 2);
	if diceroll > 16:
		say "     The receiver starts his sprint, but you have kept your eyes on him, and you put yourself in an interception course.";
		increase bonus by 2;
	else:
		say "     Distracted by the scrub-turning-orgy in the corner of your vision, you notice too late the Wolves['] receiver zooming past you, forcing you to run after him if you want to have any chance at keeping the ball.";
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]20[roman type] (Stamina Check):[line break]";
	if diceroll > 20:
		say "     Thanks to your stamina, you manage to catch up to the canine, and you slam into him as he turns around to catch the pass. You fall with him on the ground, while the ball bounds away, failing the down for the Fourmont Wolves[if HP of Roman >= 11], under the cheers of the cheerleaders[end if].";
		LineBreak;
		say "     Once the both of you stop, you find yourself lying over the lupine receiver, and the both of you staring at the other's crotch. Grinning, you pin the wolf's legs with your weight, and slip your tongue into his penial sheath. You can feel him shudder under you, which motivates you to keep licking at the male's groin until his pointy, canine dick slides out from its hiding place. You do not waste any time lathering it with a tongue bath as well, and hungrily put the blood-engorged shaft in your mouth[if HP of Roman >= 11]. 'Lick it! Suck it! Make it cum! Lots of jizz!', the cheerleaders chant, as they try to psyche you up[end if].";
		say "     You suck on your prize like a lollypop, bobbing up and down as far you can on the turgescent member, and you are rewarded by the grunts and dog-like whines of your opponent. He suddenly decides to return the favor, and [if Player is female]pushes his muzzle against your pussy, licking it with its large canine tongue[else]closes his muzzle around your [cock size desc of Player] shaft, rolling his fat canine tongue around your [cock of Player] shaft[end if].";
		WaitLineBreak;
		say "     Not to be outdone, you give the wolf's knot a hearty stroking, which makes him jolt in surprise and makes him cum quickly. The wolf pumps his hips in the air several times, as he launches rope after rope of cum into your mouth. Once he is done, you take your time [if Player is female]grinding your pussy against his submissive face[else]pumping your cock in and out of his submissive mouth[end if], before reaching your own climax";
		say "     After taking a minute to rest, you stand back up, and help your opponent do the same. Fair-play, he congratulates you, while licking your sexual fluids from his chops. Turning around, you notice that everyone, from the other players to the crowd, have been watching the two of you; some had already begun to masturbate from your little show. Blushing, you take your position, as the referee announces that your team goes on offense, thanks to your interception.";
		LibidoLoss 20;
		PlayerEat 10;
		PlayerDrink 5;
	else:
		say "     You run the best you can, but the wolf is already far away, and has the time to receive the ball safely. Fortunately, your side's safety blindsides the Fourmont player, preventing this from turning into a touchdown. You watch as your gorilla teammate pins the wolf under him for some victory-sex while you chastise yourself for your lack of performance. You go fetch some water, while the Tenvale safety fucks the Fourmont receiver doggy style, under the applause of the crowd, and replaces yourself on your line for the next down.";
		say "     By luck, the next downs are either intercepted, or fumbled by the Wolves, and your team eventually switches to the offense.";
		LibidoBoost 20;

to say FootballMatchOffense:
	say "     You are take your position as a receiver,[if HP of Roman >= 11] as the cheerleaders entice the crowd to cheer for your team,[end if] and wait for your teammates to start the game. You hear Roman shout his orders as the quarterback. It seems he's calling for you to make a sprint down your lane, and grab as much terrain as possible. As soon as the down begins, you start running as fast as you can, while Roman gets ready to throw the ball towards you. The Fourmont Wolves seem to have understood what you were doing, and, like a mirror of the previous phase, the cornerback and the safety are coming for you. You notice the cornerback getting uncomfortably close, in the corner of your vision.";
	let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Dexterity Check):[line break]";
	increase diceroll by bonus;
	[preparing strength roll]
	let bonus be (( the Strength of the player minus 10 ) divided by 2);
	if diceroll > 16:
		say "     You suddenly jump on the side, and feints the cornerback, as he tries to get his hands on you. He fails, and falls on the ground as he misses your tackle. You look up, and see the ball coming your way. You jump and catch it, and turn around to see the safety running towards you, straight in front of you. You brace yourself for the inescapable impact.";
		increase bonus by 2;
	else:
		say "     You try to strafe to the side, but you do not leap fast and far enough, and the Wolfman manages to grab your legs with his arms. His momentum is not enough to drag you down, but he will not let go. You manage to catch the ball barely, only to see the safety charging you. You prepare to endure his charge the best you can.";
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]20[roman type] (Strength Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 20:
		say "     The Fourmont safety and you bump against each other, shoulder pad against shoulder pad. You push forward, and eventually manage to overpower him and repel him on the side. The path is clear for a touchdown! But at the last moment, you feel a furry hand grab the grate of your helmet, stopping you in your tracks. The referees throw their flags and the game is promptly paused. You give the sore loser an angry glare, but the wolf simply shrugs it off. Nonetheless, the fact that you were able to gain this many yards, alongside the 10-yard penalty, puts you in high spirits.";
		MoraleBoost 20;
		SanBoost 20;
	else:
		say "     The impact makes you fall on the ground with the ball. The safety is almost instantly on you, and you feel his pointy canine dick push into your [if Player is female]pussy[else]ass[end if]. You open the mouth, but the cornerback, who was standing behind you, kneels down, tilts your head up, and buries his own maleness down your [face of Player] throat.";
		say "     The two wolves spitroast you, and they do not miss the chance to play with your nipples [if Player is male]and your cock [end if]while you are lying between them and unable to do anything about it. On each other's signal, they force their knots inside of you, and you moan loudly around the one blocking your mouth. The two lupines cum shortly afterwards, and their knots force you to take every single drop of their load inside your body.";
		WaitLineBreak;
		say "     Their lust satiated, they stand there while their knot half-deflates, and pull out. You yelp at the feeling of having the thick knots stretch you once more, and start protesting, as they did not even have the fairness to make you cum too.";
		say "     But the wolves are already jogging away from you on their furry legs. Grunting, you stand up too with the help of your teammates. 'Acting as jerks, as usual,' you can hear one of them lament.";
		LibidoBoost 50;
		PlayerEat 5;
		PlayerDrink 5;
	say "     After this first down, your team progress little by little, but eventually spends all of its attempts, only to get twenty yards away from the Wolves['] goal.";

to say FootballMatchEnd:
	say "     As you were about to place yourself for another defense phase, you hear the referee whistling, and announcing the end of the match for today. You look at the clock, and realize that you have been playing for almost one hour and a half. Considering that each play ended in group sex, and the necessary pauses between each, it actually seems like a miracle that you were able to play this much during that period. Both teams walk off the field, under the applause of the spectators (at least those who were not engaged in any sexual activity).";
	say "     'Good job, boys,' Roman congratulates the team. 'We'll get them next time, for sure. Take some rest, have some fun with the fans, and see you for the next match.'";
	if carried of football pads is 0:
		say "     You see some of the other players leaving with their football pads still on them. 'I know. Since the campus is not quite safe, and the city even less, I allow the boys to take their gear with them if they want,' Roman replies, when asked. 'Of course, it applies for you, too. Keep these pads, you never know what kind of sick bastard you could meet out there.'";
		say "[bold type]You gain football pads![roman type][line break]";
		increase carried of football pads by 1;


Tenvale Gorillas Football Team ends here.
