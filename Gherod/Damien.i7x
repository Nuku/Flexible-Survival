Version 1 of Damien by Gherod begins here.

"Adds Damien to the game, a Demon Hunter who first begins as a human."

[Version 1 - File Created, with Intro event and NPC consolidation]

Section 1 - Intro Sequence

Table of GameEventIDs (continued)
Object	Name
DamienIntro	"DamienIntro"

DamienIntro is a situation.
ResolveFunction of DamienIntro is "". Sarea of DamienIntro is "Nowhere".

DamienIntroCooldown is a number that varies. DamienIntroCooldown is usually 20000.

instead of going south from Hellfire Club while daytimer is night and DamienIntroCooldown - turns > 7 and Resolution of DamienIntro <= 1 and a random chance of 1 in 5 succeeds:
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
	say "     In all honesty, you are not sure this man is doing so well. His eyes widen a lot whenever he speaks, and he seems to be nearly running out of breath everytime he goes on ranting about demons. Surely, something must have happened to him that involved hellspawns, and something that got really stuck in his mind. With a nod, you let him know that you would like to hang out with him, sometime, and while you are at it, perhaps you can be of any assistance to him. 'Yeah, that'd be great... I... really haven't been too successful at this on my own... Don't get me wrong, I'm quite capable! But these demons are elusive! And they're great at tricking you! You should never trust them, they'll always find a way around you, and they'll know everything about you if you let them too close!'";
	say "     And before he goes on another rant again, you tell him you will definitely consider helping him out, and that he has no need to worry anymore. 'Alright, alright... I'll be around here, occasionally. Just... pass by and check, you might find me. I know this isn't the best meeting place, but it's discrete and close to our objective... And we could... do some scavenging, too.' Nodding in response, you finally introduce yourself to him, as he does the same. 'I'm Damien. Nice to meet you.' Someone knows some manners, at least!";
	WaitLineBreak;
	say "     You will be able [bold type]to find Damien in the Dark Alley[roman type] during the [bold type]night[roman type]. Perhaps you should build some trust with him before knowing for sure what to do, regarding his hate for demons and his mental sanity...";
	move Player to Dark Alley;
	move Damien to Dark Alley;
	now PlayerMet of Damien is true;
	now Resolution of DamienIntro is 2;

Section 2 - Damien NPC

An everyturn rule:
	if Resolution of DamienIntro > 1 and Resolution of DamienIntro < 5:
		if daytimer is night and DamienScavengingCooldown - turns > 5:
			now Damien is in Dark Alley;
		else:
			now Damien is nowhere;

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
Cunt Tightness of Damien is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
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
	say "     Damien appears to be fully human, at least at first glance, and has shaggy black hair, a somewhat short but unkept beard, and a peachy skintone. He has hazel eyes, especially noticeable when he looks directly at you. Despite his rather messy appearance, he has some quite handsome and masculine features, which would really show if he cared more about his looks. Body-wise, he is a tall man with an athletic physique, and he is currently wearing a black hoodie, a pair of dark jeans and sneakers, carrying a large backpack on his back and several pouches around his waist, even some smaller ones hanging to his legs with a strap. He probably carries a lot of stuff with him everytime, which tells you that he might actually be a great scavenger, probably the reason why he hasn't yet succumbed to the outbreak.";

Section 2-1 - Damien Talk Menu

DamienDoneTalking is a truth state that varies.[@Tag:NotSaved]
DamienScavengingCooldown is a number that varies. DamienScavengingCooldown is usually 20000. [@Tag:NotSaved]

instead of conversing Damien:
	now DamienDoneTalking is false;
	say "     You approach the scavenger, who is leaning against a wall, and he turns his attention to you once you come close. 'What is it?' he asks.";
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

to say DamienTalkSex:
	if Libido of Damien is 1:
		say "     You decide to inquire Damien on sexual matters, namely his sexual life and, more specifically, about what stopped him and you from getting more intimate, that time. 'So far, I don't really have much activity. I try not to think about it too much as I'm not sure how that would affect me.' he replies, but you are still curious about the real reason. You do not tell him that, though. He is perceptive enough to notice. 'I have already suffered a change down there, and... I don't know how to feel about that. Sometimes I get really nasty thoughts, about stuff I would never do under normal circumstances... but they sound really appealing...' he stops talking about it, and his expression gets serious. 'I don't want to talk about it. You must've already realized that my head's a mess, right now.'";

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
		say "     'The drink? It was [bold type]Toron[roman type] who gave it to me, though he warned me that drinking something like that would cause permament changes. It was completely my responsibility, I was the one accepting the terms. Then I gave myself a dragon dick as my sex drive skyrocketed! It felt amazing, but wasn't so great for my mind. Fortunately, you came by... And hanging out with you helped me stabilize. Still, I was trying to finish that machine, but it was more out of craftsman pride than anything else.' You deliver the news, that the transformation he got is what is messing up with his mind, and that it takes a strong willpower to resist its changes. You suppose that interacting with someone else after everything that happened helped him see things differently.";
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
			say "     With your tongue wiggling across its pointy tip, it then reaches for the shaft and beyond as you pull his length deeper inside your mouth. With your best efforts, you begin to slide your lips up and down along his cock, tilting your head everytime you dive to give him some extra sensations. 'Oh, fuck... You're amazing...!' he compliments you, now grabbing your head with both his hands and following your motions, but you notice him wanting to slowly take the lead, so you allow him. Eventually, he is the one guiding your movements, how fast and how deep you suck him... 'Fuuuck, your mouth feels amazing...!' he exclaims in a lusty tone, almost fucking your face with each eager motion.";
			say "     As he picks up the pace, you feel his knot beginning to swell as you ram your lips against it, or rather, as he slams it against them. By now, he is deliberately using your head as his fleshlight, lost in bliss and joy as he builds up his orgasm, ready to burst anytime. His breathing deepens as Damien starts giving signs that he is getting close, about to give you his load that has been awaiting its release for a long time. 'Fuck, fuck... I'm gonna cum- oh FUUUuuuck...!' he barely finishes warning you and a powerful geyser comes shooting inside your mouth with considerable force, forcing you to swallow it immediately as it begins to fill you. He goes on cumming for a good while, and you continue to swallow it all... He actually did not give you any choice.";
			WaitLineBreak;
			say "     His cum seems safe, as you feel nothing changing in your body right as you take a full load of this man in your stomach. Once he lets go off you and you are allowed to remove your lips from his still throbbing shaft, you do so and catch your breath. Then, you both exchange looks. There is pure bliss in his hazel eyes as he smiles back at you. 'This is what I've been losing...! Fuck, I should do it more often...! Right, not about to get too crazy with it, but... Yeah, I gotta try it some more times!' Well, it seems he really enjoyed it, and you managed to put some happiness back on his face.";
			WaitLineBreak;
			say "     As you both recollect yourselves from this brief sexual activity, Damien begins to talk about a different matter. 'So... Well, after I told you all this, I suppose I still need to thank you for everything you have done for me.' You nod, but he sounds strange, again, so you ask him if anything is wrong. He replies, not shortly after. 'No, no... Everything is fine. More than fine, actually! This was amazing and I really feel... good! Thanks to you, again.' - he pauses - 'It's just that I... well, I need to be with myself for a while, now. I'm probably [bold type]not going to be back at the Dark Alley[roman type], so don't look for me there... But I'm sure we'll meet again!'";
			say "     With renewed confidence, he gives you a smile as you both get up and prepare to leave. After he is done unlocking the door and push it open, he puts a hand over your shoulder and looks at you, your gaze locked in his hazel eyes, for a while... 'So... this isn't a goodbye, but a [']see you later['], alright?' he says, and these are his final words before you part ways... But not his final action. His hand finds its way to your cheek as he goes for a kiss on your lips. A brief and shy one, but sort of tender and warm... You doubt he would have the boldness to do such a thing, before. It is now that he leaves you, traveling down the Northern Street into places unknown.";
			WaitLinebreak;
			say "     If you are still curious about Damien, perhaps [bold type]people in the Hellfire Club[roman type] would be able to tell you more about him (coming soon).";
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
			say "     If you are still curious about Damien, perhaps [bold type]people in the Hellfire Club[roman type] would be able to tell you more about him. Though there wouldn't be much of a point in doing so, right now, you could sate your curiosity somewhat, if you still have any questions you want answers for (coming soon).";
			now Damien is nowhere;
			now Resolution of DamienIntro is 99; [he left, for good]

Section 2-2 - Damien Sex Menu

instead of fucking Damien:
	say "     <<Author's Note: This is not possible at the moment. Will be expanded in the future.>>";

[to say DamienSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "";
	now sortorder entry is 1;
	now description entry is "";
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
				if (nam is ""):
					say "[]";
				else if (nam is ""):
					say "[]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You back off with your decision.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;
]
Damien ends here.
