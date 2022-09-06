Version 1 of Nightmare Stablemaster by Gherod begins here.

"Adds the Nightmare Stablemaster himself to the game in the form of a NPC."

[Version 1 - File Created]

[The Nightmare Stablemaster lore has also been expanded. To explain his appearance, the Nightmare is now considered an infection of demonic origin. Therefore, the Stablemaster holds supernatural abilities that are reminiscent of devils.]

Section 1 - Pre-Event

Table of GameEventIDs (continued)
Object	Name
Nightmarish Horse Business	"Nightmarish Horse Business"

Nightmarish Horse Business is a situation.
ResolveFunction of Nightmarish Horse Business is "[ResolveEvent Nightmarish Horse Business]".
Sarea of Nightmarish Horse Business is "Stable".

to say NightmareStablemasterInfection:
	if "Male Preferred" is listed in feats of Player: [only male infections]
		if player is submissive:
			infect "Stallionboi";
			infect "Stallionboi";
		else:
			infect "Horseman";
			infect "Horseman";
	else:
		infect "Mareslut";
		infect "Mareslut";

to say ResolveEvent Nightmarish Horse Business:
	if Resolution of Nightmarish Horse Business is 0: [Normal state, still unknown to the Stablemaster]
		say "     As you make your way through The Stables, you spend quite some time trying to look out for anything of interest in this place. Unfortunately, your efforts are in vain, this time, as nothing out of the extraordinary jumps to the eye. However, during this, you pick up an odd feeling, getting under the impression that you are being watched by someone around the corner. Struck by this sense of vulnerability, you seek quick refuge within the hidden areas close to the walls and look around as you hear some loud click-clacking heading your way. Finally, you manage to get a visual on the culprits, and they seem to be a group of horsemen who definitely look like they mean business. It does not take you long to realize these seem to be part of the staff.";
		say "     It would be wise to keep a distance from them, as you are not exactly allowed to be here, and while most inhabitants of this place would not care, you feel that these definitely would, judging by their inquisitive expressions. However, they seem to be on high alert and looking around for any suspicious movement. Right now, you are hidden, but they will eventually find you if you stay here. Moving quietly and escaping their eyes could be done, provided you are proficient enough with being stealthy, but if not, this could turn into a tricky situation in which you might have to face a physical confrontation. Perhaps it would be wise not to fight a group of strong stallions, especially when you have some idea of what would happen if you lost.";
		WaitLineBreak;
		say "     [bold type]Do you wish to attempt to outsmart the horsemen? There are at least three of them looking for a certain intruder...[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes, stealth up and escape.";
		say "     ([link]N[as]n[end link]) - No, you could perhaps convince them everything is fine.";
		if player consents:
			Linebreak;
			say "     After measuring up your options, you feel like you could have a chance at this whole [']escape unnoticed['] thing. Nevertheless, one can never be too careful, so you wait for the right time to maximize your likelihood of success. So, when the horsemen seem distracted with something else, their eyes gone from the trajectory that would meet your position, you swiftly take your leave and move as quickly, yet as silently, as you possibly can.";
			let bonus be (( dexterity of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Dexterity Check):[line break]";
			if diceroll + bonus >= 13:
				say "     You expertly manage to remain out of sight as you continue to gain more and more distance from the suspecting group of horsemen, and eventually, you lose them. After that, all you need is to remain hidden in a good spot for a while until they are definitely gone. You wait several minutes to confirm your safety and then decide to return to your affairs, hopefully free to explore The Stables once more.";
			else: [failure]
				say "     You manage to remain out of sight as you make slow progress towards getting them out of your tail, however, as you were so preoccupied with their glances, you really did not get to pay much attention to the floor and where you are stepping on. Unfortunately, you incur in an accident as you step on [one of]a rubber sex toy[or]a rock[or]something very slippery[or]what was probably some food leftover[or]a soap(?!)[at random] and fall prone! The worst part is that you grunted in surprise, a noise that the horsemen have definitely heard. Very few seconds pass as you hear the repeated sound of impact of their hooves against the floor drawing closer and closer, and you are only able to stand on your feet before they manage to surround you.";
				say "     'Someone's been sniffing around without permission, eh? Trying to make us look like fools, aren't you now...' says one of the horsemen, the tallest of the group. Well, you argue that you were allowed to enter and that responsibility should not fall on you, but they turn a deaf ear to everything you say. 'Who cares about that? You don't bear the mark of the Stablemaster, which means you're an intruder. Now, you've got a couple of options here. Either you voluntarily come along with us and meet the boss, or we'll have to drag you after beating you up. Make your choice carefully.' They crack their knuckles as all three of them circle around you, their muscular bodies and equine features being the only things you can see at this point.";
				WaitLineBreak;
				NightmarishHorseBusinessQuestion1;
		else:
			Linebreak;
			say "     After measuring up your options, you realize that maybe it would not be the smartest thing to further antagonize the powerful people of these place, thus you decide that you shall walk up to them yourself without any tricks in mind, at least for the time being. In fact, you intend to persuade them to leave you be, and so, you approach the horsemen, who immediately lock their eyes on you as soon as they catch a glimpse of your figure. This prompts the group to almost instantaneously move to surround you, their guard up as they draw closer, ensuring your ways of escape are now cut out. Judging by how quickly they took their actions, you begin to wonder if they actually just know that you are not supposed to be here, and your doubts are soon cleared.";
			say "     'Someone's been sniffing around without permission, eh? Trying to make us look like fools, aren't you now...' says one of the horsemen, the tallest of the group. Well, you argue that you were allowed to enter and that responsibility should not fall on you, but they turn a deaf ear to everything you say. 'Who cares about that? You don't bear the mark of the Stablemaster, which means you're an intruder. Now, you've got a couple of options here. Either you voluntarily come along with us and meet the boss, or we'll have to drag you after beating you up. Make your choice carefully.' They crack their knuckles as all three of them circle around you, their muscular bodies and equine features being the only things you can see at this point.";
			NightmarishHorseBusinessQuestion1;
	else if Resolution of Nightmarish Horse Business is 99: [alt event, for when Stablemaster is refused]
		NightmarishHorseBusinessAlt;

to NightmarishHorseBusinessQuestion1:
	say "     [bold type]Should you comply and go with the horsemen to meet this Stablemaster? Or should you try and fight the three of them?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Go with them peacefully.";
	say "     ([link]N[as]n[end link]) - To hell with that! Show them nobody gets to boss you around!";
	if player consents:
		Linebreak;
		say "     There is no need to get violent and, after all, you find yourself outnumbered. Perhaps it would be wise to follow these horsemen instead of fighting them, even if there is a chance that you fate would be rather unpleasant, but maybe it does not have to be so. You do not really know this stablemaster in person, so if anything, this is a chance for you to get to know who runs this place. Whatever dangers occur, there is always a way out... Possibly. Dropping your guard and raising your hands up, you surrender to the equine men and let them know that you will come voluntarily. 'Hah, look at this one! You like doing what you're told, [boygirl]? Or are you just scared of what we could do to you?'";
		say "     It is always the same horseman speaking, and he takes a step towards you with the others, getting uncomfortably close to you. They come near to the point of touch, the warmth of their strong bodies enveloping you from every direction. You try your best to stand your ground, but you quickly feel the control slipping away from you, if you still had the idea you had any to begin with. 'If it's the first, then you might just be in luck! The Stablemaster loves obedient good [boygirl]s like you...' The grin on his muzzle is almost unsettling, and suddenly, they all move in to grab at your stuff! 'Now, we can't have you carrying those with you, so we gotta strip you down before we go on, alright?' he explains as the remaining horsemen ensure you are left as naked as you can be, keeping all your gear on them.";
		WaitLineBreak;
		NightmarishHorseBusinessStablemaster;
	else:
		Linebreak;
		say "     You shake your head and tell them you will not go anywhere with them, while bracing yourself for the inevitable fight ahead. 'You'll regret saying that, slut.' These are the last words you hear before the group charges at you. While you manage to defend against the first strikes, you are yet long from finishing this fight...";
		WaitLineBreak;
		NightmarishHorseBusinessFight;

to NightmarishHorseBusinessFight:
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
		now inasituation is true;
		challenge "Horseman";
		increase GroupFightCounter by 1;
	now inasituation is false; [reset]
	if fightoutcome < 20: [won]
		say "     Your skill in combat proves fruitful as you somehow manage to subdue the three horsemen, a sense of power surging through you as they remain collapsed on the floor and at your feet. 'Fuck! [SubjectProCap]'s tougher than [SubjectPro] looks...! Ow...' the same horseman exclaims, barely able to move his limbs. With this outcome, and while you could further taunt them for your enjoyment, perhaps it would be wiser to get out of here while you can. Who knows if they are the only ones after you...";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Despite your efforts at defending yourself, your skills are simply no match for the group of horsemen who quickly move to surround and subdue you. Inevitably, you are too wounded to fight back, and you simply surrender to them, raising your hands in the air and making their job a lot easier. 'Now, now... You wouldn't want us to hurt you more than what's needed, would you? Take it easy! We're not asking much of you, are we?' It is always the same horseman doing the talking, and as he takes a step towards you with the others, they get uncomfortably close to you, nearly to the point of touch, the warmth of their strong bodies enveloping you from every direction.";
		say "     'Alright, so, now that we've made our message clear, I'd advise you to come with us willingly... As we won't be so gentle next time.' The grin on his muzzle is almost unsettling, and suddenly, they all move in to grab at your stuff! 'Now, we can't have you carrying those with you, so we gotta strip you down before we go on, alright?' he explains as the remaining horsemen ensure you are left as naked as you can be, keeping all your gear on them.";
		WaitLineBreak;
		NightmarishHorseBusinessStablemaster;
	else if fightoutcome is 30: [fled]
		say "     Flee? Where? How?! You have managed to dodge a few blows, but surrounded as you are, it is impossible to outrun the horsemen. You only gave them time to recover their ground!";
		NightmarishHorseBusinessFight;

to NightmarishHorseBusinessStablemaster:
	say "     'Ah, what's with that face? There's nothing for you to worry about! Sadly, we're not actually allowed to put our dicks in you before you meet the boss, as he'd prefer receiving you... whole. That just wouldn't happen after we were done with you. I'm sure you know what a horse cock looks like...' Well, you do know, and if you did not, you have three prime examples at your reach. 'And about these, we'll leave them at the boss['] door, so take it easy. We ain't simple robbers, we've got some standards around here.' It seems that, at least, you will be able to recover your stuff once this is all over, but things do not look so bright for you. Nonetheless, it appears you have places to be, according to the horsemen, and so, the remaining two grab your arms to ensure you are properly restrained before you begin to walk.";
	say "     'Anyway, I'm sure whatever you do or say to the Stablemaster, you'll be enough of an entertainment for him. For your own sake, don't try anything funny in his presence.' Noting that recommendation in your mind, your only choice is to accompany, or allow yourself to be taken without offering resistance by, these equine individuals to the place where you must be. This path leads you to the Staff-restricted area, which seems to be where this so called Stablemaster resides, or something like that. Not this room, however, but another room somewhere you are about to be led into. 'By the way... Nice ass,' the tall horseman says, giving your butt a hard squeeze before he steps ahead of you all.";
	WaitLineBreak;
	say "     Now at the door to your final destination you stand, with two horsemen tightly holding you, as the tallest of the three knocks on it before taking hold of the handle and pushing it open. 'Hey boss, just a quick delivery!' he says, and as he pushes the door open completely, the equine men simply throw you inside. All that force makes you fall on your knees and roll on this strange officer's floor, while you hear laughter bursting from behind you. 'That's it for now! I'll let you know if we catch anybody else, boss!' The horseman then leaves, closing the door as he moves away. Once you are able to take a glance of your surroundings, you realize that [']strange office['] seems insufficient to describe what this room really looks like.";
	say "     This is... a room that, at first, seemed to be a suite for VIPs and dignitaries, and is still quite well furnished! But oddly, it seems to have been repurposed into something else, as several large mattresses and piles of cushions are scattered around the area, as well as a number of rather nice paintings and hangings adorning the walls. There is also a thick plush carpeting covering the floor, a detail which definitely makes things more comfortable for someone with hooved feet, but also served to dampen your fall. Although, already looking at you from above, is an especially tall and powerful-looking equine man. This is not your typical horseman by a mile, as this one seems to be dark colored, with a mane that moves and looks like flames, and bright fiery eyes.";
	WaitLineBreak;
	say "     He walks up to you while you are still on the floor, only having time to look up at the powerful horseman's burning gaze staring back at you. 'What are you? An attempt at competition... Or someone wanting to join my harem of mares?' To your shock, the second you lay your eyes on him, the dark equine man is fully naked and sporting a long erection, his dark red horse cock pointing forward firmly and throbbing. 'As you might've guessed, I own this place. And I own you now, too. Now, get up and let me get a good look at you.' You have barely been, literally, thrown into this and, no sooner than that, you are being given orders by a complete stranger horseman who thinks he owns you! Though, for now, you do get up, as hard as it may be with your slightly bruised up body.";
	say "     As you trace his movements with your eyes attentively, on the fence of whatever he might have planned for you, he simply draws in closer. Something about him unsettles you, as if this horseman had some powerful aura about him that made you think twice before even considering how to act. It is almost fearful and intimidating...";
	if player is not male and player is not female:
		say "     'Oh, I see... A white canvas, almost. No sign of any sexual organ in your body... Only this,' he says as, suddenly, you feel his hand squeezing your buttocks and a finger slipping into the space between them, to rub at your anus. You immediately gasp at his touch, and even more as he pushes a finger inside, wiggling it against your sensitive inner flesh. 'You'd have absolutely no use other than being a fun sex toy, I'm afraid. This entry tends to be way tighter, but I'm sure that after your third horsecock or so it'll get stretched enough. If you're an especially good slut, I might make you exclusive. Or, we could just turn you into a proper mare, as that's the only role you could take besides fuck doll.'";
	else:
		if player is male:
			WaitLineBreak;
			say "     'Hm... Interesting.' These are the words you hear before you feel his hand around your cock with a surprisingly gentle tug, though he seems to be just examining your equipment. 'My mares seldom keep one of these on them. Usually there's no need, they wouldn't make use of it either way. But seeing as you have one... Hm, it's something to consider.' You then see him stroking you, and not stopping until you build a solid erection. It feels embarrassing, but oddly pleasant, as his fingers run over your shaft and around the tip of your [cock of player] penis.";
			if cock length of player < 8:
				say "     'It's quite pathetic when compared to that of a horseman's, very... Human-sized. I'd say even useless if kept at this size. Really, nobody here would even feel that enter them, and fucking you would just feel like fucking a mare. Nothing really to be achieved there, so might as well make you into a proper one.'";
			else if cock length of player < 21:
				say "     'There's quite a potential in this one, too, with this size... Could be an useful auxiliary breeding tool, if you're lucky. I'd probably keep it, to remind you and others of who's in charge here. I might love my mares, but I don't mind railing a stud just to assert dominance.'";
			else:
				say "     'Now now, this one's quite impressive! Such a big one... I have to admit it might be even bigger than mine...! Well, I might even take you as my personal stallion slut. What delivers a better message than railing a stud with a dick so huge, yet kept unused for as long as I deem? It'd be even hot to see it swing around while I'm ballsdeep into you, hearing you beg for my load... Hm, I have plenty of ideas for you...'";
			if player is female:
				WaitLineBreak;
				say "     The dark horseman then gets really close to you, his hand sliding down your waist, past your sac, and towards the space between your legs, only to find itself poking at your feminine bits. You cannot deny that his oddly gentle touch arouses you. 'What's this? You've got both?! Mmh, now that's a nice surprise...' As he speaks, he wiggles his finger slightly all over your moistened lips, a tease that strikes you as nearly unbearable, and one that ends way too soon. 'Such a responsive one too. Having both sexes working at their fullest might open up several possible paths for you... Filling both roles of a stud and a mare... Hm, we'll have plenty of time to take care of that after we're done with introductions.'";
		else if player is female:
			WaitLineBreak;
			say "     The dark horseman then gets really close to you, his hand sliding down your waist and towards the space between your legs, only to find itself poking at your feminine bits. You cannot deny that his oddly gentle touch arouses you. 'That's a good one. Pretty responsive too... Contrary to what rumors may say about me, I take pleasure in seeing my mares enjoying my administrations. Things only get rough if they don't do what they're told...' As he speaks, he wiggles his finger slightly all over your moistened lips, a tease that strikes you as nearly unbearable, and one that ends way too soon. 'We'll have plenty of time to take care of that after we're done with introductions.'";
	WaitLineBreak;
	say "     Once he is done inspecting you, he abruptly drops any touching gesture, crosses his arms and takes a step back. 'But despite all that you can give me, I'll have to test your resolve. A personality test, if you will. You'll have no use for me if you can't follow simple instructions.' The only thing you see is his cock pulsating in front of you, and even if you tried to look away, your eyes would inevitably stare back at it again. It is oddly alluring with that dim red glow, almost, which reminds you of a heaten up branding iron, visually speaking. 'It's true I could just make you do whatever I wanted, but honestly, I've got way too much shit in my hands to be babysitting rebellious sluts, so here's the deal...'";
	say "     'I want you to suck my cock,' he orders, pointing directly at it, 'And you can take as long as you wish. Your job is only finished when I'm cumming down your throat. Whatever changes you suffer will help me decide what to make of you,' the horseman makes a pause, as if trying to observing your reaction for a while. 'Were you to refuse this order, I'd kick you immediately and give my men orders to do whatever they want with you whenever they catch you sneaking around. I'm pretty sure I can't stop you from coming back, so... I'd rather give them a potential new toy to play with, since you'd be useless to me.' He then lets you process his words, awaiting an answer. 'So, what's it gonna be? Looking forward to be on my good side? It's a one-time chance... Don't waste it.'";
	Linebreak;
	say "     [bold type]What shall you do? You might only have this opportunity to attempt to befriend the Stablemaster...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Do as he says and blow him (must not have Dominant feat).";
	say "     ([link]N[as]n[end link]) - Refuse.";
	if player consents:
		if player is dominant: [a dominant player would never accept these terms]
			Linebreak;
			say "     [italic type]Wait, what?! You cannot possibly be considering this! You like to dominate, not to become someone's bitch! You are nobody's bitch, that's right! And you are not about to become his bitch either [roman type]! So, you give him a fierce look and a clear negative answer. He sighs and rolls his eyes. 'Figured you'd be an insufferable cunt,' he says, as he takes a sudden step towards you and grabs your face by your jaw, 'Know you've made an enemy today, slut. If you're not going to willingly obey me, then I'm sure my boys enjoy breaking you. There's gonna be nothing left of you in that little brain of yours, only your endless craving to get owned and bred like the mare you're gonna be.' His words are calm, yet his eyes burn with the fiery wrath evident in his gaze, and fear cripples through your soul unexplainably. Whatever this horseman is... It is not normal.";
			say "     'I'm done wasting my time with you. Grab your stuff and leave. Consider this my last merciful act, because it's only going to go downhill from now on.' He then pushes you towards the door and you feel a compelling urge to flee. You cannot explain it, and perhaps in normal circumstances you would not even be this scared, but it transcends your comprehension. Your only worry is to get to safety, and you do so as fast as you can. Now out of his room, you proceed to recover your things and run, only hearing a laughter and a few words said on your back. 'Looks like that didn't go well! Don't worry, we'll meet again, and we'll have looots of fun together...!' You presume this was the horseman from before, and if his words are true, meeting them during your exploration efforts may lead to a more problematic predicament if you fail to escape them...";
			now Resolution of Nightmarish Horse Business is 99; [refused the Stablemaster, event now behaves differently]
		else:
			Linebreak;
			say "     When you look at this tall, powerful horseman with a cock that demands respect, an imposing presence and offering such a rather pleasing sight to your weary eyes, you really cannot say no to him. In fact, you do not want to refuse him at all, as you cannot help but get turned on by the situation. As your gaze switches from his muzzle to his cock, a smirk takes form in his expression. 'Come on, don't lie to yourself. You wanna suck it, don't you? You want to experience how a real fucking horsecock feels in you. And you've got it right here. Come on closer and give it a kiss...' He then grabs his manhood by the base of the shaft and slightly swings it up and down, causing your eyes to follow its movements.";
			say "     'This is all you're gonna need in your life, trust me...' Without any further ado, and unable to endure any more time without touching that large, thick and throbbing equine dong with your hands and lips, you move in, dropping to your knees in order to dive with your mouth onto top of that cock. With so much of it to handle, you have your hands join in the efforts as you grab his shaft to stroke it, all while you wrap your lips around his flat tip and begin to pull some of those many inches in. Interestingly, his manhood feels hot, hotter than you would normally expect, but its taste comes down as unnaturally intoxicating, as much as this whole setting does. 'That's your place now, slut. You're gonna love it as much as you love my cock.'";
			WaitLineBreak;
			say "     Definitely not wanting to disappoint the Stablemaster, you put in your best efforts at pleasing him, continuing to use your hands to stroke him while trying to swallow as much of his cock as you can. Your throat's ondulating walls as you pull that meat in are enough to put a smile on the dark horseman's muzzle, and he gives you a pat on the head as an encouraging gesture. 'Look at you now... Unable to think of anything else but my pleasure, ain't that right?' he asks, knowing very well the answer. Your entire focus is on his dick and in how good you can make him feel, and that is made obvious by the way you hungrily suck on that equine rod. 'Yeah, you'll find out that doing what the Stablemaster tells you feels really good... And it's better for everyone.'";
			say "     Niceties seem to be over soon, however, as once you get comfortable with the Stablemaster's dick, he slides both his hands over the back of your head and takes the lead, thrusting into your throat while moving your skull back and forth. With this, it is your throat that most suffers as a sizable equine cock drills through it persistently. 'I might've lied about the time thing. I need to fill you up right fucking now...' As he claims this, his cock seems to be at its hardest, throbbing incessantly, and your entire mouth and throat is pushed to their limits as he buries as much as can fit of his length inside. You have no input over the situation, only your reflexes as you try your best to endure this merciless throatfucking.";
			WaitLineBreak;
			say "     One thing, or rather two, that you see with relative ease is his big pair of balls swinging back and forth along with the momentum of each thrust, full and ready as he continues on skullfucking you. With this much energy, you can barely breathe except for those times he actually lets you, as you are forced to swallow that enormous cock everytime it comes to greet your esophagus. Your throat is used like a fleshlight for who knows how long, until you gag on it and even tears run down your eyes... And he just continues, with a huge smile on his muzzle, his pleasure augmented by your struggle. 'This is how mares are handled around here, see? Them and little obedient studs, too. They just gotta ask to be owned by the Stablemaster...'";
			say "     Though, for how much it costs you to endure, there is a side of you that enjoys this. You cannot explain it, but you want it, more and more, and the horseman is right behind your desires. He grabs you with such strength that you are given no chance to even consider escaping, nor you want to. In fact, you want only to keep taking his cock inside you, in every possible hole, pleasure him in every possible way, and you need no reason for it. 'Get ready for it, slut... It's coming right up...' he warns you, and few seconds after that, you feel the first spurt of horse jizz hitting you right at the back of your throat as he pulls out just enough, prompting you to swallow it immediately.";
			WaitLineBreak;
			say "     The same happens to every drop of cum that assails your throat, coming at full force directly into your stomach as he now buries his cock deeper down, giving you no choice but to, indeed, swallow everything he gives you. 'Mmmh... yeah... Good [boygirl]... Take it all... Let that cum work your insides...' This warm, thick liquid feels almost too hot inside you, and soon, your whole body begins to tingle as its effects begin to take place...";
			WaitLineBreak;
			if "Male Preferred" is listed in feats of Player: [only male infections]
				if player is submissive:
					infect "Stallionboi";
					infect "Stallionboi";
					say "     'Hm... Signs of a cute and good stallion boy... Yeah, I'd say that fits you. Maybe I should fuck your ass too just to make sure you fully turn into one...'";
				else:
					infect "Horseman";
					infect "Horseman";
					say "     'A hung and strong horseman, huh? You seem like the kind of guy who likes keeping your options open, I see... Well, to me, you're still a little stallion boy...'";
			else:
				infect "Mareslut";
				infect "Mareslut";
				say "     'Oh, yeah... A lovely sexy mare slut. I knew you were one at heart... Maybe I should breed you just to ensure you fully become one...'";
			NPCSexAftermath Player receives "OralCock" from Stablemaster;
			SanLoss 10;
			WaitLineBreak;
			say "     'But we can always have more fun later. It'd be a shame to have it all end so soon... So, how about you return here after a while? I'll let my men know you are under the Stablemaster's protection, which means you're now welcome here. Just don't make trouble, otherwise I'd have to revoke your privileges. I hope the meaning of that is clear enough to you.' With every word taken into consideration, you nod to the Stablemaster and let him know that you have heard it all attentively. 'Good. Now, you may leave, and feel free to fool around with anyone you desire. Actually, I encourage you to. It'll do you good to familiarize yourself with the place and the people who live here. Of course, as long as you remember who's in charge...'";
			say "     You take note of these words as you look over yourself, then back to the burning horseman, and give him a final nod. 'Your stuff's over there, just outside on your way out.'";
			WaitLineBreak;
			move player to Master's Office;
			move Stablemaster to Master's Office;
			change the north exit of Employee Access to Master's Office;
			change the south exit of Master's Office to Employee Access;
			now Resolution of Nightmarish Horse Business is 1; [befriended? the Stablemaster]
			now Nightmarish Horse Business is resolved; [event is solved, only states will be used for reference]
	else:
		Linebreak;
		say "     You're not about to willingly become his bitch, so you give him a fierce look and a clear negative answer. He sighs and rolls his eyes. 'Figured you'd be an insufferable cunt,' he says, as he takes a sudden step towards you and grabs your face by your jaw, 'Know you've made an enemy today, slut. If you're not going to willingly obey me, then I'm sure my boys enjoy breaking you. There's gonna be nothing left of you in that little brain of yours, only your endless craving to get owned and bred like the mare you're gonna be.' His words are calm, yet his eyes burn with the fiery wrath evident in his gaze, and fear cripples through your soul unexplainably. Whatever this horseman is... It is not normal.";
		say "     'I'm done wasting my time with you. Grab your stuff and leave. Consider this my last merciful act, because it's only going to go downhill from now on.' He then pushes you towards the door and you feel a compelling urge to flee. You cannot explain it, and perhaps in normal circumstances you would not even be this scared, but it transcends your comprehension. Your only worry is to get to safety, and you do so as fast as you can. Now out of his room, you proceed to recover your things and run, only hearing a laughter and a few words said on your back. 'Looks like that didn't go well! Don't worry, we'll meet again, and we'll have looots of fun together...!' You presume this was the horseman from before, and if his words are true, meeting them during your exploration efforts may lead to a more problematic predicament if you fail to escape them...";
		now Resolution of Nightmarish Horse Business is 99; [refused the Stablemaster, event now behaves differently]

Section 1-1 - Pre-Event Alternative

to NightmarishHorseBusinessAlt:
	say "     As you make your way through The Stables, you spend quite some time trying to look out for anything of interest in this place. Unfortunately, your efforts are in vain, this time, as nothing out of the extraordinary jumps to the eye. However, during this, you pick up an odd feeling, getting under the impression that you are being watched by someone around the corner. Struck by this sense of vulnerability, you seek quick refuge within the hidden areas close to the walls and look around as you hear some loud click-clacking heading your way. Finally, you manage to get a visual on the culprits, and they seem to be a group of horsemen who definitely look like they mean business. It does not take you long to realize these seem to be part of the staff... Those who have been looking for you.";
	say "     It would be wise to keep a distance from them, as you are definitely not allowed to remain here, given the way you seem to have offended the Stablemaster. It is also not likely that they would just let you go, given the fact they now have permission to do whatever they wish with you. However, as always, they seem to be on high alert and looking around for any suspicious movement, already expecting you to show up at any point. Right now, you are hidden, but they will eventually find you if you stay here. Moving quietly and escaping their eyes could be done, provided you are proficient enough with being stealthy, but if not, this could turn into a tricky situation in which you might have to face a physical confrontation. Perhaps it would be wise not to fight a group of strong stallions, especially when you have some idea of what would happen if you lost.";
	WaitLineBreak;
	say "     [bold type]Do you wish to attempt to outsmart the horsemen? These are the three same ones from before, and you feel it will be tougher to sneak past them now...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes, stealth up and escape.";
	say "     ([link]N[as]n[end link]) - Fight them.";
	if player consents:
		Linebreak;
		say "     After measuring up your options, you feel like you could have a chance at this whole [']escape unnoticed['] thing. Nevertheless, one can never be too careful, so you wait for the right time to maximize your likelihood of success. So, when the horsemen seem distracted with something else, their eyes gone from the trajectory that would meet your position, you swiftly take your leave and move as quickly, yet as silently, as you possibly can.";
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 13:
			say "     You expertly manage to remain out of sight as you continue to gain more and more distance from the suspecting group of horsemen, and eventually, you lose them. After that, all you need is to remain hidden in a good spot for a while until they are definitely gone. You wait several minutes to confirm your safety and then decide to return to your affairs, hopefully free to explore The Stables once more.";
		else: [failure]
			say "     You manage to remain out of sight as you make slow progress towards getting them out of your tail, however, as you were so preoccupied with their glances, you really did not get to pay much attention to the floor and where you are stepping on. Unfortunately, you incur in an accident as you step on [one of]a rubber sex toy[or]a rock[or]something very slippery[or]what was probably some food leftover[or]a soap(?!)[at random] and fall prone! The worst part is that you grunted in surprise, a noise that the horsemen have definitely heard. Very few seconds pass as you hear the repeated sound of impact of their hooves against the floor drawing closer and closer, and you are only able to stand on your feet before they manage to surround you.";
			say "     'Look who it is! I was wondering when we'd see you again!' says one of the horsemen, the tallest of the group. You definitely know who these are, and that means trouble for you if you fail to manage to defend yourself. 'Well, it looks like this time there really is no reason for us to hold back on you, so how about you make this easy for us and submit? Or we'll beat you up until you do... Though that's energy best spent fucking, in my opinion...' They crack their knuckles as all three of them circle around you, their muscular bodies and equine features being the only things you can see at this point.";
			WaitLineBreak;
			NightmarishHorseBusinessFightAlt;
	else:
		Linebreak;
		say "     After measuring up your options, your mind stops at one single want, which is to fight them and teach them you are not one to be messed with. As you see them approach, you really do not even think twice about it, and charge ahead ready to kick ass. The horsemen barely have time to react as they see you running towards them, wide-eyed at your audacity, though as you head directly for the tallest horsemen, his two mates are able to deflect your attack. 'Whoa! Bold one, aren't you? If you're looking forward that much to get fucked into submission, you could just kneel and wait!' They crack their knuckles as all three of them circle around you, their muscular bodies and equine features being the only things you can see at this point.";
		WaitLineBreak;
		NightmarishHorseBusinessFightAlt;

to NightmarishHorseBusinessFightAlt:
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
		now inasituation is true;
		challenge "Horseman";
		increase GroupFightCounter by 1;
	now inasituation is false; [reset]
	if fightoutcome < 20: [won]
		say "     Your skill in combat proves fruitful as you somehow manage to subdue the three horsemen, a sense of power surging through you as they remain collapsed on the floor and at your feet. 'Fuck! [SubjectProCap]'s tougher than [SubjectPro] looks...! Ow...' the same horseman exclaims, barely able to move his limbs. With this outcome, and while you could further taunt them for your enjoyment, perhaps it would be wiser to get out of here while you can. Who knows if they are the only ones after you...";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     [NightmarishHorseBusinessFightAltLoss]";
	else if fightoutcome is 30: [fled]
		say "     Flee? Where? How?! You have managed to dodge a few blows, but surrounded as you are, it is impossible to outrun the horsemen. You only gave them time to recover their ground!";
		NightmarishHorseBusinessFightAlt;

to say NightmarishHorseBusinessFightAltLoss:
	say "     Despite your efforts at defending yourself, your skills are simply no match for the group of horsemen who quickly move to surround and subdue you. Inevitably, you are too wounded to fight back, and you simply surrender to them, raising your hands in the air and making their job a lot easier. 'Aw... You really think you had a chance? That's cute... But it looks like you've lost!' He then places his hoof over your chest and pins you to the ground as the remaining horsemen begin to stroke their members, looking forward to the inevitable end of this hopeless conflict. 'Now, I think I told you what would happen if we caught you this time, right? Since the Stablemaster really doesn't seem to want anything with you... I guess you're now ours to claim!'";
	say "     As the equine men get closer to you, at some point you are grabbed by two of them as the most vocal one only observes. They take hold of your stuff and any gear you have on you and strip you until you are as naked as you could be, their half-hard horse dongs occasionally swinging against your body as they move about. With their excitement growing ever more obvious, you just know that you will not be leaving until they are satisfied with using you however they please... 'Don't worry much about the size of our cocks, by the way. They always end up fitting one way or another...' he taunts you, jerking his to a full erection as it throbs right in front of your face, and the grin on his muzzle widening to its fullest.";
	WaitLineBreak;
	say "[StablemasterHorsemenThreesomeSex]";
	WaitLineBreak;
	say "     All you hear from that point on is the click-clacking of their hooves against the floor as the three of them leave. You are exhausted, but you have to get going before any other well-endowed horseman sees you and prolongs your predicament. Slowly, you get up and do your best at getting rid of all the cum, recover all your gear and get moving.";
	CreatureSexAftermath "Player" receives "OralCock" from "Horseman";
	CreatureSexAftermath "Player" receives "OralCock" from "Horseman";
	CreatureSexAftermath "Player" receives "AssFuck" from "Horseman";

to say StablemasterHorsemenThreesomeSex:
	say "     The other two grip you by the arms on each of your sides, they dicks now throbbing against your buttocks, as the tall horseman walks up to you, grabs your head and leads your mouth over his flat tip, then pulls you to him and forces you to start taking his huge cock. Your jaw is now wide open to try and accomodate such an immensely thick and long thing, but he is not just content in having your tongue lingering around the first few inches. He wants more, and so, he pushes himself deeper towards your throat while you are unable to offer any resistance, grappled as you are by the other two horsemen. 'How's that feeling, huh? Like having a horsecock in your mouth, bitch? How about you gag on it for me? I love hearing those noises...'";
	say "     It is clear that he is trying to provoke them, with each thrust being deeper and rougher than the last. You close your eyes hard as your throat is practically drilled and stretched over the horseman's girthy meat, the ordeal already causing you to feel lightheaded. His hands keep hold your head by the jaw and the back of your skull through almost the whole time, and behind you, the two other, more quiet, horsemen continue to stroke themselves as they feel up your asscheeks, with generous squeezes and fingers occasionally slipping into the space between them, often rubbing at your butthole. Despite the merciless facefucking you are receiving, the group almost seems gentle as they feel up your body, soon bringing up the lust in you in ways you cannot really control.";
	WaitLineBreak;
	say "     'Seems like you're actually enjoying yourself, huh? Is that because of the feeling of a great horsecock inside you? Wait until you've got all three of them in...!' And just as you thought they were being [italic type]almost[roman type] gentle, you are pushed forward as the tall equine man keeps a tight hold of your head, still with your lips wrapped around that long shaft of his, and before you know it, your asscheeks are being spread and one of their cocks is pressed against your anus. In fact, you think it might be both of them, one at a time, and one in this situation can only worry if they actually mean to try to have you take both of them at the same time... The cock in your mouth, however, seems keen on continuing to fuck your throat.";
	say "     Eventually, the scene progresses as a singular horseman positions himself behind you, pressing his big cock against your pucker while taking hold of your hips. He seems to want to take you anally as the other strokes himself and observe, all while your throat is used like a fuckhole by the horseman in front of you. Although, after a couple of really hard thrusts from him, you realize he pulls his member out of your mouth, granting you valuable time to catch your breath as the equine beastman behind you moves in to impale you on his. Slowly, he pushes his flat tip into your hole, moving in inch by inch and ever so slightly as you squirm, feeling that huge thick shaft stretching your rear.";
	WaitLineBreak;
	say "     'C'mon over here! Let's give [ObjectPro] two of ours to suck on. I think our friend over there deserves to have [PosAdj] ass all for himself... And I like your company.' The tall horseman pulls the other one to him, placing his arm across his wide shoulders, and both embrace each other as their cocks touch, both rubbing against one another by the side of their shafts. 'Who told you to stop sucking, slut? Better get to work on these two now, or we're gonna instead give you a rough time back there...!' And then, your head is once more dragged over to the, this time, two horse cocks awaiting your affections. A glance above you shows the two making out with each other as their meats throb against your lips or hands, all while you try your best to satisfy them.";
	say "     And as that happens, the horseman behind you continues to push more and more of his cock inside you, keen on putting it in you as deep as he can possibly go. You feel the urge to moan while you stroke and suck on both the dicks before your eyes, licking them all over before taking them, again, into your throat, one after the other. You really give it your best, but the way they continue to push you around makes it seem like it is not enough, or maybe they simply enjoy doing that to you. From grabbing your head and skullfucking you, drilling your throat as the equine man on the back pounds your ass, this sensation of fullness proves to be more pleasant than shameful, from a certain point forward...";
	WaitLineBreak;
	say "     You now keep your eyes closed as you let your other senses take over. Bent over the way you are, you can hold onto both the cocks in front of you while you get fucked from behind, and between all the blowjobs and facefucks, you are able to also include rubbing and stroking. Eventually, it is as if your mind was slowly slipping away, getting used to this sort of treatment as something you would do every day without a problem.  All the fucking from both sides continues for a long time, with the horsemen then deciding to take turns on whoever gets to pound your ass or mouth[if player is female] without ever touching your vagina[else if player is male] without every touching your cock[end if]. 'Such a good hole! How about I fill it up, eh? I think we've got this connection going on and all...' says the only talkative horseman before giving your buttcheek a loud slap.";
	say "     The weight of his balls bouncing against your rear is evident that you are going to get a proper filling when he decides to cum, and something tells you he will be doing it inside of you, as they eventually stop taking turns on different spots. Right now, the two silent equine men are letting you worship their dicks at your own pace, often with one in your mouth and the other resting against either side of your face at their own time, and you feel them throbbing so rigidly you can tell they are also close. Everything slows down for a while as their orgasms threaten to set off, until suddenly, the tall one behind you resumes the fucking at its highest pace. 'Guess it's time to fill you up! You're gonna take every drop, yeah? Ooh, fuck... Yeah!'";
	WaitLineBreak;
	say "     He grunts energetically as his entire load gets pumped into your insides. You feel every gush as they are shot with great force, such is the power of the horseman's climax as he continues to pound your ass until the very end of it all. While that happens, the other two equine men decide to pull their cocks out of your mouth and stroke them themselves, to give you a full facial of horse cum. It is in such abundance that every single one of your features gets either completely covered by that thick and white substance or drenched in a more watery liquid. One of them keeps hold of your jaw and forces your mouth open while aiming some of that cum into it, having you eat a lof of it up as well.";
	say "     With a few last poundings, the vocal horseman pulls out of your butt, giving it another loud slap. 'That's a good mare! You'll do wonderfully around here! Hope my mates have given you a good amount of our special over that side as well!' They give him a thumbs up as they also step away from you. The ordeal has caused you to simply fall to the floor, where there is still a whole mess of cum from the group of horsemen. 'Aw, poor thing's tired... Maybe we should let you go, for now. And next time we catch you, we'll just do this again, yeah?' he says as he crouches down next to you, giving you a double tap on the cheek (this time, the one in your face). 'Damn, dudes! You really coated [ObjectPro] up, alright! My hand's soaked!'";

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Stablemaster	"Stablemaster"

Stablemaster is a man.
ScaleValue of Stablemaster is 4.
Body Weight of Stablemaster is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Stablemaster is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Stablemaster is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Stablemaster is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Stablemaster is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Stablemaster is 4. [length in inches]
Breast Size of Stablemaster is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Stablemaster is 2. [count of nipples]
Asshole Depth of Stablemaster is 16. [inches deep for anal fucking]
Asshole Tightness of Stablemaster is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Stablemaster is 1. [number of cocks]
Cock Girth of Stablemaster is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Stablemaster is 21. [length in inches]
Ball Count of Stablemaster is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Stablemaster is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Stablemaster is 0. [number of cunts]
Cunt Depth of Stablemaster is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Stablemaster is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Stablemaster is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Stablemaster is false.
PlayerRomanced of Stablemaster is false.
PlayerFriended of Stablemaster is false.
PlayerControlled of Stablemaster is false.
PlayerFucked of Stablemaster is false.
OralVirgin of Stablemaster is false.
Virgin of Stablemaster is true.
AnalVirgin of Stablemaster is false.
PenileVirgin of Stablemaster is false.
SexuallyExperienced of Stablemaster is true.
TwistedCapacity of Stablemaster is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Stablemaster is true. [steriles can't knock people up]
MainInfection of Stablemaster is "Nightmare".
Description of Stablemaster is "[Stablemasterdesc]".
Conversation of Stablemaster is { "<This is nothing but a placeholder!>" }.
The scent of Stablemaster is "     The Stablemaster smells like a mixture between a horse and brimstone, though particularly intensely towards neither.".

to say StablemasterDesc:
	say "     This dark stallion is a powerful anthropomorphic male horse with the build of a strong athlete, towering and intimidating at a mere glance. Though, the most peculiar aspect about him are a group of features that jump to attention besides his black fur, which is his mane. It behaves like flames dancing around constantly like a never ending fire, running down his entire backside from the very top of his head. This complements his fiery orange gaze that follows your every moment the second you step into his office. Immediately, you think this is not your typical horseman, and may actually be something completely different, but he is also the Stablemaster.";

Section 2-1 - Stablemaster Talk

StablemasterDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Stablemaster:
	say "[StablemasterTalkMenu]";

to say StablemasterTalkMenu:
	now StablemasterDoneTalking is false;
	say "     [bold type]What do you want to talk to the Stablemaster about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the Stablemaster to tell you more about himself";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[StablemasterTalkHimself]";
				if (nam is "The Stables"):
					say "[StablemasterTalkStables]";
				wait for any key;
				if StablemasterDoneTalking is false:
					say "[StablemasterTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself before the Stablemaster. He eyes you attentively.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say StablemasterTalkHimself:
	say "     Before such a strange, unique-looking horseman, your mind can only wonder what in fact he is, so you end up asking him if he would mind telling you more. 'You desire to know more about me? Knowledge can be... dangerous. Especially if it is given away.' His fiery eyes pierce your gaze and draw in your attention, a cold sweat runs down your forehead and you freeze as this strange apathy overtakes you. 'I am what you see. Some would call me a Nightmare. A funny joining of words, considering that modern english denominates female horses as [']mares['], but they have no connection whatsoever.' This sense of rigidness alleviates as the Stablemaster speaks. 'A mare in ancient terms is a demon whose entire purpose is to bring torment through frightening dreams, hence the word [']nightmare['] for when you have a bad dream and to what identifies me.'";
	say "     You ask him if he meants to say that is his purpose too. He replies with few words, 'I define my own purpose.' With that, the conversation on this subject ends.";

to say StablemasterTalkStables:
	say "     You mention that you would like to know more about this establishment he is running. 'The Stables is a haven for all the equines, a safe shelter for those who desire a place where they can belong.' He does not elaborate any further after a while, nor he does ever, until you ask about the obvious. All the sex, the enslaving and his domineering attitude does not really match all that he claims. 'I merely help them find their true selves. I don't force anyone. If you didn't wish to stay, I'd have sent you away, and whatever happened to you within The Stables would be your entire responsibility. But you've demonstrated respect for the rules I impose. Therefore, you were allowed to stay and under my protection. You choose your path, I provide you the options. Whatever happens is what's meant to be, a natural consequence of your choices.'";

Section 2-2 - Stablemaster Sex

instead of fucking Stablemaster:
	if lastfuck of Stablemaster - turns < 8:
		say "     You approach the Stablemaster with an offer of pleasure in mind, but his expression remains the same. 'I've already given you enough attention. Go seek someone else who'd be more than happy to indulge your cravings.' It looks like you will not get anything out of him in a while...";
	else:
		say "     You approach the Stablemaster with an offer of pleasure in mind, his gaze turning up to face you with interest. 'Have come to service the Stablemaster, have you? I happen to be in need of a good slave, but tell me what's in your mind. If I like it, we'll see...'";
		say "[StablemasterSexMenu]";

to say StablemasterSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Service his cock";
	now sortorder entry is 1;
	now description entry is "Get on your knees and suck him off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Request his three horsemen guards";
	now sortorder entry is 99;
	now description entry is "You do kind of want to get used by those three horsemen, do you not";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Service his cock"):
					say "[StablemasterSexBlowjob]";
				else if (nam is "Request his three horsemen guards"):
					say "[StablemasterHorsemenThreesomeSex]"; [an accessible repeat of the scene in the other outcome]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself before the Stablemaster. He eyes you attentively.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say StablemasterSexBlowjob:
	say "     As you consider your options, you conclude that there are a few ways you could pick to show proper respect for the Stablemaster, one of them being proposing a blowjob as something that is entirely your decision. Seeing your initiative brings a smile upon his otherwise expressionless muzzle, and as he looks back at you, crossing his arms and tilting his head, his furred sheath twitches and his sizable balls move ever so slightly. 'Volunteering yourself to be my fuckhole makes me proud of you, slut. And I'm always happy to know that you are fully aware of your place.' His cock then begins to peek out of its protective home, slowly growing and thickening inch by inch for every passing second. 'Show me you mean it, then. Come here and worship your master.'";
	say "     With permission granted, you move forward to approach him as his half-hard horse dong swings heavily between his legs, his fiery gaze looking at you from above, towering over you as you kneel before him. Then, you move your hands over his equipment, an engorged dark red shaft that continues to expand atop a full hanging sac. As it reaches its fully erect state, a drop of precum begins to ooze amidst subsequent throbs, and just looking at this marvelous piece of meat makes you weak on the knees, immediately wanting to do more than just staring. This time, the Stablemaster truly is waiting for you to move in, attentively observing your actions with great interest. 'Relishing its greatness, are you? I can't blame you. Best horsecock in town, after all...'";
	WaitLineBreak;
	say "     You cannot deny it, as this glorious piece of meat continues to throb in your hands, yearning for your attention. Almost absent-mindedly, you begin to stroke it, its weight becoming more evident the more you handle it. Your fingers press against its sweet spots near the tip, to then slide down and back up with your palms along his long and warm shaft, slowly and steadily, and really needing both hands to accomplish this. For the time being, it suffices to please the Stablemaster, as he lets out an appreciative moan from the enjoyment he is getting. 'Taking your time... In fact, I love when my slaves are enamored with my cock. Do please enjoy it to its fullest. I encourage you to...'";
	say "     Following his recommendation, you do feel up every inch of that beautiful dark crimson dick. Its sheer size, girth, weight and length all combined are almost mesmerizing, and the more you touch it, the more you almost mindlessly draw your face closer to it. It does not take long for you to lean your lips against his log as you move your hands towards the base. Then, you begin to kiss it, this hot surface tingling in your lips in such a delightful way that you feel compelled to do it again and again. Eventually, you do lose yourself in your lust and desire for this horseman's cock and cannot help but have your tongue join the efforts. Now with added licks and additional kissing, you thoroughly worship his entire length as you run your mouth down and up by its many inches.";
	WaitLineBreak;
	say "     'Exemplary slave...' he commends you, placing his hand over your head, but without forcing you either way. Instead, he just pats you on the back of your skull and suggestively leans your face over the places he would like your mouth to be on. Actually, he does end up leading your moves, but not always. It seems to stop after a while until he seems happy with the patterns you are undertaking, which brings you closer to that horse cock's tip and just slightly below it. Once you really get into it, you realize this might be one of his sensitive spots. 'Mmh... That's one of my favorite spots...' he comments, and you oblige by licking it some more as your hands continue to run up and down his shaft, causing the Stablemaster to breathe deep.";
	say "     'Give the balls their share of attention, too. Don't neglect them...' he then orders, back to crossing his arms and keeping it to simply observing you. Naturally, you do not want to disappoint him, and thus, you heed his request by lowering yourself further down and push your face onto those soft and full-looking orbs. Immediately, the night horseman lets out a pleased sigh as you put your mouth to work, tugging on each testicle with your lips to the best of your abilities and licking them all over. You ensure that your tongue gets every inch and corner of the both of them, with prolonged movements, and with some sucking motions, you allow one of them at the time to completely fill your mouth, switching back and forth after brief moments with each.";
	WaitLineBreak;
	say "     'A proper and responsible cocksucker never forgets the balls... You do well not to, in any case. Most would greatly appreciate it...' With that, he pats your head and rubs it affectionately for a while, enjoying the sensations you are providing him with on his gonads. 'I certainly do...' he adds, and then, you find your face being pressed against his sac as he pulls you against them, before being dragged across his entire cock all the way to the tip. 'Now, open up and suck. You made me hard from that, but it's far from being enough to make me cum.' Judging by his tone, it seems like he means what he says, and you will have to try much harder to actually satisfy him. Though, you have proposed this, therefore, it is a challenge you are more than keen on undertaking.";
	say "     As such, you do as he says, part your lips open as much as you can manage, get your tongue out and let that horse cock in for a few inches, at first. The thing is so big it will take some effort to bring the rest in, and perhaps not even all of them, as this is not an ordeal to laugh at. But instead on focusing on the difficulty, you simply allow yourself to enjoy the cock's taste and size as it enters your mouth, burying itself deeper and deeper towards your throat. 'Mmh... I did tell myself I wouldn't fuck your throat and would let you do your thing...' he says, both his hands now holding your head as you take more and more of his cock in you, 'But oh if I don't really want to...'";
	WaitLineBreak;
	say "     Despite his lingering desire to absolutely wreck your throat, he holds himself, letting you suck him at your own rhythm. Although, you cannot help but feel how hard and throbbing he is, the pent-up desire overflowing evidently from his manhood as you work it, swallowing it down as much as you can to allow him to feel the warm depths of your mouth. Naturally, he jerks his hips back and forth instinctively, a move commanded by lust that he fails to control, occasionally thrusting his huge cock into your throat a bit harder than you could predict. Still, you insist on blowing him the best way you can, keeping your lips wrapped and your tongue wiggling all around that shaft. You give your neck a workout by pulling and pushing your lips across its length, over and over again, much to his satisfaction.";
	say "     Notwithstanding, it is tough for an almighty powerful horseman like the Stablemaster himself to hold himself from exerting his power, and as you lavish in his precum that continues to dribble steadily into your mouth, the grip of his hands on your head tightens. 'You know what... You're such a good little slut, I'm sure you won't mind me taking it from here.' As soon as he says this, his fiery eyes lure yours in, and just like that, you are struck by a feeling of utter relaxation. 'Yeah, that's it... Let Master take care of you now. You're on your way to your big reward...' Without any hope nor want to resist him, you practically become a fucktoy for the Stablemaster, and it feels right...";
	WaitLineBreak;
	say "     So right, in fact, that you begin to crave him even more as he proceeds to fuck your throat, skullfucking you as hard as he pleases with his balls hitting your chin at every swing. His thrusts are powerful, and you can definitely feel his cock stretching your esophagus every time it goes in, surely without any plans on holding back. 'Just a while longer... I'm close...' he warns, and fucks you even faster, picking up the pace to such a length you feel your whole body being pushed backwards with his aggressive pounding. Eventually, he crosses the point of no return, and it is only a matter of seconds until he explodes inside your mouth and into your throat, forcing all his seed down your stomach right until the last drop.";
	say "     'Yes... Take it all, my slave... One day, you shall be one of us for good... You'll realize there's no better place than right by your Master...' His grin widens as the last drops are deposited in your stomach, and then, he proceeds to pull away, his still half-hard cock swinging heavily between his thighs. 'Hope you've enjoyed yourself, slut, for many don't have this privilege.' The feeling within you is exhilarating and ecstatic, and even more is the idea of having the Stablemaster's seed inside you. 'You may leave, but do return. I know you will... You'll be craving for more.' Having heard this, you nod, almost instinctively, as if you had no control over it for a second, but eventually, your mind settles down and you can think again.";
	say "[NightmareStablemasterInfection]";
	SanLoss 10;
	NPCSexAftermath Player receives "OralCock" from Stablemaster;

to say StablemasterHorsemenThreesomeSex:
	say "     Thinking back to the group of three horsemen you met before being brought to the Stablemaster, you ask if it would be possible to have some fun with them instead. He raises an eyebrow, remaining in silence for a while, but then smirks and lets out a chuckle. 'You desire my personal guardsmen? Interesting... Well, if that is what you wish for, I see no issue with that. Although... It is at your own risk. I doubt they would be gentle with you.' You reassure the Stablemaster that this is no problem for you, as you simply wish whatever time you can have with them. 'Very well then. I shall send word for them to meet you outside. Go on ahead, they'll meet you shortly.' With your request finalized, you proceed to leave as per his orders.";
	say "     It does not take too long until the three horsemen arrive, already with wide grins in their muzzles. 'So, look who it is! Have been getting along with boss, eh?' says the tallest horseman, which really seems to be the only one who every speaks, while the others eye you from head to feet with their mouths shut. 'And you still missed us? That's really cute! Though, I'm afraid we got told we could do whatever we wanted to you, so it seems that's exactly what we'll do, yeah?' As the equine men get closer to you, at some point you are grabbed by two of them as the most vocal one only observes. They take hold of your stuff and any gear you have on you and strip you until you are as naked as you could be, their half-hard horse dongs occasionally swinging against your body as they move about.";
	WaitLineBreak;
	say "     With their excitement growing ever more obvious, you just know that you will not be leaving until they are satisfied with using you however they please... 'Don't worry much about the size of our cocks, by the way. They always end up fitting one way or another... But I guess you've been messing with an even bigger one on occasion, so you should probably be fine, right?' he taunts you, jerking his to a full erection as it throbs right in front of your face, and the grin on his muzzle widening to its fullest. 'Now, what shall we do to you? So many possibilities, especially for a willing little slut like yourself... My mind could go anywhere, and I'm sure my mates agree on that...'";
	WaitLineBreak;
	say "[StablemasterHorsemenThreesomeSex]";
	WaitLineBreak;
	say "     All you hear from that point on is the click-clacking of their hooves against the floor as the three of them leave. You are exhausted, but you have to get going before any other well-endowed horseman sees you and prolongs your predicament. Slowly, you get up and do your best at getting rid of all the cum, recover all your gear and get moving.";
	CreatureSexAftermath "Player" receives "OralCock" from "Horseman";
	CreatureSexAftermath "Player" receives "OralCock" from "Horseman";
	CreatureSexAftermath "Player" receives "AssFuck" from "Horseman";
	now lastfuck of Stablemaster is turns; [still giving a cooldown]

Nightmare Stablemaster ends here.
