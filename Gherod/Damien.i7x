Version 2 of Damien by Gherod begins here.

"Adds Damien to the game, a young demon hunter and scavenger who first begins as a human."

[Version 1 - File Created, with Intro event and NPC consolidation]
[Version 2 - Introducing demonic dragonmorph Damien]

[ DamienIntro RESOLUTION STAGES ]
[ 0 - Event Unresolved ]
[ 1 - Ignored first time, keeps on triggering at 20% chance ]
[ 2 - Went past the trap event, met Damien ]
[ 3 - Completed 1st scavenge ]
[ 4 - Completed 2nd scavenge ]
[ 5 - Completed 3rd scavenge, had sex with Damien, he becomes a patron at the Hellfire Club ]
[ 6 - Talked to Damien in Hellfire Club ]
[ - - - ]
[ 99 - Completed 3rd scavenge run, but refused Damien's advances and he's gone forever | He's gone for good ]

[ DamienTF RESOLUTION STAGES ]
[ 0 - Default TF path ]
[ 1 - Talked to Toron about Damien ]
[ 2 - Gave drink a couple of times and spoke to Toron about diminishing effects]
[ 3 - Gave changed drink, Damien transformed physically - GOES AWAY TEMPORARILY]

[ Stats ]
[ Strength ]
[ 0 - Uncorrupted ]
[ 1 - Had first drink ]
[ 2 - Talked to Toron again ]
[ 3 - Had altered version once ]

Section 1 - Intro Sequence

Table of GameEventIDs (continued)
Object	Name
DamienIntro	"DamienIntro"

DamienIntro is a situation.
ResolveFunction of DamienIntro is "". Sarea of DamienIntro is "Nowhere".

DamienIntroCooldown is a number that varies. DamienIntroCooldown is usually 20000.

instead of going south from Hellfire Club while daytimer is night and DamienIntroCooldown - turns > 7 and Resolution of DamienIntro is 0:
	say "[DamienIntroResolve]";

instead of going south from Hellfire Club while daytimer is night and DamienIntroCooldown - turns > 7 and Resolution of DamienIntro is 1 and a random chance of 1 in 5 succeeds:
	say "[DamienIntroResolve]";

to say DamienIntroResolve:
	if Resolution of DamienIntro is 0:
		say "     As you were wandering within the area of Crimson Street, you hear a strange sound, not so far from your current position. Usually, this particular area is quite silent, so it is very unusual to hear loud [']clanks['] echoing through the place. It sounded like a bear trap, or something similar, closing on itself at blinking speed, which probably sounds very stupid since this is no hunting grounds, but there are crazy people for everything... and there are definitely people who do not like demons. Since this is quite close to the Hellfire Club, you may want to investigate the source of this noise and confirm if there is any threat, lest you want to ignore it and assume it was just your imagination.";
	else if Resolution of DamienIntro is 1:
		say "     As you were wandering within the area of Crimson Street, you hear yet another strange sound, not so far from your current position. Usually, this particular area is quite silent, so it is very unusual to hear loud [']clanks['] echoing through the place, and it is even more strange now because this is not the first time you heard it. It sounded like a bear trap, or something similar, closing on itself at blinking speed, and this possibility definitely sounded more farfetched in the past than it sounds now. Since this is quite close to the Hellfire Club, you may want to investigate the source of this noise and confirm if there is any threat, lest you want to ignore it and assume it is just your imagination playing tricks on you rather consistently.";
	Linebreak;
	say "     [link](1)[as]1[end link] - You probably should investigate.";
	say "     [link](2)[as]2[end link] - Ignore it, mustn't have been nothing.";
	say "     [link](3)[as]3[end link] - Things like these do not concern you, so ignore it and stop worrying about it.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to investigate, [link]2[end link] to ignore it or [link]3[end link] to pay no mind to events like these.";
	if calcnumber is 1:
		LineBreak;
		say "     This odd sound came from a nearby alley, rather close to your position. It must have echoed through the area, as it reached your ears in a somewhat faded tone. Nonetheless, you have decided to go investigate, and in order to do that, you begin to walk towards where you think it is the most likely direction to be the source of that noise.";
		DamienTrap1;
	else if calcnumber is 2:
		LineBreak;
		say "     Is that not a bit ridiculous? A bear trap, in the middle of an urban area? It surely must have only been your imagination. You shall simply proceed as normal and continue on your way.";
		now Resolution of DamienIntro is 1;
		now DamienIntroCooldown is turns;
	else if calcnumber is 3:
		LineBreak;
		say "     Whatever it may be, it really does not concern you if there is anyone ill-intentioned around here who would pose a threat to the demons. They know better how to defend themselves if that ever happens, and besides, you doubt any enemy of theirs would be any successful at actually harming them.";
		now Resolution of DamienIntro is 99; [ignored forever]

to DamienTrap1:
	now DamienIntroCooldown is turns;
	say "     Moving through the darkness of the night is a particularly dangerous thing to do, especially if there is a demon hunter on the loose. You probably should be extremely careful and tread gingerly, lest you want to be caught in a trap... If that is the case. Once you make it to the alley, you figure it is time to adopt the most sneaky stance you can think of, probably bending your body forward a bit and minding where you step, reducing the noise you produce as much as possible while you walk through this desolated urban corridor. You throw glances all around you and keep you ears up (figuratively), trying to get a feeling of the surrounding area and any possible threats. The place has a few garbage containers along the way, as well as trash scattered on the ground, which makes it more difficult for you to sneak through silently or spot anomalies...";
	WaitLineBreak;
	let bonus be (( dexterity of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Dexterity Save):[line break]";
	if diceroll + bonus <= 12:
		say "     A loud clank catches you by surprise, startling you as you freeze in place. This was, very honestly, the worst thing you could do, as suddenly, you feel something grabbing you by the ankles before you are pulled upwards so fast you are left with no reaction. Blood comes flowing down towards your head as you are left hanging upside down, pulled to a considerable height and effectively immobilized. It seems you were caught in a trap, one that you triggered in some way, and it had a rope ready to be tightened around your feet in order to pull you up.";
		DamienIntroTrapped;
	else:
		say "     Suddenly, you feel something poking at your ankle, to which you react immediately by not moving it, then slowly step back. A closer look reveals a very thin rope, nearly invisible in the dark, stretched along the alleyway's width in some sort of triggering mechanism. Now, that sound definitely was not just your imagination, this is a trap ready to capture any distracted passerby! Though, now that you know the existence of said trap, how should you proceed?";
		say "     If you [bold type]passed through trap without triggering it[roman type], you could be able to catch this hunter by surprise, but you may fail to find him easily if you are not [italic type]perceptive[roman type] enough... On the other hand, [bold type]triggering the trap[roman type] would, probably, draw their attention to you, but you risk getting caught in it with your attempts at releasing it, especially if you don't trust your [italic type]dexterity[roman type]. It should not be too difficult, though, since you know the trap is here, right in front of you, and you know what mechanism it is using.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Pass through it.";
		say "     ([link]N[as]n[end link]) - Trigger it.";
		if Player consents:
			LineBreak;
			say "     It is just a rope at a low altitude, so you could probably put one leg above and to the other side, then do the same with the other leg, in order to get through without touching it. And that is what you do, successfully, even though it was not particularly difficult. Now, with the trap out of the way, comes the part of trying to find whoever set it, in the first place. You have no idea how this person looks like, they might as well look like something you have never seen before, or like just an average bipedal humanoid, for all you know. Maybe they are a criminal mastermind?! You are in Red Light District, after all... But nonetheless, you should focus on finding this culprit.";
			WaitLineBreak;
			let bonus be (( perception of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Perception Roll):[line break]";
			if diceroll + bonus >= 10:
				say "     After a good amount of time searching the place, and despite being crippled by the possibility of there being more traps along the way, you think you see a shape. Then, you see that shape move, so you are sure you just laid your eyes on someone. Now is the time to catch this hunter once and for all, as they will not see you coming from where you are!";
				DamienIntroSpotted;
			else:
				say "     After a good amount of time searching the place, and crippled by the possibility of there being more traps along the way, you are, unfortunately, unable to find anyone. Whoever this hunter may be has probably set the trap and went away before you could even drop your eyes on them. Or maybe this is just someone playing around. There is no way to be sure, but you do know you really cannot do anything else. With your search coming to an end, you make it back to the main street through another alley. Perhaps there shall be another opportunity, some other time.";
				wait for any key;
		else:
			LineBreak;
			say "     Deciding that triggering the trap would be the one way to make sure you would see this hunter coming, you give it your best shot while trying to position yourself in relative safety. With only the information you have gathered so far, this might still be a risky thing to do...";
			WaitLineBreak;
			let bonus be (( dexterity of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]8[roman type] (Dexterity Roll):[line break]";
			if diceroll + bonus >= 8:
				say "     And with some finesse, you manage to trigger the trap with enough pressure on the rope to set it loose, while keeping out from harm's way. A loud clank fires away and the rope ascends, having captured nothing and remaining hanging in the air. You are definitely sure this sound was heard around the vicinity, so you hide behind one of the garbage containers and check if someone arrives within your sight.";
				DamienIntroDrawn;
			else:
				say "     But a loud clank catches you by surprise, startling you as you freeze in place. This was, very honestly, the worst thing you could do, as suddenly, you feel something grabbing you by the ankles before you are pulled upwards so fast you are left with no reaction. Blood comes flowing down towards your head as you are left hanging upside down, pulled to a considerable height and effectively immobilized. It seems you were caught in the trap, and you were probably not very well positioned, or this rope would never be able to get around your feet. Now, you are only left at the mercy of this unknown hunter while you contemplate your failure in silent shame.";
				DamienIntroTrapped;

to DamienIntroSpotted:
	WaitLineBreak;
	say "     Sneaking your way to this odd figure you saw, you attempt to catch them by surprise as you arrive silently. They never see you coming, until you come closer. 'Who's there?!' they shout, a man's voice, no doubt, as he turns around with a butcher knife in his hand, pointed at you.";
	if BodyName of Player is listed in infections of DemonList: [Damien recognizes player as a demon, at first glance]
		say "     'Stay the fuck away from me, you deviant bastard! Or I'll chop that grin off your face!' he shouts, again, and you seem quite confused at this, given the fact you are not grinning at all. 'How did you get past my trap?! What sort of demonic trickery did you do?!' Oh, that reminds you, due to some previous activities you were involved in, you happen to look exactly like a demon. This does not stick well for someone who happens to hate their kind. Realizing the nature of this situation, you attempt to explain that you are not actually a demon, this is only an appearance caused by the nanites['] reaction with their body... fluids and... parts. Yes, that... Really did not sound too well, did it?";
		say "     'You're even worse, then! You've been fucking around with the likes of them?! Is that why you're now one of them?! Fucking pervert!' You notice that, in fact, he seems very scared of you. His hand is shaking, even though there is fierce rage in his expression. You make another attempt at convincing him that you mean him no harm, and just want to talk to him. While the darkness cloaked his appearance before, you can see he is actually fully human, with an athletic physique, wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap.";
		WaitLineBreak;
		say "     'They fucked you in the mind, too! You can't be trusted!' he replies, but the tone in his voice changed to a lower level, not as shouty as before. You tell him that you are still in control of your thoughts and actions, and if you wanted to hurt him, you would have done so already, mentioning the opportunities you had as you approached him while he was not watching. This seems to click in his mind, and he fortunately drops his guard. 'Alright... I... I'll give you a chance, but if you do anything weird, I won't think twice! You're... You're done, you hear me?!' You nod, stating your understanding for his conditions, and he lowers his arm. 'Fine... You... can come closer, then. Just remember what I said!'";
	else:
		say "     'Who the fuck are you?!' he shouts, again, and you know this to be quite the expected reaction for someone caught by surprise while their guard is up. 'So close to demon territory... Are you with them?! Or against them?! For your sake, it better be the latter!' Aware of how nervous he sounds, you tell him that you do not care about this demon business and just want to talk to him. While the darkness cloaked his appearance before, you can see he is actually fully human, with an athletic physique, wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap.";
		say "     'Well, you should care. These demons are bad news for our kind, they'll take over if we don't do something about it! No exceptions!' he says, as he lowers his arm, but still holding the knife.";
	DamienIntroEnding;

to DamienIntroDrawn:
	WaitLineBreak;
	say "     Not so long after, you notice a shape coming closer to your position, and as they spot their makeshift trap having captured nothing, you hear them speak, a masculine voice, no doubt. 'Fuck! Why did it go?! How?! It doesn't usually fail, like this...!' He definitely seems frustrated at the fact his trap did not work as he intended, but then something appears to click in his mind... The possibility it could have been triggered by someone he could have captured. 'Is there anyone here? Did you do this?! Can't you fucking mind your own business instead of ruining other people's... work?!' he yells, his voice echoing through the alleyway, and he sounds angry. You won't be able to catch him by surprise, but perhaps, you can try to be friendly with him.";
	if BodyName of Player is listed in infections of DemonList:
		say "     But as you show yourself to him, his eyes widen in furious rage. 'I knew it! One of you fucking deviants!' he shouts in response, pointing a butcher knife at you. You urge to beckon him to calm down, though it takes you a while to realize he must have not liked the fact you happen to look like a demon, due to some previous activities you were involved in. In addition to your action, you also try to explain that you are not actually a demon, this is only an appearance caused by the nanites['] reaction with their body... fluids and... parts. Yes, that... Really did not sound too well, did it?";
		say "     'You're even worse, then! You've been fucking around with the likes of them?! Is that why you're now one of them?! Fucking pervert!' You notice that, in fact, he seems very scared of you. His hand is shaking, even though there is fierce rage in his expression. You make another attempt at convincing him that you mean him no harm, and just want to talk to him. While the darkness cloaked his appearance before, you can see he is actually fully human, with an athletic physique, wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap.";
		WaitLineBreak;
		say "     'They fucked you in the mind, too! You can't be trusted!' he replies, but the tone in his voice changed to a lower level, not as shouty as before. You tell him that you are still in control of your thoughts and actions, and if you wanted to hurt him, you would have done so already, mentioning the opportunities you had as you approached him while he was not watching. This seems to click in his mind, and he fortunately drops his guard. 'Alright... I... I'll give you a chance, but if you do anything weird, I won't think twice! You're... You're done, you hear me?!' You nod, stating your understanding for his conditions, and he lowers his arm. 'Fine... You... can come closer, then. Just remember what I said!'";
	else:
		say "     As you show yourself to him, he takes a step back, going for a butcher knife but not quite committing to a threat stance. He sees you are not a demon, and lowers his guard, slowly. 'Very funny, ain't it? Don't you have better things to do?! Because I have, and now I'll have to re-arm the trap, thanks to you!' You really cannot do or say anything else other than apologizing to him for your intrusion, but the clanking sound was very audible from afar, and you had to investigate. 'Just what I needed, someone getting curious. Out of all the weird sounds you hear around here, did you really have to come after a clanking?! Yes, my trap uses metal pieces I found to reinforce the grip, I'm sorry if it's noisy.' he replies, with obvious irony in his last words.";
		say "     While the darkness cloaked his appearance before, you can see he is actually fully human, with an athletic physique, wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap. He must be on a personal vendetta against demons, so that leaves you out of the equation, unless you were to be on their side... which he ends up asking. 'Why were you so worried about it, then? Are you with those red demons?!' Aware of how nervous he sounds, you tell him that you do not care about this demon business and just want to talk to him.";
		WaitLineBreak;
		say "     'Well, you should care. These demons are bad news for our kind, they'll take over if we don't do something about it! No exceptions!' he says, as he completely lowers his arm, but still holding the knife.";
	DamienIntroEnding;

to DamienIntroTrapped:
	WaitLineBreak;
	say "     It seems nobody is coming for you, until a few minutes pass and you see someone coming from deeper in the alleyway. It is a humanoid figure, still hidden by the darkness, and they are carrying what seems to be some sort of butcher knife.";
	if BodyName of Player is listed in infections of DemonList:
		say "     'Caught another one... Looks like another deviant pervert will be joining my personal harem.' they speak, a man's voice, no doubt, and... Wait, he called you a deviant? Pervert? Well, yes, you could be any of those, but is this not going a bit too far? While the darkness cloaked his appearance before, you can see he is actually fully human, with an athletic physique, wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap. The point here is, he is actually still fully human! That means you can still probably reason with him, so you try your best at convincing him that you are not actually a demon.";
		say "     'Don't try to play tricks on me, you infernal bastard. I know your kind to be avid tricksters, and I know that you know exactly what to tell me in order to make me doubt myself! I won't even listen to you.' You beckon him to wait and hear you out, as you really are not a demon. Perhaps giving him a more scientific explanation will open him up a bit more, so you justify your demonic appearance with the nanites['] actions and their reaction with the demons['] body... fluids and... parts. Yes, that... Really did not sound too well, did it?";
		WaitLineBreak;
		say "     He frowns an eyebrow, and his gaze seems to be flaming with rage. 'You've been what?! Fucking with them?! What kind of degenerate piece of shit are you?! Don't you know they'll fucking doom our kind?! And that's exactly how they start, by... literally fucking you!' Well, he has gone from threatening to kidnap, bound, gag and throw you into some hidden abandoned building to [']serve his personal harem['], to scolding you for getting a bit too intimate with your demonic lovers. That is an improvement, though... perhaps you should try to appease his fury a bit more. You promise him you meant him no harm, and you simply want to talk to him, if he would be so kind to allow you to return to the safety of the ground.";
		say "     'No! They fucked you in the mind, too! You can't be trusted!' he replies, but the tone in his voice changed to a lower level, not as shouty as before. You tell him that you are still in control of your thoughts and actions, but you were too incompetent to be able to get through his very well-made trap and ended up being caught in it. This seems to click in his mind, and he fortunately drops his guard. 'Alright... I... I'll give you a chance, but if you do anything weird, I won't think twice! You're... You're done, you hear me?!' You nod, stating your understanding for his conditions, and he approaches you. 'Fine... I'll set you free. Though, remember what I said! One wrong move and I'll gut you!'";
	else:
		say "     'Caught another one... Looks like another deviant pervert will be joining my personal harem-... Wait, what?' they speak, a man's voice, no doubt, and whatever he was saying, he was probably interrupted by the shocking revelation that follows his observation of who he caught with his trap. Not a demon, and judging by how tightly he grips that butcher knife in his hand, you doubt he is in a happy mood. 'Who are you?! Why are you here?! Should have been one of those horned idiots, not... you!' While the darkness cloaked his appearance before, you can see he is actually fully human, with an athletic physique, wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap. You might want to reason with him, given the fact that he is still fully human.";
		say "     'That trap wasn't meant for you! It was for... one of those red devils, as I said before! But now, you've ruined it!' You really cannot do or say anything else other than apologizing to him for your intrusion, but the clanking sound was very audible from afar, and you had to investigate. 'Just what I needed, someone getting curious. Out of all the weird sounds you hear around here, did you really have to come after a clanking?! Yes, my trap uses metal pieces I found to reinforce the grip, I'm sorry if it's noisy.' he replies, with obvious irony in his last words, and lets out a sigh in the end. 'I suppose I should take you out of there... Gimme a sec.'";
	WaitLineBreak;
	say "     After approaching you, he slowly descends the rope and unties the lace around your feet, then cautiously helps you up, with the knife still within reach. 'I'm watching you.' he reminds you as he steps back, watching your every move, as he promised he would.";
	DamienIntroEnding;

to DamienIntroEnding:
	WaitLineBreak;
	say "     You then ask what was the trap's goal, if he intended to capture one of the demons to teach them a lesson, or something. 'Yeah, my trap! I was hoping to catch another one of them and... Give them a taste of their own medicine!' he replies, and you are left wondering what that means, eventually asking him. 'Oh! Aren't you a curious one? Do you wanna know what happens to the demons after I capture them? Hehe... You wouldn't wanna be in their place. They're mine, now. I own them! That's what happens if they take you. They enslave you... They turn you their fucktoys and play with you as if you were a sex doll with no will of your own. They corrupt you until you forget everything about what made you human, in the first place! And worse... they claim your soul! So I'll claim theirs, instead!'";
	say "     Following his rather far-fetched explanation, you go on ahead and ask if he has actually captured any demons, at all. 'What do you mean?! Of course I...' - he then stops, then lets out a sigh before continuing -'Well, I have plans for it, okay? I already have a spot where I'm going to deliver them, and I'm good at making traps! I-I'll catch one! And then teach them the lesson they need to learn!' It is probably for the best to warn him that whatever demon he captures, they would probably enjoy any [']harsh['] treatment he could give them. They feel no pain, they might sometimes enjoy pain, and having sex with them is doing them a favor. You know what you saw in the Hellfire Club...";
	WaitLineBreak;
	say "     'You do seem to know a lot about demons, huh? Did you somehow gain access to that club, as well?' he asks, and you are actually surprised he knows of its existence, given how selective Mogdraz is with whoever can see the edifice, though... It makes you wonder why. 'Yeah... I just let myself get captured by those two twins, to find out where they were taking all those people. Turns out they own a fetish club! But I know, for sure, that they deal with stuff like souls and other things that would pose a threat to the humankind! They are amassing power for a demon revolution, I can feel it!' It is going to be difficult to convince him to drop the whole demon viligante role, but at least he does not seem hostile towards you, anymore.";
	say "     'I think you should come with me. You may have valuable intel on their whereabouts, patrol routes and weaknesses. That would give me the edge I need to finally start capturing them! And you'll see their evil... You'll know what I mean!'";
	WaitLineBreak;
	say "     In all honesty, you are not sure this man is doing so well. His eyes widen a lot whenever he speaks, and he seems to be nearly running out of breath every time he goes on ranting about demons. Surely, something must have happened to him that involved hellspawns, and something that got really stuck in his mind. With a nod, you let him know that you would like to hang out with him, sometime, and while you are at it, perhaps you can be of any assistance to him. 'Yeah, that'd be great... I... really haven't been too successful at this on my own... Don't get me wrong, I'm quite capable! But these demons are elusive! And they're great at tricking you! You should never trust them, they'll always find a way around you, and they'll know everything about you if you let them too close!'";
	say "     And before he goes on another rant again, you tell him you will definitely consider helping him out, and that he has no need to worry anymore. 'Alright, alright... I'll be around here, occasionally. Just... pass by and check, you might find me. I know this isn't the best meeting place, but it's discrete and close to our objective... And we could... do some scavenging, too.' Nodding in response, you finally introduce yourself to him, as he does the same. 'I'm Damien. Nice to meet you.' Someone knows some manners, at least!";
	WaitLineBreak;
	say "     You will be able [bold type]to find Damien in the Dark Alley[roman type] during the [bold type]night[roman type]. Perhaps you should build some trust with him before knowing for sure what to do, regarding his hate for demons and his mental sanity...";
	move Player to Dark Alley;
	move Damien to Dark Alley;
	now PlayerMet of Damien is true;
	now Resolution of DamienIntro is 2;

Section 2 - Damien NPC

An everyturn rule:
	if Resolution of DamienTF >= 3: [TF stage on 3, takes priority. Damien is not freely accessible]
		now Damien is nowhere;
	else if Resolution of DamienIntro > 1 and Resolution of DamienIntro < 5:
		if daytimer is night and DamienScavengingCooldown - turns > 5:
			now Damien is in Dark Alley;
		else:
			now Damien is nowhere;
	else if Resolution of DamienIntro >= 5 and Resolution of DamienIntro < 99:
		if TimekeepingVar is 2 or TimekeepingVar is -6: [early night - arrives at the Club]
			now Damien is in Hellfire Lounge;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre-dawn - leaves]
			now Damien is nowhere;

Table of GameEventIDs (continued)
Object	Name
DamienTF	"DamienTF"

DamienTF is a situation.
ResolveFunction of DamienTF is "". Sarea of DamienTF is "Nowhere".

Table of GameCharacterIDs (continued)
object	name
Damien	"Damien"

Damien is a man.
ScaleValue of Damien is 3. [human sized]
Body Weight of Damien is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Damien is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Damien is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Damien is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Damien is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Damien is 4. [length in inches]
Breast Size of Damien is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Damien is 2. [count of nipples]
Asshole Depth of Damien is 8. [inches deep for anal fucking]
Asshole Tightness of Damien is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Damien is 1. [number of cocks]
Cock Girth of Damien is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Damien is 9. [length in inches]
Ball Count of Damien is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Damien is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Damien is 0. [number of cunts]
Cunt Depth of Damien is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Damien is 0. [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
Clit Size of Damien is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Damien is false.
PlayerRomanced of Damien is false.
PlayerFriended of Damien is false.
PlayerControlled of Damien is false.
PlayerFucked of Damien is false.
OralVirgin of Damien is false.
Virgin of Damien is true.
AnalVirgin of Damien is true.
PenileVirgin of Damien is false.
SexuallyExperienced of Damien is true.
TwistedCapacity of Damien is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Damien is true. [steriles can't knock people up]
MainInfection of Damien is "".
Description of Damien is "[Damiendesc]".
Conversation of Damien is { "<This is nothing but a placeholder!>" }.
The scent of Damien is "     Damien smells like he has been in the streets, for a while... But there is also a very subtle and faint scent of brimstone emanating from him, curiously.".

to say DamienDesc:
	if Resolution of DamienIntro < 5:
		say "     Damien appears to be fully human, at least at first glance, and has shaggy black hair, a somewhat short but unkept beard, and a peachy skintone. He has hazel eyes, especially noticeable when he looks directly at you. Despite his rather messy appearance, he has some quite handsome and masculine features, which would really show if he cared more about his looks. Body-wise, he is a tall man with an athletic physique, and he is currently wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap. He probably carries a lot of stuff with him every time, which tells you that he might actually be a great scavenger, probably the reason why he hasn't yet succumbed to the outbreak.";
	else if Resolution of DamienIntro >= 5:
		say "     Damien appears to be fully human, at least at first glance. He has got a short fade haircut, with shaved hair by the sides and a bit longer on the top of his head, and his beard is a full and trimmed one, looking moderately well kept, taking into account the current circumstances of life. This look emphasizes his handsome and masculine features, though what draws your attention is his hazel eyes, whose pupils are dark slits, reminding you of a dragon's gaze. Body-wise, he is a tall man with an athletic physique, and he is currently wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap. He probably carries a lot of stuff with him every time, which tells you that he might actually be a great scavenger, probably the reason why he hasn't yet succumbed to the outbreak.";

Section 2-1 - Damien Talk Menu

DamienDoneTalking is a truth state that varies.[@Tag:NotSaved]
DamienScavengingCooldown is a number that varies. DamienScavengingCooldown is usually 20000. [@Tag:NotSaved]

instead of conversing Damien:
	now DamienDoneTalking is false;
	if Resolution of DamienIntro < 5:
		say "     You approach the scavenger, who is leaning against a wall, and he turns his attention to you once you come close. 'What is it?' he asks.";
		say "[DamienTalkMenu]";
	else if Resolution of DamienIntro is 5:
		say "     As you encounter Damien having a few drinks at the Club's lounge, you decide to greet him. After the time you spent together, you suppose you could call each other friends, at least. He turns around to face you with a smile and a glass in his hand. 'Heyyy! Is it just me or you're looking even sexier than before...?' he says, and you cannot help but think he might already be somewhat tipsy, to not say anything worse. 'No worries, you were always really sexy... Sooo... I suppose you've got some questions, right...?' In fact, since he just disappeared after your last encounter, you could say you have some, but why not ask him yourself?";
		say "     You also notice his appearance is quite changed. He gave himself a haircut and a beard trim, but what really strikes your attention is his eyes. Once hazel and round, their pupils have stretched themselves into a pair of dark slits, reminding you of a dragon's gaze...";
		now Libido of Damien is 2;
		now Loyalty of Damien is 2;
		now Resolution of DamienIntro is 6;
		say "[DamienTalkMenu]";
	else if Resolution of DamienIntro > 5:
		say "     As you encounter Damien having a few drinks at the Club's lounge, you decide to greet him. 'Friend! To what do I owe the pleasure?' he says, sounding as welcome as he can once you approach him. Currently, he is sitting at the bar, on a stool.";
		say "[DamienTalkMenu]";

to say DamienTalkMenu:
	say "     [bold type]What do you want to talk to Damien about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Resolution of DamienIntro < 5:
		choose a blank row in table of fucking options;
		now title entry is "Go on some scavenging";
		now sortorder entry is 1;
		now description entry is "Build some trust with Damien by going on some scavenging together";
	[]
	if Libido of Damien > 2 and Resolution of DamienTF > 0:
		choose a blank row in table of fucking options;
		now title entry is "Buy Damien a drink";
		now sortorder entry is 1;
		now description entry is "Give him something special";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 2;
	now description entry is "Ask Damien to tell you more about himself";
	[]
	if Libido of Damien > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 3;
		now description entry is "Ask him about his sexual life";
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
				if (nam is "Go on some scavenging"):
					say "[DamienTalkScavenging]";
				else if (nam is "Buy Damien a drink"):
					say "[DamienTalkDrink]";
				else if (nam is "Himself"):
					say "[DamienTalkHimself]";
				else if (nam is "Sex"):
					say "[DamienTalkSex]";
				wait for any key;
				if DamienDoneTalking is false:
					say "[DamienTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you have to take your leave. Damien nods to you.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DamienTalkScavenging:
	if DamienScavengingCooldown - turns < 6:
		say "     It hasn't been long since your last haul. Try asking him next time, perhaps?";
	else:
		say "[DamienTalkScavenge]";

to say DamienTalkHimself:
	if Loyalty of Damien < 1:
		say "     Intrigued by the man, you decide to ask him to tell you a bit more about himself, whatever he feels comfortable enough to tell you. 'You want to know more about me? Uh, well... I'm afraid there's not much I can tell you besides what you can see... I'm just trying to keep alive, though it hasn't been easy...' It does not look like he wants to open up on that subject too much, so you are quick to drop it. Maybe later, once things between you are less tense. Why don't you try [bold type]going for a scavenging with him[roman type]? It could help him relax around you.";
	else if Loyalty of Damien is 1:
		say "     Intrigued by the man, you decide to ask him to tell you a bit more about himself, whatever he feels comfortable enough to tell you. 'You want to know more about me, huh...? Well, you should already know I was merely a resident in Red Light District before shit hit the fans. I'm trying to survive through all this, and have a thing for... uh, against... demons. I-I really meant the latter.' - his voice begins to stutter as his face blushes - 'A-anyway... I've been roaming the area with my friend Iker before he gave himself away to the hellfires, and now I'm on my own. That's it, nothing amazing about me.'";
		say "     This is an improvement, though you think he might have some other secret you do not know about... Everyone has, right?";
	else if Loyalty of Damien is 2:
		say "     Intrigued by the man, you decide to ask him to tell you a bit more about himself, whatever he feels comfortable enough to tell you. 'You're always wanting to know more about me, huh...? Am I that interesting to you?' he replies, laughing in the end. 'You already know I was a resident in Red Light District before shit hit the fans, though I'm doing a lot better, this time, if that's what worries you. I guess that my business with the demons is now closed and I can now enjoy their establishment without holding any grudge... And Arad has been giving me the eye every time. Damn, that dude is insatiable! Though if you get Egran and him together, things go wild...!'";
		say "     'Anyway, I'm doing alright. Thanks for caring, friend.' he finishes, smiling at you.";

to say DamienTalkSex:
	if Libido of Damien is 1:
		say "     You decide to inquire Damien on sexual matters, namely his sexual life and, more specifically, about what stopped him and you from getting more intimate, that time. 'So far, I don't really have much activity. I try not to think about it too much as I'm not sure how that would affect me.' he replies, but you are still curious about the real reason. You do not tell him that, though. He is perceptive enough to notice. 'I have already suffered a change down there, and... I don't know how to feel about that. Sometimes I get really nasty thoughts, about stuff I would never do under normal circumstances... but they sound really appealing...' he stops talking about it, and his expression gets serious. 'I don't want to talk about it. You must've already realized that my head's a mess, right now.'";
	else if Libido of Damien is 2:
		say "     So, given what happened between you two, you decide to ask him how is sexual life is going, despite all those fears he had. 'Ah, yeah... Well, that was hot, the last time we got together... And it kind of made me snap out of it, you know? So I decided to try it out and be more... myself! Turns out my vision got weird after a couple of fucks, though I dig the new look! Got myself a haircut and a beard shave, now I'm looking hotter than ever and ready to get laid more often! What can I say, all thanks to your help, of course! Do you... wanna go for a round two, by any chance?' he asks with a wink and a mischievous grin, poking you with his leg and inviting you to come closer.";
		say "     You actually could, if you wanted to...";
		now Libido of Damien is 3;
	else if Libido of Damien is 3:
		say "     Might as well ask about how his sex life is going. 'Pretty damn good. Honestly, it was never this good. Damn, I really gotta thank you for that. Any chance you're free to receive it?' he says with a wink and a mischievous smile, poking you with his leg and inviting you to come closer.";
		say "     If you wanted to, you could accept his offer...";

Section 2-1-1 - Damien Talk Scavenge Events

to say DamienTalkScavenge:
	now DamienDoneTalking is true;
	if Resolution of DamienIntro is 2:
		say "     You ask Damien if he would like you to accompany him in some scavenging around the district. Maybe on the way, you can be on the lookout for demonic activity. 'Oh, for sure! Let's get going!' He actually sounds eager to get started! This is good, as your presence is actually more desirable than you could antecipate, given your first meeting. You also gave him some time to cool his head, so that probably had a positive effect. The man makes sure he has got all the equipment he wants to bring with him from... one of the garbage containers. Yes, you see him going behind the container and get something from within it... Is this his stash? Did he make a hole in it and put his goods below the piles of trashbags? Maybe you should just wait until he is ready to go and let him explain, if he wishes.";
		say "     Once he is done, he gets up, grabs his backpack and tells you that you can go. Out of courtesy, you allow him to lead the way, and he does so without a problem. 'That's the way I found to hide my stuff, by the way. Pretty neat trick, eh?' he explains, sounding a bit too proud of himself, though... You cannot shake off the idea that he may not even have a place to sleep, if he has to hide his belongings under garbage. Perhaps you could even ask him about that? Well, you do. 'Oh, I told you I had a place prepared to bring those demons in, right? That's where I sleep, mostly. I found like a small abandoned warehouse where I've put down a cot, but I admit it's not the safest spot... Needs some work done.'";
		WaitLineBreak;
		say "     It does not surprise you, nothing that is completely abandoned is left in any good conditions, and given the amount of sex-crazed deviants roaming around this area, you take it that it is not a safe place for him to be. 'Though as you have seen, I know how to lay down some good traps so I keep my territory well-defended against any intruders! Though... since it's a bit far from this area, I keep my stash nearby. I've got tons of junk I've collected during my hauls to craft stuff like this and give myself more tools, so as you can imagine, my pockets fill very quickly...' It makes sense that he needs a spot midway to drop some extra weight, and he does seem like a resourceful fellow.";
		say "     While you are conversing, you exit the alley and head into less visited areas, in hopes to find something useful for both of you. Though as you pass through Crimson Street, the man's attention turns towards the Hellfire Club... You figure this is about time to ask what is his problem with those demons, exactly, since all he has done was stating how much he hated them. He takes a while to answer, as if he only realized you spoke seconds after. 'They took my friend.' he reveals, making a long moment of silence as he turns around and continues walking down the street with you. 'We used to visit the club, it was a nice way to let out some steam... The demons there were nice and welcoming, made us feel comfortable in there...'";
		WaitLineBreak;
		say "     'Then, one day, my friend disappeared. He was nowhere to be found... Didn't return to our shelter, didn't leave a message... Nothing. I went back to the club and asked [bold type]Mogdraz[roman type] directly, and he didn't even... try to hide it! He said it to my face that they took his soul and welcomed him into their ranks, by his request...!' His voice begins to show more and more anger as he goes on. 'They fucking tricked him, I know! And they took the only person I trusted away from me! They must have drugged his drinks, or cast some demonic sorcery on him, he'd never abandon me like that!' The reason to why he hates demons seems clear enough. His friend gave away his soul to the Hellfire demons, and Damien understands he has been tricked into doing that.";
		say "     You are moving deeper into the street, about to move into some alleys between a bunch of residential buildings. Damien keeps talking, but lowering his voice as you both walk on ahead. 'That's when I realized they can't be trusted, and why I want to have my revenge. I want my message to be clear.' These are his final words on the subject, before you turn your attention to the urban landscape in front of you... Nothing impressive, really, just several shattered ground floor windows. You are not quite familiar with this area of the district, but you can tell it has probably also been completely ransacked.";
		LineBreak;
		say "     'I usually don't find much around here, besides some junk and unused parts for my crafts. I take it you'd prefer to look for something more edible?' he asks you, looking at you directly as he is about to examine one of the windows.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Say that you would prefer looking for edible supplies, indeed.";
		say "     ([link]N[as]n[end link]) - Tell him you are fine with whatever he decides.";
		if Player consents:
			LineBreak;
			say "     You state your preference for trying to find perhaps food or water, and he nods as he hears you. 'Alright, then I suppose we could try...' he stops talking, and at first, you do not really know why. 'Wait, I think I heard something.'";
		else:
			LineBreak;
			say "     You let him know that you are fine with whatever he wants to do, as you have no specific needs. 'Very well, then let's just keep looking for...' he stops talking, and at first, you do not really know why. 'Wait, I think I heard something.'";
		say "     With a few steps, you approach his position as he gestures you to come closer, in silence. You hear a voice, a really deep one, which actually sounds very familiar to you... Damien is immediately triggered at their characteristics, and immediately identifies them as hellfire demons. You can tell they are a pair, and... [bold type]You are very convinced that you know them[roman type]. 'They... They're fucking stalking me, I swear! Why are they always where I am...!' he begins to rant, but then it seems like he has different plans. 'Wait... They don't know we're here. Perhaps... We can try setting up a trap! This will for sure catch them by surprise if we flush them out and lead them to it!'";
		say "     It seems like your scavenge run has turned into a demon hunt, and you really cannot do anything to detain him. He is already browsing through his backpack and thinking about a plan. 'Alright, I'll need your help, we've gotta be quick.' he says as he hands you one tip of a rope. 'We're going to manually restrain them by stretching the rope as soon as they come in contact with it. It's going to be wrapped around their feet and they'll just fall on the floor before we run in and finish the job. Come fast!' Well, as far-fetched this plan sounds, you follow his directions and do as he says. Both of you head towards an entrance to the building, which has clearly been forced open, indicating that these demons probably entered through here.";
		WaitLineBreak;
		say "     Following his instructions, you take your position on the opposite side of the entrance with him, holding the rope tight in your grasp. He then produces some sound, announcing his presence to the demons in hopes to lure them to this side. He then gestures you to wait...";
		WaitLineBreak;
		say "     ... And wait...";
		WaitLineBreak;
		say "     ... And wait.";
		WaitLineBreak;
		say "     Nothing comes out of the door. In fact, it all becomes more silent. Perhaps Damien did not think this through well enough, as he himself said before, hellfire demons are more tricksters than fighters. 'Strange... Wasn't I loud enough? Or maybe they're playing tricks...'";
		say "     As he is talking, however, you spot two big figures appearing from behind, sneaking towards him. You immediately recognize them as Arad and Egran, the twin bouncers of the club and the ones who brought you there. They've got a mischievous grin on their faces, and they beckon you to keep silent. You are pretty sure they are not going to harm him, but they want to prank Damien a little. The thing is, perhaps they are unaware that he hates their kind. This is a situation in which you have to decide what to do, fast.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Warn Damien.";
		say "     ([link]N[as]n[end link]) - Let the demons have their harmless fun.";
		if Player consents:
			LineBreak;
			say "     As you see them coming, you try to gesture to the scavenger that someone is behind him, but... he really does not get your message in time.";
		else:
			LineBreak;
			say "     There is not much you could have done, anyway. They close in pretty quickly and would have caught Damien off guard even if you tried to warn him.";
		say "     One of the twins, the one with a scar across his right eye, rushes forward at the last second and grabs your friend, throwing him across his shoulder and keeping him there while he thrashes around, confused and angry. 'Damien boy! Long time no see! How have you been?!' he shouts, while his twin brother just stands staring at them like it was nothing with him. 'What the fuck?! Put me down! Put me down right now!' Damien shouts, clearly not happy with the little prank. 'Whoa! It's alright, man... It's just us, Arad and Egran! We were checking out this house before we heard noise, glad it was you and...' - Arad replies and stops as he looks back at you - '... our new friend! Glad you have been in good company, at least!'";
		say "     You do not really think Damien is listening to anything. He is mad a the demon and his movements are becoming more aggressive... 'I said... PUT ME DOWN!' he shouts, his voice booming across the dark emptiness of the streets, and Arad slowly puts him down without any additional words. 'You've got some attitude, huh? My brother's just being himself, no need to get pissy unless you want to warn literally every fucking other person that someone's here.' says Egran, the full bearded demon of the twins, who comes from behind as he sees the whole thing. 'Well, you started all this shit, sneaking on me like that! And if you want me to be nice, maybe you shouldn't have tricked Iker into selling his own soul to your bunch of liars!' Damien follows up, still talking a bit too loud for comfort.";
		WaitLineBreak;
		say "     'Tricked?! What do you mean?! The guy gave his soul willingly! Master surely must have told you!' replies Arad, who takes a step back as his expression changes to an inquisitive one. 'You know very well why he did that! I don't know why you got that idea in your head, now... That we tricked him or something... As if we needed to!' the demon adds as he crosses his arms in front of his chest. Damien, surprisingly, answers with silence. 'You do know, then. Better stop bugging us for your own frustrations, boy. If you wanted to bang him and he didn't want you back, that's not our problem, is it?' Egran intervenes, and you can see he is not particularly happy with the whole scene.";
		say "     'We're done, here. You'll never admit to what you did.' says Damien, who storms off in your direction as he beckons you to follow him. 'Come, I have some spare food I can give you. No need to linger here any longer.' he says, and he continues walking, expecting you to start following him right away. Arad and Egran seem to be encouraging you to go, as well, so you do not give it a second thought. Quickly, you catch up to Damien, who remains silent all the way back to his stash in the Dark Alley...";
		WaitLineBreak;
		say "     Once you are greeted with the unpleasant air of the garbage filled alleyway, you slow down as your friend lets out a sigh. 'I'm... sorry about that. This really didn't go as I planned.' he apologizes, as he hands you some canned food, as he promised.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Take it.";
		say "     ([link]N[as]n[end link]) - Refuse and tell him to keep it.";
		if Player consents:
			Linebreak;
			say "     You take the food, thanking him for his kindness. 'You ended up coming with me for nothing, so might as well compensate you for that. Don't worry, I've got plenty on me, still.' he says, as he takes a seat against the wall.";
			ItemGain food by 1;
		else:
			Linebreak;
			say "     You refuse the food, telling him that there is no need for that. 'You're sure? Well, suit yourself, then. I've got plenty on me, already, so I guess I'll just eat something now.' he says, as he takes a seat against the wall, opening the can of food and ready to start eating.";
		WaitLineBreak;
		say "     Seeing him there, you take a seat next to him, as well. With all that just happened, you have to ask what that was all about, and Damien knows he has to give you an explanation. 'Iker and I were a bit more than just friends, as you can now tell. I don't know, call it loneliness, we ended up doing some stuff, and I happened to... care about him more in that way. But he had his eyes on this demoness wench at the club and I...' - he makes a brief pause there before continuing - 'I think he sold his soul to stay with her. And nobody convinces me that it wasn't all a trick to get him! It was so easy for them, after all... Why wouldn't they take the chance...?' He does not say anything else, only staring into the void for the next few moments.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Console him... by making a move.";
		say "     ([link]N[as]n[end link]) - Give him a pat on the shoulder.";
		if Player consents:
			now Libido of Damien is 1;
			say "     This was all a love story with a more or less tragic end? Damien does seem like a lonely man, given the state in which you encountered him. You lay your hand on the shoulder closer to you, then slide it across the back of his neck towards his other shoulder, and tenderly pull him to you. He does not offer any resistance... In fact, you think he enjoys it, so you decide to be a little bolder and rub down his chest. He takes a deep and slow breath as you feel his solid pectorals, slipping your hand through the hoodie's opening and against the fabric of his t-shirt, underneath. The air around you gets warmer very quickly, but Damien seems to have frozen, half-way giving in but kind of reticent.";
			say "     He stops you there, putting his hand on yours, but not actually forcing it away. You do stop the rubbing as he begins to talk. 'I... can't do that... Not with...' - he pauses, and lets out a sigh before continuing - 'Sorry, I... need to deal with something, first. Nothing to do with you, though, you're actually alright.' Given that you cannot really proceed any further, you get your hand back to you, letting go off him. 'Sorry about that trap thing... And the other one that nearly got you, too.' he says, and things could get awkward right there, but you both continue to chat for a while before you part ways.";
			say "     Maybe [bold type]asking him about what just happened[roman type] later, when you meet him again, would be in order?";
		else:
			say "     Given the harsh ending Damien got with his friend, you suppose he could use a friendly gesture. You pat his shoulder and give him some encouraging words, which he appreciates, as he turns to you with a slight smile on his face, the first you have seen since you met him. 'Thanks, you're actually alright. Sorry about that trap thing... And the other one that nearly got you, too.' he says, and you both continue to chat for a while before you part ways.";
		WaitLineBreak;
		follow the turnpass rule;
		say "     You may have had a lot of indications that you should probably inquire [bold type]Mogdraz[roman type] on this guy, but you must continue to [bold type]interact with Damien[roman type] and see where things go. Mentioning him to the Demon Lord should only come in handy later, when you are in hold of the man's trust and know everything you can about him.";
		now Resolution of DamienIntro is 3;
		now Loyalty of Damien is 1;
		now DamienScavengingCooldown is turns;
	else if Resolution of DamienIntro is 3:
		say "     You ask Damien if he would like you to accompany him in some scavenging around the district. Maybe on the way, you can be on the lookout for demonic activity, if it so pleases him. He does not sound as eager as last time, however... 'Yeah, we can go. Might help me clear my mind, but I'm happy if we don't see any demons on the way, to be honest.' That is unexpected, to say the least, but it appears that Damien only wants to go on a scavenge run without worrying about any devils or devilesses. You cannot really complain, since as long as your friend does not pose a threat to them, he should be fine. It did not look like the Hellfires had anything against him, either... In fact, they seemed pretty friendly towards him.";
		say "     'Uh... you're coming or what?' Oh, it appears you were distracted by something as he calls for your attention. Nodding, you walk up to him and you both start to head down the alley, this time not towards the Crimson Street, but the other way around to the narrower areas of the alleyway. 'Ugh, stinks in here. Even more than the garbage behind us... Even the ground is sticky.' he comments, and you think you know what usually takes place here. Who would know that horny roamers would prefer tight places to fuck around, right? Either way, you go past this alley and onto the Northern Street, pass through it and onto some abandoned shops and questionable stores.";
		WaitLineBreak;
		say "     'Hm... think we'd find something around here? These areas were the most affected by looters, since it is where most of the commerce of Red Light was situated...' he asks you, but he seems more likely to be wondering to himself. 'Maybe in this one? Way back in the area, out of view... Maybe it didn't get draw as many people as others did.' As he speaks, he picks the door's lock, which was still locked. With the glass still covering the windows, you suppose this one indeed escaped the eyes of the ransackers. Damien leaves the door open so you can follow after him, and maybe you know why nobody ever came here. The store is mostly empty and very uninteresting, you cannot even quite tell what kind of shop it was... but there is this faint scent of incense still lingering, somehow...";
		say "     'Heh... Not much going on in here, huh? And it's also really dark...' he says, as he pulls out his flashlight to illuminate the room around you. 'Well, I know what I'm going to get. A place like this should have some good electrical parts still functioning. Could make some neat stuff... Why don't you check that spot over there?' Damien points towards a door left ajar, where you think is a room used to store stuff inside, like personal belongings and such. You see no reason why not to take a look at it, so you walk up to that door, push it open and let your friend shed some light onto the area. There isn't much in here besides some bags with empty boxes and the occasional odd trinket.";
		WaitLineBreak;
		say "     'Looks like this might have been like a small mart of trinkets. Probably esoteric stuff, given the smell? Yikes, it's a bit creepy, if you ask me. Esotericism in Red Light... And a store that has not been entered since the nanite outbreak... Might be superstition, but I'd rather get out of here quickly, once I'm done collecting some stuff.' While the scavenger speaks, you manage to find a large bottle of what you hope is [bold type]clean water[roman type], hidden within one of the bags. It was a lucky haul, you have to say, all things considered...";
		ItemGain water bottle by 2;
		say "     In the meantime, as you show Damien what you have found, he heads towards what you think is the electricity board. He tries it out, to no avail. 'Wasn't expecting anything else, just double checking. Why don't you keep guard while I... strip the store from its now unnecessary [']components[']?' he asks you. It is a good idea to keep guard, in fact, so you head to the door and wait for him to be done. The next few moments are filled with noises of things falling, metal clanking, and other stuff being forcefully pulled... you think. Damien might be a resourceful man, but he is quite noisy when collecting his... you could call it [']parts['], a way nicer word than junk. Plus, he does seem to be making use of everything, or so he says.";
		say "     It takes a while, but Damien then returns, having packed his loot. 'Phew... I'll have enough to entertain myself for some time, now. And you got some water, so I'd call this a success!' he triumphantly states as you make your way out of the strange shop. 'I'll probably call it, here. I want to see what I can do with what I've got back at my shelter. How about we meet up again tomorrow? Or... whenever you can.' he asks, and you nod, agreeing on consdering it depending on how things go on your end. 'Alright, I suppose we can part ways here, as my shelter is nearby. One day I should invite you over, if all goes well. Anyway, see you soon! And thanks.'";
		WaitLineBreak;
		follow the turnpass rule;
		say "     You both are walking up to the intersection neighboring the Northern Street when Damien heads in another direction, down south. He seemed better, today... But you have a feeling this still was not the end of it.";
		now Resolution of DamienIntro is 4;
		now DamienScavengingCooldown is turns;
		move player to Northern Street 1;
	else if Resolution of DamienIntro is 4:
		say "     You ask Damien if he would like you to accompany him in some scavenging around the district. He looks at you, but takes time delivering a reply, as if distracted by something. 'Uh... Yeah... Sure...' You ask him if everything is alright, first. He, once more, turns his gaze at you with a delayed timing. 'Yes... Uh... Mind if I lead the way?' There is no reason to not allow him to, so you tell him to go on ahead. 'Thanks. Let's go, if you're ready.' The man is definitely acting strange, so you keep an eye on him as you give the green light. Both of you begin to walk in the other direction of the alley, into the narrower area, then across the Northern Street.";
		say "     This seems really odd, as you realize you are repeating the steps of your previous run, towards the strange shop you both found, before. Damien seems to have developed a way to lock and unlock the door, as he immediately heads towards it in order to open it. You wait for him, until he gestures you to enter. As you both head inside, the scavenger closes the door behind you and locks it. This is not very usual, at all. Since it is really dark inside, he places down his flashlight and aims it against the walls, disseminating the light and providing a better overall illumination throughout the room you are in. There is only silence between you as he tells you to take a seat besides him, on top of what was (and still is, in a way) the shop's counter.";
		WaitLineBreak;
		say "     'Alright, I really wasn't in the mood to go on a scavenge, today...' he reveals, looking down to his hands, fingers intertwined, laying on top of his legs fidgeting slightly. 'My shelter got raided. It was all turned upside down and everything I made... completely ruined.' Carefully, you ask Damien what he was doing there, exactly. You do not want to upset him. He lets out a sigh before answering. 'A makeshift fucking and milking machine.' He says nothing more, and neither do you. You know exactly what he wanted to use that for. He really just cannot let it go. 'The plan was to hook a demon onto that. I... Don't know why, I thought it was a fun idea.' Well, fun... Probably. But what is his idea of revenge? A demon would have probably loved that... But you do not tell him that, just yet.";
		say "     'But then, you showed up... and hanging out with you made me think twice about it. I started to question why was I really doing that, for... And, to be honest, I've always been scared of the real reason.' You brace for the big revelation as you turn your full attention to him. 'I really got jealous of what happened with Iker. I felt like the demons stole him from me, and my mind began to picture all these scenarios in which I was... in control... of these demons. Something like [bold type]Mogdraz[roman type] does, even. But... then it got... more wicked. I wanted to subdue them in a different way. In my brain, it was all excused with a sense of revenge, when it really was just...' - he pauses, as he thinks of a word but fails to find the right one - 'I should just probably tell you something.'";
		WaitLineBreak;
		say "     'So... I've got a change. I look fully human in the outside, but the thing is... My... well, my dick is not human. It got turned when I had a strange drink at the bar. I asked for something to help me open up, and first thing I notice after drinking the whole cup is a warm tingle in my groin and a ridiculous burst of confidence.' You are not going to lie to yourself, this is getting interesting, so some encouragement is in order, which you do by showing him how much attention you are paying to him, completely focused on his tale. 'Until that point, I never had anything with Iker. He seemed straight... until, somehow, we ended up fucking like animals. He had a way to do it that got me so goddamn fucking excited, it was like he worshipped me...'";
		say "     He adjusts his legs as he speaks, clearing his throat as you notice his hands covering the area around his crotch. 'So, uhm... Anyway, I... felt really possessive of Iker for a while, and I was a bit controlling, even. I actually think he drank something strange in that night, too, but that's besides the point. He then revealed he was infatuated with this demoness escort at the club, and last thing I know, he sold his soul. I was furious... I felt like they stole him from me, as I said. I somehow felt like he was mine.' That definitely seems like a bit of a toxic thing between two people, but you can tell Damien was not mentally well. You then ask him about that change he mentioned.";
		WaitLineBreak;
		say "     'Ah, well... My dick became sort of... a slitted dragon dick. Bigger, too... And it felt fucking weird at first, I realized the more I played with it, the more that strange confidence got hold of me. So I refrained from doing it while I went on a rampaging demon hunt, telling myself that it was for justice and not for... well, grief for the [']loss['] of someone that [']belonged['] to me. I take it he became a full demon, but I never saw him again. I don't think they're letting me, even.' You nod to him, understanding that what he experienced could be something related to the nanites in his system. It would appear to have been his first contact with them, though you ask him more about that drink, as well.";
		say "     'The drink? It was [bold type]Toron[roman type] who gave it to me, said it was limited edition or something. Though, it was completely my responsibility, I was the one accepting it without knowing for sure what it was. Then I gave myself a dragon dick as my sex drive skyrocketed! It felt amazing, but wasn't so great for my mind. Fortunately, you came by... And hanging out with you helped me stabilize. Still, I was trying to finish that machine, but it was more out of craftsman pride than anything else.' You deliver the news, that the transformation he got is what is messing up with his mind, and that it takes a strong willpower to resist its changes. You suppose that interacting with someone else after everything that happened helped him see things differently.";
		WaitLineBreak;
		say "     'You're right, yeah... I feel a lot better ever since you found me, definitely.' he says, as you begin to notice his hand on your leg, rubbing across your thigh tenderly. 'And I've also been thinking that I should get used to this, rather than fight or run away from it...' adds the man, as he gives you a smile while he seems to be making a move on you. 'Would... it be too much if I... asked you for a [bold type]blowjob[roman type]?' he follows his question with his hand brushing against the back of your head, as he then caresses you gently. Now, you are definitely sure he is making a move. How do you feel about this? Would you want to [bold type]oblige his request[roman type] or [bold type]refuse any sexual contact[roman type] with him? You might not be into guys at all, who knows...!";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Go for it.";
		say "     ([link]N[as]n[end link]) - You would rather be just friends.";
		if Player consents:
			Linebreak;
			say "     Looking back into his hazel eyes, you tell him you would love to provide him a good time, and immediately reciprocate his move with one of your own, placing your hand on his leg and slowly making your way towards his crotch. At first, you do not notice it bulge much, but that soon changes as Damien's arousal grows. You feel something growing against his pants, and it seems to be getting thicker, too. He lets out a deep breath, almost a moan, as you caress his manhood through the denim. 'That feels really good...' he comments, as he then proceeds to finally unzip his jeans and slide them down, together with his underwear. A big, fat and red reptile cock jumps out of its confines almost immediately after, throbbing and leaking with desire. It seems to also have a knot which would swell right on his climax.";
			say "     Such a strong erection like this only indicates that he has not seen any action for a long time... The poor man must be in desperate need of a good release! You try not to tease him too much and decide to give him generous stroke, instead, placing both your hands around his draconic manhood and rubbing it all over. The way it throbs in your grasp is an additional sign of how much he wants this, and it must reach around nine inches of length, already. Without any further ado, you put your lips and tongue to work by wrapping them around his cock, letting it inside your mouth with a salty welcome, as a thick drop of precum greets your taste buds. Now, he lets out an audible and breathy moan as you take him in, giving his dick a good taste.";
			WaitLineBreak;
			say "     With your tongue wiggling across its pointy tip, it then reaches for the shaft and beyond as you pull his length deeper inside your mouth. With your best efforts, you begin to slide your lips up and down along his cock, tilting your head every time you dive to give him some extra sensations. 'Oh, fuck... You're amazing...!' he compliments you, now grabbing your head with both his hands and following your motions, but you notice him wanting to slowly take the lead, so you allow him. Eventually, he is the one guiding your movements, how fast and how deep you suck him... 'Fuuuck, your mouth feels amazing...!' he exclaims in a lusty tone, almost fucking your face with each eager motion.";
			say "     As he picks up the pace, you feel his knot beginning to swell as you ram your lips against it, or rather, as he slams it against them. By now, he is deliberately using your head as his fleshlight, lost in bliss and joy as he builds up his orgasm, ready to burst anytime. His breathing deepens as Damien starts giving signs that he is getting close, about to give you his load that has been awaiting its release for a long time. 'Fuck, fuck... I'm gonna cum- oh FUUUuuuck...!' he barely finishes warning you and a powerful geyser comes shooting inside your mouth with considerable force, forcing you to swallow it immediately as it begins to fill you. He goes on cumming for a good while, and you continue to swallow it all... He actually did not give you any choice.";
			WaitLineBreak;
			say "     His cum seems safe, as you feel nothing changing in your body right as you take a full load of this man in your stomach. Once he lets go off you and you are allowed to remove your lips from his still throbbing shaft, you do so and catch your breath. Then, you both exchange looks. There is pure bliss in his hazel eyes as he smiles back at you. 'This is what I've been losing...! Fuck, I should do it more often...! Right, not about to get too crazy with it, but... Yeah, I gotta try it some more times!' Well, it seems he really enjoyed it, and you managed to put some happiness back on his face.";
			NPCSexAftermath Player receives "OralCock" from Damien;
			WaitLineBreak;
			say "     As you both recollect yourselves from this brief sexual activity, Damien begins to talk about a different matter. 'So... Well, after I told you all this, I suppose I still need to thank you for everything you have done for me.' You nod, but he sounds strange, again, so you ask him if anything is wrong. He replies, not shortly after. 'No, no... Everything is fine. More than fine, actually! This was amazing and I really feel... good! Thanks to you, again.' - he pauses - 'It's just that I... well, I need to be with myself for a while, now. I'm probably [bold type]not going to be back at the Dark Alley[roman type], so don't look for me there... But I'm sure we'll meet again!'";
			say "     With renewed confidence, he gives you a smile as you both get up and prepare to leave. After he is done unlocking the door and push it open, he puts a hand over your shoulder and looks at you, your gaze locked in his hazel eyes, for a while... 'So... this isn't a goodbye, but a [']see you later['], alright?' he says, and these are his final words before you part ways... But not his final action. His hand finds its way to your cheek as he goes for a kiss on your lips. A brief and shy one, but sort of tender and warm... You doubt he would have the boldness to do such a thing, before. It is now that he leaves you, traveling down the Northern Street into places unknown.";
			WaitLineBreak;
			say "     If you are still curious about Damien, perhaps [bold type]people in the Hellfire Club[roman type] would be able to tell you more about him.";
			now Damien is nowhere;
			now Resolution of DamienIntro is 5; [he left temporarily, and will be back]
		else:
			LineBreak;
			say "     Without wanting to sound rude or harsh, you tell him that you would prefer to keep things friendly between each other, without sex. He cannot hide the disappointment in his face, but he respects you. 'Alright. That's fine. Uh... Sorry I asked. Won't happen again.' The next few moments are a little awkward, but he breaks the silence soon after. 'So... Right, I gotta thank you for everything. Though, maybe I should... Just get going, yeah? I'll... be around. Probably [bold type]not back at the Dark Alley[roman type]... I think I need to be with myself for a while, now. It was really nice meeting you! I really hope you make it out of here and follow your dreams... if, well, you have any. I'm just... trying to say goodbye, that's all.'";
			say "     Well, of course there was no need for him to leave like that, albeit you do understand this must have been an awkward situation for him. Nonetheless, you ask him why he is leaving, just like that, after telling you his whole story. 'To be honest... I'm just done with this place, you know? I just want to leave and be free from my past. Staying in Red Light won't do. I... really just gotta go. You probably won't see me again... But I hope you make it in one piece, yeah?' It sounds like Damien will be gone, for good. You have no right to stop him, and you do not, as he stands up and goes towards the door to unlock it. But before you part ways, he hands you something. 'Here you go. I was holding on to this for a while, in case I... went back there. I guess I won't be needing it, anymore, so... Just treat yourself something nice on my behalf.' he says, as a small bag full of what seems to be Obsidian Coins falls in your palm. It must be carrying a bunch of them!";
			ItemGain obsidian coin by 17;
			WaitLineBreak;
			say "     Naturally, you thank him, and he gives you one last smile before he leaves you, walking down the Northern Street into places unknown.";
			say "     You do have a feeling you will never see him again. It feels... strange.";
			Linebreak;
			say "     If you are still curious about Damien, perhaps [bold type]people in the Hellfire Club[roman type] would be able to tell you more about him. Though there wouldn't be much of a point in doing so, right now, you could sate your curiosity somewhat, if you still have any questions you want answers for.";
			now Damien is nowhere;
			now Resolution of DamienIntro is 99; [he left, for good]

Section 2-2 - Damien Sex Menu

instead of fucking Damien:
	say "[SexWithDamien]";

to say SexWithDamien:
	if Libido of Damien < 2:
		say "     You are not really at the stage you can just offer to sex him up. Try befriending him, first.";
	else if Libido of Damien < 3:
		say "     It is true that you have already had some fun together, but perhaps you should try talking to him about it, first?";
	else if Libido of Damien >= 3:
		if lastfuck of Damien - turns < 5:
			say "     You and Damien have had enough for a night. Maybe try again next time you see him.";
		else:
			say "     You get closer to the scavenger and let him know you would be down to get laid with him. He loves knowing this, and slides a payment over to Toron, who takes the coins and gives the green light to access one of the bedrooms. Damien gives you a suggestive wink as he puts his arm around your shoulders and leads you to this more private section of the Club.";
			say "     After entering the assigned bedroom, Damien closes the door and approaches you, eager to get started. 'Damn, I'm glad we got a moment for ourselves! What did you wanna do? Any hot ideas?'";
			say "[DamienSexMenu]";

to say DamienSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Offer to suck his cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let him fuck you";
	now sortorder entry is 2;
	now description entry is "Bend over for Damien";
	[]
	if Libido of Arad > 0 and Libido of Egran > 0:
		choose a blank row in table of fucking options;
		now title entry is "Propose a foursome with the demon twins";
		now sortorder entry is 3;
		now description entry is "Damien would definitely be into group sex, right";
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
				if (nam is "Give him a blowjob"):
					say "[DamienSexBlowjob]";
				else if (nam is "Let him fuck you"):
					say "[DamienSexFuck]";
				else if (nam is "Propose a foursome with the demon twins"):
					say "[DamienSexAradEgranFoursome]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     It is true that you have already gone to a bedroom together, but you tell Damien that you forgot you had something to do around this time and really, really have to leave. He looks disappointed, but does not stop you. Maybe he can get someone else to spend the night with!";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DamienSexBlowjob:
	say "     Maybe it would be a good time to offer him a blowjob, if he is down for some oral pleasure. While saying this, you feel up each others['] bodies as you wait for his answer, which takes a while given how distracted he is touching you all over. The young man gives you a sexy look as he begins to process your suggestion and slides his hand over the back of your head. 'Oh, that'd be hot... Like how you did back then... Still think about it to this day.' he says, and you start feeling something on his crotch already poking at you. 'Just gonna sit on the bed and watch you work those lips and tongue all over my cock...' You are sure he is getting excited from the anticipation of having you kneeling between his legs alone.";
	say "     With your choice made, Damien kisses you deeply as you are slowly pushed towards the only bed in the room. He is not quite ready to let you go down on him yet, so he pushes you back to keep making out with you, pinning you down between him and the soft crimson sheets. While you feel his tongue wrestling yours, the erection in his pants only grows harder and bigger, with the air around you heating up as lust begins to take over. 'Ready to put that mouth to work?' he asks, turning around to take a seat over the edge of the bed as he lets you move in front of him in order to undo his belt and pants['] buttons, only to slide them down and reveal the so eager draconic dong, waiting for your affection and love.";
	WaitLineBreak;
	say "     A kiss on his tip is all it takes to make that cock throb, and Damien never takes his eyes away from you. So much, in fact, that you begin to get drawn to them as you tease him with a lot of licking around that pointy tip, leaking precum by now. It's hot and sweet, and it kind of entices you to keep licking it up the more his dick oozes, though your attention really gets grabbed by his gaze. Somehow, the junction of that warm cock in your mouth and his lusty draconic eyes tempts you to just let your mind afloat...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Keep looking into his eyes.";
	say "     ([link]N[as]n[end link]) - Avert your gaze.";
	if Player consents:
		Linebreak;
		say "     You just cannot help it. Those hazel orbs then shift to a fiery orange as they take your senses with them, your entire surroundings seeming irrelevant, only leaving Damien in your mind. His pleasure, his desires and sensations... you feel everything, and feel compelled to continue pleasuring him. The scavenger does not seem to be aware of this, as all he does is attentively observing your efforts at sucking his cock, moaning and biting his underlip at every movement you make with your tongue and lips, servicing that penis the way you just happen to know he most loves.";
	else:
		Linebreak;
		say "     You would rather keep your senses together, so you break eyecontact a couple of times and, without exactly knowing why, things seem to return to a relative normality. Damien is completely oblivious of this as you continue to pleasure him, and all he does it attentively observing your efforts at sucking his cock, moaning and biting his underlip at every movement you make with your tongue and lips, servicing that penis the way you know best.";
	say "     'You're soooo good at this...' he compliments you, barely able to hold his voice down as you continue to take his manhood deep in your mouth, your lips now tightly wrapped around his shaft as you continue to suck him. With your hands still free, you use one of them to fondle and gently rub around his hanging ballsack, the only part of his junk that is still human-looking... sort of. The other hand is put around the base of his shaft, following your lips up and down to give him more stimulation, which he truly appreciates. 'Mmh... Fuck... I can't resist doing it...' he warns, as you find one of his hands grabbing the back of your head, once again, and taking lead of your movements.";
	WaitLineBreak;
	say "     He starts pushing your head down and letting it back up as much as he wants, keeping his eyes on you throughout the whole process, and you can tell he loves the control. Using your mouth as a fleshlight may actually be one of his favorite things, as you can feel his dick throb and leak at an increased rate once he fully commits to it. Now, both his hands are grabbing your skull, pulling you down and pushing you up, still, forcing you to take most of his length down your throat. 'Fuck... yes! That's it, take that cock deep for me...' Damien keeps facefucking you, and you feel each movement going deeper in, which causes his knot to begin swelling. Fortunately, he does not bury it all in you, or it could give you a bad time with a big dragon dick stuck in your throat for an unknown amount of time...";
	say "     'Fuck, I'm gonna cum...!' Even amidst his fiery lust, he is careful enough to only let it ram against your lips over and over, and soon, its meaning becomes evident as he hits his climax. 'Swallow it... all...!' the scavenger commands, and you really have no choice as he holds you there, with his dick inside your mouth, pumping his entire load down your throat and into your stomach as it throbs and pulses constantly. This creamy spunk is so hot and sweet you feel you could have a ton more of it, descending so delightfully through your esophagus that you pay no mind to how long his orgasm actually lasts, with the man moaning and grunting as each spurt of cum leaves his dick. 'To the last... fucking... drop...! Fuuck YES!'";
	WaitLineBreak;
	say "     The loud young man eventually starts to calm down, panting as his climax subsides, having given you a generous filling he is definitely proud of. 'Damn... With you it's always like this, fucking intense. I think I really like you!' he says, after he pulls his cock out of your mouth, which is now beginning to shrink down into its slit. 'Hey, come cuddle with me a bit before you go?' he asks, and you really see no reason why not to do that, so you climb up to the bed with him as you both take each other in for a sweet embrace. The sheets and pillows are really comfortable, too, and you get a good rest in Damien's arms...";
	say "     ...Until he dozes off. And it really does not take too long for that to happen. You figure you should stay a while longer until you finally leave him there, sleeping soundly.";
	NPCSexAftermath Player receives "OralCock" from Damien;

to say DamienSexFuck:
	say "     Maybe it would be a good time to offer him your [if player is female]pussy[else]ass[end if] for a good fuck, if he is down for some hot [if player is not female]anal [end if]pleasure. While saying this, you feel up each others['] bodies as you wait for his answer, which takes a while given how distracted he is touching you all over. The young man gives you a sexy look as he begins to process your suggestion and slides his hand over your butt. 'You wanna let me fuck you, hm? Just a warning, though... I'm going all in, yeah?' he says, and you start feeling something on his crotch already poking at you. 'You're gonna take this dick like a good [boygirl] all the way down to my balls...' You are sure he is getting excited from the anticipation of having you under him, taking his dick deep inside you.";
	say "     With your choice made, Damien kisses you deeply as you are slowly taken towards the only bed in the room, and he then pushes you back to keep making out with you, pinning you down between him and the soft crimson sheets. While you feel his tongue wrestling yours, the erection in his pants only grows harder and bigger, with the air around you heating up as lust begins to take over. 'I'm gonna love fucking you.' he says, amidst his lusty kissing, until he stands up and begins taking off [if player is naked]his clothes[else]your clothes, only getting naked after you[end if].";
	WaitLineBreak;
	say "     As the young man feels up your body, he never takes his eyes away from you. So much, in fact, that you begin to get drawn to them as you are teased with his touch, his hands moving around your chest, your waist, moving down to your legs, just past your butt... though your attention really gets grabbed by his gaze. Somehow, the junction of that warm touching all over your body and his lusty draconic eyes tempts you to just let your mind afloat...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Keep looking into his eyes.";
	say "     ([link]N[as]n[end link]) - Avert your gaze.";
	if Player consents:
		Linebreak;
		say "     You just cannot help it. Those hazel orbs then shift to a fiery orange as they take your senses with them, your entire surroundings seeming irrelevant, only leaving Damien in your mind. His cravings, desires and sensations... you feel everything, and feel compelled to give yourself to him completely. The scavenger does not seem to be aware of this, as all he does is preparing you for what is to come, making you wish for his dick inside you as he lifts your legs to wrap them around his waist. With a will that is not entirely your own, you beg him to fuck you really, really hard, which causes him to bite his underlip in appreciation. 'Oh, yeah? You wanna beg for this dragon dick?' he teases you, and it does not take any hesitation within yourself to beg for it again, which turns the man on by a lot. You just can tell he loves hearing you say it.";
	else:
		Linebreak;
		say "     You would rather keep your senses together, so you break eyecontact a couple of times and, without exactly knowing why, things seem to return to a relative normality. Damien is completely oblivious of this as he continues to lift your legs and get you in position. 'So, how hard you want me to fuck you? Just hard or really hard?' he asks, winking at you as, by the looks of it, he is not giving you much of a choice. Nonetheless, you tell him what he wants to hear, which you think is the latter. 'Great minds think alike, right?' he adds, and you nod, leaving Damien even more turned on and eager to get down to business.";
	say "     Following this, you feel his erection pressing against your [if player is female]wet curls[else]anus[end if], threatening to enter, but not quite there, just yet. The scavenger takes his time, making sure he has a good grip on your hips, and only then he begins to slowly thrust into you, his tip and shaft burying themselves slowly deeper inside. As you feel the girth of his meaty stick pushing against your inner walls, he lets out a low moan while thrusting it all the way in, effectively fitting his whole reptilian dick in your [if player is female]vagina[else]ass[end if]. The meat throbs unceasingly with all the excitement he is feeling, and that is when you know he is ready to get rough.";
	WaitLineBreak;
	say "     Moving his hips, he takes his cock back and forth inside you in hard fucking motions, thrusting into you slow and deep at first, then picking up the pace after several times pounding you, sending you into a frenzy of pleasure. 'Feels fucking amazing... Wish I had this [if player is female]pussy[else]hole[end if] ready for me at any time of the day...' he tells you with a wink and smile, all before he begins to lean over to make out with you, his lips touching yours and tongues going for a twirl together right after. His athletic body comes rubbing against yours, sensually touching and feeling you up all over, and all this encourages him to fuck you as intensely as he is able.";
	say "     The warmth of his body, his heartbeat, you feel everything and every single bit of his sexual drive as he thrusts into you like a battering ram, going wildly at it non-stop with the stamina of a marathonist. Ecstasy strikes you as you come closer to hit your climax, and so does he. 'Fuck, I need to fill you up...' he warns you, and not soon after he says it, you feel his knot beginning to swell as he reaches the point of no return, burying himself fully inside you as he deposits a generous amount of cum right up your [if player is female]womb[else]bowels[end if]. At the same time, you come around your own and begin to [if player is male]shoot your load over your waist[else]quiver in bliss and joy[end if] as your orgasm runs you over like a heavy truck. The now sweaty Damien tries to catch his breath as he looks over at you, his gaze looking as sweet and drawing as ever.";
	WaitLineBreak;
	say "     Damn... With you it's always like this, fucking intense. I think I really like you!' he says, after he pulls his cock out of your [if player is female]pussy[else]ass[end if], which is now beginning to shrink down into its slit. 'Hey, come cuddle with me a bit before you go?' he asks, and you really see no reason why not to do that, so you lie down to your side on the bed with him as you both take each other in for a sweet embrace. The sheets and pillows are really comfortable, too, and you get a good rest in Damien's arms...";
	say "     ...Until he dozes off. And it really does not take too long for that to happen. You figure you should stay a while longer until you finally leave him there, sleeping soundly.";
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Damien;
	else:
		NPCSexAftermath Player receives "AssFuck" from Damien;

to say DamienSexAradEgranFoursome:
	say "     Why stick to a limited number of options when you can actually ask people to join you? With a clear intention in your mind, you suggest to Damien that you should get the demon twins, Arad and Egran, to join you in a foursome. His eyes widen as he raises both his eyebrows, amazed at your idea. 'Ooh! Sure! I'm sure they'd be down for it! Hopefully Mogdraz will let them leave the post, though...' You tell him that is not a problem, as they can get someone to watch the club for them while you have your fun. 'In that case, let's go get them! I'm excited, now...' he tells you, and as both agree on the course of action, you leave to get the demon twins at the entrance of the club.";
	say "     Once you and Damien approach them, you forward the invitation, which they gladly accept. Now it is a matter of waiting for them to arrange a break so they can go with you back to Damien's rented bedroom...";
	WaitLineBreak;
	say "     Eventually, everything is sorted, and all four of you are back in the private room, door locked and ready to get into action. 'Great timing! Me and Egran were getting really bored out there...!' says Arad, who stands in front of you, looking at your face with probably a plethora of dirty thoughts in mind. Egran rolls his eyes at his brother's words and turns to him 'You're always bored. The only time you aren't bored is when you're fucking.' ending right behind you as he places his hands over your shoulders. 'There's nothing wrong with that! We all need some fucking fun!' says Damien, who comes at you, looking at the twins and placing a hand over the back of your head. Judging by how they are all converging around you, that means you are probably the one who is going to entertain all the three boys...";
	say "     With the mood now set, you are all given a time to get naked while you stare at each others['] bodies with the ever building anticipation. You know Arad and Egran to be hellfire demons, significantly taller than the average bipedal dweller, sporting quite the muscular physique each, with Damien being more on the athletic side and around your height. The contrast is something interesting to note, especially as they are all around you, feeling you up from the front and back. Egran seems more drawn to your butt, while Arad and Damien use this opportunity to caress your chest and crotch, leaning in for the occasional kiss on your lips, sometimes the demon, other times the scavenger, until at some point you are all just kissing as a trio.";
	WaitLineBreak;
	say "     'The ass is mine.' says Egran as he winks at his brother. 'Typical of you, always a fan of backdoors!' replies Arad with a smirk, while both him and the young man begin to push you against the bearded devil behind you. He also grabs you back and sits down on the bed with you, keeping you in his arms as Arad's cock comes into your sight, at eye level. 'Gonna suck us off while you ride Egran's dick? Sounds like a plan.' he says, giving Damien's reptilian dick a grope as it reveals itself to the group. Then, you have two very different dicks in front of you, and with it, a decision to pick whichever you are going to put in your mouth, first... 'Heh, don't think too much! You're gonna have to suck both, eventually...' says Damien, as he and Arad both make their cocks jump repeatedly, patiently waiting...";
	say "     In the meantime, Egran's erection is throbbing against your buttcheeks, pulsing with a nearly scorching warmth. He does not move to put it in you, yet, only enjoying the gentle friction between his body and yours, for now.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Suck Damien's dragon cock first.";
	say "     ([link]N[as]n[end link]) - Pick Arad's big red dick, instead.";
	if Player consents:
		Linebreak;
		say "     It may be quite a hard choice, but seeing that exotic looking cock pointed at you, eager for your attention... You just cannot deny it. Still, you do not leave Arad hanging alone and give him your hand for some steady jerking, while Damien gets your mouth, at first. Giving the young man a good lick from the balls to the base of his reptilian dick, then to the tip, slowly as your tongue wiggle slightly all over that meat, just causes him to moan and throb at your affection. While Egran has his fun rubbing your torso all over, his strong hands sliding over to your chest when they are not going for your [if player is male]lonely cock[else if player is female]lonely pussy[else]crotch[end if], you put your effort at swallowing the young scavenger's dick all the way down your throat while Arad has to make do with your hand stroking his girthy and long meatlog.";
		say "     Though, you decide that the man has had enough of your mouth, for the time being, and begin to pull his member out of your mouth as you give the devil next to him a suggestive glance. He immediately understands this, but rather than wait for you to come to him, he leans his length towards your lips just as you reach Damien's tip. The demon's eagerness is then rewarded by the soft and wet touch of your mouth once you wrap your lips around his shaft, while the dragon cock you were previously sucking on is left brushing against your cheek. Arad's cock is significantly bigger, thicker and longer than Damien's, but also a lot warmer, which is a nice contrast of sensations, especially noticeable when you try to swallow it.";
	else:
		Linebreak;
		say "     It may be quite a hard choice, but seeing that sizable red cock pointed at you, eager for your attention... You just cannot deny it. Still, you do not leave Damien hanging alone and give him your hand for some steady jerking, while Arad gets your mouth, at first. Giving the sexy devil a good lick from the balls to the base of his throbbing dick, then to the tip, slowly as your tongue wiggle slightly all over that veiny meat, just causes him to moan and throb at your affection. While Egran has his fun rubbing your torso all over, his strong hands sliding over to your chest when they are not going for your [if player is male]lonely cock[else if player is female]lonely pussy[else]crotch[end if], you put your effort at trying your best to swallow the hellfire demon's dick all the way down your throat while Damien has to make do with your hand stroking his slick draconic penis.";
		say "     Though, you decide that the red devil has had enough of your mouth, for the time being, and begin to pull his member out of your mouth as you give the man next to him a suggestive glance. He immediately understands this, but rather than wait for you to come to him, he leans his length towards your lips just as you reach Arad's tip. Damien's eagerness is then rewarded by the soft and wet touch of your mouth once you wrap your lips around his slick shaft, while the big and heavy cock you were previously sucking on is left brushing and slapping against your cheek. The scavenger's reptilian cock is not as long nor as thick as Arad's, given the size difference between both, even, but its peculiar shape and overall wetness is a nice contrast of sensations, as it slides so easily towards the back of your mouth.";
	WaitLineBreak;
	say "     At some point, it is impossible to keep your attention centered around just one of them, as you begin to alternate between both dicks and leaving them throbbing even more at each go. You get one in your hand and another in your mouth, then the opposite, giving both Damien and Arad all the love you can show for their yearning manhoods. What can be heard around the room is just manly moans and grunts as you continue to pleasure the two sexy men, while Egran simply continues to caress all the sensitive spots around your body and rubbing his own cock in between your buttcheeks, tentatively pressing against your pucker. With this, you know he wants to push it inside you as he kisses your neck, his powerful touch sending you a wave of lust running down your whole self.";
	say "     Arching your butt backwards, you allow the bearded devil behind you to happily let his big dick push against your anus, and that definitely makes you let out a moan while your mouth is filled with either Damien or Arad's dick. It becomes really difficult for you to keep steady at sucking both of them properly, and most of the time you are simply giving them handjobs as you bounce on Egran's throbbing manhood. The other two, however, seem to enjoy the view more than anything, as they both even closer to your face and let you lick their balls, a much easier task in comparison, while they take the stroking into their own hands as they watch Egran take your backdoor with such virility.";
	WaitLineBreak;
	say "     'I wanna fuck [ObjectPro] too, man... Wanna trade?' asks Damien to Egran, but the latter seems rather possessive of your ass, so he is unlikely to accept. 'You can [if player is female]take the pussy[else]join in the same hole[end if], if you want.' he answers, his deep demonic voice coming from behind you and making your stomach rumble. Arad gives Damien the encouragement to join his brother (and you know he definitely wants your mouth all for himself), so the young man really does not take long to make a decision. For this to work, Egran lies down on the bed, has you also lie down but on top of him, and Damien walks in between his and your legs, lifting yours over his shoulders as he eagerly comes to shove his own draconic member in your [if player is female]awaiting cunt[else]already taken hole[end if]. Damien's cock shape and amount of lubrication makes this easy for you, as it begins to slide inside you so easily that it barely costs any effort to the young man in order to push it deeper and deeper...";
	say "     Now, the scarred demon also gets on the bed and moves to your front, and just as he wanted, he has your mouth all for himself. And, of course, the demon is then glad to impale your face on his manhood as deep as he can, the demonic grin showing in his mischievous expression clearly giving away his intentions to facefuck you until you either collapse or he becomes satisfied. This is when things really get rough, as all the three men penetrate all your available holes to their hearts['] content [if player is female], with Egran penetrating your ass and Damien taking your female sex as both fuck you in almost perfect synchronization, as deep as they can[else], with Egran and Damien double penetrating your ass and stretching that tunnel of yours to its limit, both thrusting into it as deep as they can[end if], and all you can do is endure the frenzy of lust and desire that drives them until they start filling you up.";
	WaitLineBreak;
	say "     'I'm gonna make you eat my cum, cute stuff!' Arad teases you as he slows down, then pulls out, letting your mouth open as he gives his large prick the final strokes, until you see plenty of cum escaping it and right on top of your tongue. 'Swallow it.' he then orders, pulling your head back to him and forcing you to take his dick inside again, just not all the way in, so you get to taste that hot spunk rapidly coating the insides and corners of your mouth. Of course, you cannot help but swallow most of it before what you have in already becomes more than a mouthful. 'Fuck yeah, that's a cute good [boygirl]! Now get my second one out, please.' You had barely swallowed his first load, Arad is already putting his dick back, still rock hard like before, fucking your throat as vigorously as he was just a few minutes ago.";
	say "     'We're gonna fill you up until you can't walk anymore. Was Damien's idea, by the way.' says Egran, as you feel his manhood throb and pulse after a grunt, depositing his first load in your bowels so generously that you really feel it arriving inside you. This motivates Damien's climax to shove him off the edge, his cum [if player is female]filling your womb[else]joining the demon's[end if] right after as he moans and grunts alongside the devil. 'Fuck yeah! Always wanted to share a little eager slut with some friends...' - says the young scavenger - '...and just fuck their brains out. You fucking love it, I know.'";
	WaitLineBreak;
	say "     You lose track of time as the three horny devils, one of them in a figurative way, continue to fuck you, again and again, setting off your orgasms one after the other as they, too, continue to shoot their loads inside your every hole. They also care about your pleasure, as they feel you up and touch your body in ways that only leave you in a sea of ecstasy, leaving you open to receive them as much as they think is enough, which takes a really long while to be...";
	WaitLineBreak;
	say "     Eventually, the boys are all done with you, leaving you lying down on the bed, leaking and covered in sweat. 'I think my balls aren't completely empty, yet, but... That felt fucking good.' says Arad to you, almost unbelievably. 'Yeah, but I'd prefer if boss didn't give us the glare for staying out of our posts for too long thanks to your sex addiction, you cunt.' follows Egran, who begins to push Arad towards the exit before he can say anything about it. 'Oh, yeah, uh... Thanks guys! Call us anytime you want some group action!' These are Arad's final words before they leave you and Damien in the room. The young man sits besides you and, despite the mess they have done all over you, he takes you in for an embrace and cuddles with you before you have to leave.";
	say "     'That was really good. Hope we can repeat it!' he says. Though, he is the first to doze off after all that, and you are given a moment to recover before you can clean yourself up and return outside.";
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Damien;
	else:
		NPCSexAftermath Player receives "AssFuck" from Damien;
	NPCSexAftermath Player receives "OralCock" from Damien;
	NPCSexAftermath Player receives "OralCock" from Arad;
	NPCSexAftermath Player receives "AssFuck" from Egran;

Section 3 - Damien TF Quest

to say ToronTalkDamien:
	if Strength of Damien < 1:
		say "     After having met Damien, you eventually realized he had ties with the Hellfire Club, and Toron could have known something about him, so you decide to forward some questions to the bartender. 'Ah... that one peculiar human... Yes, I know who he is. How could I've not...' - he replies, sounding a bit ironic - 'Ever since he had a Hellfire Draconic Special, he became somewhat famous around the club. That is, until he went crazy and began trying to set traps to catch demons. Poor thing, he never realized we could see him coming from miles away, and we do have scouts to detect dangers in the vicinity... Either way, he had a quite unique reaction to that drink which was unknown to me, and then I realized it had adverse effects when drank by someone vulnerable to the nanites.'";
		say "     You ask him more about that drink, just in case. 'The Hellfire Draconic Special is like a stronger variant of the Hellfire Swizzle, and it's a limited edition, mostly. It would be interesting to further test its effects on that human, but Mogdraz wouldn't let me do it on my own initiative... Perhaps someone else can, if the drink is ordered... Who knows.'";
		if Resolution of DamienIntro is 99:
			say "     It seems Toron would be interested in having Damien drink that special a few additional times, though as he will never be back, the bartender will not have that [']test subject['] he so much wants. Perhaps that is for the best.";
		else:
			say "     Is he actually suggesting...? 'No, I'm not suggesting anything. How preposterous.' Oh, right, he can read your thoughts. But you would never trick Damien into gulping down a transformative drink... Would you?";
			now Resolution of DamienTF is 1;
	else if Strength of Damien is 1:
		if Resolution of DamienTF is 1:
			say "     After having offered Damien his special drink and noticing its diminishing effects, you decide to ask Toron more about it, explaining what you have observed since he started taking the Hellfire Draconic Special. The black demon clears his throat as he thinks of a few possibilities. 'Hm... seems like an acquired immunity to me. Perhaps the drink is not strong enough to push through the nanites in his system. Or maybe it has reached its transformative potential, which in that case it's quite disappointing... But I haven't made the drink with the purpose of transforming those who have it. I could, however, try to enhance its effects... See how far we can push his body...'";
			say "     A smirk forms across the corner of his mouth as he ponders some ideas. 'Leave it to me. The next time you want to pay him another round, I'll have something new for you to try out. It's entirely your responsibility, though. Remember.'";
			now Resolution of DamienTF is 2;
		else:
			say "     After having offered Damien his special drink and noticing its diminishing effects, you decide to ask Toron more about it. 'The drink is ready, all you have to do is ask, give and see what happens.'";
	else if Resolution of DamienTF is 3:
		say "     You ask Toron about Damien, who seems to have gone away after your last, but memorable, encounter, hoping that he knows something about his whereabouts. The dark demon draws a grin on the corner of his mouth as he gives one glass a good polish. 'He's around. Said he needed some time to himself after the... new changes in his form, which are totally your fault. Nevertheless, he made himself clear of one thing... He'd come back for you.' These last words send a chill down your spine as Toron glares intensely at your eyes. 'I'm not certain his corrup-... uhm, generous improvement is complete, though. He seemed to still retain some guilt after your deed. Nothing a few additional tonics won't fix... That is, if you want an obsessed, overly-dominant brute of a hellfire draconic demon using you as a cock-sleeve for the rest of your life.'";
		say "     A nervous laugh escapes your mouth, and you are not even sure why. 'Oh, I don't judge. The thought does seem appealing. What was his name... Iker, I believe, found it so, as well. Guess where that took him...' You remember Iker being Damien's friend, who sold his soul to Mogdraz, but for reasons that are yet unclear, since you have heard so many from Damien himself. 'Iker was not tricked into it. That goes against Lord Mogdraz's code of honor. It was a completely willing contract... It does make one wonder what would cause such a person to want to submit to a demon so badly, doesn't it?' Giving it some thought, you are able to draw conclusions from these facts, but Toron saves you the trouble.";
		WaitLineBreak;
		say "     'Who corrupted who... Guess you're about to find out... Once he comes back, that is. And he will, oh I'm sure.'";

to say DamienTalkDrink:
	if player is dominant:
		say "     Note that if you intend to pursue this path, Damien will shift towards a much more dominant personality, and given your [bold type]Dominant[roman type] trait, that might be something you do not want. There will be no way to offer any resistance against his efforts to subdue you. Are you sure you wish to proceed with this?";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			Linebreak;
		else:
			stop the action;
	if carried of obsidian coin < 3:
		say "     You think about it, but then realize you might not have enough obsidian coins. Maybe [bold type]three[roman type] would be enough to buy a Hellfire Draconic Special... If you are certain about it.";
	else if lastfuck of Damien - turns < 5:
		say "     You have already fooled around with Damien enough for a night. Perhaps some other time?";
	else:
		say "     Are you really going to do this? It would be really easy to trick Damien into drinking another Hellfire Draconic Special, and Toron would appreciate the opportunity to study its results, but who knows what that might do to the scavenger. If it is anything similar to what Damien told you, before, you two will end up having sex, most likely.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Do it.";
		say "     ([link]N[as]n[end link]) - On second thought... Don't do it.";
		if Player consents:
			LineBreak;
			now DamienDoneTalking is true;
			ItemLoss obsidian coin by 3;
			if Resolution of DamienTF < 2:
				say "     As you process this in your mind, you tell Damien that you would like to buy him a special drink. 'Oh? Sure thing, I accept!' He promptly replies, and with that done, you turn to Toron and ask for a Hellfire Draconic Special. The bartender knowingly smiles at you as he says 'Right on' and begins its preparation. Now, you only have to wait until it is ready and offer it to Damien, who is eagerly expecting his gift.";
				say "     'Hope he enjoys it.' Toron then hands you the drink, which has this sort of fiery orange tone, bubbling from the bottom, and you walk back to Damien in order to give it to him.";
				if Strength of Damien is 0:
					say "     As he takes hold of the glass, he seems to be inspecting it with a frowned eyebrow. 'What's this? Looks familiar...' He asks, and before he thinks it might be the same drink he had from before, you tell him that it is a Toron's special he recommended especially for him, as a token of good esteem. 'Oh, really?! Wow, I didn't expect him to feel that way... I'm flattered!' He then takes a sip, and from the way he looks at you afterwards, he seems to really like it. 'Oh, wow... This tastes amazing...!' He praises the drink before chugging it down in mere seconds, then places the glass back on the counter as he savors its aftertaste.";
					say "     'You know what, I should repay you...' says Damien, who then proceeds to grab your hand and pull you to him, now close enough for him to whisper in your ear. 'Let's head over the restroom... I wanna fuck you so hard!' This burst of confidence has him simply leading you over there with that predatory and lusty look in his gaze.";
					WaitLineBreak;
					say "[DamienHRBSex]";
				else if Strength of Damien is 1:
					say "     'Oh, it's this again! Are you trying to tell me something?' He asks you with a suggestive grin as he chugs it down, keeping eye contact with you. 'Ahh... Tastes great... Feels great... And you know what else would feel great?' . Damien continues, grabbing your hand and pulling you to him as he whispers in your ear - 'Your [if player is female]pussy[else]ass[end if] on my cock.' With this burst of confidence, the scavenger simply leads you over to the restroom with that predatory and lusty look in his gaze mere seconds after having the drink just you offered him.";
					WaitLineBreak;
					say "[DamienHRBSex]";
			else if Resolution of DamienTF is 2:
				say "     As he takes hold of the glass, he seems to be inspecting it with a frowned eyebrow. 'Oh, it's this again, but... It looks a tad different, doesn't it?' This makes you slightly nervous as you consider that he might have noticed something suspicious... 'I think it's the smell, feels stronger. More intense, even. Toron's really putting an effort on these, huh? That or he really wants me drunk quickly!' Relief begins settling in as you feel that he does not mind this change and is not associating it with anything he should not, which is great. But then, he looks at you, right in your eyes, very intensely. 'You know how I get after I have one of these... But you keep buying them for me.'";
				WaitLineBreak;
				say "     Damien takes a single sip, barely a taste of it, before he continues to speak. 'I'm not completely unaware of your intentions, friend... I've seen the way you and Toron look at each other, as if you had something going on between the both of you. Then you come with my favorite drink, which triggers a very familiar reaction on me...' He takes yet another sip, still with his gaze frozen stiff on you. 'You remind me of Iker... You know he was the one always treating me at the bar? Hm... Don't think I've told you that way, last time I mentioned it... But I'm starting to remember things more clearly, now.' He gets comfortable sitting on his stool, spreading his legs and giving you a clear view of his bulge. You know that the only way he can have one is if he is already getting hard.";
				say "     He then chugs his drink all the way, that bump between his legs growing considerably while he finishes gulping all the liquid down his throat. Just then, you feel this sort of impending aura surging through the scavenger. He begins to look bigger in your eyes, powerful and domineering, as he confidently eyes you up. 'We should go to my room. I think we need talk... In private.' He says, winking at you as he gets up, shameless of his boner which is highly noticeable by anyone who looks at him, brings his hand over your back and leads you towards the privacy of his rented bedroom.";
				WaitLineBreak;
				say "[DamienTFRoom1]";
		else:
			LineBreak;
			say "     You drop the idea before you verbalize it.";

to say DamienHRBSex:
	say "     As he takes you to the restroom, you both making out wildly as he feels you up all over with his hands, touching your butt and squeezing your cheeks as his tongue wiggles all over yours, you soon hear a clink sound as he slides a coin down the booth's lock, unlocking its door. Without any further words, he simply pulls you in and [if player is not naked]begins to strip you of all your clothes, as he does the same for himself[else]begins to strip himself of all his clothes[end if], to then rub his athletic physique against yours, skin on skin with no barriers in between. His kissing is deep and passionate, boiling with lust, and his draconic dong is quick to emerge and throb while sandwiched between you both.";
	say "     Damien then looks into your eyes as he pulls out for a second, his fiery gaze drawing yours in such a powerful way you cannot look away, but why should you? The way he holds you, touches you, his scent, everything is so perfect... Inevitably, you find your mind fading away in a sea of joy as he smiles at you. 'I wanna fuck your brains out, slut' he says, then forces you on your knees, having you face his dick. With his hand on the back of your skull, he pulls you to him. 'Gotta warm up before some more join in!' You simply nod and open your mouth to take in his reptilian penis past your lips, tasting every inch of it as you make your tongue wiggle all over the tip and shaft as Damien pushes into your throat.";
	WaitLineBreak;
	say "     'You like that, bitch? Like when a man takes charge and uses you as he pleases?' He pulls out momentarily, gives your cheek a few cockslaps and then shoves it back inside your mouth, having you take his length all the way in. 'Good [boygirl]... Such a good cocksucker, you're definitely in the right place' teases the scavenger as his manhood keeps on throbbing in your mouth. After a while, he pulls out again with a grin on his face as a first guest seems to want to join the action, having shoved his member through one of the holes in the walls...";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1: [Hellfire Demon cock, 16"]
			say "     This one is a pretty familiar red one, of the common hellfire demon kind, throbbing hard at nearly sixteen inches of length. Demonic pheromones reach your nostrils as the whole thing slides into full view, thick and veiny. They are usually quite big ones to work with, and this dick is no exception.";
			now HRBCockLength1 is 16;
			CreatureSexAftermath "Player" receives "OralCock" from "Hellfire Demon";
		-- 2: [Lupine cock, 12"]
			say "     This one is a knotted and canine dick, throbbing hard at around twelve inches of length, emanating an animalistic scent that sort of entices you to come closer.";
			now HRBCockLength1 is 12;
			CreatureSexAftermath "Player" receives "OralCock" from "Football Wolfman";
		-- 3: [Huge draconic cock, 24"]
			say "     To really start well, a whole two foot-long of a dragon dick slowly comes into full view, so big that it barely fits the hole with its girth alone. You will have to work really hard for this one, as there is plenty of it to appreciate.";
			now HRBCockLength1 is 24;
			CreatureSexAftermath "Player" receives "OralCock" from "Yamato Dragon";
		-- 4: [Orc cock, 14"]
			say "     This one is of a green tone, thick and veiny with about fourteen inches of length, its scent reaching your nostrils and really putting you in the mood. You think it might be an orc's manhood, and if so, you are definitely going to have a good time.";
			now HRBCockLength1 is 14;
			CreatureSexAftermath "Player" receives "OralCock" from "Orc Warrior";
		-- 5: [Imp cock, 6"]
			say "     This one is not particularly big, and you doubt it is from any of the hellfire demons around here. While it is red, it is only about six inches long, reminding you of those little flying imps. Perhaps one of them came to get some release, which you will happily provide.";
			now HRBCockLength1 is 6;
			CreatureSexAftermath "Player" receives "OralCock" from "Imp Male";
	WaitLineBreak;
	say "     'You don't want to leave them waiting, do you?' Damien does not wait for an answer as he moves your head towards this new cock, forcing you to lean over to it and begin to kiss and lick it, as that is what it truly wants. At first, you tease its shaft until you feel the dick throb with desire, so eager to be put past your lips and sucked like it yearns to be. Then, you grab it and aim it towards your mouth, letting it slide into you [if HRBCockLength1 < 7]all the way in down to your throat, only stopping once the entire thing disappears into you[else if HRBCockLength1 < 19]as far as you can make it, taking it inch by inch until you cannot possibly push it in any further[else if HRBCockLength1 >= 19], barely fitting in at all due to its colossal size, so you have no alternative but to focus your sucking mostly around its tip and, maybe, a few inches past it[end if]. It pulses in response, pleased with your efforts, and juice starts to come out, giving you a sweet taste of their lusts. You think you even hear them moan as you work on their meat, really showing off your oral skills and putting on a good effort at worshipping this dick.";
	say "     As you suck, rub and pleasure the first stranger's pulsing rod that came to greet you, Damien crouches down behind you and lines up his manhood between your buns. Grabbing you by the hips, he leads your [if player is female]labia[else]pucker[end if] over to his cock, making you feel that eager tip poking at your entrance, then slowly pushes against it, stretching your [if player is female]lower lips[else]anal ring[end if] around his girth. 'Yes... Feels fucking good! Suck on that cock, slut...' As he says this, a second one begins to slide in from your side...";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1: [Hellfire Demon cock, 16"]
			say "     Your new visitor must be a hellfire demon, throbbing hard at nearly sixteen inches of length. There are definitely some demonic pheromones flowing from it as the whole thing slides into full view, thick and veiny. The hung demon's cock now remains only waiting for your approach.";
			now HRBCockLength2 is 15;
			CreatureSexAftermath "Player" receives "OralCock" from "Hellfire Demon";
		-- 2: [Lupine cock, 12"]
			say "     Your new visitor must be a lovely wolf, with a knotted and canine dick, throbbing hard at around twelve inches of length, with its animalistic scent greeting you as it remains only waiting for your approach.";
			now HRBCockLength2 is 12;
			CreatureSexAftermath "Player" receives "OralCock" from "Football Wolfman";
		-- 3: [Huge draconic cock, 25"]
			say "     Your new visitor has a massive draconic cock, a little above two feet long in length, eagerly awaiting your approach as it practically throbs at every second.";
			now HRBCockLength2 is 25;
			CreatureSexAftermath "Player" receives "OralCock" from "Yamato Dragon";
		-- 4: [Orc cock, 14"]
			say "     Your new visitor is clearly an orc as his green, thick and veiny cock with about thirteen inches of length, its masculine scent spreading throughout the booth as the whole thing slides into full view, awaiting your approach.";
			now HRBCockLength2 is 13;
			CreatureSexAftermath "Player" receives "OralCock" from "Orc Warrior";
		-- 5: [Imp cock, 6"]
			say "     Your new visitor is probably an imp, with a red six incher coming into full view and eagerly awaiting your approach as it pulses with need.";
			now HRBCockLength2 is 6;
			CreatureSexAftermath "Player" receives "OralCock" from "Imp Male";
	WaitLineBreak;
	say "     You definitely should not let it stay lonely for long, and after having provided your first dick its share of kissing and sucking, you move on to the next, keeping your hand there stroking it so that it won't miss you. As this new manhood that comes to see you is [if HRBCockLength2 < 7]of a manageable size, you just go ahead and give it a deepthroat, a gesture that it really appreciates as it immediately delivers a sweet glob of precum into your mouth[else if HRBCockLength2 < 19]of a large size, you first only caress its shaft with your lips before going ahead to take what you can of it down your throat. It definitely appreciates your gesture as it immediately delivers a sweet glob of precum into your mouth[else if HRBCockLength2 >= 19]of a massive size, you can only caress its shaft with your lips and try to suck on its tip, with perhaps a few more inches besides. Nonetheless, it definitely appreciates your effort as it immediately delivers a sweet glob of precum into your mouth[end if]. You find yourself giving one a handjob and a blowjob to the other, keeping them pulsing as hard as they can possibly get, and eventually, you alternate, sucking the first and handling the second as they just keep on throbbing in either your grasp or mouth.";
	say "     This all happens as Damien takes you from behind, fucking your [if player is female]pussy[else]ass[end if] deep and hard by the time you are servicing the duo of cocks yearning for your attention. At times, he is the one leading you around, enjoying your submission to him and the strangers who come looking for some mystery blowjob. 'You're such a good little slut, sucking some strangers['] dicks while taking one up your [if player is female]cunt[else]mancunt[end if]... and you're loving it, aren't you?' he teases you, letting out a pleased moan as he buries his full length in you with each thrust. His meat keeps on sliding in and out of you, hard, fast and deep, and your mouth remains busy with one or the other trying to throatfuck you. Though, as you are keeping both strangers on edge with your cock handling and sucking skills, a third manhood slides in right from the door in front of you.";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1: [Hellfire Demon cock, 16"]
			say "     It is a really nice crimson one, probably about seventeen inches and giving out an alluring fiery scent. Might be a hellfire demon's log now yearning for your attention.";
			now HRBCockLength3 is 15;
			CreatureSexAftermath "Player" receives "OralCock" from "Hellfire Demon";
		-- 2: [Lupine cock, 12"]
			say "     It is a nice knotted and canine dick, probably about twelve inches of length. Might be a wolf's or an alpha shepherd's log now yearning for your attention.";
			now HRBCockLength3 is 12;
			CreatureSexAftermath "Player" receives "OralCock" from "Football Wolfman";
		-- 3: [Huge draconic cock, 25"]
			say "     It is a large draconic cock, probably about twenty three inches in length. Might be a dragonmorph's or lizardman's dick now yearning for your attention.";
			now HRBCockLength3 is 25;
			CreatureSexAftermath "Player" receives "OralCock" from "Yamato Dragon";
		-- 4: [Orc cock, 14"]
			say "     It is a sizable green cock, probaby about fourteen inches in length. Might be an orc's dick now yearning for your attention.";
			now HRBCockLength3 is 13;
			CreatureSexAftermath "Player" receives "OralCock" from "Orc Warrior";
	WaitLineBreak;
	say "     'Suck that one too, little bitch. You gotta please all of them...' Damien orders you as he chuckles, forcing you to face this new visitor, and given how you have the previous two cocks primed for their release, you prepare to give it your very best as you are brought to lean over to give it a suck. Naturally, [if HRBCockLength3 < 19]it takes a good amount of effort to take its every inch[else]its considerable size will not let you take much of it in your mouth[end if], but you manage to properly satisfy it as each one of your hands is kept stroking and caressing the previous manhoods. They leak and throb, with the one where your lips are at soon following the same path after a good moment of worship. Inevitably, all the three strangers grow near their points of no return as you steadily stimulate them, providing them all with their share of love by taking turns on which you suck and jerk.";
	say "     'Riding one, sucking another, hands full with a dick on each... This is your beach, slut... It's what you're best at!' The scavenger continues to provoke you as he, too, approaches his orgasm. You can feel his meat throbbing and pulsing at how close he is, so much that he has to slow down before he fills you prematurely. 'Fuck yeah... I'm close... Bet you'd like a fill and a cum bath like the naughty bitch you are...' His movements are now steady, but you can feel his whole length rub inside you, on the verge of blowing... Then, the scavenger leans in closer to you, whispering in your ear as his hands run all over your chest and torso 'Come on, make it rain on you... Make them cum... You know you want it... You want it so badly...'";
	WaitLineBreak;
	say "     His words feel like an alluring temptation to you as you continue to keep the strangers pleased with your efforts, their cocks pulsing at their hardest state, and with a few additional kisses and licks here and there, coupled with fast jerking motions once you get your hands on them, they begin to shoot generously at you. One after the other, they all reach their moments to cum all over you, spurt after spurt of thick jizz coating your face, chest and torso while you stroke at the two at both your sides and lick the one in front of you until their very last drop. 'Fuck... YES!' Damien shouts as you feel his swollen knot forcing its entry in you, and then he, too, unloads his vast load deep in your [if player is female]womb[else]insides[end if], thrusting into you as hard as each shot comes. Grunting can be heard from everywhere all the way until their climaxes begin to subside, and you have earned yourself quite the cum shower from these three horny strangers. You give them a couple of kisses each before they begin to retract from the way they came, and Damien seems greatly pleased, as well.";
	say "     Now, his arms circle around you as he kisses your neck lovingly, smearing all that cum around your body and face... 'You did such a good job... That I couldn't resist knotting you' he commends you, chuckling, as his hands head towards your crotch. While he remains stuck inside you, he feels you up and [if player is male]grabs your so far neglected [cock of player] cock[else if player is female]moves down to fondle your pussy[else]moves down to fondle your sensitive groin[end if], caressing you as he moves his lips between your neck and ear, kissing and licking... 'You deserve it... let it go... cum for me...' All that fucking got you pretty worked up, already, so it does not take long for you to hit your orgasm, which feels like a thunder striking you all over as you squirm and quiver[if player is male], adding your cum to all the mess that has been already done[end if]. 'That's it... Good [boygirl]... You've done so well...'";
	WaitLineBreak;
	if Strength of Damien is 0: [First time he had that drink]
		say "     Once you take a moment to breathe and Damien's knot shrinks, he pulls out and helps you up. 'Fuck, that drink really makes me horny... Are you alright? Hope I wasn't too rough on you...' For some reason, your mind felt very hazy during all this, but now that everything is over, your thoughts return in full clarity. 'It made me feel like I owned you... Damn, I hope you're into that, because I really enjoyed it.' You both leave the booth as he helps you get clean. 'We should totally do this again.' he says, giving you a kiss on the lips, a tap on your butt, and leaving the room after winking at you.";
		say "     Eventually, you also are all set to leave the restroom. Though, [bold type]the way things are going has you thinking if continuing to have Damien drinking that hellfire draconic special is really a good idea[roman type]... He might get increasingly more dominant and possessive, not to mention horny and potentially rough. Besides, there is clearly something mystical about his gaze that even he is not aware of... This could have [bold type]irreversible consequences[roman type] on him and his relationship with you.";
		now Strength of Damien is 1;
	else if Strength of Damien is 1:
		say "     Once you take a moment to breathe and Damien's knot shrinks, he pulls out and helps you up. 'It's fun owning and fucking you. I'm really starting to enjoy it... Honestly, I don't care if you're into it or not, anymore. I'm just gonna do it and make you mine...' he approaches you, once more, locking his eyes on yours as he whispers 'You belong to me, now...' These words echo in your mind, and they feel so right that you cannot refuse them. It is as if you instinctively wanted to follow them through and nod. Though, this trance is broken once he gives out a chuckle. 'Just kidding! I'm only teasing you because you really seemed to like that. Fuck, I admit, it's fun! I could put you on a leash, sometime... Okay, I swear I'm joking now, too. But hey, if you wanna try it sometime, I'm down.'";
		say "     Damien then gives you a kiss on the lips, a tap on your butt, and leaves the room after winking at you. He is still a goofball, after all, even though he seems to enjoy dominating you. But the way he seems to be able to weaken your will is somewhat worrying, especially because he does not seem aware of it. Though, maybe the [bold type]hellfire draconic special is safe for him to drink, for the time being[roman type]? There was no change since the last time... But things could be different in a near future.";
		say "     [bold type]Perhaps Toron would have something to say about this?[roman type][line break]";
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Damien;
	else:
		NPCSexAftermath Player receives "AssFuck" from Damien;
	WaitLineBreak;
	now HRBCockLength1 is 0;
	now HRBCockLength2 is 0;
	now HRBCockLength3 is 0;

to say DamienTFRoom1:
	say "     As you are brought here, you notice a strong scent intruding your nostrils, almost pheromonal, filling you with an odd excitement. You look into Damien's eyes, not even thinking about resisting those fiery orange orbs gazing upon you, his slitted pupils growing into you as you dive into them... It makes his touch give you a hot tingle all over your body, those strong hands of his running over your cheek like they own you, bringing you over to the bed with little effort. The air feels much hotter, just as if you were in the presence of some living fire at mere inches in proximity. He holds you close, his breath tickling your face as your bodies come in close contact.";
	say "     Then, he begins to speak, his voice low but firm. 'After the second, I began to get suspicious of you. But it appears you've enjoyed the results...' A grin draws across his face as, with newfound strength, he pushes you onto the bed, making you fall onto the bouncy mattress on your back as he looks at you from above, beginning to remove his top clothes. 'That's how it started with Iker, as well. I remember now... The way he looked at me when I made sweet love to him, his eyes begging me for more... I couldn't even look away...' He takes off his shoes and pants as well, always keeping eye contact with you[if player is not naked], and an urge strikes you to remove your own gear while you hear Damien speaking[end if]. Though, once you have a good look at the scavenger's naked body, you realize there are bits of red scales here and there, not to mention his significant muscle growth, which explains his surprising strength.";
	WaitLineBreak;
	say "     What most draws your eyes, however, is his draconic cock, even bigger and thicker than before. Those former nine inches must have become at least ten with additional girth, a raging erection that does not suggest it will be satisfied with little. 'Oh, you like this?' He asks you, grabbing his dong and touching slightly to the side, letting it come back to place with the force of its hardness alone. 'The reason that little slut sold his soul was because I turned him into a needy bitch. Once I realized what I had done, I ran away and put the blame on the demons for trying to corrupt me... and him through me.' Damien then climbs onto the bed, his knees and hands on each side of your body as he leans his head down, on all fours just above you.";
	say "     'But you helped me find my true self. Why should I refuse what my body wants me to become? And you seem to enjoy it a lot... So... Why fight it?' The now more powerful Damien has no problem keeping you pinned down below him as he straightens his torso, moving his crotch area closer to your face, and his dragon penis comes down to hit you hard on the cheek as he chuckles. 'And if I have to blame someone, that would be you. This is entirely your fault, indeed. You brought this on yourself, friend...' You think he is mostly entertaining himself cockslapping you like that, then rubbing his cock across your face anywhere away from your lips. 'Now, you have to compensate me, because... How else am I suppose to sate these overbearing lusts you're making me go through? I need someone to dump my loads in... And since you've volunteered...'";
	WaitLineBreak;
	say "     No more words come from his mouth as he brings the tip of his meat to your lips, now able to part in order to wrap around that girthy red log as he slowly pushes it in. Damien lets you taste his cock at your own pace, feeling your tongue wiggling around his shaft as it keeps on throbbing with increasing desire. All he does is just ever so slightly push it in and out, very gently as his hand slides under the back of your head, stroking you seemingly in an affectionate manner. Such self-control on his behalf creates a need in you to really put on a good effort at sucking his dick, so you push your neck muscles to their limit as you attempt to swallow more inches of his draconic cock. Noticing your dedication, he lets out a pleased hum as his finger caresses your skull.";
	say "     'You're so eager to please me, aren't you? I bet I wouldn't have to move a muscle and you'd still milk every load out of me...' His grasp around your head tightens progressively harder, to the point he has got hold of your skull, but his moves are still gentle. You find yourself taking more of his cock as he pulls you, then he begins to thrust into your throat at a slow pace the first few times. After a bit, however, he goes deep, with a grin on his face, and holds his dick inside. That sizable length of his throbs like mad while you do your best at swallowing it, holding your breath for several seconds until the scavenger steadily pulls it out, then past your lips, and finally lets go of you.";
	WaitLineBreak;
	say "     'Mmph... Fuck, that throat feels good. I know what I wanna do with you, now...' He says as he stands on his feet above you, then moves to the other side of the bed. You do not see him for brief moments, until his hands come grab you by under your arms and pull you across the sheets towards him. You remain lying down on your back as your head arrives past the edge of the bed and between Damien's legs, who stands with a cock harder than ever in hand, contemplating what he is about to do. 'C'mon, open wide for me... I'll facefuck you properly, this time.' Such confidence has you helpless against his orders, and you find yourself mindlessly obeying the command, dropping your chin to give him what he wants. He puts his hand on your cheek in a painless slap, but a less gentle movement, nonetheless, as he aims his red meat at your open mouth. 'Good slut. Take it.'";
	say "     Damien pushes his cock all the way into your mouth, even down your throat. This position makes it easy for him to simply go as deep as he pleases, stretching your esophagus to accomodate the girth of his lizard manhood. As his hands quickly move to hold your head in place, you feel oddly safe under his care... and properly owned, as he proceeds to throatfuck you. Slowly and steadily, at first, the young man lets his primal desires take charge, progressively getting harder on you as his thrusts get more powerful, forcing you to swallow his entire length as he drills you deep. Grunts fill the room as he takes great pleasure in feeling the insides of your neck clinging around his penis, which only throbs as it goes in and out of your throat.";
	WaitLineBreak;
	say "     Though, after several more thrusts, you begin to hear something in his voice changing. His tone becomes deeper, wilder and... Somewhat demonic, even. You know this since you are familiar with demons, but you cannot see anything else other than Damien's taint in front of your face as he continues to relentlessly fuck your face. 'Fuck... What's this feeling...?' You hear him acknowledging something different going on with him, but he does not stop. Your throat is still his, and whatever is happening only seems to further excite him. 'Feels so fucking good...! So... powerful...! I might even... hnng!' Suddenly, you feel that thick piece of meat throb angrily as a very hot and creamy liquid beings to pour down your throat!";
	say "     'Ahh... Fuck yeaaah! Have my load, slut! Drink it all up...!' Damien's deep grunts almost make the whole room tremble as his nearly boiling cum makes its descent through your body, filling up your belly with such a generous deposit that you cannot help but feel stuffed. A human could definitely not cum this much! But your eyes remain in the dark as he buries his length deep down in you, his orgasm persisting. As you are close to run out of breath, he pulls out, and a massive gush still comes raining down on your face, covering your features with a couple additional thick shots. Droplets of cum slowly slide down your face as he grabs you by the back of your skull and shoves your face between his buttocks, musclebound and larger than you remember.";
	NPCSexAftermath Player receives "OralCock" from Damien;
	WaitLineBreak;
	say "     'I'm so fucking horny... Hnng... Lick that hole, little bitch!' It seems he is not done with you as he craves for your tongue in his anal cavity. You dare not to keep him waiting and stick it as deep as you can inside the scavenger's ass, wiggling as enthusiastically as you are able. His insides feel extremely warm, even more than what you would expect from a person, almost at a flame's temperature. It does not burn your tongue, but it does feel really hot as his anus quivers around that slick organ of yours. 'Mmh... How's that? Tastes as good as my dick?' He asks without expecting an answer as he keeps your face firmly planted between his round glutes, holding you still. Strangely, though, you feel something poking at you, above your forehead. Something heavy and seemingly long, a bit scaly...";
	say "     As he lets go off your head, you find yourself free to look at what it is. A tail! And not just an ordinary one... It is long and covered in dark red scales, ending with a pointy tip, much like a demon's. But when you look up at your friend, your eyes widen. He is standing up straight, looking at you over his shoulder, as a pair of large wings stretch from his wide back. You suppose they are a mix of demon and dragon in terms of looks, with pointy sharp limbs connecting the vast dark red membranes. This visage is quite unbelievable to your senses, as Damien was a plain looking human before... Sure, he had a lizard penis and some strange looking eyes, but what you see before you is something else, entirely.";
	WaitLineBreak;
	say "     He takes a step back, only to suddenly push you onto the bed, your ass turned towards him. His force is tremendous, and the bed definitely felt it too as it got shoved a few inches to the side, the mattress aggressively bouncing against you. When you look behind, you can finally see Damien's changed looks, and your heart sinks at the revelation. 'Like my new face? The one you gave me, bitch. You tricked me into becoming this...' There is no trace of apparent human traces left on him besides his antropomorphic shape. He is now a pretty much demonic looking dragonmorph, way taller and stronger than his formerly human form. His dark crimson scales shape a herculean physique, covered in harder bits of obsidian scales protruding from the sides of his silhouette.";
	say "     These solid and darker scales grew all the way from his shoulders to his waist, covering almost the entirety of his legs, leaving only the inner side of his thighs revealed in red. That draconic dong of his looks massive, like about a foot and a half in length and girthy enough to demand respect, coming out of a visibly scarlet slit. What is truly intimidating about him, however, is his face. While draconic in shape, most of it is covered in an obsidian scale mask, ending in a pair of terrifying horns sticking out to each side. You can still recognize some of Damien's features, especially his eyes, but everything else remains permanently changed by this new configuration. A handsome, demonic dragonmorph, nonetheless, even though his grin could scare anyone away with so many sharp teeth.";
	WaitLineBreak;
	say "     His eyes bring out the fear in you as he pierces yours through with his gaze, reminding you of who is in charge. He does not seem angry, at all, but something in him seems to want to punish you for what you have done. 'You brought this on yourself, remember? Now you have to take every last inch of me until you draw you last breath... I'm sure it'll be less dramatic than I make it seem, however. What I mean is...' He interrupts his speech to take hold of your ass, then he spreads your cheeks and lets his cock fall on top of your backdoor. You immediately feel its warmth pulsating against that sensitive area. 'I'm gonna own your ass forever, bitch. You'll never be rid of me... Ever.' With this, he throws an ominous chuckle as his hands take hold of your hips. You know what will come next, as Damien definitely is not done with you.";
	WaitLineBreak;
	say "     You are brought towards him as his large erection threatens to drill into your hole, and with no mercy, he begins to shove it in as he maintains hold of your hips. That big cock of his stretches your anal entrance around its girth as it travels deeper inside you, moving in relentlessly without care for what you feel. Either pain or pleasure, as both are so mixed up, take hold of your entire focus as you are invaded by this draconic meat, which Damien simply continues to push all the way in. 'You're feeling really tight there, pal. Something wrong?' He asks, with irony, followed by a chuckle as he gives your buttocks a hard slap. This is when things start to get rough, as the demon dragonmorph thrusts deep into you.";
	say "     Now, your ass is being properly owned and used by a towering draconic demon you have helped create, being pounded with each thrust harder and deeper than the last. Damien was merely holding your hips and fucking you from the edge of the bed, but he really gets into it and brings one leg over the sheets, in order to lift his weight onto the top of you. His torso descends towards to your back, then his scaly body comes in full contact with yours, and you feel him circling your neck with his thick forearm, taking an effortless hold of your entire skull. You feel a very long tongue licking at the side of your cheek and ear as he lifts you just enough to slide his other hand over your body, fondling your [if Breast Size of player > 0]boobs[else]chest[end if], [if Nipple Count of player > 0]pinching your nipples, [end if]then moving it lower and lower...";
	WaitLineBreak;
	say "     'I'd love to see how many times I can make you cum before my needs are sated... I'm wondering if you're even gonna be able to walk out of here.' He almost whispers this to your ear as he [if player is male]takes hold of your cock, with a very tight grasp that makes you moan and squirm[else if player is female]brings his fingers over your drooling cunt, causing you to moan and squirm[else]holds you by your sensitive crotch, making you moan and squirm[end if]. Eventually, Damien lifts your body completely, keeping you kind of sitting on him as he keeps his throbbing dong buried deep inside your ass. This way, he has a lot of freedom to touch your parts in any ways he sees fit, teasing you until you are crying out for release. All you earn is is free hand covering your mouth and forcing you to suck on his fingers. 'Oh no, not yet... I'm not even close. We're just getting started...!'";
	say "     Each pounding sends your whole body back and forth as he continues to drill you, using his full length to stretch up your insides, and Damien keeps licking at your face in proper domination. He truly enjoys playing with you, and as he senses that you get close to your climax due to his persistent caressing, he stops it altogether, only keeping his warm hand over your crotch, not moving it at all... You can only cry in frustration, which makes him laugh. 'Aw... You wanted to cum already? Thought I'd test how long I can keep you on edge, first... I'm sure you wouldn't mind me doing that, right?' His tone is of pure mockery, each word said amidst deep and slow thrusts... You swear you can feel him throbbing harder each time he fully buries his lizard manhood in your guts.";
	WaitLineBreak;
	say "     Suddenly, you find yourself falling on your back and on top of Damien, who leans back to lie down on the bed. He is still grabbing you, his arms around your body as he so slowly caresses your sensitive spots, but once he gets comfortable, he starts pounding you like a battering ram, so hard and so fast you feel like your bowels are going to come off through your mouth. Now, his hands are entirely off your [if player is male]bouncing cock[else if player is female]labia[else]crotch[end if], but such a powerful fucking causes your orgasm to slowly build up, from a point it is only threatening to come... to its inevitable release. He does not slow down nor stop at any moment, keeping up the pace until you are squirming and moaning out loud in spiking pleasure. You hear and feel Damien laughing at you, almost with condescendence.";
	say "     'Shit... You're cumming from being fucked in the ass alone? What a little bitch you are...!' He throws this comment in as you are still [if player is male]shooting your load all over yourself in utter shame[else]quivering and squirming[end if], with a big dragon dick up your ass. It was so intense that you are left out of breath... but not your partner. He does not yield, not even for a second, and right about you are done with your first climax, he brings his hand back to your [if player is male]cock and strokes it[else]crotch and rubs it[end if] intensely. 'C'mon, how many more can you give me? I'm sure you've still got some [if player is male]cum to shoot[else]to go through[end if], don't you?' Not only he is still fucking you like a beast in heat, you are also being given a crazy amount of overstimulation. Damien rushes to cover your mouth before you can mutter a single word as tears escape your eyes.";
	WaitLineBreak;
	say "     'I'm gonna break you, bitch. You'll even forget your own name by the time I'm done fucking you dumb.' He says as, with a swift movement, he pushes your face down on a pillow, all the way back down onto the bed's sheets, and throws himself against you with brute force. You thought he could not go any harder, but here he is, proving you wrong. No human could fuck as hard and fast as he proceeds to once he is, once more, on top of you, almost crushing your body with all that strength of his. He nearly suffocates you on the pillow as he pushes your head against it, and by lifting his body just enough, he uses all the momentum he can create to perform several attempts at rearranging your guts.";
	say "     At this moment, you begin to feel light-headed. His scent, the ordeal he is making you go through, how he pushes your body over your limits... Your stamina runs short for all the pent-up lust contained in this demonic animal. Though, something at the base of his shaft begins to swell, and that is a good indicative of how close Damien is getting. He starts grunting lowly, of pleasure, as his orgasm threatens to have him release his load for a second time. 'Looks like someone's gonna get bred";
	if "MPreg" is listed in feats of Player and player is not female:
		say "... Well, maybe you'd like carrying my babies, too? I bet if I cum in your ass, there's a chance that could happen... Am I right? Maybe I should just try that and see...'";
	else if player is female:
		say "... Well, maybe you'd like carrying my babies, as well? Too bad I'm not using the right hole for that... But if you ask nicely, that can be arranged. You'd make a nice mommy.'";
	else if player is male:
		say "... How do you like it, carrying a stronger man's cum in your bowels, bitch? Maybe I should do just that, to remind you of your place among the alpha males... as my special cum dump.'";
	WaitLineBreak;
	say "     You think he enjoys saying this, as only a few seconds are needed before he lets out a longer grunt. His swollen knot enters your ass and the compulsive throbbing happens then, his load beginning to leave him and entering you. His first orgasm was already considerable, but this one is just ridiculous, as your entire bowels become flooded with hot demonic semen, so much that you even feel your belly bulging out slightly, just as if you got stuffed at a banquet. It is even hard to believe that he would have so much cum stored in him, despite his much bigger size, but most demons have incredibly sized loads... He is definitely no exception, even for a former human. 'Fuuuck! You feel so fucking good...! I...'";
	NPCSexAftermath Player receives "AssFuck" from Damien;
	WaitLineBreak;
	say "     After his climax subsides, Damien goes quiet as he rests half on top of you, leaning more to your side, waiting for his knot to shrink back. You still feel his cock pulsating inside you as its last drops ooze. But things become... strange. Your mind's focus returns, and your transformed friend does not move an inch. A sense of dread falls upon you as you realize the consequences of your actions, with this sudden cease.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Ask if he is okay.";
	say "     ([link]N[as]n[end link]) - Remain silent.";
	if Player consents:
		LineBreak;
		say "     Your conscience gets the better of you and you end up asking Damien if he is alright, with quite some difficulty in choosing the right word. He says nothing. Not a single word. An excruciating silence follows as he pulls out of your ass, now able to, and turns his back on you as he stands up from the bed. You feel very sore from all this, almost uncapable of walking, even. Even sitting is quite a challenge, so you decide to remain lying down on the sheets as you glance over the draconic man. His voice is then heard, unnaturally deep, as he gives you a look over his shoulder, managing to pierce your soul in such a dreadful way. 'Look at what you've done. You'll have your answer.' This really is everything you need to know, though those are not his final words. 'I trusted you. But I also didn't care, anymore.'";
	else:
		LineBreak;
		say "     Perhaps it is for the best to remain quiet. He does, anyway, not say a single word during this excruciating silence. At some point, he pulls out of your ass, now able to, and turns his back on you as he stands up from the bed. You feel very sore from all this, almost uncapable of walking, even. Even sitting is quite a challenge, so you decide to remain lying down on the sheets as you glance over the draconic man. Damien then only gives you a look over his shoulder, managing to pierce your soul in such a dreadful way, and speaks with an unnaturally deep voice. 'Is this what you've wanted all along? Congratulations... I guess. Hope you can sleep well at night knowing what you've done... To someone who trusted you.'";
	WaitLineBreak;
	say "     Then, he walks away, not even bothering to put his clothes on. They would not fit, either way. You are left alone... In this bedroom, growing colder by the second with the absence of your former friend.";
	say "     But that is nothing that cannot be fixed with a few more drinks... Right?";
	now DamienTFCooldown is turns;
	now Resolution of DamienTF is 3;
	now Damien is nowhere;

DamienTFCooldown is a number that varies. DamienTFCooldown is usually 20000.[@Tag:NotSaved]

an everyturn rule:
	if Resolution of DamienTF is 3:
		if DamienTFCooldown - turns > 8:
			now Resolution of DamienTF is 4;
			now DamienTFCooldown is 0;

instead of going inside from Hellfire Club while (Resolution of DamienTF is 4):
	say "     As you arrive at the club and greet the twin hellfire demons by the door, one of them, Egran specifically, beckons you to wait and come closer. 'Hey, you, [bold type]Toron[roman type] said he'd like to speak to you at the bar. Looks important, so best not to keep him waiting. I think it's about your friend or... whatever he is to you.' The demon then steps back and allows you to walk in. The urgency in his tone was somewhat evident, so you do not even think about going anywhere else but to the bartender, immediately.";
	move player to Hellfire Lounge;
	say "     Once you approach the bar, you notice that Mogdraz is also there, the two talking to one another as you walk to them. They acknowledge your presence and wait for you to come closer, then beckon you to take a seat next to the Demon Lord, himself. He has this odd and cryptic expression when he tells you to do so, and looking over to Toron does not really give you any answer, much the contrary. The bartender begins to speak soon after, taking the initiative to address the matter of this [']meeting['], 'So... I've told Lord Mogdraz about the situation with your friend, Damien. Not that he didn't already know most of it, but more specifically, it is regarding the transformation he underwent during your last encounter.'";
	say "     'This tonic is an altered version of a drink we used to have available to the public, which enhanced libido, confidence and, of course, reduced inhibition, as most alcoholic drinks do. It was made with actual... demonic components, and was later substituted by the Hellfire Swizzle, a much lighter version of it. The reason for this is that we discovered it had certain effects on local citizens, namely... Transformative effects. We actually never concluded it could fully turn someone into a kind of hellfire demon, and given your enthusiasm with your... friend, and how much he loved that drink, we allowed you to continue this investigation for us. That [']Iker['] guy was in your place, before, but it appears his mental resilience was not so high... Unlike yours.'";
	WaitLineBreak;
	say "     As Toron finished to speak, Mogdraz then intervenes, 'It goes like this. Iker and Damien were friends, Damien began to order that drink when we used to have it available, the drink had a strange effect on him and even managed to turn Iker, who was previously a strictly heterosexual individual, into a... more open fellow. We intervened and offered Iker a deal. He was to continue to encourage Damien to have that drink and indulge his fantasies, and we would make sure he got well-rewarded. The arrangement did not last for too long and Damien would soon find out that Iker was trying to do something to him, thought of him corrupted and left with a grudge on us, understandably so. Iker then went to me and offered his soul, perhaps out of guilt, but I made sure I gave him everything he could ever ask for.'";
	say "     'You meeting him was a fortunate coincidence. With Damien's mind so lost and confused, he never got to fully understand the details behind this arrangement, and to improve things, you even helped him regain some of his humanity. Once he returned to the club, happy to consume, I admit, I was intrigued, but then I saw you speaking to him and acting like you were friends... I just knew what had happened. Toron was given permission to recommend and serve the drink you have been encouraging Damien to have, and you have not shown any opposition towards it, so we continued to observe your interactions and effects. Basically, it does seem that we can fully convert others into demons by simply feeding them genetic material from our bodies in many shapes and forms, as long as they carry the nanite infection.'";
	WaitLineBreak;
	say "     Toron then continues after the Demon Lord, 'We did not intend to deceive you, and I, indeed, made sure you were aware of the effects it would have on your friend. You had your reasons to proceed, but so did we, and now, we have the answers we saught. As for you friend, however, he did become... One of us, I'm afraid.' You ask them what did that mean, given where this entire conversation is headed. Mogdraz takes over and replies, 'This means Damien ended up trading his soul for permanent residence in the Club, but he remained with a particular interest in you. I've given him status as a hellfire demon, much like every other grunt I employ, but the curious result of this experiment was that he was not turned into just [italic type]another[roman type] hellfire demon, but one of their older forms. A draconic hellfire demon, to name it. Very much like Drenraya, if you've already met her.'";
	say "     'But speaking of this obsession he has over you, there were a few conditions in our deal... He would work for me as a special escort, attending to various patrons who are in need of company and comfort, but he would also like for you, and only you, to have full freedom to go meet and stay with him, free of charge, and that no limits were imposed in what he could do with you.' As you begin to realize the true reason of this meeting, you ask Mogdraz if, by any chance, that meant he sort of sold you to this new Damien. 'Sold you?! No, [if Resolution of MogdrazRomance >= 8][italic type]I'd never do that to you! What sort of individual would I be if I betrayed your trust in such a way? I'd have never forgiven myself[roman type][else]it is not like that[end if]... What I did was to merely agree that you could visit him for free and he would have no limits in what he could do with you during said meetings. You are not bound to him, in any way. In fact, you could ignore him for the rest of your days. He did not say more than this, so I've concluded those were his only terms.'";
	WaitLineBreak;
	say "     The bartender begins to speak, once Mogdraz had finished explaining the terms of his deal with Damien, 'We've called you to thank you for the favor you have done for us, and to update you regarding Damien's situation, as well as answer all the questions you had regarding his situation with Iker and whatnot. You may [bold type]now request to be with him[roman type] whenever you wish to, but you must be [bold type]wary of his acquired power[roman type] due to the deal he made with Lord Mogdraz. We have an idea of what he intends to do with you in the long term, and it might not be wise for you to pursue any further relationship with him. Surely he will help the Club profit, so, of course, we benefit from this arrangement. You, on the other hand, if you continue to meet with him, [bold type]we will not be able to protect you from any effects he might have on you[roman type], due to the terms of his deal with Lord Mogdraz. This is why we have decided to inform you of everything that is relevant to the situation.'";
	say "     Mogdraz then turns to you, 'Of course, it is because you have done us a great service, so we are trusting you with all this information. Do be careful with what you do with it, however. I [if Resolution of MogdrazRomance >= 8][italic type]would not like to see something bad happening to you[roman type][else]would prefer to not have to deal with any more unpleasantries[end if].' With that said, the two look at each other, then to you, and nod, as if agreeing that the conversation is over. Toron then resumes his bartender duties and Mogdraz gets up to leave. 'It is time that I return to my own affairs. Should there be any problem regarding Damien, I believe Toron would handle it. We do not require anything else to be done, so anything that happens is entirely your responsibility.' With these words, he leaves you, and you are now free to proceed as you wish.";
	if Loyalty of Mogdraz < 3:
		now Loyalty of Mogdraz is 3;
	else if Loyalty of Mogdraz is 3:
		now Loyalty of Mogdraz is 4;
	increase Lust of Mogdraz by 10;
	say "     All things considered, you managed to [bold type]improve your relationship with Mogdraz[roman type]. He respects you greatly.";
	now Resolution of DamienTF is 5;

to say ToronTalkExoticEscortsDamien:
	say "     Toron stares into your eyes and you almost feel him asking if you are certain of your choice, but proceeds to do the introduction he usually does as if he was any other escort. 'Damien, isn't it? Well, formerly a human, Damien is now a proud draconic hellfire demon with a knack for peering into minds and influencing their will. For those who like letting go of their ability to make decisions and be fully under control of someone else, there is a guarantee that their encounter with him will be most pleasurable. He prefers a highly dominant approach, usually subduing his clients into doing... whatever crosses his mind. Safety policies ensure that nothing permanent or threatening in the long term happens to your clients... If they are, indeed, covered by such.'";
	if Resolution of DamienTF is 5:
		LineBreak;
		say "     'With that said, do you wish to schedule a session with Mister Damien? The usual price is 10 Obsidian Coins for a full hour, but for you it is... [bold type]free[roman type], as you may already know.'";
		say "     ([link]Y[as]y[end link]) - Yes, go see Damien.";
		say "     ([link]N[as]n[end link]) - Perhaps... You should not.";
		if player consents:
			say "     With a nod, you state that you want to go see Damien. 'Is that so...? Very well, I... shall escort you there. Remember, this is entirely your responsibility,' he tells you, before gesturing towards the Staff door and beckoning you to follow him, 'Through here.' You find yourself going from corridors to more corridors, taking turns into places you could never hope to remember, but Toron seems to know exactly where he is going for. There is this uncomfortable feeling in your stomach as you near your destination...";
			say "     You have no idea where this is, but Damien's room seems to be just after this door. The bartender leaves you be with only a cryptic stare instead of words...";
			WaitLineBreak;
			say "[ExoticEscortsDamienSession]";
		else:
			LineBreak;
			say "     Toron nods, with a sigh. 'Very well, then. It is probably for the best...' he replies, awaiting further instructions from you.";
			WaitLineBreak;
			say "[ToronTalkExoticEscortsMenu]";
	else:
		say "     'But it looks like Damien is currently busy. You will have to wait for some time until you can ask to be with him again.' Toron informs you. Perhaps you should just pick another person, for the time being.";
		say "     (This is the end of his scenes, for now. More will be added in the future.)";
		WaitLineBreak;
		say "[ToronTalkExoticEscortsMenu]";

to say ExoticEscortsDamienSession:
	say "     Once you knock on the door, you hear a familiar voice on the other side, albeit a demonic one, deeper than how you remembered it, 'Come in, friend... I know it's you.' This surprised you, even knowing Damien was already changed almost beyond recognition due to the transformative drinks, but hearing such a different tone coming from him is definitely a shock, one that you were not quite prepared to face. You place your hand over the door's knob and rotate it to the side, then slowly push it open, looking over the floor as you take a step forward. Without opening the door completely, as if subconsciously shielding yourself, you only peek inside to have a look at the dragonmorph. You had already seen him, but now... He is truly a demon.";
	say "     'Don't be shy! It's me! We're still friends, right?' he asks you, with an enthusiasm too unnatural, too unsettling, as you look at him from head to feet. He is lying down on the bed with one of his elbows on the sheets, holding his own head up with his whole body fully turned towards you, giving you a complete view of his physique. He truly is changed, even when comparing to the last time you saw him. Damien is now even taller, even stronger, with a pair of horns which size could compete even with Mogdraz's. You can sense the heat coming from his crimson scales from where you are standing, and his fiery eyes give you quite the trouble, as they draw yours into his in an almost compelling manner. You avert exchanging gazes, for now, because of how that makes you feel. It is like letting your mind open for him to pry into, a feeling that leaves you extremely uncomfortable.";
	WaitLineBreak;
	say "     Finally, you decide to walk inside, closing the door behind you and presenting yourself in front of Damien, who also observes your entire self. He grins as you approach him, a smirk that tells mischief from miles away, but you do not think it is his intention to hide his thoughts on you. Even now, Damien is a quite attractive devil, and you know he could get anything he wanted from you if he tried hard enough. Perhaps you already knew of this, but only now you are truly exposed to the fact. With only silence between you and his upsetting gaze, you figured you should at least ask how he had been doing during these past times, and tell him that you already know about his deal with the Demon Lord, which is why you are here.";
	say "     He laughs before giving you any answer, as if amused, but eventually responds, 'Me? I've been doing wonderfully... I just thought you'd appreciate the fact I thought about you before trading my soul for some more of this... form. I mean, this is pretty rad!' As Damien speaks, you find yourself slowly letting your guard down near him, as he does not seem to be mad at you, at least until now. 'I admit, I felt quite betrayed when I realized you were conspiring with Toron to turn me into this fucking sexy dragon devil, but... Fuck, I love this! I can fuck for hours! Days! I just don't get tired of it! Shit, being human sucks in comparison. I can even fly! And fuck while flying! Think you could do that as a human?! Nah, and they even put you a counter towards your own death! Sucks being a mortal.'";
	WaitLineBreak;
	say "     You tell him you are glad that he is doing so well, despite what happened. 'Yeah, you probably know everything about what really happened with me and Iker, right? Shit, I can't believe I forgot I was the one who ended up corrupting him with my advances... Mogdraz said I had developed this sort of will bending thing in my eyes during my transformation, and I might have made Iker believe he was into me without really knowing I was influencing his mind. Turns out I was, and then he sold his soul for an eternity of servitude in some random-ass place full of big manly demon dudes. What a fucking buttslut he became... It's kinda funny, right? A straight dude turned into a mindless bottom slut craving for dick all the time... Imagine having the power to do that!'";
	say "     This is when you begin to get worried, again, hearing that Damien enjoys having this power so much. Following up with your previous question, you ask him what exactly he wished for in his deal with Mogdraz, besides solidifying his status as a demon. 'What I asked? You know what I asked. Would Toron let you in here if you didn't know of the terms I chose?' he replies, a little perplexed, and you tell him that you, indeed, know of those terms, but they have not told you the full thing, which you would like to hear from him. He sighs, but still decides to answer, 'Yeah... So... Since I was struggling with my mind, I asked Mogdraz to stabilize it. He said he'd do it, in exchange for my soul, and convinced me that, otherwise, my soul was already lost, because I'd be struggling my whole life to resist depravity.'";
	WaitLineBreak;
	say "     'I then said [']Yeah, sure['] and accepted the deal under specific terms. First, that I wanted my transformation complete, solid and to retain this sexy form. Then, I wanted immortality, of course, which he said it was already included in the demon status. He also told me of what kind of work he could offer me and I picked escorting, since it's just fucking all the time, so an easy and fun job. I made sure he allowed you to come see me for free, at any time you wanted, but that those stupid rules of his wouldn't apply in our meetings. He agreed to all those terms, so I signed the contract and it was done! Next thing I know I'm an even bigger, badass draconic demon, and I was so fucking horny I ended up starting an orgy in the dungeons with a bunch of guys and gals. I was on fucking fire that night! Couldn't stop putting my dick in them all, [if HP of Araqiel >= 3]even that winged big dude. Fuck, what a big ass he has[else]I swear[end if]!";
	say "     Your gaze is inevitably drawn to the tip of Damien's cock slowly emerging from his slit as he relives these events. As the demonic dragonmorph gets excited, you do too, and you have no way to hold it. Your body immediately responds to his dick growing before your eyes with [if player is male]making your own harden[else]a shiver that leaves you sensitive all over[end if]. He, however, continues to speak as if nothing happened, 'So, yeah, that's how that day went. I started my job shortly after and got to get worshiped by some clients who wanted to be dominated. It was a... One of them was a doggie slut, the other was a wolf bro, which was a total power bottom, that one... Then it was a really sweet little dude who called me [']sir['] all the time... That one was fun, he'd do anything I told him, so willing to please... Ended up fucking him so hard I had to ask Toron to carry him outside, the poor thing... Couldn't walk on his own... Damn, but that was hot. Dunno what happened to him, after...'";
	WaitLineBreak;
	say "     Damien soon realizes he popped a boner right in front of you, but instead of showing any kind of embarassment, he only grabs his own meat and starts to mindlessly play with it, running his fingers around it before placing his palm on the shaft to stroke it properly, albeit slowly. You merely watch him do it, which arouses you even further. Despite this, he continues to talk to you, returning to the subject about your [']friendship[']. 'You know, you still owe me for what you've done. Even if I didn't exactly mind my fate, you still betrayed my trust by doing it on my back. It was still a dick move...' he says, looking at you while stroking his large cock, still shaped like a dragon's, pretty much like how you remember it, but even bigger, to match his new height.";
	say "     You lose your eyes in it, too, and you feel yourself acquiring an odd urge to put it in your mouth... Damien, however, keeps you at a distance, pushing you back with his foot when you decide to make an advance. 'Nah, I don't think so... That'd be a privilege for you. I'll just have you watch... But you can come as close as I allow it.' You then ask him what he meant by owing him something, and that makes him laugh, for moments. 'There are plenty of ways to make it up to me that don't involve sucking my dick, you know... But I'll forgive you. I suppose you can't really help yourself when you see someone this hot right in front of you, right? And that's why I'll let you look at me. Make sure you memorize every inch of me...'";
	WaitLineBreak;
	say "     He really is not joking. Damien is not allowing you to touch him and only lets you kneel before him as he straightens himself up on the bed, sitting by the edge of it with his legs turned towards you. Like this, you get a good look at his cock as he continues to stroke it, still with steady and slow movements, only feeling up his thick and slick shaft. At this rate, it will take him a long time to finish, but perhaps, that is his intention. 'It's true that you've blown me many times, already... but believe me, it'll not feel the same... You'll find it much harder to stop when you realize how good it tastes, how warm it feels... And wait until you get some precum to leak out of it... And until you're swallowing my load... It's true what they say about demon cum... It's addictive. You can't help yourself but keep craving for more...'";
	say "     His voice reaches your ears in a way that makes you want to listen, making you unsure on how to explain it to yourself. 'It's more than a simple addiction, I'd say. This is not orc cum we're talking about, no... It's lust. Desire... Passion, at times... which can be as binding as a simple chemical addiction.' A drop of his precum begins to ooze at that moment, causing your eyes to widen as your gaze sprinkles with a pleading look, something you are unable to control. 'Yeah, it's pretty thick, too... Look at this...' he says, drawing your attention to his fingers as he picks up the drop between his clawed thumb and index, then showing you how consistent and long the strand of liquid is by slowly moving them apart and back together numerous times.";
	WaitLineBreak;
	say "     Damien keeps on leaking as he does this, and goes to grab some more. At one point, he smears it all over the tip of his index finger and you can definitely tell how much of that is contained in just the few first drops. He enjoys seeing you looking at him from where you are kneeling, begging for a taste of his juice with your eyes. You are not quite sure why you are craving for it so much, but there is something in the air around you, a warmth that evaporates any irrelevant thoughts and leaves only those that matter... to the dragonmorph, at least. Every inch of him, his sculptural body, his size and might, the way he looks at you and draws you in with such little effort... Everything overwhelms you the more you lose yourself in him.";
	say "     You find yourself looking into his eyes more times than you should, causing your mind to become a haze of lustful thoughts, all the more reinforced by the way he goes on stroking himself showing genuine pleasure from the current situation. His foot is still keeping you at a distance, as you continue to feel it pushing against your chest. Damien only grins at your helplessness, knowing the effect he is having on you, but keeps only jerking, a little faster now. In a way, you can also sense his excitement, the power he holds over you feeling intoxicating for him, as if there was a slight empathic link between the two of you. This unbearable desire that takes over you has you moving your hands over your privates to also stimulate yourself, and Damien does not stop you.";
	WaitLineBreak;
	say "     As you keep observing the large draconic devil, nothing else matters but the joy and bliss from being here with him, together, and your mind stays fully invested in the present. At one point, Damien gestures you to finally come closer, but adds 'Give me your hand.' You do so almost immediately. Damien then brings the hand that he was stroking with to touch yours and slowly pulls it back, allowing you to touch his slick member, whichs gives out a welcoming throb the moment your fingers meet the meat. You are not allowed to touch him anywhere else, nor with anything else other than only this one hand, but you want to jerk him off so bad that you begin to do just that. He smiles in approval and lets you. 'Go on, and don't stop...'";
	say "     There is no point in stopping, anyway. You want to jerk him off at a good and steady pace until he blows, and you carry on doing just that. Committing to the cause, you move your hand up and down through his big shaft in a rhythm you know Damien will find pleasant, and kind of just know when to do it quicker, followed by how deep and fast he breathes and the moaning he lets out. 'Come in a little closer, bud...' he says, whispering, touching the back of your skull to show you what he means. You do so, leaning your head over to mere inches of distance from his dick as you continue to stroke him. His scent is really strong in here, almost causing you to feel lightheaded, but incredibly horny.";
	WaitLineBreak;
	say "     You want to make him cum really badly, so you carry on jerking him faster, then even faster, as the draconic devil leans his head back and moans all the way through your efforts. Nothing else matters but his pleasure, at this moment, and you give it your all, stroking his dick as fast as you can and keep this up until you have him breathing deeply. You know you should not stop now, under any circumstances, and carry on until his edging point... 'Keep going... I'm almost there...' he warns you, his dick throbbing in anticipation. Its tip is aimed towards your face, and that is exactly what you want as you keep on jerking him off, rubbing along his entire shaft until the point of no return is hit...";
	say "     It is then that Damien squirms a little, moaning as his load begins to travel through his manhood only to be shot directly onto your face, a very generous spray of cum that goes on and on until your entire face is covered in it, dripping down to your body and causing your own [if player is male]cock to burst in joy[else]climax to surge through you[end if] so intensely... The draconic devil's orgasm goes on for a long time until it subsides, and you earn yourself something similar to a cum bath. He laughs once he sees the state he left you in. 'Fuck... That's a lot of cum... Bet that feels really good on you, doesn't it?' Damien looks at you with a smirk on his face watching you covered in his own jizz. You take a tentative taste on a drop that falls by your lips, and it immediately tempts you to get more.";
	WaitLineBreak;
	say "     'That's enough for now. It was fun seeing you again, but I'm all out of time... Just keep thinking of me and come back another day! Who knows, I might let you suck me if I feel like you deserve it.' He then gestures at the door as it opens behind you. Your shape is still, however, covered in Damien's cum, but he does not mind it. In fact, you think he might even enjoy watching you walk away covered in it, as if marked by him. You are given no other choice but to start walking towards the exit as you say goodbye to him. 'Oh, it won't be long, I'm sure...' he replies as the door closes on you, leaving you outside.";
	say "     Toron them comes for you within only a few minutes, quite shocked to see you in such a state. 'My... What a mess. We'll have to get you clean before you return to the lounge. I... am assuming nothing out of the ordinary happened?' he asks you, but there is nothing special to tell him. He does not pry any further, either, and proceeds to get you cleaned up before escorting you back to the bar.";
	NPCSexAftermath Player receives "Other" from Damien;
	now Resolution of DamienTF is 6;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section X - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

SkipToDamien is an action applying to nothing.
Understand "GetDamien" as SkipToDamien.

Check SkipToDamien:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

Carry out SkipToDamien:
	now Resolution of DamienIntro is 5;
	say "     Resolved Damien's Intro the necessary way, activating his everyturn rules.";
	say "     Done.";

Damien ends here.
