Version 2 of Dwarves by Gherod begins here.
[Version 1 - File created - Gherod]
[Version 2 - 1 Submit Scene, Collapsed Tunnel event, Golden Greathammer weapon - Gherod]

"Adds an entire new race, the dwarves, in form of a new infection and a new roaming creature past an introductory event."

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Savage Dwarf	"Savage Dwarf"

Savage Dwarf is a situation.
The sarea of Savage Dwarf is "Forest".

Instead of resolving a Savage Dwarf:
	say "     During your exploration efforts within the forest, you come across a grassy path near the base of a cliff. A little further ahead, there is - or was - what seems to be an entrance to a tunnel right through the rocky walls. It has collapsed, though you hear a lot of agitation coming from there, namely a short burly man shouting and hitting on the debris with his stone hammer. You can't quite understand what he's saying from here, you're standing too far to be able to hear him decently, but whatever it is, it looks like the man is having an argument with the rubble, or maybe someone is on the other side? [bold type]You could risk approaching him, but there isn't a lot of hiding area if you get closer, and he might see you.[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Get closer.";
	say "     ([link]N[as]n[end link]) - Ignore the situation for now.";
	if player consents:
		LineBreak;
		say "     It might be worth your time investigating what's going on with such a peculiar figure, so you take several steps close enough to hear the little stocky guy talking. His voice is deep and mature, one that you'd expect from a middle aged man. 'Come on! We're the same, here! Why would you keep me away?!' You hear nothing in response, only the impact force of his hammer hitting the rocks, but it doesn't seem to help him open any entrance. 'We could have lots of fun fucking each other all day, it's no fair to keep all the fun for yourselves!' The man seems to slow down the hitting and the shouting, seemingly giving up on trying to get across the collapsed tunnel. He might not be the only dwarf around here, judging by his words.";
		say "     You try to pass by unnoticed, but unfortunately, you're not able to conceal yourself well enough, as the dwarf turns around immediately when you begin moving away. 'Hah... you know what, I don't need you dorks! I've found myself someone to fuck out here!' he says, readjusting his leather belt and throwing his hammer over his shoulder in a display of strength, supporting the weight with his body as he walks towards you. 'Yeah, I'm talking to you, over there! Hope you're ready to service me when I give you the beating you deserve for spying on me like that!' Uh oh, he doesn't seem keen on letting you go without a fight! Without any further ado, the dwarf charges in your direction, ready to pummel you with his heavy-looking weapon.";
		challenge "Dwarf Scavenger";
		if fightoutcome < 20: [player won]
			say "     After your last hit, the dwarf lies defeated on the ground, and his unability to move allowed you enough time to get out of there, back to safety and away from the crazy short man.";
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     With yet another blow from his hammer, his strength proves to be higher than yours. After an intense and hard fight, your efforts fail you as the dwarf overtakes you. Bruised and defeated, you now remain at his mercy.";
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1: [facefuck]
					DwarfFucksOral;
				-- 2: [fuck]
					if player is female: [has a pussy]
						if a random chance of 1 in 2 succeeds:
							DwarfFucksAnal;
						else:
							DwarfFucksPussy;
					else: [no pussy]
						DwarfFucksAnal;
				-- 3: [facesitting]
					DwarfFacesit;
		else if fightoutcome is 30: [fled]
			say "     Running away as fast as you can, you manage to outrun the dwarf. It's a rather easy task, as his short legs really are not match for yours. After getting out of track, you return to relative safety.";
		say "     This is new. You don't think this dwarf will be an unique case, and you might actually encounter more like him during your stay here. Anyway, he's gone now, so you're free to return to your previous tasks. However, there might be something interesting regarding that [bold type]collapsed tunnel[roman type]... Perhaps you should investigate it in the future.";
		now Savage Dwarf is resolved;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Dwarf Male":
				now MonsterID is y;
				now area entry is "Forest";
				now non-infectious entry is false;
				break;
	else:
		LineBreak;
		say "     Deciding you have better things to do than to listen to an old crazy short person smashing some rubble while shouting towards nothing, you turn around with a shrug, returning to your previous path.";

Table of GameEventIDs (continued)
Object	Name
Collapsed Tunnel	"Collapsed Tunnel"

Collapsed Tunnel is a situation.
The Prereq1 of Collapsed Tunnel is Savage Dwarf.
The sarea of Collapsed Tunnel is "Forest".

Instead of resolving a Collapsed Tunnel:
	if resolution of Collapsed Tunnel is 0: [first time]
		say "     During your walk around the forest, you come across a familiar path near the rocky cliffs where the collapsed tunnel was found, and with it, the horny dwarf who's now roaming around. Tracing your steps back to the place, you remember the rubble that used to cover the entirety of the passage ahead of you, now partially removed to allow anyone to make it across. You suppose this is the work of the dwarf, who was finally able to remove the obstacles in order to make it to the other side. There's a chance that you might find something interesting if you decide to investigate, but beware that you're very likely to be trespassing dwarven territory. If you have any companions with you, they'll stay at the entrance to make sure you won't get stuck inside while exploring. [bold type]Do you wish to go on ahead, or leave the place for now?[roman type][line break]";
		LineBreak;
		CTunnel1;
	else if resolution of Collapsed Tunnel is 1: [returned before entering]
		say "     During your walk around the forest, you happen to pass by the tunnel leading into the rocky cliff, with the way now partially clear of rubble. There's no change since you last encountered the place like this, and you're again left with the choice to either investigate or leave. Do keep in mind that you're very likely to be trespassing dwarven territory if you choose to proceed. If you have any companions with you, they'll stay at the entrance to make sure you won't get stuck inside while exploring. [bold type]Do you wish to go on ahead, or leave the place for now?[roman type][line break]";
		LineBreak;
		CTunnel1;
	else if resolution of Collapsed Tunnel is 2: [returned after finding the trap]
		say "     During your walk around the forest, you happen to pass by the tunnel leading into the rocky cliff, with the way now free for you to cross without any hard efforts. There's no change since you've last entered the place, and you recall having found a trap on your way deeper thanks to your great perception. Figuring that you had no way to proceed, you chose to leave in order to return some other day, and now here you are. How will you deal with this obstacle, provided your options?";
		LineBreak;
		CTunnel2;

to CTunnel1:
	say "     ([link]Y[as]y[end link]) - Investigate the passage.";
	say "     ([link]N[as]n[end link]) - Leave for now.";
	if player consents:
		LineBreak;
		CTunnel1Pathway;
	else:
		LineBreak;
		say "     It's probably for the best that you stay away from this place, for now. Perhaps when you find yourself more ready to venture into hostile territory...";
		now resolution of Collapsed Tunnel is 1;

to CTunnel1Pathway:
	say "     Choosing to press on ahead, you realize that the opening made is a little too short for you, so you have to clear some more of the scrap that's keeping you from going across. Clearly, this suggests that someone of a small stature made it through, likely to be dwarven in origin. You proceed with caution, paying attention to any strange sound that might be heard at this point, as you carefully step through the rubble and move what's still blocking you with your hands. There's all kinds of stuff used to block the entrance, from metal scraps to wooden broken crates, and you have to watch out not to get injured by any of the rusty blades menacingly pointed at you. Whoever wanted this path closed really made sure that it stood that way, and whoever opened it really wanted to make it through!";
	say "     The path is tricky, but achievable. Once you're done with most of the stuff, you see less and less serving as obstacles, and so you're free to walk forward. The tunnel itself isn't very wide, and there are points you need to lean your back to make it across, however the pathing doesn't extend itself for too long. Several more steps and you start seeing light in what seems to be a larger room, one enough for you to actually stand up straight and freely explore. It's actually a relief once your feet land on solid floor, some kind of stone mosaic covering the area. It seems to be some kind of basement, with walls made of stone and only a few torches scattered around the walls. There are a few ornaments on the floor near them, so dusty that you can't actually see their natural colors, and boxes with all sorts of trinkets and other things, suggesting that this might serve as some sort of antique storage. It smells of old, and there's not a single noise to be heard.";
	WaitLineBreak;
	say "     You suppose it's no use lingering here, so you're set to explore the area around you. There's only one way to follow, so you get on that immediately. Following through the corridors gives you a whole another feeling of where you are, as the structures seem really old, even too much for just a simple underground warehouse. It gives you the feeling of some kind of old ruins, excavated and built in a large scale, even more so for dwarves. There are some large doors along the massive corridor, but none of them are open and you don't think there's any way to force them. You've got no choice but to walk forward and hope to find something worth coming here.";
	say "     With a few minutes worth of walking, you arrive at another room, behind one of the doors that you could actually manage to slip through. There are armor stands, some filled with rusty and heavy armor of a dwarf's stature, swords, shields and other large two-handed weapons. Seems like you just stepped into an armory, or at least some place where the dwarves store their old equipment. Any of this would be too heavy or bothersome for you to take, and the armor is not even usable... You figure it should be better to investigate this room a little more, having a look at every bit and corner, and you do manage to find an adjacent chamber with something covered with a large blanket. Sounds like treasure, and it makes sense the dwarves would attempt to protect good equipment from deterioration.";
	WaitLineBreak;
	let bonus be (( perception of player minus 5 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
	if diceroll + bonus >= 13: [player detects trap]
		say "     However, as you're heading into the room, you notice that something feels off. You look around, carefully and attentively, and you're relieved to know that you have escaped a well concealed trap! Well, at least for now. The trap is still there, and while it might not be deadly, it will be enough to immobilize you completely if it hits you. It seems to be armed with ropes and activated by a pressure plate, which is most certainly activated with your weight. To make things worse, there's no companions around to help you with this, as you had to leave them behind guarding the tunnel's entrance for you.";
		WaitLineBreak;
		CTunnel2;
	else: [player falls directly into trap]
		say "     However, as you're heading into the room, you fail to notice something that ends up getting you in trouble. When you feel the pressure plate lowering down beneath your feet, it is already too late.";
		WaitLineBreak;
		CTunnel2Trap;

to CTunnel2:
	say "     Will you attempt to [bold type]disarm the trap, just trigger it, or simply take your leave?[roman type] If your interest for the dwarves is nothing more than this, you can always choose to [bold type]avoid this place from now on[roman type], although that will leave you out of any further clues about their civilization.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Attempt to disarm the trap.";
	say "     [link](2)[as]2[end link] - Trigger it.";
	say "     [link](3)[as]3[end link] - Leave for now.";
	say "     [link](4)[as]4[end link] - Leave and avoid this place forever.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to attempt to disarm the trap, [link]2[end link] to trigger the trap, [link]3[end link] to leave this place or [link]4[end link] to leave for good.";
	if calcnumber is 1: [attempt to disarm]
		LineBreak;
		say "     You chose to attempt to disarm the trap, which will be a somewhat difficult thing to do. Nonetheless, you're motivated to give it a good try.";
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 12: [player disarms trap]
			say "     The trigger seems to be a large pressure plate in front of you, or rather, several of them. They're pretty much unavoidable and need a good amount of weight to activate, that of an equivalent to a living bipedal. Studying the trap, you eventually discover that you can remove the access from the trigger to the trap by tapping into one of the mechanisms, which you can access easily. You're dexterous enough to not trigger it accidentally and successfuly deactivate the trap, freeing your way ahead of any obstacles.";
			WaitLineBreak;
			CTunnel3;
		else: [player fails, triggers the trap]
			say "     The trigger seems to be a large pressure plate in front of you, or rather, several of them. They're pretty much unavoidable and need a good amount of weight to activate, that of an equivalent to a living bipedal. Studying the trap, you eventually discover that you can remove the access from the trigger to the trap by tapping into one of the mechanisms, which you can access easily. Or so you thought... One wrong step and you fall right into one of the plates, accidentally triggering the trap!";
			WaitLineBreak;
			CTunnel2Trap;
	else if calcnumber is 2: [player triggers the trap]
		say "     Questioning your good sense, you decide to actually trigger the trap and see what happens...";
		WaitLineBreak;
		CTunnel2Trap;
	else if calcnumber is 3: [player leaves for the moment]
		say "     Taking a moment to process the problem ahead of you, making a decision comes naturally, as you understand you're not ready to face this yet. Better leave the place as it is and return some time later. Who knows, you might even be able to disarm the trap if you're dexterous enough.";
		now resolution of Collapsed Tunnel is 2;
	else if calcnumber is 4:
		say "     Taking a moment to process the problem ahead of you, making a decision comes after some deep thinking. You're not all that interested in the dwarves, and honestly, you have better things to do. There's simply nothing else to be found and the entire trip seemed a waste of time, so you decide to close this matter for good and leave, never to return.";
		now resolution of Collapsed Tunnel is 99;

to CTunnel2Trap:
	say "     All of the sudden, something around you starts moving quickly, and there's no time to possibly react to what's to come. Ropes, strategically placed all around the room, move towards you too quickly for your eyes to be able to follow and wrap themselves around your feet, legs and arms. Your body spins impossibly fast as you're brought up to hang in the air, effectively immobilized as your movements are blocked by the trap. Once you're finally still, you glance around and inspect the ropes wrapped all over you. Any attempt to free yourself proves to be futile as you wiggle around helplessly, and nobody seems to be nearby to help you. You're not even so sure you want anyone to come, even, as this trap was here for a reason you're very well aware of. Nonetheless, you have no choice but to wait and pray that this doesn't come to bite you in the back, and try to find a way to release yourself in the meantime, if there is any.";
	WaitLineBreak;
	say "     Some time passes and you're about to give up your hope, until you hear steps coming from one of the corridors. A very familiar voice reaches your ears as the short figure approaches you. 'Now, isn't this a surprise? Looks like someone fell into a dwarven trap! And I know this someone... What are you doing here?' asks the roaming dwarf you've encountered before in a sarcastic tone, as if mocking your demise. Knowing him well, he's probably enjoying seeing you all tied up and at anyone's mercy, were it not for the already prominent bulge in his pants. 'I suppose I could free you, but... Do I want to? Is there anything you can offer me?' he asks, taking several steps towards you while taking a sip from his canteen bottle.";
	say "     You don't think you'll be able to get your way out of this without obliging any of the dwarf's requests, whatever they might be, but you have an idea of what he wants from you. In fact, this proves to be an excellent opportunity for the short burly man to use you in any way he desires, and he's not going to waste it. It's not like you have a choice, either... 'I could use a release, actually... And seeing you here so helpless can't be by chance, right? How about I make use of your holes in exchange for your freedom, eh? Sounds like a good deal to you? It does to me.' He doesn't waste any time undoing his belt and pulling his pants down, his thick and meaty cock bouncing back up as he does so, hard and throbbing with a trace of precum oozing from the slit.";
	WaitLineBreak;
	say "     'Time to get to work, my [boygirl]! Gotta pay your debt beforehand.' teases the small man as he rubs his shaft all over your lips, and you've got no choice but to obey. Giving your best to satisfy the horny dwarf, you open your mouth and kiss the length of his manhood as he slides it back to meet your lips with his glistening tip, the sweet surface caressing your taste buds as your tongue wraps around the glans. The dwarf lets out a pleasure grunt as he feels you working his cock, pushing it into your mouth as he takes hold of your head. He's actually gentle about it at first, but he makes you deepthroat his dick to the very last inch. 'That's it... That's a good [boygirl]. Like sucking this cock, don't you? Bet you longed for it...'";
	say "     His taunts continue as he makes you take his manhood down your throat, and eventually, he's grabbing you firmly to fuck your face. As his balls hit your chin, you hear the ropes around you squeak because of the movement, your entire body swinging back and forth as the dwarf takes your throat like a fuckhole. He's got a huge satisfied grin in his face, knowing he owns you for as long as he desires, [if player is submissive]and you can't help but feel incredibly turned on by it as your submissive instincts kick in, only thinking about the many ways he could use you[else]and you have no choice but to endure everything that comes into his mind, whatever it may be, as you remain at his mercy[end if]... 'Darn, it feels good! I was needing this!' his deep voice rumbles in your ears while his cock throbs in your mouth and throat still, and after a couple few more thrusts, he pulls out slowly.";
	WaitLineBreak;
	say "     'That's enough mouth for now. You got me all nice and wet, now... Let's see what else you can offer me.' His strong hand caresses your body all over, exploring all his possibilities, though you just know he's going to stop right where he does before it actually happens, feeling your glutes up with both hands from behind you. The dwarf spreads your legs so he can get between them, [if player is not naked]and you feel him taking off your lower gear to expose your ass[else]and you feel him giving the back of your bare thighs a nice squeeze[end if] before spreading your cheeks and sliding a finger above your pucker. 'You [if player is female]do have a nice cunt, but I feel like having something tighter right now[else]have a really nice looking butt. Just what I needed[end if]. Hope you don't mind me using your asshole and breed it full of some good dwarven cum...' he teases you, chuckling as he presses his finger inside your anus, rubbing it around to prepare it for his thick meat.";
	say "     'Since you didn't make a fuss and actually were a good [boygirl] for me so far, I'll give you a treat.' he informs you as, moments later, you feel a wet, warm and nimble something caressing your hole. His tongue, wiggling around your back entrance masterfully as it presses in further, soon accompanied by some lips as he makes out with your anus. In a momentary change of focus, [if player is male]the dwarf gives your balls a nice brief tugging with his mouth, leaving your [cock of player] manhood throbbing even more[else if player is female]gives your pussy a broad licking and a kiss, leaving you even hornier[else]gives your genderless crotch a big kiss, leaving you even hornier[end if], before turning his attention to your asshole once more. His bushy beard tickles between your glutes, which makes you move your ass against his face a little harder, a gesture he seems to appreciate as he shoves his tongue deeper in your pucker";
	WaitLineBreak;
	say "     While the stocky short man is tonguefucking your ass, he's also sliding his hands all over your legs, buttocks and sometimes your front genitalia, seemingly caring about your own pleasure as well, all the while he has full control over you. Your hole stretches around his tongue, which is going deep and back out repeatedly, giving you blissful sensations as he truly puts an effort into eating your ass out. With a hasty retreat, he pulls his tongue out and kisses your pucker goodbye, standing up with his cock in hand. 'Alright, that's enough for you. Better put that tasty ass to use elsewhere now, yeah?' he says as you're already feeling the warm tip of his prick kissing your anus, and it's not long until he starts pushing.";
	say "     His considerable thickness starts filling you once he's past your anal orifice's first resistance, and slides in without much trouble thanks to the preparation he made sure you had. As you're hanging immobile, the dwarf is free to fuck your ass as much as the whim takes him, grabbing you by the hips to aid his thrusting motions, burying his cock as deep as he can inside you. There's almost no pain on your side, and eventually it all starts feeling too good. There's something in you urging you to let out an audible moan, [if player is female]with his manhood pressuring against your pleasure spot[else]with his manhood hitting your prostate with vigor[end if]... 'You're liking it, aren't you? Like getting your holes used while you're all tied up, eh? Could have thought about this before, it's so much fun...!'";
	WaitLineBreak;
	say "     He's been fucking you for some time now and you can't help yourself but to really enjoy it. The stocky dwarf knows when to get rough, pounding you as hard as he can with surprising strength, you even feel your body swinging back and forth as he thrusts, and you can hear him grunting as he slows down. 'Fuck, I'm getting really close... I was gonna cum in your ass, but tell you what, I'll let you pick between ass or mouth. Don't take too long deciding or I might just end up cumming ballsdeep inside you!' he tells you, and you sure can feel his cock throbbing like mad. He gave you a choice, so what's it going to be? [bold type]Want to swallow the dwarf's cum or let him fill your ass?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Ask him to cum in your mouth.";
	say "     ([link]N[as]n[end link]) - Let him fill your ass.";
	if player consents:
		LineBreak;
		say "     Amidst your breathy moans, you manage to let him know that you want his cum in your mouth, [if player is submissive]and saying this made you blush[else]and you can't believe you actually said that[end if], as it feels somewhat degrading in a way. The stocky short man throws a chuckle as he hears you, pulling out his cock from your fucked hole and walking around to your face. 'My [boygirl][']s thirsty, huh? It's a big one coming, hope that quenches it...' he teases you while forcing his manhood between your lips. You open your mouth and take his hard member once again, having a taste of your own ass as he fucks your face. He doesn't last long, as within several seconds, he lets out a beastly grunt as you feel a thick shot of cum coating the insides of your mouth, before he proceeds to shove his cock completely in you.";
		say "     You're forced to directly swallow his entire load, spurt after spurt, all landing down in your stomach for the next minute it's being pumped out of his dick and into you. Doing your best to swallow, you inevitably need to urge him to get some breathing, as he's been ballsdeep in your mouth for quite some time now! With some muffled groans, he eventually pulls out, a drop of semen still escaping by your lips. 'Fuuuck yeah! It's been fucking long since I had a good release like this. This was great! You've done really well, my [boygirl]!' he praises you, rubbing your head as he looks down on your eyes, his dick still resting against your nose and cheek, traces of cum still visibly leaking onto your face.";
		WaitLineBreak;
	else:
		LineBreak;
		say "     Amidst your breathy moans, you manage to let him know that you want his load in your ass, [if player is submissive]and saying this made you blush[else]and you can't believe you actually said that[end if], as it feels somewhat degrading in a way. The stocky short man throws a chuckle as he hears you, pushing his cock deep inside you once more and tightening his grip on both sides of your hips. 'As you wish, my [boygirl]. I was hoping you'd pick that one.' he teases you while picking up the pace with him pounding your ass, without any slowing down. He doesn't last long, as within several seconds, he lets out a beastly grunt as you feel a thick shot of cum coating the insides of your back entrance, before he proceeds to shove his cock completely in you with few sporadic thrusts.";
		say "     You feel his entire load, spurt after spurt, being delivered inside you for the next minute it's being pumped out of his dick and into you. Doing your best to endure his thickness pulsing in your hole, you have only to wait until his orgasm subsides. A drop of semen leaks from your used fuckhole, followed by some more as he pulls back. 'Fuuuck yeah! It's been fucking long since I had a good release like this. This was great! You've done really well, my [boygirl]!' he praises you, giving your butt a playful slap, his dick still resting between your ass cheeks and dropping a few more traces of cum onto your back.";
		WaitLineBreak;
	say "     'Now I suppose I have to free you, huh...' he says in a reluctant tone, pushing his meat back in his pants and redressing himself. 'Well, let's have a look around first. Gotta thank you somehow for getting me rid of any traps on the way to some treasure.' You immediately protest, accusing him of breaking the deal, but he stops you right there. 'Come on, I did you a favor... Imagine what would it be hanging in there for so long without a good fuck? I'd be crazy!' he mocks you, walking towards the big blanket you saw before falling into the trap. He uncovers it, revealing a big stonehammer in pristine conditions, probably the only usable thing in here! 'Oh my... Now this is worth my trip here. Were you taking this?' he turns to you, asking you the question with a sarcastic tone. 'Well, guess not anymore.'";
	say "     He takes the stonehammer with him, leaving you behind with a naughty smirk. 'Pray that the dwarves find you here, who knows if you'll get a gangbang from them. That'd be fun to watch, but I guess that's not what will happen!' he laughs, leaving the room and you behind, still hanging in the air stuck with the ropes, and with your spoils! You curse him with your words, but he's nowhere to be seen anymore. Furious - and also because he fucked you and didn't have the decency to get you off as well - you let out an enraged movement with your arm. And you must be in luck, as the device comes crumbling apart just when you do that, sending you to hit the floor with the ropes still wrapped around you, but not tense anymore, allowing you to move your hands and arms around to untie yourself.";
	WaitLineBreak;
	say "     It takes you a bit to get free from the trap, so you're not able to chase the dwarf. Nonetheless, you think you had enough of this place for a day and proceed to walk to the exit. You'll have to find this guy if you want to get your hands on what is deservingly yours.";
	say " < more to be added soon >";
	now resolution of Collapsed Tunnel is 3; [player didn't get the golden greathammer]

to CTunnel3: [player successfully gets past the trap]
	say "     Now your way to your treasure is free! Eagerly, you walk towards the spot where you saw your spoils, hopeful that it will be enough to call this exploration worth it. Pulling the blanket away, your eyes widen as they land on a large stonehammer made of gold and in pristine conditions! You can't believe that you've stumbled on a weapon like this, beautiful and seemingly deadly! Looks like a great opportunity to acquire yourself a brand new means of beating your enemies, but the question is... [bold type]Do you actually want to steal from the dwarves and take this weapon with you?[roman type] That might provoke them... [bold type]but if you leave it here like nothing happened, they might just never come out of hiding.[roman type] What will you do?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take the weapon with you.";
	say "     ([link]N[as]n[end link]) - Leave it there. You have no interest in provoking the dwarves.";
	if player consents:
		LineBreak;
		say "     This is too good to pass. It is a two-handed weapon made addorned with gold, one of the most beautiful weapons you've ever seen. Plus, it looks pretty strong! No way you're going to leave this here, to remain forgotten and risking it ending up in the wrong hands. Carefully, you remove it from its resting place. You already knew it would be heavy, but not this heavy! Nonetheless, you're strong enough to carry it with you. Now it's only a matter of returning to the tunnel and get the hell out of here before someone notices anything missing, or see you carrying something that isn't supposedly yours.";
		now carried of golden greathammer is 1;
		now resolution of Collapsed Tunnel is 4; [player got out with the stonehammer, dwarves are provoked]
	else:
		LineBreak;
		say "     It's not a good idea. You'll end up provoking an entire civilation for just a hammer. As beautiful and powerful as it may be, it's guarded for a reason, so you put the blanket on it again and get ready to take your leave. You've had enough of this place for a day, and don't think there's anything else to do here, so you walk towards the exit and call it done.";
		now resolution of Collapsed Tunnel is 98; [player didn't take the stonehammer, dwarves remain hidden indefinitely]

Section 2 - Creature Responses

to say Dwarf wins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		if HP of Player > 0: [player submits]
			say "     Looking at the short man about to force his way through, you lose the will to fight and pose no resistance towards him, getting on your knees waiting for him to come for you at a much slower and less aggressive pace. 'Seems like you learned your place quicker than I thought you would. No need to beat you until you understand, eh? Unless that's what you're into...' With a sudden move, the dwarf kicks you back on the chest, making you fall back on the ground. He keeps his dirty boot just below your neck, looking down on you with a snarky grin. 'Submitting yourself to me like this... I'm sure you'll do well in servicing me. You're gonna be here for a while, [boygirl]!' He clearly knows he has the upper hand and that you must comply to every order. The dwarf certainly has the ways to make you regret any disobedience[if player is submissive], though your submissive instincts make you so eager to be used by him that he shouldn't worry too much about it[end if].";
		else: [player loses]
			say "     Having sustained so much damage from the dwarf's heavy pommeling, you're no longer capable to hold your ground against him. Your strength fails you as you're forced on your knees in front of the short man, his face showing a snarky grin as he looks down at you. 'Beating you to submission was easier than I thought. Look at you now! In your due place, at my full mercy.' With a sudden move, he gives you a kick on the chest, throwing you off balance to the ground. He keeps his dirty boot just below your beck, looking down at you with an amused chuckle. 'Now, if you do what you're told, things will go well for you. If not, then I'll just remind you who's the boss, here...' he says while making a suggestive movement with his hammer, reminding you of how painful his strikes felt. The dwarf certainly has the ways to make you regret any disobedience[if player is submissive], though your submissive instincts make you so eager to be used by him that he shouldn't worry too much about it[end if].";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1: [facefuck]
				DwarfFucksOral;
			-- 2: [fuck]
				if player is female: [has a pussy]
					if a random chance of 1 in 2 succeeds:
						DwarfFucksAnal;
					else:
						DwarfFucksPussy;
				else: [no pussy]
					DwarfFucksAnal;
			-- 3: [facesitting]
				DwarfFacesit;

to DwarfFucksOral:
	say "     'Now, time to put your mouth to work. And you better do it right!' he says while positioning himself just above your head, which stands tall enough to reach his still covered bulge. The dwarf makes sure you feel his erection growing larger in his pants by pulling your face straight towards it. 'That's it, be a good [boygirl] for me and smell my junk. Bet you're liking this, aren't you?' the dwarf keeps teasing you as his tool hardens so much that it starts feeling constricted for the short man, as if begging for release out of those pants. 'I think I'm gonna love shoving this down your throat... Making you choke on it as you take it deep down... all the way...!' You sense eagerness in your burly captor's raspy voice [if player is submissive], making you want to taste his cock even more than you already did, [end if]as he starts undoing his large belt, dropping his gear on the ground followed by the pants.";
	say "     With a quick slide, the dwarf's raging boner is given its much awaited fresh air, only throbbing and reaching its prime state of hardiness a few seconds later. Now, [if player is submissive]as he has you glancing all over his meat like a dog awaiting his long deserved treat,[else]as you're taking a good look at his meat,[end if] you notice that, despite it belonging to a rather short man in height, it actually has a considerable size of nine inches, veiny and thick as a beer can. However, the stocky man doesn't let you admire it for long. Although he takes great joy in [if player is submissive]seeing you so mesmerized by his pulsing length[else]seeing you impressed with this unexpected outcome[end if], he decides to slide his thick and large hand behind your head and pull you once more towards him, forcing you to wrap your lips around his rather wide prick. 'You gotta do better than that, my [boygirl]. How else am I supposed to fuck your face?' he taunts as he forces more and more of his length inside you, slowly reaching over your throat and keeping you from breathing soon enough.";
	WaitLineBreak;
	say "     He doesn't stop there. Once he has a good grasp of your head with both his hands, he lets go a sexual grunt as he makes you swallow his cock to the very end. 'Oohh, fuck... yeah! Feels so good being balls deep on someone...!' You really begin squirming and moaning for air, but the dwarf keeps your nose buried in his curly pubes for a good while before he starts pulling out slowly. With barely a second to catch your breath, he doesn't let you rest as his tool finds itself sinking in your mouth once again. Having to open wide to contain so much dick within your mouth makes your jaw ache, and your neck bulges out everytime he thrusts in deep into your esophagus. It's not the length, but rather the thickness, that turns this into such a difficult task to handle, [if player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that... Next time I catch you here, I might... O-oh... Fuck... You're gonna make me cum down that filthy throat, you little bitch...' Holding your head tight, the short-sized man keeps jerking his hips against your face, his plump ballsack swinging back and forth and hitting your chin. His increasingly louder grunts are an indicative of his orgasm approaching, and you know you're going to have to deal with a large load. 'I'm gonna fill you up... Fuck yeah...! I'm... Cumming!!' With this said, both his hands are on each side of your head when he pushes his cock as deep inside as possible. You don't even get to taste the warm seed he's shooting directly into your stomach, but you can definitely feel his thick manhood pulsing with pleasure as the jizz leaves it with each spurt.";
	WaitLineBreak;
	say "     At some point, he pulls out of your mouth, your face flushed and released altogether as gravity wins over your strength to avoid hitting the ground with the back of your head. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock towards your face as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with a belly filled with dwarf cum for some time before you can stand up.";

to DwarfFucksPussy:
	say "     'Now I'm gonna make you bend over for me. I need a tight place to shove my cock inside, and I bet you've got just the thing.' he says while forcing you to crawl on all fours, [if player is not naked]and the burly dwarf doesn't take any ceremony in lowering your clothes to expose your rear [end if]then taking a time to stroke himself while watching your naked butt. He makes you wait[if player is submissive], your eagerness to please making you wiggle your backside at him invitingly, [end if] until his manhood stands up hard and proud, already out of his pants and ready to drill your hole deep. 'You're certainly going to feel this when I'm stretching your pussy.' he taunts you, and a look over your shoulder shows you why he's so confident. A good sized cock of about nine inches long, thick as a beer can, is going to enter your cunt and pound it without mercy.";
	say "     He slides a hand down between your legs, rubbing your already moist parts and occasionally slipping a finger inside, effectively teasing you with his surprising dexterity. 'You're leaking, down there... That's gonna be fun!' You [if player is submissive]can't help yourself but moaning at his caress, part of you wanting more[else]can't help but feel aroused at this[end if], and the dwarf understands this as a sign to keep fingering you, his meaty fingers soaking in your juices as they feel you up from inside your vulva. When he's done exploring your womanhood, you feel his thick prick finding itself between your buns, the mere warm sensation of his length rubbing across your pussy making you shiver, reminding you of what was the bulky short man's initial intention.";
	WaitLineBreak;
	say "     The dwarf releases as sexual grunt once he starts penetrating you, now grabbing you by the hips as he lets himself sink inside you. His precum mixed with your natural lubrication makes it for an easy slip, even though you feel yourself being stretched before him. 'You've got a really tight one, [boygirl]! Feels so good...!' It's not long until he buries his cock balls deep inside you, his entire length being pushed and pull in slow movements at first. It's not the length, but rather the thickness, that turns this into such a difficult task to withstand as he picks up the pace, [if player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that...' he teases you, holding you with a tight grip, thrusting into you faster and faster. You hear his hips hitting your buttcheeks with a loud flesh clashing sound each time he goes in deep, and his plumb ballsack swinging back and forth. Being pounded by this horny short man feels like getting fucked by a strong and powerful beast, and it only gets worse as he fucks you harder and deeper... 'How do you like that dick, [boygirl]? I bet you're enjoying it like the filthy whore you are.' His taunts are a constant as you're reminded of your place, [if player is submissive]that you're gladly earning, [end if]feeling your womanhood being claimed by the dwarf for the next few minutes.";
	WaitLineBreak;
	say "     It is when he leans himself more over you that you know he's about to hit his climax. 'O-oh... Fuck... You're gonna make me breed your cunt, you dirty bitch!' Maintaining the pace as much as he can, the burly man's cock throbs inside you, and it's not long until a warm liquid begins filling your insides. 'Take it all, my [boygirl]! Oohh yeah!' He keeps grunting and moaning as his entire load is deposited inside your womb, which he keeps fucking until the end of his orgasm. You can't help but reach the point of no return yourself, his dick filling up so well that your body begs for a release, an intense wave of pleasure suddenly bursting through you, making you squirm in lust until it subsides.";
	say "     At some point, he pulls out of your pussy, your face flushed as you're released to collapse on the ground, exhausted. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock, which lands on your back, as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with your insides filled with dwarf cum for some time before you can stand up.";

to DwarfFucksAnal:
	say "     'Now I'm gonna make you bend over for me. I need a tight hole to shove my cock inside, and it's gonna be your asshole.' he says while forcing you to crawl on all fours, [if player is not naked]and the burly dwarf doesn't take any ceremony in lowering your clothes to expose your rear [end if]then taking a time to stroke himself while watching your naked butt. He makes you wait[if player is submissive], your eagerness to please making you wiggle your backside at him invitingly, [end if] until his manhood stands up hard and proud, already out of his pants and ready to drill your hole deep. 'You're certainly going to feel this when I'm stretching your bitch hole.' he taunts you, and a look over your shoulder shows you why he's so confident. A good sized cock of about nine inches long, thick as a beer can, is going to enter your ass and pound it without mercy.";
	say "     Once he has a good grasp of your ass, you feel his warm length griding between your buttocks, pulsing with need, eager to penetrate your hole. The mere sensation of his tip rubbing across your anus makes you shiver, reminding you that you're about to feel a wide cock throbbing inside you. The dwarf releases as sexual grunt once he starts penetrating you, now grabbing you by the hips as he lets himself sink inside you. His precum is the only lube you get as you're stretched before him. 'You've got a really tight one, [boygirl]! Feels so good...!' It's not long until he buries his cock ballsdeep inside you, his entire length being pushed and pull in slow movements at first. It's not the length, but rather the thickness, that turns this into such a difficult task to withstand as he picks up the pace, [if player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	WaitLineBreak;
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that...' he teases you, holding your ass with a tight grip, thrusting into you faster and faster. You hear his hips hitting your buttcheeks with a loud flesh clashing sound each time he goes in deep, and his plumb ballsack swinging back and forth. Being pounded by this horny short man feels like getting fucked by a strong and powerful beast, and it only gets worse as he fucks you harder and deeper... 'How do you like that dick, [boygirl]? I bet you're enjoying it like the filthy whore you are.' His taunts are a constant as you're reminded of your place, [if player is submissive]that you're gladly earning, [end if]feeling your ass being claimed by the dwarf for the next few minutes.";
	say "     It is when he leans himself more over you that you know he's about to hit his climax. 'O-oh... Fuck... You're gonna make me cum inside your ass, you dirty bitch!' Maintaining the pace as much as he can, the burly man's cock throbs inside you, and it's not long until a warm liquid begins filling your insides. 'Take it all, my [boygirl]! Oohh yeah!' He keeps grunting and moaning as his entire load is deposited inside your ass, which he keeps fucking until the end of his orgasm. You can't help but reach the point of no return yourself, his dick filling up so well that your body begs for a release, [if player is male]and so you burst your own load right after his, leaving a trail on the ground below[else]an intense wave of pleasure suddenly bursting through you, making you squirm in lust until it subsides.[end if]";
	WaitLineBreak;
	say "     At some point, he pulls out of your asshole, your face flushed as you're released to collapse on the ground, exhausted. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock, which lands on your back, as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with your insides filled with dwarf cum for some time before you can stand up.";

to DwarfFacesit:
	say "     'I'm having a little itch between my asscheeks, so how about you... scratch it for me? With your tongue... For a good while?' he says as a mischievous grin spreads through his face. Forcing you to lie down on the ground, he proceeds to undo his belt and drop his pants, giving his thick manhood a few strokes as he looks down on you, licking his lips. 'Mmm, damn, that's a good sight. You're gonna be a good ass cushion for me, aren't you, [boygirl]? Oh yes you are...' he teases you, positioning himself above your face, feet on each side of your head, his ass aiming for your nose, and before you know it, he's already dropping down, giving your face a hug with his hairy buttcheeks. 'Oooh fuck yeah! Lick that hole for me! I wanna feel that tongue inside my ass, you hear me little bitch?'";
	say "     Though it's your nose almost completely buried inside his fuzzy ass, he grinds his anus all over your face, with a tendency to just kiss your lips back as he demands you to use your tongue on him. Without any further ado, you oblige him [if player is submissive]eagerly, as his commands turn you on[else]reluctantly, but with enough effort so that he is satisfied[end if], and press your wet tongue inside his asshole, to which he immediately lets out a pleased grunt. 'Yes! That's it! Oooh you're hitting the spot, lick it all over, my [boygirl]! I could kiss you right now, but might as well do it with my ass!' he teases you, pressing his hairy butt against your face harder as you're hold in place under him, your tongue condemned to lick and worship his hungry hole.";
	WaitLineBreak;
	say "     You're effectively making out with his bum, and he's grinding it really hard against your face, wanting to take anything he wants, and sometimes you find yourself being forced to pull your tongue out of his hole and feel your own saliva being rubbed all across your nose and cheeks. He keeps doing this over and over again, so excited that you think he's actually getting off from feeling your face between his hairy buttocks. At some point, he is barely letting you breathe, his compact ass still managing to cover most of your nose with each movement, and eventually returns to your lips. 'Tonguefuck me, bitch! I'm not leaving until you make me cum with that tongue!' he orders you with his manly deep voice, making your soul trembling.";
	say "     Doing your best to fuck the dwarf's ass with your tongue, you push it deep in and back out as fast as you can, trying to give him a really good time just like he demands, though that makes his ass wiggle and grind against you even harder. You figure that must be your work exciting the short burly man even further, though you can feel him shaking above you, as if he was jerking off to your efforts. If you keep it up, he might just cum, so you put your best effort, shoving your tongue in, wiggling, licking his insides as good as you can, making the dwarf moan in ecstacy. He really likes getting rimmed, it seems, as he's now also pulling your head against the crevice between his hairy cheeks. 'You're fucking great at this... I'm about to cum!'";
	WaitLineBreak;
	say "     It's not long from when he says that to the actual orgasm. Within a few moments, he's grunting and moaning in beastly manners, shooting his load all over your chest, and as this happens, you feel his asshole clenching around your tongue with each shot. 'Fuuuuck yeah! Damn! I was fucking needing this! You're such a good seat for my fuzzy ass, my [boygirl]! Will definitely consider doing this more often to you.' he taunts you, still sitting on your face as he squeezes his cock out of any leftovers of cum, all landing on your body. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by standing up, shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left with your face flushed, catching your breath after this ordeal, and take some time to recover before you can stand up.";

to say Dwarf loses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     With one last attack, you manage to bring down the hostile dwarf, who falls down bruised and unable to move. 'Ungh! Y-you're tougher than you look... Alright fine. I... won't bother you anymore. No need to get feisty, alright?' Though you hear what seems to be a plea for mercy, albeit barely so, you do have the short stocky man right there, without a chance to offer any resistance. You could do anything you wanted to him and he'd have no chance to do anything against it. [bold type]How shall you proceed with the defeated dwarf?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Blow him";
		now sortorder entry is 1;
		now description entry is "Wrap your lips around that cock";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Facefuck the dwarf";
			now sortorder entry is 2;
			now description entry is "Grab the short man's head and pound his throat";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck his ass";
			now sortorder entry is 3;
			now description entry is "Strip the dwarf and get between his hairy buns";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Ride his cock";
			now sortorder entry is 4;
			now description entry is "Milk his meaty prick with your ass";
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
					if (nam is "Blow him"):
						say "[DwarfBJ]";
					if (nam is "Facefuck the dwarf"):
						say "[DwarfFacefuck]";
					if (nam is "Fuck his ass"):
						say "[DwarfAssFuck]";
					if (nam is "Ride his cock"):
						say "[DwarfRide]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You have done enough to the poor little man, so you decide to leave him alone with his bruises and return to your previous tasks.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say DwarfBJ:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his cock in your mouth, despite his requests to leave him alone. He sees you approaching him with and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you caressing his crotch, causing him to release a light moan as he watches you. 'Oh... That feels nice... Uh, if that's all you want from me, I... guess...' he hesitantly replies to your touch, but you can feel him getting harder underneath his pants. With enough care, you undo his thick belt before pulling down his pants, releasing the previously constrained meat out in fresh air, still growing in your hands. The thick nine inch-long of a prick throbs with need as you eye it all over, teasing the dwarf with slow strokings.";
	say "     'You're driving me crazy with all that touching...' he says, his gaze gleaming with hope that you'd suck on his cock, but you don't intend to give that to him just now. Instead, your hand slides up and down through his length while you give his balls a nice squeeze with the other, giving him just about enough stimulation to stay rock solid. Stealing another moan from the short burly man, you then decide to focus your attention on the pre-soaked tip with your thumb, and eventually, leaning down over his dick, ready to give it some tongue. With enough dedication, you manage to make the dwarf jerk his hips, forcing you to hold him down as you start taking his entire manhood in your mouth, to which he grunts. 'I wanna fuck that mouth so bad...'";
	WaitLineBreak;
	say "     As you're giving the dwarf a treat of your own, there's a need in you to also please yourself, so you reach over your bits and caress yourself with one hand while the other is kept either stroking the large dick or fondling his plump ballsack. With this, you're doing your best to orally please the dwarf scavenger, soon able to take most of his length down inside, keeping a steady pace with your vertical motions while twisting your head slightly with each movement. Making sure every inch of his organ is thoroughly stimulated for a good time, there's nothing stopping you from picking up the rhythm, going down at it faster and faster... 'Oh fuck... if I knew you'd be this good, I wouldn't have fought you... I'd just let you do that all day!'";
	say "     Hearing the stocky man praise your efforts [if player is submissive]fills you with joy, and you even feel tempted to let him take charge for a while, but now is not the time for that[else]gives you the sign you're looking for[end if], as you feel he's actually getting closer to orgasm. You resolve that it'd be fun to slow down a bit and edge him, to make sure his load comes out as hard as possible, even though it creates great frustration on the poor dwarf, who's already grunting and begging you to don't stop. 'Please! I just need to cum... I'm not able to hold much longer...' he exclaims in a plea, but you give him a deaf ear, continuing this process for the next few minutes. 'Fuuck... P-please... I need to...!' but he tries yet again to convince you to make him blow, so you know he's on the verge of hitting his limit.";
	say "     With all that you made him endure by now, it's probably enough to get him burst hard. Are you going to test this theory by [bold type]letting him blow is load out, or will you swallow it all?[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Let it blow!";
	say "     ([link]N[as]n[end link]) - Drink all of that dwarf cum.";
	if player consents:
		LineBreak;
		say "     That's just going to be such a great and powerful load that you can't allow it to go unseen. With this in mind, you get a good grip of the dwarf's cock and stroke it even faster, an evident gesture that you intend to make him cum. 'Fuck... Yes! FINALLY!' You've got the short man moaning about as his meat pulses in anticipation, then just a few seconds later, you're rewarded with the powerful geyser of jizz that he makes, shooting his seed upwards and having it all landing back on him. 'Fuuuuck... That felt... fucking amazing...' he tells you, looking at you dazed with pleasure, his dong still oozing more of that thick seed of his.";
		say "     After drenching the burly dwarf in his own load, you squeeze his dick for the last few drops of cum. The mere touch now makes him squirm in slight agony, as his cock got much more sensitive after that rough treatment. 'Uuh... Well... now that we're done with this, does that mean we're good? Can I go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
	else:
		LineBreak;
		say "     He's probably going to cum so much that you need to get a taste. With this in mind, you get a good grip of the dwarf's cock and stroke it even faster, an evident gesture that you intend to make him cum. 'Fuck... Yes! FINALLY!' You've got the short man moaning about as his meat pulses in anticipation, then just a few seconds later, as you slide the meat back inside your mouth, you're rewarded with the strong and sweet cum he shoots down your throat. You do your best to swallow every drop of his load until the last, a steady gush of jizz giving you a mouthful of the stuff. 'Fuuuuck... That felt... fucking amazing...' he tells you, looking at you dazed with pleasure, and as you carefully pull his dong out from between your lips, a drop of thick seed is still oozing from the tip.";
		say "     After drenching the burly dwarf in his own load, you squeeze his dick for the last few drops of cum. The mere touch now makes him squirm in slight agony, as his cock got much more sensitive after that rough treatment. 'Uuh... Well... now that we're done with this, does that mean we're good? Can I go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say DwarfFacefuck:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his mouth for your pleasure. With your clearly now superior strength, thanks to the fact you bruised him good, it should be easy to make such a short, weakened man to suck your cock. He sees you approaching him decidedly and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you pulling his head to meet your crotch. He doesn't seem to fight it as much as his attitude would suggest, even sliding a hand over your thigh in appreciation. You find this a sign of his submission as [if player is naked]your hardening length reacts to his touch[else]you begin getting hard in your pants, obliging you to take off your gear and free up your growing erection[end if], knowing it's time to get serious.";
	say "     Though you're not quite happy with just having him take your dick, you order him to work your junk all over. He doesn't limit his oral reach to your shaft, often giving your balls a nice tongue bath and tugging them between his lips. The fuzziness of his beard rubbing all across your groin gives you a funny feeling, though you can't shake off the apparent surprising skill the burly man shows at pleasing you. Grabbing him by the hair, you guide him by your shaft to get his mouth wherever you want, all this before going for your initial intention. When you're finally satisfied with the warm-up, you begin sliding your cock between the dwarf's lips as he looks at you with dazed eyes. To your pleasure, he eagerly obliges, taking in as much as your length as he can.";
	WaitLineBreak;
	say "     As you hold his head in your gasp, you thrust once... then the second time... and as you keep fucking his mouth, you realize the muscular dwarf seems to take it quite well! Both of his meaty hands are placed just a little above your thighs, not offering resistance, but actually caressing you and helping you jerk your hips to keep up the pace. Without any further ado, you give your best, [if cock length of player <= 12]shoving your entire manhood down his throat until your balls land right on his bearded chin, and[else]shoving what you can of your huge dick down his throat, causing the dwarf scavenger to struggle for the first time with your considerable size, but[end if] he responds with utmost dedication, doing what he can to take you in the best way he's able.";
	say "     Feeling his skillful tongue all over your prick as you're still shoving it all the way through makes you feel incredibly horny, and soon you begin feeling yourself getting closer to orgasm. While you're trying to hold off as much as you're able, the burly short man just brings the task several levels harder as you sense his dexterous touch around your ballsack, giving your testes a gentle squeeze and inviting you to shoot your load in him. Unable to resist the urge, you push the dwarf back to fall back on the ground - with your dick still in his mouth as you carefully follow - just hovering above of him with your hand on the back of his head. As he's absolutely at the mercy of your facefucking, the sensations are too much to allow you to hold control of your body...";
	WaitLineBreak;
	say "     Drilling his bearded face, as horny as you are, you don't think too much about it as your cock pulses with desire, but the dwarf's naughtiness doesn't end here. He slips a thick finger between your buns, giving your hole a really pleasant rubbing while you're taking his mouth, which immediately sets you off. Soon enough, your virile seed is shot right down his throat. You force him to swallow every single drop of your load as you keep thrusting back and forth, physically unable to offer any resistance to your primal need to fill him full of your cum. As your orgasm subsides, you pull out, feeling yet again his rough hand squeezing your cock out of the last drops of juice, which he gladly drinks away.";
	say "     'Love myself a good drink! I should try to fill a bottle with your cum next time I see you. I clearly have the motivation now!' he says, still licking his lips in great satisfaction. Sounds like he really didn't learn a whole lot with his defeat! 'I appreciate your generosity, but now that we're done, maybe it's time for you to let me go, yeah?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say DwarfAssFuck:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his ass for your pleasure. With your clearly now superior strength, thanks to the fact you bruised him good, it should be easy to make such a short, weakened man to bend over for you. He sees you approaching him decidedly and yet he begs 'Come on... I swear I'll let you be!' You leave him no answer as you're looking down towards him. Crouching, now at the same eye level, you let him know your intentions before forcing him to flip over, his compact ass held tight within his brown leather pants. You can see how firm and solid it is just by looking at the shape, which only reminded you of how great this is going to feel.";
	say "     Reaching over your crotch, you give yourself some pleasure as you're visualizing the whole thing. The stocky dwarf looks at you over his shoulder, enticing you further with his booty moves, openly inviting you to assault him from behind. Seems like he's getting into the idea, despite his initial fear of what you'd do to him. Without further ado, [if player is naked]you give your hardening length a few more strokes[else]you take your gear off and give your length a few more strokes[end if] before heading for his, providing a treat to the short man with a soft grabbing on his crotch as you undo the thick belt around his waist, only to slide off the pants just enough to see those hairy buns out in the air.";
	WaitLineBreak;
	say "     Sliding a finger over his pink hole, you hear the dwarf moan 'Ah... yeah, that feels amazing...' as soon as he feels you rubbing it. A little pressure just slowly sinking your index in it arouses him further, and you by sequence. Having his butt so in reach, as he's lying on the ground with his back arched, you could perhaps show him some tonguework. After all, he's really cooperating in this one, and you can't pass the chance to get a taste of that sweet ass. You lean over, kissing your way there through his fuzzy glutes, then spreading them as you let out a drop of spit fall on his anus, which winks back at you as if greedily sucking it up to lubricate itself. Eager as it looks, you proceed to plant your lips there, followed by your tongue as you press in deeper through the moist, fleshy tunnel.";
	say "     'Oooohh fuck... it's been a while since someone has done that...' The dwarf wiggles his butt over your face, as if begging for more attention centered on his hole, inviting you to press in even deeper, and soon you find yourself tonguefucking the short burly man. All the action makes him more loose and relaxed, you nearly don't have to do anything to sink inside his hole, an indicative that he's ready for your cock. With this in mind, you get up and rub your length across his butt cheeks as the dwarf humps back at you. 'I knew you couldn't resist it...' he teases you, as you feel the tip of your cock already oozing pre-cum as his hole kisses it back and forth. Eventually, you decide to press against it, slowly shoving yourself inside the dwarf's ass.";
	WaitLineBreak;
	say "     'Bet you like that, don't you? Never you thought a dwarf could have such a nice ass, yeah?' Though he keeps teasing you, [if cock length of player >= 12]he really struggles to take your huge size, but does his best to take as much as he can of you inside him[else]you make sure you bury your entire manhood inside him, until your balls are hitting his skin,[end if] without any complaints. You've got him moaning and grunting as you keep fucking his ass doggy style, slowly at first, but steadily. The way your meat feels inside the dwarf as he moves his ass together with your pounding only excites you even further, giving you an urge to go at it faster and deeper. 'Ohh [boygirl]! You're really hitting the spot!'";
	say "     As you keep the dwarf moaning with his deep raspy voice, you just want to go as hard as you can, and soon you find yourself on the verge of orgasm. Though you're not the only one, as the scavenger is also stroking his nine inch-long prick with vigor. 'I'm fucking close... Don't stop...!' he begs you, and you don't intend to, your dick reaching its peak of hardiness and starting to throb in anticipation. It doesn't take long for your seed to begin traveling through the insides of your reproductive system, and you don't even have time to pull out of his amazing ass... but it doesn't seem like that's what the dwarf wanted. Whenever you're not moving, he compensates your stiffness by thrusting back, as if he was milking your cock by himself.";
	WaitLineBreak;
	say "     Your cum fills the muscular shortie until the very end of your climax, throwing you out of breath by the time it subsides. Not long after you, the dwarf also blows his load over the ground while he feels you pulsing inside him, leaving a trail ot jizz ahead of you both. 'Fuuck... yes! That was a great fuck!' he shouts, completely dazed in his own orgasm. You two take some time to breathe, as you pull out of his ass and squeeze your dick off any cum drops left. You both gear up after you clean yourselves, the dwarf only having to pull his pants back on while still lying down on the ground, facing you this time. 'I hate to say goodbye to such a catch, but I believe we're sorted here, huh? I have places to be... Will you let me go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say DwarfRide:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his cock, despite his requests to leave him alone. He sees you approaching him with and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you caressing his crotch, causing him to release a light moan as he watches you. 'Oh... That feels nice... Uh, if that's all you want from me, I... guess...' he hesitantly replies to your touch, but you can feel him getting harder underneath his pants. With enough care, you undo his thick belt before pulling down his pants, releasing the previously constrained meat out in fresh air, still growing in your hands. The thick nine inch-long of a prick throbs with need as you eye it all over, teasing the dwarf with slow strokings.";
	say "     'You're driving me crazy with all that touching...' he says, his gaze gleaming with hope that you'd suck on his cock, but you don't intend to give that to him just now. Instead, your hand slides up and down through his length while you give his balls a nice squeeze with the other, giving him just about enough stimulation to stay rock solid. Stealing another moan from the short burly man, you then decide to focus your attention on the pre-soaked tip with your thumb, and eventually, leaning down over his dick, ready to give it some tongue. With enough dedication, you manage to make the dwarf jerk his hips, forcing you to hold him down as you start taking his entire manhood in your mouth, to which he grunts. 'I wanna fuck that mouth so bad...'";
	WaitLineBreak;
	say "     But it won't be your mouth that he's going to fuck. With a loud popping sound, you pull his dick out from between your lips and [if player is naked]immediately climb on top of him[else]slide down your lower gear completely so you can climb on top of him[end if], and you're ready to tease him by putting his meat right between your buns, giving him a nice rub all the way down and back up. Since you gave him a good warm-up with your saliva, his dick stands ready to penetrate your eager hole. The burly dwarf eyes you anxiously, not out of fear, but of excitement as you lower down your backside on the top of his dong, then slowly pressing further down as it begins stretching the entrance to your ass. 'You're tight... fuck... I'm surprised you wanted to do this... It's exactly what I had in mind!'";
	say "     Pleased to know that your foe is enjoying your treat, you take as much as you can of his thick cock, albeit slowly as you manage to accommodate its considerable girth. In fact, it's not the length at all that makes this a hard task to endure, but the thickness of his meat that seems to stretch you from the inside so much, yet feeling like it's filling you completely. Once you're comfortable with it, you begin humping up and down, effectively riding him as he looks at you go with a smile on his face. 'Fuck yeah! Damn! That's just what I needed!' he shouts - or grunts - as his breathing gets deeper as well as his dick inside you. Not limiting yourself to simple vertical movements, you also jerk your hips around to bring out most of the sensations you can provide to the short man, and the meat inside you really seems to respond well to it, by throbbing with desire.";
	WaitLineBreak;
	say "     You keep this up steadily for a while, often jumping on his lap suddenly faster and harder, alternating between both rhythms. Though at some point, you feel like you just want to go along with the lust claiming both of your minds, giving your best at milking his dick with your ass. 'Oh, fuck... if you keep this up, I'll... fucking cum in you.' Feeling the dwarf's warm cum filling you up as you're on top of him is really what's going to happen if you don't stop riding him. With the inevitable result so close, there's really no point in stopping at all, so you just go faster on him, jumping on his cock until the sounds of skin clashing against each other are loud and clear.";
	say "     'Damn, I'm gonna cum...!' Despite his warnings, you don't remove yourself from his dick, and are keen on accepting his load inside you. Soon, you feel it pulsing, quickly followed by a warm liquid gushing into you, coating your fleshy tunnel for a good while as the dwarf keeps shooting. His almost beastly grunts only calm down when his orgasm subsides, but your own happens while [if player is male]his rock-hard meat is still ramming hard against your prostate. Your cock bursts in a joyful blast of cum that lands on all over the short burly man, some even getting stuck in his beard![else]his rock-hard meat is still filling you in. Your body just trembles all over as a strong wave of pleasure overtakes you![end if] The dwarf smiles at you once things slow down, and you look at him as his dick slowly slides out of your pucker, a long stream of cum oozing out of your used asshole.";
	WaitLineBreak;
	say "     'Fuck damn wow! That was amazing! Makes up for having lost against you, though next time things won't be so easy for you!' he chuckles as he taunts you. With a little legwork, you manage to stand up and gather your things. 'So... I guess I can go now, right? As much as it pities me... but I have places to be!' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say Dwarf Desc:
	setmongender 3;
	say "     In front of you is a short middle-aged man, burly and muscular, wearing some kind of leather armor and armed with a stone hammer. Scratching his long full beard, which contrasts with his short dark brown hair adorning the top of his head, he gives you a snarky look before throwing a taunt at you:[line break]";
	if BodyName of Player is "Dwarf" and FaceName of Player is "Dwarf": [player looks like a dwarf]
		say "     'Did you get exiled from the underground dwarves? Or are you just another like me? Heh, no matter... I'll show you a good time once I'm done beating you up.' With that, he rushes at you.";
	else:
		say "     'Time for you to experience what's it like to get beaten by a dwarf. You'll be on your knees and at my mercy!' With that, he rushes at you.";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dwarf";
	add "Dwarf Male" to infections of HumanList;
	add "Dwarf Male" to infections of HistoricalList;
	add "Dwarf Male" to infections of MaleList;
	add "Dwarf Male" to infections of BipedalList;
	now Name entry is "Dwarf Male";
	now enemy title entry is "Dwarf Scavenger"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Yodgrak"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He charges towards you and gives you a dirty low kick.[or]He swings his stone hammer around, hitting you with staggering force.[or]Throwing a handful of dirt into your face, the short dwarf manages to smack you with his hammer's pommel as you're off guard, knocking you back with great strength.[at random]";
	now defeated entry is "[Dwarf loses]";
	now victory entry is "[Dwarf wins]";
	now desc entry is "[Dwarf Desc]";
	now face entry is "a weathered middle-aged man's, rugged and long-bearded, with short and shaggy dark brown hair hugging the top of your head";
	now body entry is "that of a short and burly man, musclebound and covered in hair. Your legs are fairly shorter than an average human's, making you stand half one's height";
	now skin entry is "peach toned and rough"; [ format as "You have (your text) skin"]
	now tail entry is "You have a hairy, compact muscled butt"; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a weathered male visage, rugged features and a long full beard growing out of your jaw and chin. Your hair becomes very short and dyed in a dark brown color"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a that of a middle-aged man, with a stocky and muscular build. Looking down, you notice your legs being much shorter than the rest of your body, making you standing half the height of an average human"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it gets rougher, becoming hairy and peach toned"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets tight and fuzzy, with compact muscled glutes"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 21;
	now dex entry is 15;
	now sta entry is 20;
	now per entry is 13;
	now int entry is 10;
	now cha entry is 11;
	now sex entry is "Male";
	now HP entry is 65;
	now lev entry is 8;
	now wdam entry is 12;
	now area entry is "Nowhere";         [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "dwarven ale";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "stocky"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "dwarf";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4-1 - Items

Table of Game Objects (continued)
name	desc	weight	object
"dwarven ale"	"a canteen bottle with some sort of strong alcoholic beverage inside. It's obviously dwarven in origin."	1	dwarven ale

dwarven ale is a grab object.

dwarven ale is infectious. The strain of dwarven ale is "Dwarf Male".

the usedesc of dwarven ale is "You bring the canteen bottle to your mouth and chug its contents down, the drink tasting like a very strong beer that nearly burns down your throat.";

instead of sniffing dwarven ale:
	say "This beverage smells a lot like alcohol. It must be very strong.";

Section 4-2 - Weapons

Table of Game Objects (continued)
name	desc	weight	object
"golden greathammer"	"A very well preserved, large stonehammer vastly coated in gold, with artistic details carved all over the shaft and its tip's support. It is truly a beautiful piece. It's exceptionally heavy too, making it difficult to handle."	12	golden greathammer

golden greathammer is an armament. It is part of the player. It has a weapon "[one of]your golden greathammer[or]your heavy golden greathammer[or]your heavy weapon[or]your beautiful golden greathammer[at random]". The weapon damage of golden greathammer is 14. The weapon type of golden greathammer is "Melee". It is not temporary. the objsize of golden greathammer is 4. the hitbonus of golden greathammer is -2.

instead of sniffing medium sledge:
	say "The beautiful golden greathammer smells of old, due to its age, and has an obvious trace of metallic scent.";

Section 5 - Endings

Dwarves ends here.
