Version 3 of Dwarves by Gherod begins here.

"Adds an entire new race, the dwarves, in form of a new infection and a new roaming creature past an introductory event."

[Version 1 - File created - Gherod]
[Version 2 - 1 Submit Scene, Collapsed Tunnel event, Golden Greathammer weapon - Gherod]
[Version 3 - Wedding Wreckers event, Dwarf Knights - Gherod]

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Savage Dwarf	"Savage Dwarf"

Savage Dwarf is a situation.
ResolveFunction of Savage Dwarf is "[ResolveEvent Savage Dwarf]".
Sarea of Savage Dwarf is "Forest".

to say ResolveEvent Savage Dwarf:
	say "     During your exploration efforts within the forest, you come across a grassy path near the base of a cliff. A little further ahead, there is - or was - what seems to be an entrance to a tunnel right through the rocky walls. It has collapsed, though you hear a lot of agitation coming from there, namely a short burly man shouting and hitting on the debris with his stone hammer. You can't quite understand what he's saying from here, you're standing too far to be able to hear him decently, but whatever it is, it looks like the man is having an argument with the rubble, or maybe someone is on the other side? [bold type]You could risk approaching him, but there isn't a lot of hiding area if you get closer, and he might see you.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Get closer.";
	say "     ([link]N[as]n[end link]) - Ignore the situation for now.";
	if Player consents:
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
					if Player is female: [has a pussy]
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
ResolveFunction of Collapsed Tunnel is "[ResolveEvent Collapsed Tunnel]".
Prereq1 of Collapsed Tunnel is Savage Dwarf.
Sarea of Collapsed Tunnel is "Forest".

to say ResolveEvent Collapsed Tunnel:
	if Resolution of Collapsed Tunnel is 0: [first time]
		say "     During your walk around the forest, you come across a familiar path near the rocky cliffs where the collapsed tunnel was found, and with it, the horny dwarf who's now roaming around. Tracing your steps back to the place, you remember the rubble that used to cover the entirety of the passage ahead of you, now partially removed to allow anyone to make it across. You suppose this is the work of the dwarf, who was finally able to remove the obstacles in order to make it to the other side. There's a chance that you might find something interesting if you decide to investigate, but beware that you're very likely to be trespassing dwarven territory. If you have any companions with you, they'll stay at the entrance to make sure you won't get stuck inside while exploring. [bold type]Do you wish to go on ahead, or leave the place for now?[roman type][line break]";
		LineBreak;
		CTunnel1;
	else if Resolution of Collapsed Tunnel is 1: [returned before entering]
		say "     During your walk around the forest, you happen to pass by the tunnel leading into the rocky cliff, with the way now partially clear of rubble. There's no change since you last encountered the place like this, and you're again left with the choice to either investigate or leave. Do keep in mind that you're very likely to be trespassing dwarven territory if you choose to proceed. If you have any companions with you, they'll stay at the entrance to make sure you won't get stuck inside while exploring. [bold type]Do you wish to go on ahead, or leave the place for now?[roman type][line break]";
		LineBreak;
		CTunnel1;
	else if Resolution of Collapsed Tunnel is 2: [returned after finding the trap]
		say "     During your walk around the forest, you happen to pass by the tunnel leading into the rocky cliff, with the way now free for you to cross without any hard efforts. There's no change since you've last entered the place, and you recall having found a trap on your way deeper thanks to your great perception. Figuring that you had no way to proceed, you chose to leave in order to return some other day, and now here you are. How will you deal with this obstacle, provided your options?";
		LineBreak;
		CTunnel2;

to CTunnel1:
	say "     ([link]Y[as]y[end link]) - Investigate the passage.";
	say "     ([link]N[as]n[end link]) - Leave for now.";
	if Player consents:
		LineBreak;
		CTunnel1Pathway;
	else:
		LineBreak;
		say "     It's probably for the best that you stay away from this place, for now. Perhaps when you find yourself more ready to venture into hostile territory...";
		now Resolution of Collapsed Tunnel is 1;

to CTunnel1Pathway:
	say "     Choosing to press on ahead, you realize that the opening made is a little too short for you, so you have to clear some more of the scrap that's keeping you from going across. Clearly, this suggests that someone of a small stature made it through, likely to be dwarven in origin. You proceed with caution, paying attention to any strange sound that might be heard at this point, as you carefully step through the rubble and move what's still blocking you with your hands. There's all kinds of stuff used to block the entrance, from metal scraps to wooden broken crates, and you have to watch out not to get injured by any of the rusty blades menacingly pointed at you. Whoever wanted this path closed really made sure that it stood that way, and whoever opened it really wanted to make it through!";
	say "     The path is tricky, but achievable. Once you're done with most of the stuff, you see less and less serving as obstacles, and so you're free to walk forward. The tunnel itself isn't very wide, and there are points you need to lean your back to make it across, however the pathing doesn't extend itself for too long. Several more steps and you start seeing light in what seems to be a larger room, one enough for you to actually stand up straight and freely explore. It's actually a relief once your feet land on solid floor, some kind of stone mosaic covering the area. It seems to be some kind of basement, with walls made of stone and only a few torches scattered around the walls. There are a few ornaments on the floor near them, so dusty that you can't actually see their natural colors, and boxes with all sorts of trinkets and other things, suggesting that this might serve as some sort of antique storage. It smells of old, and there's not a single noise to be heard.";
	WaitLineBreak;
	say "     You suppose it's no use lingering here, so you're set to explore the area around you. There's only one way to follow, so you get on that immediately. Following through the corridors gives you a whole another feeling of where you are, as the structures seem really old, even too much for just a simple underground warehouse. It gives you the feeling of some kind of old ruins, excavated and built in a large scale, even more so for dwarves. There are some large doors along the massive corridor, but none of them are open and you don't think there's any way to force them. You've got no choice but to walk forward and hope to find something worth coming here.";
	say "     With a few minutes worth of walking, you arrive at another room, behind one of the doors that you could actually manage to slip through. There are armor stands, some filled with rusty and heavy armor of a dwarf's stature, swords, shields and other large two-handed weapons. Seems like you just stepped into an armory, or at least some place where the dwarves store their old equipment. Any of this would be too heavy or bothersome for you to take, and the armor is not even usable... You figure it should be better to investigate this room a little more, having a look at every bit and corner, and you do manage to find an adjacent chamber with something covered with a large blanket. Sounds like treasure, and it makes sense the dwarves would attempt to protect good equipment from deterioration.";
	WaitLineBreak;
	let bonus be (( perception of player minus 5 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Perception Check):[line break]";
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
			say "     The trigger seems to be a large pressure plate in front of you, or rather, several of them. They're pretty much unavoidable and need a good amount of weight to activate, that of an equivalent to a living bipedal. Studying the trap, you eventually discover that you can remove the access from the trigger to the trap by tapping into one of the mechanisms, which you can access easily. You're dexterous enough to not trigger it accidentally and successfully deactivate the trap, freeing your way ahead of any obstacles.";
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
		now Resolution of Collapsed Tunnel is 2;
	else if calcnumber is 4:
		say "     Taking a moment to process the problem ahead of you, making a decision comes after some deep thinking. You're not all that interested in the dwarves, and honestly, you have better things to do. There's simply nothing else to be found and the entire trip seemed a waste of time, so you decide to close this matter for good and leave, never to return.";
		now Resolution of Collapsed Tunnel is 99;
		now Collapsed Tunnel is resolved;

to CTunnel2Trap:
	say "     All of the sudden, something around you starts moving quickly, and there's no time to possibly react to what's to come. Ropes, strategically placed all around the room, move towards you too quickly for your eyes to be able to follow and wrap themselves around your feet, legs and arms. Your body spins impossibly fast as you're brought up to hang in the air, effectively immobilized as your movements are blocked by the trap. Once you're finally still, you glance around and inspect the ropes wrapped all over you. Any attempt to free yourself proves to be futile as you wiggle around helplessly, and nobody seems to be nearby to help you. You're not even so sure you want anyone to come, even, as this trap was here for a reason you're very well aware of. Nonetheless, you have no choice but to wait and pray that this doesn't come to bite you in the back, and try to find a way to release yourself in the meantime, if there is any.";
	WaitLineBreak;
	say "     Some time passes and you're about to give up your hope, until you hear steps coming from one of the corridors. A very familiar voice reaches your ears as the short figure approaches you. 'Now, isn't this a surprise? Looks like someone fell into a dwarven trap! And I know this someone... What are you doing here?' asks the roaming dwarf you've encountered before in a sarcastic tone, as if mocking your demise. Knowing him well, he's probably enjoying seeing you all tied up and at anyone's mercy, were it not for the already prominent bulge in his pants. 'I suppose I could free you, but... Do I want to? Is there anything you can offer me?' he asks, taking several steps towards you while taking a sip from his canteen bottle.";
	say "     You don't think you'll be able to get your way out of this without obliging any of the dwarf's requests, whatever they might be, but you have an idea of what he wants from you. In fact, this proves to be an excellent opportunity for the short burly man to use you in any way he desires, and he's not going to waste it. It's not like you have a choice, either... 'I could use a release, actually... And seeing you here so helpless can't be by chance, right? How about I make use of your holes in exchange for your freedom, eh? Sounds like a good deal to you? It does to me.' He doesn't waste any time undoing his belt and pulling his pants down, his thick and meaty cock bouncing back up as he does so, hard and throbbing with a trace of precum oozing from the slit.";
	WaitLineBreak;
	say "     'Time to get to work, my [boygirl]! Gotta pay your debt beforehand.' teases the small man as he rubs his shaft all over your lips, and you've got no choice but to obey. Giving your best to satisfy the horny dwarf, you open your mouth and kiss the length of his manhood as he slides it back to meet your lips with his glistening tip, the sweet surface caressing your taste buds as your tongue wraps around the glans. The dwarf lets out a pleasure grunt as he feels you working his cock, pushing it into your mouth as he takes hold of your head. He's actually gentle about it at first, but he makes you deepthroat his dick to the very last inch. 'That's it... That's a good [boygirl]. Like sucking this cock, don't you? Bet you longed for it...'";
	say "     His taunts continue as he makes you take his manhood down your throat, and eventually, he's grabbing you firmly to fuck your face. As his balls hit your chin, you hear the ropes around you squeak because of the movement, your entire body swinging back and forth as the dwarf takes your throat like a fuckhole. He's got a huge satisfied grin in his face, knowing he owns you for as long as he desires, [if Player is submissive]and you can't help but feel incredibly turned on by it as your submissive instincts kick in, only thinking about the many ways he could use you[else]and you have no choice but to endure everything that comes into his mind, whatever it may be, as you remain at his mercy[end if]... 'Darn, it feels good! I was needing this!' his deep voice rumbles in your ears while his cock throbs in your mouth and throat still, and after a couple few more thrusts, he pulls out slowly.";
	WaitLineBreak;
	say "     'That's enough mouth for now. You got me all nice and wet, now... Let's see what else you can offer me.' His strong hand caresses your body all over, exploring all his possibilities, though you just know he's going to stop right where he does before it actually happens, feeling your glutes up with both hands from behind you. The dwarf spreads your legs so he can get between them, [if Player is not naked]and you feel him taking off your lower gear to expose your ass[else]and you feel him giving the back of your bare thighs a nice squeeze[end if] before spreading your cheeks and sliding a finger above your pucker. 'You [if Player is female]do have a nice cunt, but I feel like having something tighter right now[else]have a really nice looking butt. Just what I needed[end if]. Hope you don't mind me using your asshole and breed it full of some good dwarven cum...' he teases you, chuckling as he presses his finger inside your anus, rubbing it around to prepare it for his thick meat.";
	say "     'Since you didn't make a fuss and actually were a good [boygirl] for me so far, I'll give you a treat.' he informs you as, moments later, you feel a wet, warm and nimble something caressing your hole. His tongue, wiggling around your back entrance masterfully as it presses in further, soon accompanied by some lips as he makes out with your anus. In a momentary change of focus, [if Player is male]the dwarf gives your balls a nice brief tugging with his mouth, leaving your [Cock of Player] manhood throbbing even more[else if Player is female]gives your pussy a broad licking and a kiss, leaving you even hornier[else]gives your genderless crotch a big kiss, leaving you even hornier[end if], before turning his attention to your asshole once more. His bushy beard tickles between your glutes, which makes you move your ass against his face a little harder, a gesture he seems to appreciate as he shoves his tongue deeper in your pucker";
	WaitLineBreak;
	say "     While the stocky short man is tonguefucking your ass, he's also sliding his hands all over your legs, buttocks and sometimes your front genitalia, seemingly caring about your own pleasure as well, all the while he has full control over you. Your hole stretches around his tongue, which is going deep and back out repeatedly, giving you blissful sensations as he truly puts an effort into eating your ass out. With a hasty retreat, he pulls his tongue out and kisses your pucker goodbye, standing up with his cock in hand. 'Alright, that's enough for you. Better put that tasty ass to use elsewhere now, yeah?' he says as you're already feeling the warm tip of his prick kissing your anus, and it's not long until he starts pushing.";
	say "     His considerable thickness starts filling you once he's past your anal orifice's first resistance, and slides in without much trouble thanks to the preparation he made sure you had. As you're hanging immobile, the dwarf is free to fuck your ass as much as the whim takes him, grabbing you by the hips to aid his thrusting motions, burying his cock as deep as he can inside you. There's almost no pain on your side, and eventually it all starts feeling too good. There's something in you urging you to let out an audible moan, [if Player is female]with his manhood pressuring against your pleasure spot[else]with his manhood hitting your prostate with vigor[end if]... 'You're liking it, aren't you? Like getting your holes used while you're all tied up, eh? Could have thought about this before, it's so much fun...!'";
	WaitLineBreak;
	say "     He's been fucking you for some time now and you can't help yourself but to really enjoy it. The stocky dwarf knows when to get rough, pounding you as hard as he can with surprising strength, you even feel your body swinging back and forth as he thrusts, and you can hear him grunting as he slows down. 'Fuck, I'm getting really close... I was gonna cum in your ass, but tell you what, I'll let you pick between ass or mouth. Don't take too long deciding or I might just end up cumming ballsdeep inside you!' he tells you, and you sure can feel his cock throbbing like mad. He gave you a choice, so what's it going to be? [bold type]Want to swallow the dwarf's cum or let him fill your ass?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Ask him to cum in your mouth.";
	say "     ([link]N[as]n[end link]) - Let him fill your ass.";
	if Player consents:
		LineBreak;
		say "     Amidst your breathy moans, you manage to let him know that you want his cum in your mouth, [if Player is submissive]and saying this made you blush[else]and you can't believe you actually said that[end if], as it feels somewhat degrading in a way. The stocky short man throws a chuckle as he hears you, pulling out his cock from your fucked hole and walking around to your face. 'My [boygirl][']s thirsty, huh? It's a big one coming, hope that quenches it...' he teases you while forcing his manhood between your lips. You open your mouth and take his hard member once again, having a taste of your own ass as he fucks your face. He doesn't last long, as within several seconds, he lets out a beastly grunt as you feel a thick shot of cum coating the insides of your mouth, before he proceeds to shove his cock completely in you.";
		say "     You're forced to directly swallow his entire load, spurt after spurt, all landing down in your stomach for the next minute it's being pumped out of his dick and into you. Doing your best to swallow, you inevitably need to urge him to get some breathing, as he's been ballsdeep in your mouth for quite some time now! With some muffled groans, he eventually pulls out, a drop of semen still escaping by your lips. 'Fuuuck yeah! It's been fucking long since I had a good release like this. This was great! You've done really well, my [boygirl]!' he praises you, rubbing your head as he looks down on your eyes, his dick still resting against your nose and cheek, traces of cum still visibly leaking onto your face.";
		WaitLineBreak;
	else:
		LineBreak;
		say "     Amidst your breathy moans, you manage to let him know that you want his load in your ass, [if Player is submissive]and saying this made you blush[else]and you can't believe you actually said that[end if], as it feels somewhat degrading in a way. The stocky short man throws a chuckle as he hears you, pushing his cock deep inside you once more and tightening his grip on both sides of your hips. 'As you wish, my [boygirl]. I was hoping you'd pick that one.' he teases you while picking up the pace with him pounding your ass, without any slowing down. He doesn't last long, as within several seconds, he lets out a beastly grunt as you feel a thick shot of cum coating the insides of your back entrance, before he proceeds to shove his cock completely in you with few sporadic thrusts.";
		say "     You feel his entire load, spurt after spurt, being delivered inside you for the next minute it's being pumped out of his dick and into you. Doing your best to endure his thickness pulsing in your hole, you have only to wait until his orgasm subsides. A drop of semen leaks from your used fuckhole, followed by some more as he pulls back. 'Fuuuck yeah! It's been fucking long since I had a good release like this. This was great! You've done really well, my [boygirl]!' he praises you, giving your butt a playful slap, his dick still resting between your ass cheeks and dropping a few more traces of cum onto your back.";
		WaitLineBreak;
	say "     'Now I suppose I have to free you, huh...' he says in a reluctant tone, pushing his meat back in his pants and redressing himself. 'Well, let's have a look around first. Gotta thank you somehow for getting me rid of any traps on the way to some treasure.' You immediately protest, accusing him of breaking the deal, but he stops you right there. 'Come on, I did you a favor... Imagine what would it be hanging in there for so long without a good fuck? I'd be crazy!' he mocks you, walking towards the big blanket you saw before falling into the trap. He uncovers it, revealing a big stone hammer in pristine conditions, probably the only usable thing in here! 'Oh my... Now this is worth my trip here. Were you taking this?' he turns to you, asking you the question with a sarcastic tone. 'Well, guess not anymore.'";
	say "     He takes the stone hammer with him, leaving you behind with a naughty smirk. 'Pray that the dwarves find you here, who knows if you'll get a gangbang from them. That'd be fun to watch, but I guess that's not what will happen!' he laughs, leaving the room and you behind, still hanging in the air stuck with the ropes, and with your spoils! You curse him with your words, but he's nowhere to be seen anymore. Furious - and also because he fucked you and didn't have the decency to get you off as well - you let out an enraged movement with your arm. And you must be in luck, as the device comes crumbling apart just when you do that, sending you to hit the floor with the ropes still wrapped around you, but not tense anymore, allowing you to move your hands and arms around to untie yourself.";
	WaitLineBreak;
	say "     It takes you a bit to get free from the trap, so you're not able to chase the dwarf. Nonetheless, you think you had enough of this place for a day and proceed to walk to the exit. You'll have to find this guy if you want to get your hands on what is deservingly yours.";
	now Resolution of Collapsed Tunnel is 3; [scavenger has the greathammer, dwarves provoked]
	now Collapsed Tunnel is resolved;

to CTunnel3: [player successfully gets past the trap]
	say "     Now your way to your treasure is free! Eagerly, you walk towards the spot where you saw your spoils, hopeful that it will be enough to call this exploration worth it. Pulling the blanket away, your eyes widen as they land on a large stone hammer made of gold and in pristine conditions! You can't believe that you've stumbled on a weapon like this, beautiful and seemingly deadly! Looks like a great opportunity to acquire yourself a brand new means of beating your enemies, but the question is... [bold type]Do you actually want to steal from the dwarves and take this weapon with you?[roman type] That might provoke them... [bold type]but if you leave it here like nothing happened, they might just never come out of hiding.[roman type] What will you do?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take the weapon with you.";
	say "     ([link]N[as]n[end link]) - Leave it there. You have no interest in provoking the dwarves.";
	if Player consents:
		LineBreak;
		say "     This is too good to pass. It is a two-handed weapon made adorned with gold, one of the most beautiful weapons you've ever seen. Plus, it looks pretty strong! No way you're going to leave this here, to remain forgotten and risking it ending up in the wrong hands. Carefully, you remove it from its resting place. You already knew it would be heavy, but not this heavy! Nonetheless, you're strong enough to carry it with you. Now it's only a matter of returning to the tunnel and get the hell out of here before someone notices anything missing, or see you carrying something that isn't supposedly yours.";
		ItemGain golden greathammer by 1;
		now Resolution of Collapsed Tunnel is 4; [player got out with the greathammer, dwarves provoked]
		now Collapsed Tunnel is resolved;
	else:
		LineBreak;
		say "     It's not a good idea. You'll end up provoking an entire civilization for just a hammer. As beautiful and powerful as it may be, it's guarded for a reason, so you put the blanket on it again and get ready to take your leave. You've had enough of this place for a day, and don't think there's anything else to do here, so you walk towards the exit and call it done.";
		now Resolution of Collapsed Tunnel is 3; [player didn't take the greathammer, so the scavenger did, eventually]
		now Collapsed Tunnel is resolved;

Section 1-2 - Wedding Wreckers

Table of GameEventIDs (continued)
Object	Name
Wedding Wreckers	"Wedding Wreckers"

Wedding Wreckers is a situation.
ResolveFunction of Wedding Wreckers is "".
Sarea of Wedding Wreckers is "Nowhere".

to say DwarfQuest1: [Dwarf has the greathammer]
	say "     Now that the dwarf has been defeated, you are free to claim the greathammer that you found with your own sweat and effort right off his hands, but he's not willing to give it up so easily. 'No! This is my hammer! I worked hard to get it!' Even in his defeated state, he refuses to let go off his weapon, but it isn't a lot to stop you from just taking it out of his hands by force. 'You don't know one thing... You won't like to have that hammer with you, I'm warning...' You dismiss his commentary as rubbish, and walk away from him with your prize in your hands.";
	say "     You have gained a [bold type]Golden Greathammer[roman type] from defeating the dwarf scavenger.";
	choose a row with name of "Dwarf Male" in the Table of Random Critters;
	now wdam entry is 12; [dwarf no longer has the greathammer]
	say "[DwarfQuest3]";

to say DwarfQuest2: [Player has the greathammer]
	say "     Now that the dwarf has been defeated, you have the perfect opportunity to further assert your dominance over him. You have the big weapon that he could never get, and never will. 'Hah, I was hunting for that weapon way before you! Too bad you didn't fall for my trap, or that would have been mine!' Well, you did see the trap, but you were smarter than thin. Obviously, you proceed to shove that fact on his face, to which he responds 'Well, actually, I think you saved me a headache. Good luck trying to keep that hammer with you, smarthead. At least they won't be looking for me anymore.' Wait... they? What does he mean? You have no time for this, so you simply turn around and head on your way, with your proud greathammer in hand.";
	say "[DwarfQuest3]";

to say DwarfQuest3: [continuation]
	WaitLineBreak;
	say "     But...";
	say "     As you were walking around the forest, you feel like you are being followed. Is it the scavenger still wanting to recover from his humiliation? You could think this, but you just defeated him, there is no way he could actually bolster up all the strength to keep following you and still fight you for it, right? Didn't he have enough beating for one day? However, the sensation grows stronger, and you think you hear footsteps around you. Maybe a wild creature? Well, now you have the weapon to defend yourself with! You stand your ground this time, and look around you, waiting for something to come out of behind the trees, or the moving bushes. Maybe you should think about taking some cover, since you have no idea what's lurking from the shadows...";
	say "     'Get [ObjectPro]!' A rough male voice bursts out of nowhere, and suddenly, there's a swarm of... dwarves?! They are coming towards you with their weapons in hand! They're so fast, that the only thing you can do is swing the hammer around. You think you probably hit one of them, but then you black out, a pain on the back of your head being the last thing you feel before you collapse on the ground.";
	ItemLoss all golden greathammer;
	WaitLineBreak;
	say "     Some time later, you begin to regain your senses, with an intense headache. Confused as to what happened, you glance around in confusion, finding something amiss... Your golden greathammer is [bold type]gone[roman type]! Still looking around for it, you try to get up, only to lose your balance a second later from the dizziness that's still blocking your senses. 'I wouldn't do that if I were you. Sounds like you were hit pretty hard.' It's a familiar voice, someone you met not long ago... Oh, but of course, the dwarf scavenger! 'Don't worry, this wasn't my fault. I think we provoked the dwarves on the other side of the mountain by intruding in their territory and stealing that weapon.'";
	say "     As it appears, a bunch of dwarves charged against you, knocked you off your senses and stole the greathammer right off your hands. At least, judging by what the scavenger is saying. 'I followed behind them for a while, sounds like it was a gift for one of the grooms who is going to get married soon. A member of the guard, no less! I guess we pissed them off.' The bearded man crouches next to you, helping you at least to take a proper, straight up sitting position. 'There, you better now?' he asks you. In fact, you're still seeing two of him, but you reassure him, saying you're okay. Though, not without questioning his sudden sympathy for you. 'What, I'm partially responsible for this... I figured I should have made sure you were fine. But I can leave, if you want.'";
	say "     He gets up, apparently to grab his things and make his retreat. [bold type]Do you want to stop him from leaving?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, call him and apologize for questioning him.";
	say "     ([link]N[as]n[end link]) - No, let him leave. You're done with this dwarf nonsense.";
	if Player consents:
		LineBreak;
		say "     You ask him to wait, and he almost immediately stops. Was the little prick expecting you to do that, already? 'Heh, thought you wouldn't be able to get enough of me.' he teases you with a snarky grin, approaching your position once more. Though you suppose since you already called him back, might as well apologize for questioning his intentions and thank him for the help. 'Nah, you were right. I am helping you, but I also want to ask you for a little favor in return.' Well, are you surprised for this? Given his outlaw behavior as of always, since you've met him... 'It should be of your interest too, however. Might benefit us both if we manage to pull it off.' Now, what is he just talking about, you ask? [bold type]Do you even want to know?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let's hear it.";
		say "     ([link]N[as]n[end link]) - No, that's enough. You already thanked him, and that shall be all.";
		if Player consents:
			LineBreak;
			say "     Since you're here, and he has this amazing plan you should be hearing about, you allow him to tell you all about it. 'Alright, so... They took us the greathammer, which was really that amazing weapon, and must be worth a lot of money! We can get it back, there are ways to get in their kingdom and steal it right under their noses, then escape with our prize! And who knows, we might find valuables on the way.' He really sounds invested in pursuing this crazy idea, robbing the dwarves off their precious treasure. However, there is a risk that you will be pissing them off even more than they were just now, hitting you in the head and everything just to claim what is rightfully theirs. Though, apparently, the dwarf wants you to join him.";
			say "     'So, what do you say? Wanna become my partner in this?' he asks, and until you make a decision, you ask him what will be necessary for this plan to work. Well, ";
			if BodyName of player is "Dwarf Male":
				say "you already look like a dwarf, so that will be all that's necessary. Else... hehe... I'd have to fuck you into one.' he tells you, rubbing his bulge teasingly with a wide grin on his bearded face. 'I'd still fuck you if you want, just to make sure you stay a dwarf.' Isn't that charming...? Anyway, it looks like you're all set, so you might as well just answer if you're willing to [bold type]get started, refuse this proposal, or postpone it, though not for long.[roman type][line break]";
				now Resolution of Collapsed Tunnel is 5;
				DwarfQuestQuestion1;
			else:
				say "you'd need to look like a dwarf, as their structures and everything are made with their own size taken into account. Plus, if we ever need to sneak around, it would be better to look like one of them. Now... I can help you with that... we just have to fuck a whole lot until you start looking like me... hehe...' he tells you, rubbing his bulge teasingly with a wide grin on his bearded face. How charming is that...? Anyway, it looks like you have a task to accomplish, either way. 'I could also provide you a potent ale, if you're looking for a faster and less permanent effect, I guess. Though fucking is more fun.' With this knowledge of the subject, are you still interested in his plan? [bold type]Do you want to go along with it? If yes, do you want you transformation to happen through sex, by drinking his ale, or do you have another means to accomplish your dwarf transformation? Or, you could just refuse, that's an option too.[roman type][line break]";
				now Resolution of Collapsed Tunnel is 6;
				DwarfQuestQuestion2;
		else:
			LineBreak;
			say "     That will be all from him. This dwarf means trouble every time you cross paths, so you might as well let him know that you're not interested in anything he has to say. 'Oh, come on! It will be fun! And profitable!' After some insistence, you manage to shove him away. Eventually he had to give up pestering you, right? 'Well, alright. I guess I'll do it on my own, then. Good luck with your... business, whatever it is.' That's the excuse you gave him, and even though he didn't buy it, he is walking away from you, leaving you in peace. Though, you feel like you've lost a good chance at befriending him... Maybe forever. You never trusted him anyway, you suppose...";
			now Resolution of Collapsed Tunnel is 99;
	else:
		LineBreak;
		say "     You simply watch him leave, and he goes away. You might be able to find him again and fight him, but you feel like you've lost a good chance at befriending him... Maybe forever. You never trusted him anyway, right?";
		now Resolution of Collapsed Tunnel is 99;

to DwarfQuestQuestion1: [Player presents himself with a dwarf appearance]
	LineBreak;
	say "     [link](1)[as]1[end link] - Accept and begin your plan immediately.";
	say "     [link](2)[as]2[end link] - Postpone this, you still have things to do before.";
	say "     [link](3)[as]3[end link] - Refuse this crazy proposal.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to accept and begin, [link]2[end link] to postpone this or [link]3[end link] to refuse immediately.";
	if calcnumber is 1:
		if Resolution of Collapsed Tunnel is 5: [player was always a dwarf]
			say "     [bold type]Starting with Yogdrak Approval: 3.[roman type][line break]";
			now Resolution of Collapsed Tunnel is 13; [Yogdrak begins with 1 approval]
		else if Resolution of Collapsed Tunnel is 6: [player turned into a dwarf on their own]
			say "     [bold type]Starting with Yogdrak Approval: 1.[roman type][line break]";
			now Resolution of Collapsed Tunnel is 11; [Yogdrak begins with 3 approval]
		LineBreak;
		say "     With your decision made, you let the dwarf know that you're all set to begin this plan immediately. He chuckles in joy for hearing you say that. 'Good! I knew you would make the best call. Alright, then. Grab your stuff and come with me. We'll get that greathammer back.' He's very confident that you will succeed. That's great! It means he must know where to go and what to do. 'By the way, my name's Yogdrak. I suppose you can know that bit about me, since we're partners now.' He trusted you with his name, too! Is this the beginning of a new friendship? Or just temporary partnership for the same goal, knowing the likes of this scavenger...? You try not to think all that much about it, for now.";
		WaitLineBreak;
		WWQuest;
	else if calcnumber is 2:
		LineBreak;
		say "     You need more time before making a decision, so you let him know that. 'Alright, you know where to find me whenever you have decided.' With this said, you walk away. At least the scavenger won't be hostile the next time you meet him... At least for a while.";
	else if calcnumber is 3:
		LineBreak;
		say "     Infiltrating the dwarven kingdom, stealing their things right under their noses, only because a crazy infected scavenger asks you?! No, you won't do it. Standing your ground firmly, you let him know that you won't be a part of that. 'Oh, alright then. I guess I'll go on my own, eventually. Way to ruin a friendship...' He starts walking away from you, but still adding something in the end 'I think you should stay away from my territory, then. Or I'll beat you out.' Definitely a charming fellow, but you think you've done the best thing. Sure, you won't see any real dwarves for a long time, but at least you won't get in trouble, except if you come for this scavenger again... He'll want to smash you as hard as before.";
		now Resolution of Collapsed Tunnel is 99;
		now Collapsed Tunnel is resolved;

to DwarfQuestQuestion2: [Player is not a dwarf]
	LineBreak;
	say "     [link](1)[as]1[end link] - Accept, and have lots of sex with the dwarf scavenger. Then, begin your plan as soon as possible.";
	say "     [link](2)[as]2[end link] - Accept, and take his potent ale. Then, begin your plan as soon as possible.";
	say "     [link](3)[as]3[end link] - Say you'll handle the transformation on your own, and postpone your decision.";
	say "     [link](4)[as]4[end link] - Refuse this crazy proposal.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to accept and have sex with him, [link]2[end link] to accept and drink his ale, [link]3[end link] to postpone your decision or [link]4[end link] to refuse the deal for good.";
	if calcnumber is 1:
		LineBreak;
		say "     Is there any better way to do this other than receiving the transformation right from the source? Besides, the dwarf seems eager to utilize this method, and you totally know why... Looks like all you have to do is let him know, and you do so by approach him and groping his sizable bulge, already throbbing in anticipation. 'So you wanna do it this way, too? I mean... I'm glad you chose this option, too.' he says, as he grabs you for... not a kiss, as you were expecting at first, but instead guiding you straight to his crotch, pulling your face right against it as he undoes his belt. Might as well open your mouth and let that concealed bump of throbbing meat in your mouth, which seems to excite the short man even more, feeling the warmth of your lips and tongue wrapped around his thick boner before he manages to slide his pants off.";
		say "     You pull out for mere seconds as his dick jumps out of the prison it was in, then back in your mouth as you give the dwarf a hungry blowjob. This time, you're wanting to get transformed into one like him, eager to drain the cum out of his balls as much as you can, and amidst moans and grunts, he lets you know he wants to do exactly that for you. Grabbing you by both sides of your head, the bearded dwarf rams his entire thick length down your throat, forcing you to take every inch inside your mouth, then proceed to fuck your face as his plump balls swing heavily, back and forth, against your chin. 'Fuck yeah... Hope you're ready to swallow lots of dwarf spunk... It's gonna taste so good.' he tells you, and you can't help but believe his words, as if your body was craving for that creamy seed...";
		WaitLineBreak;
		say "     He facefucks you for a long period of time before wanting to use your ass too, holding up his first orgasm as much as he can. Obviously, he's enjoying the perfect excuse to fuck you over and over, but he competently does so, as skilled as he is. Turning you around, as naked as you are by now, he easily shoves his wet cock inside your pucker, grabbing you by the hips and thrusting slowly at first, increasing his rhythm progressively... 'Can't wait to fill you up... How many times you think I need to cum in you? Maybe five? I could do it all day... hehe...' he says, chuckling, while ballsdeep in you, pounding your butt vigorously like the virile dwarf man he is. Though, eventually, you feel like he's getting close, as his grunting gets more intense.";
		say "     'Nngh, fuck yeah...! Guess you're about to have your first filling...' he tells you, picking up the pace as he pushes in deep and hard inside your ass, and soon you're feeling his meat pulse and throb inside you as he lets out a long moan, warm dwarf seed coating your insides as he shoots more and more of it... 'Feels so fucking good... Oh yeah...' Enjoying his first climax, the short man leans his head back and takes some time before he resumes the action. 'About to start the round two, now I'll slide in and out even better...' he tease, slapping your buttcheek hard with those powerful dwarf hands of his. He doesn't wait for long, as you feel his cock already moving inside you, back and forth, slowly, and repeats the process, fucking your ass once more.";
		say "     Your time together lasts for several hours, as the dwarf keeps pounding you, both your ass and mouth in turns, either making you swallow his load or breeding you with it, always with that naughty grin in his bearded face. He surely enjoys fucking you again and again...";
		WaitLineBreak;
		follow the turnpass rule;
		say "[DwarfMaleTF]";
		say "     This really only stops once the dwarf falls over by exhaustion, catching his breath next to you, fully naked and lying down on his back, with his half-hard cock proudly on display. He looks at you with the biggest smile you've ever seen drawn in his expression. 'Look at you, looking so sexy... I could just keep fucking you, but damn, I'm all sore now...' he says, eyeing your entire body and face, now much more similar to his. 'You make a pretty hot dwarf, let me tell you. Should keep that look. You'll find it really fun, trust me.' He wouldn't say otherwise, looking like a dwarf himself. But then this means you're all set to begin your plan! That is... after you've had your well deserved rest. This dwarf is one intense fucker...";
		say "     Shortly after, the dwarf gets up, and helps you back up while he's at it. Standing really close to him as you are right now makes both your dicks tingle, wanting to start fucking again... but you've been at it for long enough, and there was a goal for all this, in the first place. 'Alright, then. Grab your stuff and come with me. We'll get that greathammer back.' he says, as he turns around and starts getting dressed, and you should do the same. 'By the way, my name's Yogdrak. I suppose you can know that bit about me, since we're partners now.' He trusted you with his name? You must really have connected with each other, right? Who would say, after literal hours of fucking together. Is this the beginning of a new friendship? Or just temporary partnership for the same goal, knowing the likes of this scavenger...? You try not to think all that much about it, for now, but it sure was a great time...";
		WaitLineBreak;
		say "     [bold type]Starting with Yogdrak Approval: 3.[roman type][line break]";
		now Resolution of Collapsed Tunnel is 13;
		WWQuest;
	else if calcnumber is 2:
		LineBreak;
		say "     Honestly, you'd rather just have whatever ale he is offering. That will turn you into a dwarf without the actual need to spend a whole time having sex with the more than eager dwarf. He rolls his eyes, but hands you the drink, which smells a lot like alcohol. 'It's potent stuff. I hope you can handle it.' With the potent beverage in your hands, all that it takes now is to drink it. The first sip tastes horribly, like an incredibly strong and bitter drink that stings your tongue, and just smelling it makes you a little lightheaded... 'Drink it all. You'll need a full transformation.' he tells you, and of course, you try your best to chug the entire bottle down, as much as that bothers you...";
		say "     When you're done with the drink, you give the empty bottle away, and immediately start feeling a little strange. 'I guess it's starting, your skin is changing colors... And... everything else. Wow, didn't know this would be that effective.' What, he just gave you something he wasn't sure it was going to work?!";
		WaitLineBreak;
		say "[DwarfMaleTF]";
		say "     But apparently it did. You have just become a fully-fledged dwarf, just like the scavenger, complete with a beard and all. It feels strange, glancing over the world from this new perspective now, and your movements are a little stiff at first. 'Hah, you'll get used to it, then you won't want anything else. Dwarves are sexy short hunks with thick tools... just look under your pants.' he tells you, probably to comfort you... At least his intention is good. 'Alright, then. Grab your stuff and come with me. We'll get that greathammer back.' He's very confident that you will succeed. That's great! It means he must know where to go and what to do. 'By the way, my name's Yogdrak. I suppose you can know that bit about me, since we're partners now.' He trusted you with his name, too! Is this the beginning of a new friendship? Or just temporary partnership for the same goal, knowing the likes of this scavenger...? You try not to think all that much about it, for now.";
		WaitLineBreak;
		say "     [bold type]Starting with Yogdrak Approval: 2.[roman type][line break]";
		now Resolution of Collapsed Tunnel is 12;
		WWQuest;
	else if calcnumber is 3:
		LineBreak;
		say "     You need more time before making a decision, and may even find a way to turn into a dwarf without any of his help, so you let him know that. 'Alright, you know where to find me whenever you have decided. I doubt that you could turn into one without me, anyway.' With this said, you walk away. At least the scavenger won't be hostile the next time you meet him... At least for a while.";
	else if calcnumber is 4:
		LineBreak;
		say "     Infiltrating the dwarven kingdom, stealing their things right under their noses, only because a crazy infected scavenger asks you?! No, you won't do it. Standing your ground firmly, you let him know that you won't be a part of that. 'Oh, alright then. I guess I'll go on my own, eventually. Way to ruin a friendship...' He starts walking away from you, but still adding something in the end 'I think you should stay away from my territory, then. Or I'll beat you out.' Definitely a charming fellow, but you think you've done the best thing. Sure, you won't see any real dwarves for a long time, but at least you won't get in trouble, except if you come for this scavenger again... He'll want to smash you as hard as before.";
		now Resolution of Collapsed Tunnel is 99;
		now Collapsed Tunnel is resolved;

to say DwarfQuest4: [player comes back to the scavenger after postponing their decision]
	if BodyName of player is "Dwarf Male" and Resolution of Collapsed Tunnel is 5: [player remains a dwarf]
		say "     You encounter the dwarf scavenger again, roaming the forest all by himself. He greets you, smiling at your still dwarf-like appearance. 'Hey there. Have you decided already? Or just came to me for a visit?' he asks, with a cheeky grin.";
		DwarfQuestQuestion1;
	else if BodyName of player is not "Dwarf Male" and Resolution of Collapsed Tunnel is 5: [player ceased to be a dwarf]
		say "     You encounter the dwarf scavenger again, roaming the forest all by himself. He greets you, but shows a clear disappointment in his face, as you no longer look like a dwarf as you did before. 'Whoa, seriously? No longer a sexy dwarf like me? Well, I guess we could still change that easily if you're still down for our little plan.' he says, with a cheeky grin.";
		DwarfQuestQuestion2;
	else if BodyName of player is "Dwarf Male" and Resolution of Collapsed Tunnel is 6: [player turned into a dwarf]
		say "     You encounter the dwarf scavenger again, roaming the forest all by himself. He greets you, smiling at your still dwarf-like appearance, though rather disappointed that you refused his methods. 'We could've just fucked, you know? But I guess using my stuff works as well... Anyway, what is your decision?' he asks, with a cheeky grin.";
		DwarfQuestQuestion1;
	else if BodyName of player is not "Dwarf Male" and Resolution of Collapsed Tunnel is 6: [player was never a dwarf]
		say "     You encounter the dwarf scavenger again, roaming the forest all by himself. He greets you, happy to see you again. 'Hey there, have you decided on how you want to become a dwarf, already? I'm hoping you pick [italic type]that one option[roman type]... hehe...' he says, with a cheeky grin.";
		DwarfQuestQuestion2;

to WWQuest:
	choose a row with name of "Dwarf Male" in the Table of Random Critters;
	now enemy type entry is 2;
	say "     Now with all preparations done, which included you becoming one of the dwarves, you and Yogdrak are headed towards the collapsed tunnel from before, your best bet at infiltrating the dwarves['] kingdom. However, as expected, the dwarves sealed the entrance again, denying you an easy attempt at going inside. 'Looks like the bastards knew we'd be coming for them. That or they're just paranoid. I guess it's a bit of both...' With no options left at first sight, you ask him if there's any other way of getting there. 'Of course there is. What do you think I've been doing, spending all my time in this forest rather than just heading to a lively pub and enjoy the easy drinks and sex?' He has a point, someone spending day and night in a forest must be justified with some kind of purpose! Even though your short new friend doesn't look like he's playing with a full deck, sometimes.";
	say "     'There's another entrance, one that the dwarves use to collect resources outside of their territory.' Without any further ado, the dwarf starts walking towards a specific direction, to the left of the tunnel. 'Are you going to follow or not?' You took a few seconds to start tagging along, as the first doubts that come across your mind is... Why is he going back into the woods? The distance between the rocky edge of the mountains increases, but you walk after the dwarf in hopes that he knows where he is going. Past a few trees, you head into a particularly dense area, trees and bushes almost melding together. 'The perfect place to hide something, right? I thought so too.' he says, as he begins searching the area thoroughly. 'Now, where was it... Not here... Nope... Darn, I shouldn't be drinking this much.' You have to wait a while before he finally finds something.";
	WaitLineBreak;
	say "     'Ah, there it is. Come over here.' You head to his side, and in a cleverly hidden spot, you find a trapdoor on the ground. The foliage around it makes it very easy to miss. 'If you don't know what you're looking for, you'd never find this. We dwarves are a resourceful bunch.'";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Oh, that's right. We are really resourceful dwarves. Him, especially.";
	say "     ([link]N[as]n[end link]) - We? You should probably remind him that you're not truly dwarves.";
	if Player consents:
		LineBreak;
		say "     Of course, you take the chance to compliment your new partner in crime, talking of his prowess and skill, which makes him chuckle. 'Heh, careful, I might get used to you being all that nice.' he comments, with a visible tingle in his bulge. Now that was some effective teasing...";
		say "     [bold type]+1 Yogdrak Approval.[roman type][line break]";
		increase Resolution of Collapsed Tunnel by 1;
	else:
		LineBreak;
		say "     Though your dear friend forgets you were not originally dwarves, so you feel the need to remind him of that. 'Wow, you're no fun. At all. Do you think the other dwarves will be able to tell the difference? Hah... Well, they will, but at least we fit between their contraptions.'";
	say "     But you have more important things to do, like getting in this secret entrance. Carefully, Yogdrak attempts to pick the lock with his own assorted set of tools, and within a few seconds, he succeeds, opening the trapdoor with a gleam in his eyes. 'Alright, let's get to it. Wanna go first?' he asks you, gesturing towards the way inside. You suppose there's no problem in going ahead, so you walk in. The entry is narrow, but due to your short height as a dwarf, it doesn't come out as difficult as it otherwise would.";
	say "     The descent is steep, but there is a ladder which helps a lot. It seems that this is another tunnel, except it goes completely underground, and it is pitch black. 'Heh, it's dark in here. But don't worry, I got you covered.' says your bearded friend, providing you with a flashlight. That helps a lot with seeing the way ahead of you without bumping your head on something or tripping over a rock, so you're confident enough to walk through the narrow passage forward. It is a very long way, and you take a considerable amount of time to reach a turn. Fortunately, the tunnel is unidirectional, at least until now, so you have no problem in knowing where to go.";
	WaitLineBreak;
	say "     'Hope you ain't afraid of the dark.' He whispers into your ear, behind you, then laughs. The little prick seems to enjoy taunting you even when you're allies, but that won't distract you, no. You will continue to press on until you find your way inside the ruins once more. Both your footsteps echo through the dirty dark tunnel, and a faint light dims further ahead. It won't be long until this almost painful path reaches its end, since you're approaching the only illuminated zone, even if barely. This reminds you of that area you ended up in the other time you went across that tunnel, so this must be all a network of some sort. It is a sign that you are, indeed, on the right track.";
	say "     Once your feet land on stone pavement, you turn off the flashlight and hand it back to Yogdrak, who takes it from your hand while smirking at you. 'This is it. We're in their underground ruins. I've been exploring a bit, so I think I know how we arrive at their kingdom. I'll lead the way, this time.' he says, gesturing you to keep close to him. All the paths are covered in stone, with some lit torches scattered all over the place. By following your dwarf partner, you come across a few storage rooms with old armors and weapons. 'It's pretty quiet. And some of their torches have gone off. They must all be at that wedding... Come, we need to hurry.' For a moment, you start thinking he has no idea where to go. Well, you wouldn't know, since this place looks like a labyrinth, a nightmare to navigate if you don't know where to go.";
	WaitLineBreak;
	say "     Exploring for a bit, you arrive at a wide corridor, outside of what seems to be the building you were in. Looking around, this place seems to be an entire district in ruins, built underground, with most of the edifices still whole. There is an intense dusty smell in the air. 'Look at this... That's their network. This is how they arrive at places. Y'know, if you wanted to pass through the military lines, I'm sure you could slip by here. Just be careful to not end up in their dimension.' he informs you, and that would actually make sense. Maybe it is something to consider for later, after you're done with this quest for the golden greathammer. For now, you and Yogdrak have to keep checking your surroundings for clues in order to arrive at the kingdom.";
	say "     Having decided on a specific direction, you both head on that way, into the rocky roads ahead. The place looks desolated, although you can hear what you think is wind blowing not far away from your position. Your partner is brought to attention by this. 'Wind... Ah! We must be close.' He runs ahead, and you follow, your footsteps echoing through the rocky walls as you come across an unexpected point of interest. You notice this only when Yogdrak stops in front of you, almost running him over. He's whispering, and asks you to be quiet with a gesture. 'This is definitely the way, but look over there.' You look, and see a railroad, turning to another way. Asking the dwarf what that means, he replies with an eye roll. 'Isn't it obvious? They transport stuff over there. A treasury, most likely.'";
	say "     As tempting as it may be, you have more important things to do. Unless you think [bold type]assaulting a treasury would be worth it? Yogdrak would surely enjoy it, and may be disappointed if you skip this chance.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You don't say no to treasure!";
	say "     ([link]N[as]n[end link]) - No, you're here for the greathammer, and that's where you are going.";
	if Player consents:
		LineBreak;
		say "     Why would pass up this opportunity? No way you could give up on acquiring a little extra treasure on your way up. 'Hell yeah! Let's get started! Hopefully they won't have too many guards keeping the place... Safe. But if they do... Hehe.' he chuckles, as if he had a trick up his sleeve. Knowing him, he probably does.";
		WWTreasury;
	else:
		LineBreak;
		say "     Shaking your head, you pull Yogdrak's arm and head towards your previous goal, telling him you'd prefer to head into kingdom directly and that it isn't worth to rob a treasury. 'What?! You can't be serious! With so many riches in there? Are you seriously going to pass up this opportunity?' He doesn't look very happy with your decision, but you calmly attempt to explain him why...";
		WaitLineBreak;
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Charisma Check):[line break]";
		if diceroll + bonus >= 10:
			say "     Fortunately, you manage to bring him to his senses, and he ends up giving you the credit. 'Yeah, yeah okay, sure, you have a point. Wouldn't want to have an entire civilization after us for stealing their treasures, and that could alert the guards up ahead and stuff... Fine. We'll continue heading towards the kingdom, instead. All I care about is that gorgeous greathammer, anyway.' You breathe in relief, as you don't want an angry dwarf partner, either.";
			say "     [bold type]+1 Yogdrak Approval.[roman type][line break]";
			increase Resolution of Collapsed Tunnel by 1;
		else:
			say "     However, not even your best efforts are capable of convincing Yogdrak that this is a bad move. 'Seriously? We really are going to give up extra treasure, just like that? Damn, why did I bring you along... Could have hired a thug, instead.' At least you managed to stop him, though he's definitely not happy with it. Guess you will have a slightly grumpy dwarf partner, at least until he cools off.";
		WWDKingdom;

to WWTreasury:
	say "     Making the turn towards where the railway leads, which is to your right, you make the small climb up to the crossing, then glance around carefully to make sure there are no eyes watching you. Noise is also reduced to the maximum possible, as you both sneak on your tiptoes while moving across the way leading into this point of interest. Eventually, you find opposition. At the door of the building you find, nobody is guarding the entrance, though you can hear raspy male voices inside. Dwarves, you're sure, but they don't seem to have their guards up. Instead, they are engaging in a group conversation, it seems. Yogdrak looks at you, whispering 'That's good for us. Let's look closer.' as you tag right behind him. Upon closer inspection, you notice the guards having a cheerful chatter with a few drinks, four in total, with the heaviest components of their armor removed. They are relaxed.";
	say "     'This is an easy one. Though they still outnumber us... Here, use this.' He hands you some kind of... Grenade?! You ask him if he really wants to blow them up. 'No! That's just a few libido pills mixed up in harmless gas. When it detonates, it's gonna make them debilitatingly horny for a long time... Hehe.' Now, while certainly that is better than exploding their heads, you'd still be throwing a lust-inducing bomb into a room with a group of joyful guards, enjoying their leisure time during happy festivities, then rob them blind and possibly risk their jobs... But who cares about that when you want to get your hands on their valuables? Shouldn't be a problem to [bold type]get this plan working[roman type] or, if you're having second thoughts, you can always just [bold type]give up on this idea[roman type]. Yogdrak won't be happy about it at this point, even if you attempt to persuade him, but it's a choice you can make.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Throw in the (safe) bomb!";
	say "     ([link]N[as]n[end link]) - No, this is too much. Just head back.";
	if Player consents:
		LineBreak;
		say "     [bold type]+2 Yogdrak Approval.[roman type][line break]";
		increase Resolution of Collapsed Tunnel by 2;
		say "     You both look at each other, then as per mutual agreement, Yogdrak grabs his little invention and sets it for the action. Working just like a grenade, all he has to do is pull the safety pin, then make the throw. The bomb lands right by the dwarves['] feet, and as distracted as they are, it takes them some time to realize what it is. They don't have time to react before it starts to release its lust-inducing gas, filling the room with a pale pink smoke. 'Close your eyes and hold your breath, wait for it to dissipate, then go in.' says your dwarf companion, and you do so immediately, else you wanted to spend your next several minutes debilitatingly horny. They cough at first, as the fog is thick, though soon enough, you start seeing the intended effects.";
		say "     The knights begin to feel each other, all four of them, and soon they're kissing, groping bulges and rubbing their bodies together. Besides the metallic sound from the clashing of armor pieces, you're able to hear them moan and grunt in lust, and it doesn't take long until they start to undress. The first thing you see is all those dwarves removing their upper gear, revealing their powerful torsos and bulging muscles only a seasoned warrior would have, and their fuzzy man pillows of pecs colliding between each other[']s, playing with nipples while sharing tongue kisses. Soon, not even their legwear remains, some quickly becoming bare ass naked with their thick dwarf cocks proudly erect and throbbing...";
		WaitLineBreak;
		say "     Obviously, you haven't kept your eyes closed. Not even Yogdrak, and you're both visibly turned on. Part of you just wants to grab him and have some wild sex right here, but... You did have a goal to serve. 'If we're quick, we can get past them now without... Ah, fuck that. I'm down for an orgy with those guys if you're in, too.' He tells you, your eyes landing on his prominent boner poking right through his pants. You can't talk much, as yours is just as stiff and throbbing... [bold type]Do you want to forget about the treasure and join the orgy? Or just try to get past them for the riches, instead?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You can't help it. You want some group dwarf fun!";
		say "     ([link]N[as]n[end link]) - Treasure comes first. Let's not waste this opportunity.";
		if Player consents:
			LineBreak;
			say "     [bold type]+1 Yogdrak Approval.[roman type][line break]";
			increase Resolution of Collapsed Tunnel by 1;
			say "     Who cares about gold, jewels, money, or any other kind of riches when you have a group of handsome dwarves, with their muscular bodies on display, rubbing each other, out in the open for anyone to watch? And with the chance of joining them without any repercussions? They're so drunk in lust they won't even notice you're outsiders, neither really true dwarves, and you get to enjoy some fun with so many of them at once... 'You're in for a quickie with these dudes? That will be worth it alone.' Look like Yogdrak is as eager as you are, and with a nod, you two slowly walk up to the dwarves, who are already hard at it, boners free of any restraint. With this many hot dwarves, the many possibilities begin to arise in your mind...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Get in the middle of the circle.";
			say "     ([link]N[as]n[end link]) - Push Yogdrak right into the middle.";
			if Player consents: [player gets a gangbang]
				LineBreak;
				say "     You want all that thick meat for yourself, and nothing better to achieve that than heading straight into the middle of them. But, even as oblivious as they currently are, you can't just pop in. Instead, you make a slow approach, mixing with the group of dwarves by caressing their bodies gently, putting a hand on one's shoulders, feeling another's fuzzy glutes, making out with the bulkiest dwarf who's in front of you, all the while Yogdrak follows right behind you, greatly appreciating your choice. Just as you thought, neither of the four dwarf knights are aware of your intrusion, even welcoming you into their embrace. One thick hand cups your chin, as many others rub down your body from all angles once you reach the center, and Yogdrak simply shows a grin on his face while he tugs on his boner.";
				say "     Naked by now, it's time to get down on your knees and service the group of horny dwarves, all aching for lust and desire. Five extra thick meat logs - that includes Yogdrak's - of various shapes and sizes, are pointed at you, throbbing and leaking precum, inviting you to take a taste of each, one at a time. Surely your partner wouldn't waste this opportunity to participate in a circle jerk that will ultimately cover you in jizz, but in order to get there, you have to please the group with all your skill at handjobs and blowjobs. Taking one of the eager cocks in your mouth, you slip your tongue all over the tip before you let it in between your lips, while you grab other two, providing them all the pleasure you can offer.";
				WaitLineBreak;
				say "     Moans and grunts are a constant around you, and you can't help but be jerking your own manhood while you take all of these cocks, one by one, in your mouth, their delicious juices coating your tongue in a strong and salty taste, only encouraging you to suck more and more of each and every one of them. While they wait, the dwarves jerk their own boners until they feel either your hands or lips wrapped around them, then it's all up to you to provide them with the pleasure they crave. Often, they're using their hands to grab your head and push their dongs all the way in, getting progressively more daring and desperate for that sweet release. It is too late to avoid being their cumdump now, though that was most likely your intention all along.";
				say "     With so much eagerness from the knights, you eventually end up having two dicks trying to invade your mouth almost against your will, if you weren't so turned on by all the action, and as if it wasn't enough, you catch a glimpse of Yogdrak teasing and caressing some of the other dwarves just to get them hornier and wilder. It is not long until you're getting facefucked by every single one of them, one dick after the other as you're rotated between them for the effect, taking their entire lengths down your throat until their hairy plump ballsacks hit you right on the chin. You've got no control over the situation anymore, your mouth is getting used and abused by the group of dwarf knights - and your opportunist partner - to their heart's content, and [if Player is submissive]you can't help but feel incredibly turned on for having succumbed to your submissive instincts, while your jaw and throat are stretched by their thick logs, you becoming their cocksucker bitch[else]the whole action gets you really turned on, with so much grunting happening around you[end if] and about to get five generous loads dumped in and on you.";
				WaitLineBreak;
				say "     Their breathing gets deeper, more intense, their movements grow desperately horny and needy, your throat being pounded mercilessly by one, then another, and another, not spending more than several seconds on the same cock. So much facefucking is starting to leave you dizzy and lightheaded - or is that the manly dwarf musk getting in your brain - though all things eventually reach an end. One of them starts grunting really loud while jerking his cock, and you're pushed towards him as he just explodes all over your face, each spurt thicker than the last, giving you plentiful of cum splattered right around your cheeks and lips, sliding down your jaw and neck and dropping all the way down to your legs.";
				say "     Another does the same, as you're also forced to face his huge load right in the front, while your mouth is kept open. This time, you get a big portion of the first shots in your mouth, creamy and tasty jizz having coated your tongue, as the rest falls again on your face, some down to your chest... then another follows, landing on your left cheek, ear, and nearly hitting your eye, getting all over your shoulder and arm, while the same is happening on the other side. Completely coated in cum, your dwarf friend pulls you to him, shoves his big meat all the way down your throat, and finishes off with his entire load dropping right in your stomach, emptying his balls completely as he grunts in satisfaction. He makes you look at him in the eye, a mischievous smirk drawn on his face while he feeds you his own seed until the last drop.";
				WaitLineBreak;
			else: [Yogdrak gets gangbanged instead]
				LineBreak;
				say "     You want Yogdrak to get all that thick meat for himself, and nothing better to achieve that than pushing your dwarf companion straight into the middle of them. But, even as oblivious as they currently are, you can't just pop in. Instead, you make a slow approach, mixing with the group of dwarves by caressing their bodies gently, putting a hand on one's shoulders, feeling another's fuzzy glutes, making out with the bulkiest dwarf who's in front of you, all the while you slowly insert Yogdrak in the middle of the circle, a little hesitant and confused about your choice. Just as you thought, neither of the four dwarf knights are aware of your intrusion, even welcoming you into their embrace. One thick hand cups your friend's chin, rubbing down his body from all angles once he reaches the center, and eventually he gets used to the idea. His raging hard-on doesn't let him lie.";
				say "     Naked by now, it's time for Yogdrak to get down on his knees and service the group of horny dwarves, all aching for lust and desire. Five extra thick meat logs - that includes yours - of various shapes and sizes, are pointed at him, throbbing and leaking precum, inviting him to take a taste of each, one at a time. Surely you wouldn't waste this opportunity to participate in a circle jerk that will ultimately cover a sexy dwarf like Yogdrak in jizz, but in order to get there, he will have to please the group with all his already shown skill at handjobs and blowjobs. Taking one of the eager cocks in his mouth, he slips his tongue all over the tip before letting it in between his lips, while grabbing other two, one of them yours, providing them all the pleasure he can offer.";
				WaitLineBreak;
				say "     Moans and grunts are a constant around you, and you can't help but be jerking your own manhood while Yogdrak takes all of these cocks, one by one, in his mouth, while you await your turn. The dwarves do the same, jerking their own boners until they feel either his hands hands or lips wrapped around them, then it's all up to your friend to provide them with the pleasure they crave. Often, they're using their hands to grab his head and push their dongs all the way in, getting progressively more daring and desperate for that sweet release. It is too late for Yogdrak to avoid being their - and your - cumdump now, though making him so was most likely your intention all along.";
				say "     With so much eagerness from the knights, he eventually ends up having two dicks trying to invade his mouth almost against his will, if he wasn't so turned on by all the action, and maybe you can [']help['] by teasing and caressing some of the other dwarves just to get them hornier and wilder. It is not long until Yogdrak is getting facefucked by every single one of them, one dick after the other as he's rotated between you all for the effect, taking their and your entire lengths down his throat until the hairy plump ballsacks hit him right on the chin. Neither of you have control over the situation anymore, his mouth is getting used and abused by you and the group of dwarf knights to your heart's content, and the whole action gets you really turned on as well, with so much grunting happening around you as he's about to get five generous loads dumped in and on him.";
				WaitLineBreak;
				say "     Their breathing gets deeper, more intense, their movements grow desperately horny and needy, your partner's throat being pounded mercilessly by one, then another, and yours, not spending more than several seconds on the same cock. The manly dwarf musk gets really intense all around you, and as things continue, you feel yourself at the brink of orgasm, and you're not the only one. One of them starts grunting really loud while jerking his cock, and Yogdrak is pushed towards him as he just explodes all over his face, each spurt thicker than the last, giving him plentiful of cum splattered right around his bearded cheeks and lips, sliding down his jaw and neck and dropping all the way down to his legs.";
				say "     Another does the same, as your companion is also forced to face his huge load right in the front, while his mouth is kept open. This time, he gets a big portion of the first shots in his mouth, creamy and tasty jizz having coated his tongue, as the rest falls again on his face, some down to his chest... then another follows, landing on his left cheek, ear, and nearly hitting his eye, getting all over his shoulder and arm, while the same is happening on the other side. Completely coated in cum, you pull your dwarf friend to yourself, shoving your big meat all the way down his throat, and finish off with your entire load dropping right in your stomach, emptying your balls completely as you feel his throat muscles clenching around your shaft. He looks at you in the eye, giving you a mischievous wink as he swallows your whole seed until the last drop.";
			WaitLineBreak;
			say "     Having spent this time with the lust-drunk dwarf knights, you too have inevitably breathed traces of the lust-inducing gas, and are still left incredibly horny after all the action. Having the group of horny hairy shorties rubbing your bodies all over and inviting you to stay for longer definitely doesn't help, and you're all still left with raging boners that are impossible to get rid of. With this, you spend some more time caring for your needs and giving the knights all your attention, sucking and rubbing some more cocks, making loads come out, all the grunting and the moaning echoing in the room... Over and over again, until exhaustion takes place and you're finally able to gain a hold of your mental faculties again.";
		else:
			say "     [bold type]Your decision will have consequences...[roman type][line break]";
			now Resolution of Wedding Wreckers is 2; [Bad rep]
			say "     As hot as it sounds, money talks louder... Well, at least in this specific case. You snap Yogdrak out of his lusty thoughts and set your path towards the vault behind them. Doing your best to sneak around and not breathe any of the intoxicating gas, you both make your way around the knights, who are by now sucking each other[']s dicks or tugging on them, completely distracted from everything that could happen around them. This is good for you, as it allows you to approach the vault's door without any issues. Luckily, the dwarves don't use any kind of unbreakable locks, although this one is pretty tough. You could [bold type]give it a shot yourself, or just let Yogdrak handle it[roman type]. After all, he's very used to this kind of thing.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Try to pick the lock.";
			say "     ([link]N[as]n[end link]) - Let Yogdrak do the lockpicking.";
			if Player consents:
				LineBreak;
				say "     Might as well give it a try, since you're already at it... Yogdrak hands you a batch of lockpicks and you're ready to make a serious attempt.";
				let bonus be (( dexterity of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
				if diceroll + bonus >= 15:
					say "     Thanks to your high dexterity, you manage to pick the vault's lock without breaking too many lockpicks, and soon, you're able to push the door open. 'Looks like you know your way around locks... good to know.' comments your dwarf partner, chuckling. Probably a sexual pun about keys and locks, you're sure, but whatever the case, the vault's door is open.";
					say "     [bold type]+1 Yogdrak Approval.[roman type][line break]";
					increase Resolution of Collapsed Tunnel by 1;
				else:
					say "     Unfortunately, your skill for this is not high enough. You end up breaking so many lockpicks that Yogdrak loses his patience and takes over. 'Here's how you pick this lock. Watch closely.' he tells you, before doing a masterful show at opening the vault's door, eventually pushing it open. 'See? Now this is how you handle a lock. Hope you've learned.' he says, probably with a sexual pun about keys and locks in mind, you're sure, but whatever the case, the vault's door is open.";
			else:
				LineBreak;
				say "     Better let Yogdrak handle this. By telling him so, he walks forward, facing the lock, and grabs a lockpick. After a few tries, he manages to pus teh door open. 'See? This is how you handle a lock. Hope you've learned something.' he says, probably with a sexual pun about keys and locks in mind, you're sure, but whatever the case, the vault's door is now open.";
			say "     Well, now for the amount of treasure you find... It's mostly ores and ingots. Slightly disappointing, in fact. 'Ugh, of course this treasury had to be all construction and crafting materials. Ugh... Dwarves value their materialistic independence more than money itself, I suppose. But hey, let's check around and see what we can find. Maybe there's some stuff we can sell.' It would be foolish to reach this point and leave empty-handed, so you start searching the place thoroughly. Between more ingots, raw ores, rocks and stones that you think must be of some value, you do manage to find a few boxes with jewelry. Calling Yogdrak immediately, his eyes gleam with greed and ambition. 'Aha! I knew it! Get as many as you can, we're going to get significantly richer!'";
			WaitLineBreak;
			say "     You can only fit so many jewels in your limited pockets, but after all this work, you should fill them generously. They will be worth a couple of freecreds once you arrive back at the surface. For now, you'll have your share of the spoils, while Yogdrak takes his. 'Alright, fair division. Now, it's about time we take our leave. I don't think the knights will last for long.' he says, and he's right, because they're really hard at it and probably about to hit their orgasms. While it's very tempting to sit and watch, you have other places to be, and your dwarf friend is rather impatient. Greed always makes him careless about his surroundings...";
			say "     You have acquired [bold type]Dwarven jewelry[roman type]. (Event Item)";
			now Resolution of Wedding Wreckers is 4; [bad rep with treasure]
		WaitLineBreak;
		say "     As you're preparing to leave the room, Yogdrak makes an important observation. 'Hey, might as well snatch two sets of armor while we're at it. We might need them to infiltrate the place wherever they're hosting the wedding.' Indeed, it's one of the possible ways of gaining entry, but it will inevitably deny you of any sneaky options, as the armor is loud and heavy. Though, it might be your best choice, and you doubt these knights will even remember someone was here. Do you wish to [bold type]take a couple of sets of dwarf knight armor with you[roman type], while the dwarves are still recovering from their lusty ordeal, or [bold type]rely on stealth tactics in order to get to the greathammer[roman type]? The latter might be riskier, however, so weigh your options carefully.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take two sets of armor.";
		say "     ([link]N[as]n[end link]) - No need, you're [italic type]dexterous[roman type] enough to be sneaky.";
		if Player consents:
			LineBreak;
			say "     Better safe than sorry, and if this is to increase your chances of success, you'll do it. You consider that taking the armor is the best call, so you let Yogdrak know. 'Alright, I'd say... get changed into the attires right now. Will make it all easier.' Agreeing with him, you grab one set that would fit you the best and equip it, taking some time to put on everything and make sure it's all in order. Yogdrak does the same, and soon, you're both looking like two completely ordinary knights, with the helmets to make sure nobody can see your faces. 'Ready for the robbery! I mean, for the duty of keeping guard, of course. We're honorable knights. Yeah.' Shrugging, you make your way to the exit of this area, gesturing the dwarf to follow you at once.";
			if Resolution of Wedding Wreckers is 0: [good rep]
				now Resolution of Wedding Wreckers is 1; [good rep + armor]
			else if Resolution of Wedding Wreckers is 2: [bad rep no treasure]
				now Resolution of Wedding Wreckers is 3; [bad rep + armor]
			else if Resolution of Wedding Wreckers is 4: [bad rep with treasure]
				now Resolution of Wedding Wreckers is 5; [bad rep + armor + treasure]
			WaitLineBreak;
		else:
			LineBreak;
			say "     No need. You're more than capable of sneaking around, and you're sure there will be a way to successfully do it. Shaking your head, you tell Yogdrak that they won't be necessary. 'What, really? Well, if you have a better idea...' He doesn't seem like he's trusting your jugdement, but goes on with your line of thought, at least for now.";
			WaitLineBreak;
		WWDKingdom;
	else:
		say "     There's no way you can do this to them. The dwarves are a pure civilization, without the effects of the nanites, living in relative peace... You're not going to disturb them. Grabbing Yogdrak by his arm, you leave the vicinity, back to the crossing. 'What?! You're giving up on the riches?! But it would be so damn easy!' You explain yourself, defending that going straight for the golden greathammer is a more just and better plan. He doesn't seem convinced. 'Sure. Let's hope we get that, at the very least, without you having second thoughts in the last minute.' He's grumpy now, but that will pass. Yes, you're sure... Maybe...";
		WaitLineBreak;
		WWDKingdom;

to WWDKingdom:
	say "     As you continue further ahead, past the turn towards the treasury vault, the sound of people talking and footsteps echo through the walls. This only means you're approaching an urban center, which is the dwarven kingdom. You can't see it yet, as the climb is still long, but eventually you make it to the end, leaving the underground rocky corridors behind. This place is... Still underground, but it's very wide and well illuminated, despite that. Their constructions don't spread in width, but more in depth. Divided by districts, some above, others below, this civilization seems incredibly well organized within the available space. 'As I've said, dwarves are a resourceful bunch. They can pull off anything they set their minds to.' says your partner, who seems absolutely mesmerized by the landscape that the city forms in front of you.";
	say "     Yogdrak then points at one specific building. 'There. That's where they're going to host the wedding. Must be the... Order of the dwarf knights or whatever embassy. I mean, it's always an order, isn't it?' he informs you, and it's very possible they have some kind of neo-medieval designation for their kingdom's organs. This specific edifice has an [']U['] shape, so it is possible that the ceremony is being held in a cloister on the backside of the building. That means you will have to get past the entrance and all the knights keeping guard by the frontside of the place. But first things first, you will have to enter the city, which shouldn't be too difficult. You're both looking like dwarves, and the infection is not widely known by them, luckily for you.";
	WaitLineBreak;
	say "     As you have predicted, it was fairly easy to get inside the premises. Nobody asked a question about your identities, and you are seen just like normal dwarves. 'Hehe, no one suspects a thing. Managed to slip inside so easily right under their noses. I can already feel that gorgeous in my hands...' says Yogdrak, clearly daydreaming about his much wanted greathammer. He is very possessive about it, you can't help but wonder if that will pose a problem in the end... But that shouldn't be your worry, right now. Past the way between the tunnel leading back to the surface and the first signs of civilization, you eventually enter the city. Houses are mainly built with stone, as you would have guessed, a type of material that is quite abundant for a race that lives underground and is consistently mining. It's then obvious where the excess amount of rock goes to.";
	say "     You don't think they have any kind of widely distributed power source in here. From what you see, it's only steam-based technology with the use of coal, and mostly used for smelters, lights and fire. This is really an otherworldly place. 'They live for their work. I bet some of them never get tired of mining and building. Such fascinating men and women, don't you agree? Although... It's curious how you don't see as many female dwarves around, isn't it? Do they keep their women in the kitchens like the sexist pricks back in our society from some time ago? Or perhaps... Men mine and women cook? I can't say which one I'd prefer.' He surely asks questions about the dwarves' ways of living, but the answers will have to be left for another time. You're approaching the Knights' Embassy, where the wedding will be hosted.";
	WaitLineBreak;
	if Resolution of Wedding Wreckers is 0 or Resolution of Wedding Wreckers is 2 or Resolution of Wedding Wreckers is 4: [no armor]
		say "     Now, onto the sneaking part. How are you going to do this? That's a good question. The entire place is filled with guards, and entrance is not gained so easily. 'Heh, looks like we'll have to do some wall jumping and pray nobody sees us. This place is really out in the open.' says Yogdrak, with a lot of hidden positivity in his speech, you're certain. No irony at all. But none of that will help you get past the security and inside the building, so you both lay out an infiltration plan, study the best angles to get inside unseen, and calculate your chances meticulously. After a good while, you arrive at a conclusion that you both agree with. 'Alright, let's go for that corner. The wall isn't that hard to climb, and there isn't a lot of vigilance in that area.' With the lack of a safer approach, this is what you decide to do.";
		say "     Approaching the targeted area, both you and Yogdrak swiftly move towards the assigned positions. Indeed, the wall isn't that much hard to climb, as it isn't that very tall and you've got some support with a few objects laying around, as well as cover from neighboring edifices. Very conveniently, but you suppose the dwarves never really had any urgency in analyzing every single vulnerability spot of a single building. All the better for you, though. With enough effort, you manage to find a climbable path and bring yourself upwards, with one foot on top of a crate and your hands pulling your weight to the upper side of the wall. Then, you help Yogdrak the same way, and quickly, you fall down to the other side.";
		WaitLineBreak;
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 13:
			say "     As your dwarf friend lands next to you, he urges you to rush towards the wall before one of the armored dwarves spots you. Thanks to your speed and agility, you managed to stick close to him without alerting anyone. 'Close call. Good job.' he commends you, and fortunately you're both safe and ready to sneak into the edifice. There shouldn't be so much of a problem once you're inside, as most of the guards are out there in the courtyard. Yogdrak gestures you to climb up a window that's just a few meters away from where you're standing and into the edifice.";
			say "     [bold type]+2 Yogdrak Approval.[roman type][line break]";
			increase Resolution of Collapsed Tunnel by 2;
			WaitLineBreak;
		else:
			say "     As your dwarf friend lands next to you, he urges you to rush towards the wall before one of the armored dwarves spots you. You try your best to accompany him, however, your presence is immediately noticed by the guard, and he calls out for you. 'Darn! He saw us! Don't make a noise. I'll handle the situation.' he reassures you, as the guard approaches your position with his weapon ready. Just as he comes closer, Yogdrak launches himself from a hiding position at the guard with a large rock in hand, smashing his head with it and knocking him down. You were in luck that he wasn't wearing a helmet! Serves him right. 'Phew... So much for sneaking, huh. Should've grab sets of armor instead, would be simpler to get in. Anyway, there shouldn't be so much of a problem inside, as most of these guys are out there in the courtyard. Come on.' he gestures you to climb up a window that's just a few meters away from where you're standing and into the edifice.";
			say "     [bold type]Your failure will have consequences...[roman type][line break]";
			if Resolution of Wedding Wreckers is 0: [good rep]
				now Resolution of Wedding Wreckers is 2; [bad rep no treasure]
			WaitLineBreak;
	else: [armor]
		say "     Good thing that you brought the knight armor. Indeed, it is easy to gain access to its interior like this! All you have to do is pretend you're honorable dwarf knights just like the ones in there, and pass by as if you were on duty. You simply walk past the entrance, adopting your most credible walking method and pacing together with Yogdrak, and you're inside! But before you thought it was all peace and roses, you encounter a little unexpected thorn in your way. Another armored dwarf, walking towards you while gesturing for you to halt your march. 'You two! I must have a word.' he says, the intimidating white bearded dwarf with his deep and well projected voice, looking way more experienced than any you have encountered in the past. It must be an officer. Did he see right through your disguises?";
		say "     'I cannot comprehend one thing. And it is why you are walking without your weapons! What if an enemy appears? Or a unseen threat! A kobold, for example?! What do you have to defend the civilians? Your empty princess hands?!' Oh, he's just lecturing you for walking without one of their weapons of choice. He's right, that is part of the attire, but part of you is glad he didn't stop you for any other reason. 'Uh... Yes, sir!' says Yogdrak, reflexively, his stance stiff like a recruit, though his reply is received with a frowned eyebrow from the officer. You simply stand at attention and nod your head apologetically. 'Go grab some inside, and be very careful with them. If anything happens to these weapons, it shall be deducted from your salary.' He then lets you go, attending to his own duties.";
		WaitLineBreak;
		say "     'Wow, that was pretty close. I thought we were busted for a second. Anyway, looks like the ceremony still hasn't began. We have plenty of time to get inside the building and start looking for the hammer's location. Where would they put it...? Maybe by the dining hall? Since it's a groom's gift... Yeah, though we can't get through all these people, we'll have to find a way from within the edifice. Come.' says Yogdrak, gesturing to you as you follow after him inside the embassy. Being able to walk freely surely made it worth bringing these sets of armor. Let's just hope the knights back at the treasury never come look for them... Though you do get rid of them while nobody is looking, as it is much easier and less noisy to walk around with your regular clothes, instead.";
		say "     [bold type]+1 Yogdrak Approval.[roman type][line break]";
		increase Resolution of Collapsed Tunnel by 1;
		WaitLineBreak;
	WWKEmbassy;

to WWKEmbassy:
	say "     Now all that's left to find is your way to the banquet room, where Yogdrak thinks they might be keeping the greathammer. As you calculated, the embassy is nearly empty. There's nobody inside, and whoever is left seems to actually be walking towards the cloister outside. 'This is good for us. Less people to worry about.' he says, and that's true, your way has never been cleaner. With everything going so smoothly, you're starting to think this entire crazy plan will be over soon, and that you will be successful, which is a relief.";
	say "     The corridors are all very rustic in decoration, often featuring portraits of great knights, officers, agents, commanders, anything that you can imagine, adorning the halls, with the occasional rack of old armor from other times. But dwarves are very practical, otherwise. Absolutely no carpets whatsoever, only stone floor. There's shelves too, probably filled with reports and logs, or other kinds of books. Some parts look more like a library, or a museum, rather than the place where they meet for military diplomacy. 'Aye, I suppose dwarves are very respectful of their own history, and take pride in showing it off. As the embassy that represents the order of the knights, it has to contain all the treasures, facts, even letters, regarding the people who served alongside them in the past.' If you never thought the dwarves would be so sentimentalist about their own hard work, now you have enough evidence to go with that line of thinking. They're a fascinating civilization.";
	WaitLineBreak;
	say "     And, unexpectedly or not, you suddenly hear the bells being hit. 'That's the ceremony beginning, alright.' Looks like the wedding is about to begin, which means now it's a good time to go fetch the hammer before they are all called for the banquet. Going through more corridors and halls, you eventually reach the connection between the courtyard and the banquet room. There's food already there, but nobody dares to touch it while the wedding music plays and as the bride... wait, no, there's no bride. From the window you're peeking from, you can see two male dwarves making the walk towards what you think could be the priest... Well, he has white robes and a funny hat, so that must be it. 'Two guys marrying... That's cute. Now, I spotted the hammer. There, that white sheet. The shape is unmistakable' he tells you, pointing at one of the corners in the room.";
	say "     Indeed, that looks like it. There it is, your prize, the thing you've been looking for all this time, for all this work... Though you can't help but watch the ceremony for just a little bit. All dwarves, with smiles on their faces, and you can actually see some female ones, this time! They're all observing the handsome couple of suited dwarves walking in the middle of them towards the welcoming priest. Though... Yogdrak looks impatiently at you. 'There's the hammer right there! Let's grab it and get the hell out of here! Do you want to waste this opportunity?!' he uses a very demanding tone, one that you haven't seen in a bit. Though you don't have to do as he says... Even if you observe for just a while longer, you will have plenty of time to snatch the greathammer and run.";
	say "[bold type]Do you insist in watching the ceremony? Yogdrak may react differently depending on how well he sees you...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay and watch for a tad longer. This is an unique chance.";
	say "     ([link]N[as]n[end link]) - Let's just get the hammer, you've already seen what's important.";
	if Player consents:
		LineBreak;
		say "     You're not going to drop the opportunity to watch a cute couple of two dwarf men getting married, and there's still plenty of time to grab the weapon and escape, so you manage to convince Yogdrak to stay and watch.";
		if Resolution of Collapsed Tunnel >= 15:
			say "     [bold type]+2 Yogdrak Approval.[roman type][line break]";
			increase Resolution of Collapsed Tunnel by 2;
			say "     'Ugh... Fine... I guess that's a cute sight, alright, I don't judge you...' he says, though you catch a hesitant and different feeling from him. Is your company getting him soft-hearted? Whatever may be the case, he actually stays next to you, watching the ceremony going.";
		else:
			say "     [bold type]-1 Yogdrak Approval.[roman type][line break]";
			decrease Resolution of Collapsed Tunnel by 1;
			say "     'So we have to watch two random dwarves getting married, now. Yay.' he says, pretty annoyed at your decision, but he kind of respects it. He's just not happy with it one bit, often looking at the hammer instead while your eyes are fixated on the ceremony going.";
		WaitLineBreak;
		WWCeremony;
	else:
		LineBreak;
		say "     With your prize so close, you can't really bother yourself with watching the rest of the ceremony. Not now, at least. 'Yeah, let's go get the hammer and piss off. No time to watch two random dudes getting married.' Yogdrak doesn't seem to care, either.";
		if Resolution of Collapsed Tunnel >= 15:
			say "     [bold type]+1 Yogdrak Approval.[roman type][line break]";
			increase Resolution of Collapsed Tunnel by 1;
		WaitLineBreak;
		WWEnd;

to WWCeremony:
	say "     From here, you actually have a good view at the scenario. Benches scattered all over the place in an orderly fashion, facing the altar, while the two happy dwarves attentively listen to the priest making his usual speech. It is not much different than how it happens in your place, except some detail in what the priest says, the entities he mentions, the values they prioritize, which is mostly honest work, collaboration and family building, rather than faithful love and unbroken bonds. Dwarves are very practical in their approach, they face their adversities with logic and their very own effort, and that includes love. This is not to say that they don't marry for love, but there surely is a more realistic and physical bond, rather than a spiritual one, that they value the most. They even craft their own wedding rings, to give to their spouse upon the marriage act. They choose which gems to include, creating a message with the meaning of each in a specific order. Everything, from the design to the product, is to be made by both the bride and the groom, or in this case, both grooms.";
	say "     Looking at both, you can actually identify which one is the knight who is to receive the greathammer as the gift. The one with the broader shoulders and straight up posture reveal his military background and are too obvious to go unnoticed. Both are wearing colorful fancy suits, really much like the nobles from the medieval eras, except the shape of these are very similar to the modern suits. The biggest different is the use of formal scarves instead of ties, and the details on their shirts and jackets, which are much more elaborated. Their shoes are brown, with round tips, but not at all less fancy than the rest of the attire. The choice of more colorful outfits is actually beneficial to the scenario, as it's mostly rock and stone. No greenery where the sun doesn't shine, sadly.";
	WaitLineBreak;
	say "     By the time the priest is finished with his sayings, it is time for both the dwarves to exchange their wedding rings. With tenderness, the brown-haired dwarf grabs his future spouse's left hand, whose hair is dark, and says his vows before sliding the ring in his thick thumb finger. Now, curiously, this seems to be the go-to finger for their rings, indeed. You can't quite make out all the details from the piece of jewel, but it has a few gems on it. The dark-haired dwarf now does the same for his love, and you can see as they're both looking at each other in the eye, from their almost shining gaze, that they are so ready to kiss. And it happens once the priest says they can, both bearded mouths joining together for a passionate kiss, consummating the marriage at last.";
	if Resolution of Collapsed Tunnel >= 15:
		say "     You look at Yogdrak, his eyes a little red... Did he get emotional? 'No, this is not what you're thinking. Something got in my eye! Fricking dust, ugh, I hate this place. Can we... can we get going now?' he asks you, avoiding eye contact. Well, it seems like there isn't much else to see other than the grooms walking to the... Oh no, guess you don't have much time now. You tell your dwarf partner that yes, you can go now, and you move towards the hammer immediately.";
	else:
		say "     You look at Yogdrak, who is looking back at you with a killer gaze. 'Can we get going now? Happy? Should have taken a picture or film it, so you can rewatch that. At least would be more worth instead of wasting my time.' Well, he's not happy, but at least you did what you wanted. And it seems like there isn't much else to see other than the grooms walking to the... Oh no, guess you don't have much time now. You tell your dwarf partner that yes, you can go now, and you move towards the hammer immediately.";
	WaitLineBreak;
	WWEnd;

to WWEnd:
	say "     This is it. You are now in front of the golden greathammer, still covered in a white sheet by the time you make it there, and confirming that it's the same weapon once Yogdrak lifts it partially. 'Yeah, this is it! The most beautiful, and probably valuable, greathammer of all times! Let's teach these dwarves that they cannot mess with us. We'll steal back what they steal from us!' Well, technically you stole it first, but that's irrelevant for the time being, you suppose. Although... There is still one decision to make. There's a couple out there who is getting married, and one of the grooms will receive this hammer. By taking it, you will create a stress that will most likely ruin this perfect moment. You will be no better than a bandit, but you will have a powerful and valuable weapon in your possession if you choose to take it. But [bold type]do you really need it?[roman type][line break]";
	say "     'Alright mate, time to snatch this and head back to our world. I've had enough of underground environments.' You see him trying to take the hammer by himself, but the sheet is getting in the way. 'Ugh, could you help me out, here? I don't want to make a fuss as I'm trying to remove this.' Standing in front of him, you watch, considering your options...";
	LineBreak;
	say "     [link](1)[as]1[end link] - Help him out.";
	say "     [link](2)[as]2[end link] - Help him out by grabbing the hammer yourself... then betray him.";
	say "     [link](3)[as]3[end link] - Do not take the greathammer.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to help him out with the sheet, [link]2[end link] to grab the hammer while he takes the sheet out and then betray him or [link]3[end link] to not take the hammer.";
	if calcnumber is 1:
		LineBreak;
		say "     [bold type]+2 Yogdrak Approval.[roman type][line break]";
		increase Resolution of Collapsed Tunnel by 2;
		say "     This is what you came for, and you're not going to leave without it. Rushing to his side, you do your best to uncover the weapon quietly, as Yogdrak finally manages to grab it. 'Ohh, this baby is finally ours, again... Such a magnificent piece of art. I'd keep it and snuggle with it at night...' he says, with a big smile on his face. The greed of this dwarf...";
		if Resolution of Collapsed Tunnel < 17: [Yogdrak betrays the player]
			say "     He walks up to you with the hammer by his shoulder, extending his hand towards you. 'Was good working with you, partner. Now that the deal is over, I thought...' he tells you, without finished the sentence, instead surprising you by swinging his hammer unpredictably and hitting your head, knocking off your senses as he makes a run for it. The sneaky weasel betrayed you!";
			say "     You take some time to recover from that strike, and just as you manage to stand up, Yogdrak is gone without a trace. And to make things worse, people are starting to come inside the room... And they see you, with the greathammer being gone. This is definitely not a good place to be right now, so you start running as fast as you can out of there before anyone can catch you! By the time you make it across the tables of food, you manage to get out of the area and storm through the streets of the dwarven kingdom, back to where you came from. Guards from the embassy attempt to chase you down, but you're much faster with your regular clothing than them with their armors.";
			WaitLineBreak;
			say "     Fortunately, you manage to reach the tunnel and slip inside the underground corridors, tracing your steps back to the surface after an exhausting sprinting for your life. That narrow passage leading to the trapdoor where this all began is still clear, so you are able to proceed further in and leave out, back to the surface. Just to be safe, you push a boulder towards the top of the entry in order to lock it down, hopefully as long as it stays there. Finally, you can have some time to breathe and enjoy the scenery of the surface, much brighter, plants all around, and with a much clearer atmosphere. You really worked out some sweat!";
			say "     However, it seems you really were betrayed. Yogdrak took the greathammer with him and disappeared without a trace. You don't think you'll see him again, and better stay away from this area, else you want to run the risk of stumbling across an angry [bold type]dwarf knight[roman type]...[line break]";
			choose a row with name of "Dwarf Male" in the Table of Random Critters;
			now area entry is "Nowhere";
			if Resolution of Wedding Wreckers is 4 or Resolution of Wedding Wreckers is 5: [bad rep + treasure]
				now Resolution of Wedding Wreckers is 9; [bad rep + treasure]
			else:
				now Resolution of Wedding Wreckers is 8; [bad rep]
		else: [both escape with the hammer]
			say "     He walks up to you with the hammer by his shoulder, extending his hand towards you. 'Was good working with you, partner. It was fun! We should totally raid stuff together in the future.' he says, but as you're both taking your sweet time moving away, people eventually start to walk towards the banquet room. 'Uuuh... Right, time to run!' Well, they sure know the hammer has been taken by now, and who else to blame but two individuals that have been messing around with the dwarves for a while now? You're going to have a bad time with them, from now on...";
			say "     Running as fast as you both possibly can across the tables of food, you manage to get out of the area and storm through the streets of the dawrven kingdom, back to where you came from. Guards from the embassy attempt to chase you down, and while some manage to catch up to you - it's a heavy hammer that slows you down, alright - Yogdrak smashes them back with quite the expertise at handling big weapons. Guards are no match for your might and speed, and soon you're reaching the entryway back into the dark underground tunnel.";
			WaitLineBreak;
			say "     'Phew... They really were giving us a chase. Someone's gonna be pissed at us.' he says, as you trace your steps back to the surface after an exhausting sprinting for your lives. That narrow passage leading to the trapdoor where this all began is still clear, so you are able to proceed further in and leave out, back to the surface. Just to be safe, you push a boulder towards the top of the entry in order to lock it down, hopefully as long as it stays there. Finally, you can have some time to breathe and enjoy the scenery of the surface, much brighter, plants all around, and with a much clearer atmosphere. You really worked out some sweat!";
			say "     'I think we should fuck in celebration, but I'm really fucking tired. Also... Well, you're a great bud, might as well have this yourself.' he tells you, handing you the [bold type]golden greathammer[roman type]. Did he drink something while you were in the banquet room or something? You find this hard to believe. 'What? I think you deserve it. Honestly. As long as you let me swing it sometimes, or if you ever sell it... Eh, don't sell it. It's too pretty.' You can only thank him for the generosity. Maybe this was worth the hassle, after all. Then, you share some words and talk a bit. Yogdrak is a pretty funny guy, now that you've got to know him better.";
			ItemGain golden greathammer by 1;
			WaitLineBreak;
			say "     'It's probably time for me to go. Take care, friend. Come visit me around here if you want to either talk, fight or fuck. I'm all down for any of those. But I'll still beat you up if you piss me off.' You suppose he's still a wanderer, so in order to find him, you'll still have to search around the area. He just won't be automatically hostile as he was before, but some things never change.";
			if Resolution of Wedding Wreckers is 4 or Resolution of Wedding Wreckers is 5: [bad rep + treasure]
				now Resolution of Wedding Wreckers is 9; [bad rep + treasure]
			else:
				now Resolution of Wedding Wreckers is 8; [bad rep]
	else if calcnumber is 2: [take the hammer and betray Yogdrak]
		say "     You help him, but not with the sheet. Instead, you make him pull the sheet off while grabbing the hammer. He finds the switching strange, but goes along, for now. Then, you lift the greathammer, admiring it for a second. 'Yeah, it's gorgeous isn't it? Now, uh... Can we go?' You nod, but as you're lifting the weapon, you're actually only preparing to launch a swift strike at the dwarf's head. He doesn't even have time to react or say anything, as the impact is enough to knock him out. Now, you should run as fast as possible, but without causing much of a fuss. After all, you've left a distraction, might as well make good use of it, and that's why you brought the sheet with you. Hiding the hammer with it and making it seem like a random cargo will keep the dwarves['] eyes away.";
		say "     Carefully, you try to avoid going into too populated areas, making you way through darker and narrower streets towards the underground tunnel you came from. It's not easy, but you manage. Without guards following you or anyone suspecting that you're carrying the golden greathammer with you, it turns out to be a pretty calm strolling through less favorable paths, but nonetheless effective at pulling off your sneaky retreat.";
		WaitLineBreak;
		say "     Fortunately, you manage to reach the tunnel and slip inside the underground corridors, tracing your steps back to the surface after an exhausting and adrenaline filled escape. That narrow passage leading to the trapdoor where this all began is still clear, so you are able to proceed further in and leave out, back to the surface. Just to be safe, you push a boulder towards the top of the entry in order to lock it down, hopefully as long as it stays there. Finally, you can have some time to breathe and enjoy the scenery of the surface, much brighter, plants all around, and with a much clearer atmosphere. You really worked out some sweat, despite everything!";
		say "     In the end, you have decided to betray Yogdrak. You don't know what will become of him... but at least you've returned with your goodies and without the dwarves suspecting about you. Hopefully, he will take all the blame...";
		if Resolution of Wedding Wreckers is 4 or Resolution of Wedding Wreckers is 5: [bad rep + treasure]
			now Resolution of Wedding Wreckers is 7; [good rep + treasure]
		else:
			now Resolution of Wedding Wreckers is 6; [good rep]
	else if calcnumber is 3: [do not take the hammer]
		say "     You stop Yogdrak by grabbing his arm and pulling it away. Obviously, this reaction makes him frown his eyebrows at you. 'Are you crazy? What did you jut do?' Trying to explain him why you don't want to take the hammer will be difficult, even more convincing him that this is the best decision. But you give your best shot at warning him about the consequences of taking this weapon with you.";
		if Resolution of Collapsed Tunnel < 17: [Yogdrak betrays the player]
			say "     'What, you're worried about ruining a fucking couple's wedding? You have to be joking. If I knew you were this sensitive, I'd have knocked you down for good.' He ignores you from that point on, and grabs the greathammer without your help. 'I suppose I should thank you for the displeasure of working with you. And I'm not going to leave this here. You won't stop me either.' With a surge of strength, the dwarf smacks your head with the big hammer, knocking you out as he runs away with it.";
			say "     You take some time to recover from that strike, and just as you manage to stand up, Yogdrak is gone without a trace. And to make things worse, people are starting to come inside the room... And they see you, with the greathammer being gone. This is definitely not a good place to be right now, so you start running as fast as you can out of there before anyone can catch you! By the time you make it across the tables of food, you manage to get out of the area and storm through the streets of the dwarven kingdom, back to where you came from. Guards from the embassy attempt to chase you down, but you're much faster with your regular clothing than them with their armors.";
			WaitLineBreak;
			say "     Fortunately, you manage to reach the tunnel and slip inside the underground corridors, tracing your steps back to the surface after an exhausting sprinting for your life. That narrow passage leading to the trapdoor where this all began is still clear, so you are able to proceed further in and leave out, back to the surface. Just to be safe, you push a boulder towards the top of the entry in order to lock it down, hopefully as long as it stays there. Finally, you can have some time to breathe and enjoy the scenery of the surface, much brighter, plants all around, and with a much clearer atmosphere. You really worked out some sweat!";
			say "     However, it seems you really were betrayed. Yogdrak took the greathammer with him and disappeared without a trace. You don't think you'll see him again, and better stay away from this area, else you want to run the risk of stumbling across an angry [bold type]dwarf knight[roman type]...[line break]";
			choose a row with name of "Dwarf Male" in the Table of Random Critters;
			now area entry is "Nowhere";
			if Resolution of Wedding Wreckers is 4 or Resolution of Wedding Wreckers is 5: [bad rep + treasure]
				now Resolution of Wedding Wreckers is 9; [bad rep + treasure]
			else:
				now Resolution of Wedding Wreckers is 8; [bad rep]
		else: [both just leave peacefully]
			say "     'You're worried about ruining this couple's wedding by taking the hammer with us?! Well... When you put it that way, I... I guess we would do that, wouldn't we?' You give him something to think about, and he looks around him, at the beautifully decorated room, the happy energy this ceremony transmits, then back to the hammer... 'Bah, who cares... It's just a hammer. If that means so much for someone, I might just... Leave it here. Whatever. We had fun together and that was worth it, already.' He gives you a suggestive look, but you don't have a lot of time to joke around. People are coming, and it's probably for the best that you stop lingering about. With this, you leave the area, quietly across the tables just before the guests arrive.";
			say "     Strolling through the streets of the dwarven kingdom, you glance around the many stone buildings and peculiar rocky scenery for a few last times as you make your way back to the tunnel. 'Say what you will about this place, but I like their homes. I wouldn't live here, though... Guess I'm just too used to the sun...' he tells you, while you proceed further ahead into the entryway and down towards the wide and dark passage leading underground.";
			WaitLineBreak;
			say "     Tracing your steps back to the surface, you find that the narrow passage leading to the trapdoor where this all began is still clear, so you are able to proceed further in and leave out, back to the surface. Just to be safe, you push a boulder towards the top of the entry in order to lock it down, hopefully as long as it stays there. Finally, you can have some time to breathe and enjoy the scenery of the surface, much brighter, plants all around, and with a much clearer atmosphere. 'Yeah, good little adventure we had there. Just hope we didn't piss any dwarves on our way here[if Resolution of Wedding Wreckers is 4 or Resolution of Wedding Wreckers is 5]... Think they got mad at us taking their jewels[else]... we didn't do anything wrong, did we[end if]?' he asks, but the answer remains to be confirmed, in the future.";
			say "     Then, you share some words and talk a bit. Yogdrak is a pretty funny guy, now that you've got to know him better. 'It's probably time for me to go. Take care, friend. Come visit me around here if you want to either talk, fight or fuck. I'm all down for any of those. But I'll still beat you up if you piss me off.' You suppose he's still a wanderer, so in order to find him, you'll still have to search around the area. He just won't be automatically hostile as he was before. But some things never change.";
			if Resolution of Wedding Wreckers is 4 or Resolution of Wedding Wreckers is 5: [bad rep + treasure]
				now Resolution of Wedding Wreckers is 9; [bad rep + treasure]
			else if Resolution of Wedding Wreckers is 2 or Resolution of Wedding Wreckers is 3: [bad rep no treasure]
				now Resolution of Wedding Wreckers is 8; [bad rep]
			else:
				now Resolution of Wedding Wreckers is 6; [good rep]
	now Wedding Wreckers is resolved;

Section 2 - Creature Responses

to say Dwarf wins:
	if HP of Player > 0: [player submits]
		say "     Looking at the short man about to force his way through, you lose the will to fight and pose no resistance towards him, getting on your knees waiting for him to come for you at a much slower and less aggressive pace. 'Seems like you learned your place quicker than I thought you would. No need to beat you until you understand, eh? Unless that's what you're into...' With a sudden move, the dwarf kicks you back on the chest, making you fall back on the ground. He keeps his dirty boot just below your neck, looking down on you with a snarky grin. 'Submitting yourself to me like this... I'm sure you'll do well in servicing me. You're gonna be here for a while, [boygirl]!' He clearly knows he has the upper hand and that you must comply to every order. The dwarf certainly has the ways to make you regret any disobedience[if Player is submissive], though your submissive instincts make you so eager to be used by him that he shouldn't worry too much about it[end if].";
	else: [player loses]
		say "     Having sustained so much damage from the dwarf's heavy pommeling, you're no longer capable to hold your ground against him. Your strength fails you as you're forced on your knees in front of the short man, his face showing a snarky grin as he looks down at you. 'Beating you to submission was easier than I thought. Look at you now! In your due place, at my full mercy.' With a sudden move, he gives you a kick on the chest, throwing you off balance to the ground. He keeps his dirty boot just below your beck, looking down at you with an amused chuckle. 'Now, if you do what you're told, things will go well for you. If not, then I'll just remind you who's the boss, here...' he says while making a suggestive movement with his hammer, reminding you of how painful his strikes felt. The dwarf certainly has the ways to make you regret any disobedience[if Player is submissive], though your submissive instincts make you so eager to be used by him that he shouldn't worry too much about it[end if].";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1: [facefuck]
			DwarfFucksOral;
		-- 2: [fuck]
			if Player is female: [has a pussy]
				if a random chance of 1 in 2 succeeds:
					DwarfFucksAnal;
				else:
					DwarfFucksPussy;
			else: [no pussy]
				DwarfFucksAnal;
		-- 3: [facesitting]
			DwarfFacesit;

to DwarfFucksOral:
	say "     'Now, time to put your mouth to work. And you better do it right!' he says while positioning himself just above your head, which stands tall enough to reach his still covered bulge. The dwarf makes sure you feel his erection growing larger in his pants by pulling your face straight towards it. 'That's it, be a good [boygirl] for me and smell my junk. Bet you're liking this, aren't you?' the dwarf keeps teasing you as his tool hardens so much that it starts feeling constricted for the short man, as if begging for release out of those pants. 'I think I'm gonna love shoving this down your throat... Making you choke on it as you take it deep down... all the way...!' You sense eagerness in your burly captor's raspy voice [if Player is submissive], making you want to taste his cock even more than you already did, [end if]as he starts undoing his large belt, dropping his gear on the ground followed by the pants.";
	say "     With a quick slide, the dwarf's raging boner is given its much awaited fresh air, only throbbing and reaching its prime state of hardiness a few seconds later. Now, [if Player is submissive]as he has you glancing all over his meat like a dog awaiting his long deserved treat,[else]as you're taking a good look at his meat,[end if] you notice that, despite it belonging to a rather short man in height, it actually has a considerable size of nine inches, veiny and thick as a beer can. However, the stocky man doesn't let you admire it for long. Although he takes great joy in [if Player is submissive]seeing you so mesmerized by his pulsing length[else]seeing you impressed with this unexpected outcome[end if], he decides to slide his thick and large hand behind your head and pull you once more towards him, forcing you to wrap your lips around his rather wide prick. 'You gotta do better than that, my [boygirl]. How else am I supposed to fuck your face?' he taunts as he forces more and more of his length inside you, slowly reaching over your throat and keeping you from breathing soon enough.";
	WaitLineBreak;
	say "     He doesn't stop there. Once he has a good grasp of your head with both his hands, he lets go a sexual grunt as he makes you swallow his cock to the very end. 'Oohh, fuck... yeah! Feels so good being balls deep on someone...!' You really begin squirming and moaning for air, but the dwarf keeps your nose buried in his curly pubes for a good while before he starts pulling out slowly. With barely a second to catch your breath, he doesn't let you rest as his tool finds itself sinking in your mouth once again. Having to open wide to contain so much dick within your mouth makes your jaw ache, and your neck bulges out every time he thrusts in deep into your esophagus. It's not the length, but rather the thickness, that turns this into such a difficult task to handle, [if Player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that... Next time I catch you here, I might... O-oh... Fuck... You're gonna make me cum down that filthy throat, you little bitch...' Holding your head tight, the short-sized man keeps jerking his hips against your face, his plump ballsack swinging back and forth and hitting your chin. His increasingly louder grunts are an indicative of his orgasm approaching, and you know you're going to have to deal with a large load. 'I'm gonna fill you up... Fuck yeah...! I'm... Cumming!!' With this said, both his hands are on each side of your head when he pushes his cock as deep inside as possible. You don't even get to taste the warm seed he's shooting directly into your stomach, but you can definitely feel his thick manhood pulsing with pleasure as the jizz leaves it with each spurt.";
	WaitLineBreak;
	say "     At some point, he pulls out of your mouth, your face flushed and released altogether as gravity wins over your strength to avoid hitting the ground with the back of your head. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock towards your face as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with a belly filled with dwarf cum for some time before you can stand up.";
	CreatureSexAftermath "Player" receives "OralCock" from "Dwarf Male";

to DwarfFucksPussy:
	say "     'Now I'm gonna make you bend over for me. I need a tight place to shove my cock inside, and I bet you've got just the thing.' he says while forcing you to crawl on all fours, [if Player is not naked]and the burly dwarf doesn't take any ceremony in lowering your clothes to expose your rear [end if]then taking a time to stroke himself while watching your naked butt. He makes you wait[if Player is submissive], your eagerness to please making you wiggle your backside at him invitingly, [end if] until his manhood stands up hard and proud, already out of his pants and ready to drill your hole deep. 'You're certainly going to feel this when I'm stretching your pussy.' he taunts you, and a look over your shoulder shows you why he's so confident. A good sized cock of about nine inches long, thick as a beer can, is going to enter your cunt and pound it without mercy.";
	say "     He slides a hand down between your legs, rubbing your already moist parts and occasionally slipping a finger inside, effectively teasing you with his surprising dexterity. 'You're leaking, down there... That's gonna be fun!' You [if Player is submissive]can't help yourself but moaning at his caress, part of you wanting more[else]can't help but feel aroused at this[end if], and the dwarf understands this as a sign to keep fingering you, his meaty fingers soaking in your juices as they feel you up from inside your vulva. When he's done exploring your womanhood, you feel his thick prick finding itself between your buns, the mere warm sensation of his length rubbing across your pussy making you shiver, reminding you of what was the bulky short man's initial intention.";
	WaitLineBreak;
	say "     The dwarf releases as sexual grunt once he starts penetrating you, now grabbing you by the hips as he lets himself sink inside you. His precum mixed with your natural lubrication makes it for an easy slip, even though you feel yourself being stretched before him. 'You've got a really tight one, [boygirl]! Feels so good...!' It's not long until he buries his cock balls deep inside you, his entire length being pushed and pull in slow movements at first. It's not the length, but rather the thickness, that turns this into such a difficult task to withstand as he picks up the pace, [if Player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that...' he teases you, holding you with a tight grip, thrusting into you faster and faster. You hear his hips hitting your buttcheeks with a loud flesh clashing sound each time he goes in deep, and his plumb ballsack swinging back and forth. Being pounded by this horny short man feels like getting fucked by a strong and powerful beast, and it only gets worse as he fucks you harder and deeper... 'How do you like that dick, [boygirl]? I bet you're enjoying it like the filthy whore you are.' His taunts are a constant as you're reminded of your place, [if Player is submissive]that you're gladly earning, [end if]feeling your womanhood being claimed by the dwarf for the next few minutes.";
	WaitLineBreak;
	say "     It is when he leans himself more over you that you know he's about to hit his climax. 'O-oh... Fuck... You're gonna make me breed your cunt, you dirty bitch!' Maintaining the pace as much as he can, the burly man's cock throbs inside you, and it's not long until a warm liquid begins filling your insides. 'Take it all, my [boygirl]! Oohh yeah!' He keeps grunting and moaning as his entire load is deposited inside your womb, which he keeps fucking until the end of his orgasm. You can't help but reach the point of no return yourself, his dick filling up so well that your body begs for a release, an intense wave of pleasure suddenly bursting through you, making you squirm in lust until it subsides.";
	say "     At some point, he pulls out of your pussy, your face flushed as you're released to collapse on the ground, exhausted. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock, which lands on your back, as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with your insides filled with dwarf cum for some time before you can stand up.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Dwarf Male";

to DwarfFucksAnal:
	say "     'Now I'm gonna make you bend over for me. I need a tight hole to shove my cock inside, and it's gonna be your asshole.' he says while forcing you to crawl on all fours, [if Player is not naked]and the burly dwarf doesn't take any ceremony in lowering your clothes to expose your rear [end if]then taking a time to stroke himself while watching your naked butt. He makes you wait[if Player is submissive], your eagerness to please making you wiggle your backside at him invitingly, [end if] until his manhood stands up hard and proud, already out of his pants and ready to drill your hole deep. 'You're certainly going to feel this when I'm stretching your bitch hole.' he taunts you, and a look over your shoulder shows you why he's so confident. A good sized cock of about nine inches long, thick as a beer can, is going to enter your ass and pound it without mercy.";
	say "     Once he has a good grasp of your ass, you feel his warm length griding between your buttocks, pulsing with need, eager to penetrate your hole. The mere sensation of his tip rubbing across your anus makes you shiver, reminding you that you're about to feel a wide cock throbbing inside you. The dwarf releases as sexual grunt once he starts penetrating you, now grabbing you by the hips as he lets himself sink inside you. His precum is the only lube you get as you're stretched before him. 'You've got a really tight one, [boygirl]! Feels so good...!' It's not long until he buries his cock ballsdeep inside you, his entire length being pushed and pull in slow movements at first. It's not the length, but rather the thickness, that turns this into such a difficult task to withstand as he picks up the pace, [if Player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	WaitLineBreak;
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that...' he teases you, holding your ass with a tight grip, thrusting into you faster and faster. You hear his hips hitting your buttcheeks with a loud flesh clashing sound each time he goes in deep, and his plumb ballsack swinging back and forth. Being pounded by this horny short man feels like getting fucked by a strong and powerful beast, and it only gets worse as he fucks you harder and deeper... 'How do you like that dick, [boygirl]? I bet you're enjoying it like the filthy whore you are.' His taunts are a constant as you're reminded of your place, [if Player is submissive]that you're gladly earning, [end if]feeling your ass being claimed by the dwarf for the next few minutes.";
	say "     It is when he leans himself more over you that you know he's about to hit his climax. 'O-oh... Fuck... You're gonna make me cum inside your ass, you dirty bitch!' Maintaining the pace as much as he can, the burly man's cock throbs inside you, and it's not long until a warm liquid begins filling your insides. 'Take it all, my [boygirl]! Oohh yeah!' He keeps grunting and moaning as his entire load is deposited inside your ass, which he keeps fucking until the end of his orgasm. You can't help but reach the point of no return yourself, his dick filling up so well that your body begs for a release, [if Player is male]and so you burst your own load right after his, leaving a trail on the ground below[else]an intense wave of pleasure suddenly bursting through you, making you squirm in lust until it subsides.[end if]";
	WaitLineBreak;
	say "     At some point, he pulls out of your asshole, your face flushed as you're released to collapse on the ground, exhausted. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock, which lands on your back, as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with your insides filled with dwarf cum for some time before you can stand up.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Dwarf Male";

to DwarfFacesit:
	say "     'I'm having a little itch between my asscheeks, so how about you... scratch it for me? With your tongue... For a good while?' he says as a mischievous grin spreads through his face. Forcing you to lie down on the ground, he proceeds to undo his belt and drop his pants, giving his thick manhood a few strokes as he looks down on you, licking his lips. 'Mmm, damn, that's a good sight. You're gonna be a good ass cushion for me, aren't you, [boygirl]? Oh yes you are...' he teases you, positioning himself above your face, feet on each side of your head, his ass aiming for your nose, and before you know it, he's already dropping down, giving your face a hug with his hairy buttcheeks. 'Oooh fuck yeah! Lick that hole for me! I wanna feel that tongue inside my ass, you hear me little bitch?'";
	say "     Though it's your nose almost completely buried inside his fuzzy ass, he grinds his anus all over your face, with a tendency to just kiss your lips back as he demands you to use your tongue on him. Without any further ado, you oblige him [if Player is submissive]eagerly, as his commands turn you on[else]reluctantly, but with enough effort so that he is satisfied[end if], and press your wet tongue inside his asshole, to which he immediately lets out a pleased grunt. 'Yes! That's it! Oooh you're hitting the spot, lick it all over, my [boygirl]! I could kiss you right now, but might as well do it with my ass!' he teases you, pressing his hairy butt against your face harder as you're hold in place under him, your tongue condemned to lick and worship his hungry hole.";
	WaitLineBreak;
	say "     You're effectively making out with his bum, and he's grinding it really hard against your face, wanting to take anything he wants, and sometimes you find yourself being forced to pull your tongue out of his hole and feel your own saliva being rubbed all across your nose and cheeks. He keeps doing this over and over again, so excited that you think he's actually getting off from feeling your face between his hairy buttocks. At some point, he is barely letting you breathe, his compact ass still managing to cover most of your nose with each movement, and eventually returns to your lips. 'Tonguefuck me, bitch! I'm not leaving until you make me cum with that tongue!' he orders you with his manly deep voice, making your soul trembling.";
	say "     Doing your best to fuck the dwarf's ass with your tongue, you push it deep in and back out as fast as you can, trying to give him a really good time just like he demands, though that makes his ass wiggle and grind against you even harder. You figure that must be your work exciting the short burly man even further, though you can feel him shaking above you, as if he was jerking off to your efforts. If you keep it up, he might just cum, so you put your best effort, shoving your tongue in, wiggling, licking his insides as good as you can, making the dwarf moan in ecstasy. He really likes getting rimmed, it seems, as he's now also pulling your head against the crevice between his hairy cheeks. 'You're fucking great at this... I'm about to cum!'";
	WaitLineBreak;
	say "     It's not long from when he says that to the actual orgasm. Within a few moments, he's grunting and moaning in beastly manners, shooting his load all over your chest, and as this happens, you feel his asshole clenching around your tongue with each shot. 'Fuuuuck yeah! Damn! I was fucking needing this! You're such a good seat for my fuzzy ass, my [boygirl]! Will definitely consider doing this more often to you.' he taunts you, still sitting on your face as he squeezes his cock out of any leftovers of cum, all landing on your body. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by standing up, shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left with your face flushed, catching your breath after this ordeal, and take some time to recover before you can stand up.";
	CreatureSexAftermath "Dwarf Male" receives "Stroking" from "Player";

to say Dwarf loses:
	say "     With one last attack, you manage to bring down the hostile dwarf, who falls down bruised and unable to move. 'Ungh! Y-you're tougher than you look... Alright fine. I... won't bother you anymore. No need to get feisty, alright?' Though you hear what seems to be a plea for mercy, albeit barely so, you do have the short stocky man right there, without a chance to offer any resistance. You could do anything you wanted to him and he'd have no chance to do anything against it. [bold type]How shall you proceed with the defeated dwarf?[roman type][line break]";
	say "[DwarfSex]";

to say DwarfSex:
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
	if Resolution of Collapsed Tunnel is 3:
		choose a blank row in table of fucking options;
		now title entry is "Steal the golden greathammer";
		now sortorder entry is 4;
		now description entry is "Confiscate the hammer (Thing will happen)";
	[]
	if Resolution of Collapsed Tunnel is 4 and golden greathammer is owned:
		choose a blank row in table of fucking options;
		now title entry is "Assert your dominance over him";
		now sortorder entry is 4;
		now description entry is "Tell him some things he needs to hear (Things will happen)";
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
				if (nam is "Steal the golden greathammer"):
					say "[DwarfQuest1]";
				if (nam is "Assert your dominance over him"):
					say "[DwarfQuest2]";
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
	say "     Hearing the stocky man praise your efforts [if Player is submissive]fills you with joy, and you even feel tempted to let him take charge for a while, but now is not the time for that[else]gives you the sign you're looking for[end if], as you feel he's actually getting closer to orgasm. You resolve that it'd be fun to slow down a bit and edge him, to make sure his load comes out as hard as possible, even though it creates great frustration on the poor dwarf, who's already grunting and begging you to don't stop. 'Please! I just need to cum... I'm not able to hold much longer...' he exclaims in a plea, but you give him a deaf ear, continuing this process for the next few minutes. 'Fuuck... P-please... I need to...!' but he tries yet again to convince you to make him blow, so you know he's on the verge of hitting his limit.";
	say "     With all that you made him endure by now, it's probably enough to get him burst hard. Are you going to test this theory by [bold type]letting him blow is load out, or will you swallow it all?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let it blow!";
	say "     ([link]N[as]n[end link]) - Drink all of that dwarf cum.";
	if Player consents:
		LineBreak;
		say "     That's just going to be such a great and powerful load that you can't allow it to go unseen. With this in mind, you get a good grip of the dwarf's cock and stroke it even faster, an evident gesture that you intend to make him cum. 'Fuck... Yes! FINALLY!' You've got the short man moaning about as his meat pulses in anticipation, then just a few seconds later, you're rewarded with the powerful geyser of jizz that he makes, shooting his seed upwards and having it all landing back on him. 'Fuuuuck... That felt... fucking amazing...' he tells you, looking at you dazed with pleasure, his dong still oozing more of that thick seed of his.";
		say "     After drenching the burly dwarf in his own load, you squeeze his dick for the last few drops of cum. The mere touch now makes him squirm in slight agony, as his cock got much more sensitive after that rough treatment. 'Uuh... Well... now that we're done with this, does that mean we're good? Can I go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
	else:
		LineBreak;
		say "     He's probably going to cum so much that you need to get a taste. With this in mind, you get a good grip of the dwarf's cock and stroke it even faster, an evident gesture that you intend to make him cum. 'Fuck... Yes! FINALLY!' You've got the short man moaning about as his meat pulses in anticipation, then just a few seconds later, as you slide the meat back inside your mouth, you're rewarded with the strong and sweet cum he shoots down your throat. You do your best to swallow every drop of his load until the last, a steady gush of jizz giving you a mouthful of the stuff. 'Fuuuuck... That felt... fucking amazing...' he tells you, looking at you dazed with pleasure, and as you carefully pull his dong out from between your lips, a drop of thick seed is still oozing from the tip.";
		say "     After drenching the burly dwarf in his own load, you squeeze his dick for the last few drops of cum. The mere touch now makes him squirm in slight agony, as his cock got much more sensitive after that rough treatment. 'Uuh... Well... now that we're done with this, does that mean we're good? Can I go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
		CreatureSexAftermath "Player" receives "OralCock" from "Dwarf Male";

to say DwarfFacefuck:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his mouth for your pleasure. With your clearly now superior strength, thanks to the fact you bruised him good, it should be easy to make such a short, weakened man to suck your cock. He sees you approaching him decidedly and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you pulling his head to meet your crotch. He doesn't seem to fight it as much as his attitude would suggest, even sliding a hand over your thigh in appreciation. You find this a sign of his submission as [if player is naked]your hardening length reacts to his touch[else]you begin getting hard in your pants, obliging you to take off your gear and free up your growing erection[end if], knowing it's time to get serious.";
	say "     Though you're not quite happy with just having him take your dick, you order him to work your junk all over. He doesn't limit his oral reach to your shaft, often giving your balls a nice tongue bath and tugging them between his lips. The fuzziness of his beard rubbing all across your groin gives you a funny feeling, though you can't shake off the apparent surprising skill the burly man shows at pleasing you. Grabbing him by the hair, you guide him by your shaft to get his mouth wherever you want, all this before going for your initial intention. When you're finally satisfied with the warm-up, you begin sliding your cock between the dwarf's lips as he looks at you with dazed eyes. To your pleasure, he eagerly obliges, taking in as much as your length as he can.";
	WaitLineBreak;
	say "     As you hold his head in your gasp, you thrust once... then the second time... and as you keep fucking his mouth, you realize the muscular dwarf seems to take it quite well! Both of his meaty hands are placed just a little above your thighs, not offering resistance, but actually caressing you and helping you jerk your hips to keep up the pace. Without any further ado, you give your best, [if Cock Length of Player <= 12]shoving your entire manhood down his throat until your balls land right on his bearded chin, and[else]shoving what you can of your huge dick down his throat, causing the dwarf scavenger to struggle for the first time with your considerable size, but[end if] he responds with utmost dedication, doing what he can to take you in the best way he's able.";
	say "     Feeling his skillful tongue all over your prick as you're still shoving it all the way through makes you feel incredibly horny, and soon you begin feeling yourself getting closer to orgasm. While you're trying to hold off as much as you're able, the burly short man just brings the task several levels harder as you sense his dexterous touch around your ballsack, giving your testes a gentle squeeze and inviting you to shoot your load in him. Unable to resist the urge, you push the dwarf back to fall back on the ground - with your dick still in his mouth as you carefully follow - just hovering above of him with your hand on the back of his head. As he's absolutely at the mercy of your facefucking, the sensations are too much to allow you to hold control of your body...";
	WaitLineBreak;
	say "     Drilling his bearded face, as horny as you are, you don't think too much about it as your cock pulses with desire, but the dwarf's naughtiness doesn't end here. He slips a thick finger between your buns, giving your hole a really pleasant rubbing while you're taking his mouth, which immediately sets you off. Soon enough, your virile seed is shot right down his throat. You force him to swallow every single drop of your load as you keep thrusting back and forth, physically unable to offer any resistance to your primal need to fill him full of your cum. As your orgasm subsides, you pull out, feeling yet again his rough hand squeezing your cock out of the last drops of juice, which he gladly drinks away.";
	say "     'Love myself a good drink! I should try to fill a bottle with your cum next time I see you. I clearly have the motivation now!' he says, still licking his lips in great satisfaction. Sounds like he really didn't learn a whole lot with his defeat! 'I appreciate your generosity, but now that we're done, maybe it's time for you to let me go, yeah?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
	CreatureSexAftermath "Dwarf Male" receives "OralCock" from "Player";

to say DwarfAssFuck:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his ass for your pleasure. With your clearly now superior strength, thanks to the fact you bruised him good, it should be easy to make such a short, weakened man to bend over for you. He sees you approaching him decidedly and yet he begs 'Come on... I swear I'll let you be!' You leave him no answer as you're looking down towards him. Crouching, now at the same eye level, you let him know your intentions before forcing him to flip over, his compact ass held tight within his brown leather pants. You can see how firm and solid it is just by looking at the shape, which only reminded you of how great this is going to feel.";
	say "     Reaching over your crotch, you give yourself some pleasure as you're visualizing the whole thing. The stocky dwarf looks at you over his shoulder, enticing you further with his booty moves, openly inviting you to assault him from behind. Seems like he's getting into the idea, despite his initial fear of what you'd do to him. Without further ado, [if player is naked]you give your hardening length a few more strokes[else]you take your gear off and give your length a few more strokes[end if] before heading for his, providing a treat to the short man with a soft grabbing on his crotch as you undo the thick belt around his waist, only to slide off the pants just enough to see those hairy buns out in the air.";
	WaitLineBreak;
	say "     Sliding a finger over his pink hole, you hear the dwarf moan 'Ah... yeah, that feels amazing...' as soon as he feels you rubbing it. A little pressure just slowly sinking your index in it arouses him further, and you by sequence. Having his butt so in reach, as he's lying on the ground with his back arched, you could perhaps show him some tonguework. After all, he's really cooperating in this one, and you can't pass the chance to get a taste of that sweet ass. You lean over, kissing your way there through his fuzzy glutes, then spreading them as you let out a drop of spit fall on his anus, which winks back at you as if greedily sucking it up to lubricate itself. Eager as it looks, you proceed to plant your lips there, followed by your tongue as you press in deeper through the moist, fleshy tunnel.";
	say "     'Oooohh fuck... it's been a while since someone has done that...' The dwarf wiggles his butt over your face, as if begging for more attention centered on his hole, inviting you to press in even deeper, and soon you find yourself tonguefucking the short burly man. All the action makes him more loose and relaxed, you nearly don't have to do anything to sink inside his hole, an indicative that he's ready for your cock. With this in mind, you get up and rub your length across his butt cheeks as the dwarf humps back at you. 'I knew you couldn't resist it...' he teases you, as you feel the tip of your cock already oozing pre-cum as his hole kisses it back and forth. Eventually, you decide to press against it, slowly shoving yourself inside the dwarf's ass.";
	WaitLineBreak;
	say "     'Bet you like that, don't you? Never you thought a dwarf could have such a nice ass, yeah?' Though he keeps teasing you, [if Cock Length of Player >= 12]he really struggles to take your huge size, but does his best to take as much as he can of you inside him[else]you make sure you bury your entire manhood inside him, until your balls are hitting his skin,[end if] without any complaints. You've got him moaning and grunting as you keep fucking his ass doggy style, slowly at first, but steadily. The way your meat feels inside the dwarf as he moves his ass together with your pounding only excites you even further, giving you an urge to go at it faster and deeper. 'Ohh [boygirl]! You're really hitting the spot!'";
	say "     As you keep the dwarf moaning with his deep raspy voice, you just want to go as hard as you can, and soon you find yourself on the verge of orgasm. Though you're not the only one, as the scavenger is also stroking his nine inch-long prick with vigor. 'I'm fucking close... Don't stop...!' he begs you, and you don't intend to, your dick reaching its peak of hardiness and starting to throb in anticipation. It doesn't take long for your seed to begin traveling through the insides of your reproductive system, and you don't even have time to pull out of his amazing ass... but it doesn't seem like that's what the dwarf wanted. Whenever you're not moving, he compensates your stiffness by thrusting back, as if he was milking your cock by himself.";
	WaitLineBreak;
	say "     Your cum fills the muscular shortie until the very end of your climax, throwing you out of breath by the time it subsides. Not long after you, the dwarf also blows his load over the ground while he feels you pulsing inside him, leaving a trail ot jizz ahead of you both. 'Fuuck... yes! That was a great fuck!' he shouts, completely dazed in his own orgasm. You two take some time to breathe, as you pull out of his ass and squeeze your dick off any cum drops left. You both gear up after you clean yourselves, the dwarf only having to pull his pants back on while still lying down on the ground, facing you this time. 'I hate to say goodbye to such a catch, but I believe we're sorted here, huh? I have places to be... Will you let me go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
	CreatureSexAftermath "Dwarf Male" receives "AssFuck" from "Player";

to say DwarfRide:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his cock, despite his requests to leave him alone. He sees you approaching him with and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you caressing his crotch, causing him to release a light moan as he watches you. 'Oh... That feels nice... Uh, if that's all you want from me, I... guess...' he hesitantly replies to your touch, but you can feel him getting harder underneath his pants. With enough care, you undo his thick belt before pulling down his pants, releasing the previously constrained meat out in fresh air, still growing in your hands. The thick nine inch-long of a prick throbs with need as you eye it all over, teasing the dwarf with slow strokings.";
	say "     'You're driving me crazy with all that touching...' he says, his gaze gleaming with hope that you'd suck on his cock, but you don't intend to give that to him just now. Instead, your hand slides up and down through his length while you give his balls a nice squeeze with the other, giving him just about enough stimulation to stay rock solid. Stealing another moan from the short burly man, you then decide to focus your attention on the pre-soaked tip with your thumb, and eventually, leaning down over his dick, ready to give it some tongue. With enough dedication, you manage to make the dwarf jerk his hips, forcing you to hold him down as you start taking his entire manhood in your mouth, to which he grunts. 'I wanna fuck that mouth so bad...'";
	WaitLineBreak;
	say "     But it won't be your mouth that he's going to fuck. With a loud popping sound, you pull his dick out from between your lips and [if player is naked]immediately climb on top of him[else]slide down your lower gear completely so you can climb on top of him[end if], and you're ready to tease him by putting his meat right between your buns, giving him a nice rub all the way down and back up. Since you gave him a good warm-up with your saliva, his dick stands ready to penetrate your eager hole. The burly dwarf eyes you anxiously, not out of fear, but of excitement as you lower down your backside on the top of his dong, then slowly pressing further down as it begins stretching the entrance to your ass. 'You're tight... fuck... I'm surprised you wanted to do this... It's exactly what I had in mind!'";
	say "     Pleased to know that your foe is enjoying your treat, you take as much as you can of his thick cock, albeit slowly as you manage to accommodate its considerable girth. In fact, it's not the length at all that makes this a hard task to endure, but the thickness of his meat that seems to stretch you from the inside so much, yet feeling like it's filling you completely. Once you're comfortable with it, you begin humping up and down, effectively riding him as he looks at you go with a smile on his face. 'Fuck yeah! Damn! That's just what I needed!' he shouts - or grunts - as his breathing gets deeper as well as his dick inside you. Not limiting yourself to simple vertical movements, you also jerk your hips around to bring out most of the sensations you can provide to the short man, and the meat inside you really seems to respond well to it, by throbbing with desire.";
	WaitLineBreak;
	say "     You keep this up steadily for a while, often jumping on his lap suddenly faster and harder, alternating between both rhythms. Though at some point, you feel like you just want to go along with the lust claiming both of your minds, giving your best at milking his dick with your ass. 'Oh, fuck... if you keep this up, I'll... fucking cum in you.' Feeling the dwarf's warm cum filling you up as you're on top of him is really what's going to happen if you don't stop riding him. With the inevitable result so close, there's really no point in stopping at all, so you just go faster on him, jumping on his cock until the sounds of skin clashing against each other are loud and clear.";
	say "     'Damn, I'm gonna cum...!' Despite his warnings, you don't remove yourself from his dick, and are keen on accepting his load inside you. Soon, you feel it pulsing, quickly followed by a warm liquid gushing into you, coating your fleshy tunnel for a good while as the dwarf keeps shooting. His almost beastly grunts only calm down when his orgasm subsides, but your own happens while [if Player is male]his rock-hard meat is still ramming hard against your prostate. Your cock bursts in a joyful blast of cum that lands on all over the short burly man, some even getting stuck in his beard![else]his rock-hard meat is still filling you in. Your body just trembles all over as a strong wave of pleasure overtakes you![end if] The dwarf smiles at you once things slow down, and you look at him as his dick slowly slides out of your pucker, a long stream of cum oozing out of your used asshole.";
	WaitLineBreak;
	say "     'Fuck damn wow! That was amazing! Makes up for having lost against you, though next time things won't be so easy for you!' he chuckles as he taunts you. With a little legwork, you manage to stand up and gather your things. 'So... I guess I can go now, right? As much as it pities me... but I have places to be!' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Dwarf Male";

to say Dwarf Desc:
	if Resolution of Collapsed Tunnel is 3: [dwarf has the greathammer]
		say "     In front of you is a short middle-aged man, burly and muscular, wearing some kind of leather armor and armed with the golden greathammer. Scratching his long full beard, which contrasts with his short dark brown hair adorning the top of his head, he gives you a snarky look before throwing a taunt at you:[line break]";
		say "     'Heh. Came for the hammer, or for some thick dwarven dick? Guess I'll hit you with both.' With that, he rushes at you. [bold type]That hammer will certainly hurt more![roman type][line break]";
		choose a row with name of "Dwarf Male" in the Table of Random Critters;
		now wdam entry is 16; [he has the greathammer]
	else if Resolution of Collapsed Tunnel is 4 and golden greathammer is owned: [player has the greathammer and is carrying it]
		say "     In front of you is a short middle-aged man, burly and muscular, wearing some kind of leather armor and armed with the golden greathammer. Scratching his long full beard, which contrasts with his short dark brown hair adorning the top of his head, he gives you a snarky look before throwing a taunt at you:[line break]";
		say "     'Nice weapon you've got there. Mind if I try it out?' he laughs, but soon he's rushing at you with his own arms ready.";
	else if Resolution of Collapsed Tunnel >= 7 and Wedding Wreckers is resolved:
		if daytimer is day:
			say "     [one of]While wandering around the urban forest, you encounter Yogdrak simply enjoying his usualy ale under a tree's shadow. 'Heyo! You found me just taking some time to relax. How have you been?' he asks, standing up and approaching you.[or]While wandering around the urban forest, you encounter Yogdrak on some hunting. He's being very sneaky, so you wait... Though, he notices you, and instead chooses to approach you. 'Damn rabbits, they're too quick. I just wanted a fancy lunch, for once!' He now stands in front of you with a friendly smile. 'Anyway, came to see me?'[or]While wandering around the urban forest, you encounter Yogdrak cutting some logs with a wood axe. Maybe he's trying to make a campfire. He sees you, and greets you as you approach him. Wiping a sweat drop off his forehead, he says 'Good to see you. Just trying to get myself some wood for the night.'[at random]";
		else: [night]
			say "     [one of]While wandering around the urban forest at night, you manage to find Yogdrak's campfire. He's sitting next to it, fiddling with something. At first, he thinks you're an enemy, and goes for his stonehammer, but as soon as he sees it's just you, he drops his guard and invites you to come closer. 'Come over, friend! Was thinking you were a foe... Came to see me?'[or]While wandering around the urban forest at night, you manage to find Yogdrak's campfire. He's sitting next to it, roasting something. Probably a rabbit, by the looks of it. At first, he thinks you're an enemy, and goes for his stonehammer, but as soon as he sees it's just you, he drops his guard and invites you to come closer. 'Come over, friend! Was thinking you were a foe... Came to see me?'[at random]";
		say "[YogdrakRoamingTalk]";
	else: [as normal]
		say "     In front of you is a short middle-aged man, burly and muscular, wearing some kind of leather armor and armed with a stone hammer. Scratching his long full beard, which contrasts with his short dark brown hair adorning the top of his head, he gives you a snarky look before throwing a taunt at you:[line break]";
		if BodyName of Player is "Dwarf" and FaceName of Player is "Dwarf": [player looks like a dwarf]
			say "     'Did you get exiled from the underground dwarves? Or are you just another like me? Heh, no matter... I'll show you a good time once I'm done beating you up.' With that, he rushes at you.";
		else:
			say "     'Time for you to experience what's it like to get beaten by a dwarf. You'll be on your knees and at my mercy!' With that, he rushes at you.";

to say YogdrakRoamingTalk:
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Just have a chat.";
	say "     ([link]N[as]n[end link]) - Go for a fight with all that comes with it.";
	if Player consents:
		LineBreak;
		say "     You share some words with each other for a while, in all what is a pretty nice conversation. Speaking with a former enemy whom you've just befriended fills you with hope and boosts your sanity by a little.";
		if a random chance of 1 in 2 succeeds:
			say "     'Thanks for coming by. Here's some ale for you! Drink it while you think of me, yeah?' he says, as he hands you a filled canteen bottle with something very strong inside.";
			ItemGain dwarven ale by 1;
		SanBoost 10;
		now combat abort is 1;
	else:
		LineBreak;
		say "     Well, what can you say. You just want to beat his ass in some friendly fight, so you let him know of your intentions. 'Oh, is that so? Very well, then. I'm gonna beat you up and put you in your place, if you want that so badly.' With that, he readies himself to fight you.";
		wait for any key;


Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Dwarf Male"	"[PrepCombat_Dwarf Male]"

to say PrepCombat_Dwarf Male:
	setmongender 3;
	if debugactive is 1:
		say "     DEBUG: Resolution of Collapsed Tunnel: [Resolution of Collapsed Tunnel][line break]";
	if Resolution of Collapsed Tunnel is 5 or Resolution of Collapsed Tunnel is 6: [player wants to handle their transformation on their own or postponed the plan]
		say "[DwarfQuest4]";
		now combat abort is 1;

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dwarf";
	add "Dwarf Male" to infections of HumanList;
	add "Dwarf Male" to infections of HistoricalList;
	add "Dwarf Male" to infections of MaleList;
	add "Dwarf Male" to infections of BipedalList;
	now Name entry is "Dwarf Male";
	now enemy title entry is "Dwarf Scavenger"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Yodgrak"; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He charges towards you and gives you a dirty low kick.[or]He swings his stone hammer around, hitting you with staggering force.[or]Throwing a handful of dirt into your face, the short dwarf manages to smack you with his hammer's pommel as you're off guard, knocking you back with great strength.[at random]";
	now defeated entry is "[Dwarf loses]";
	now victory entry is "[Dwarf wins]";
	now desc entry is "[Dwarf Desc]";
	now face entry is "a weathered middle-aged man's, rugged and long-bearded, with short and shaggy dark brown hair hugging the top of your head";
	now body entry is "that of a short and burly man, musclebound and covered in hair. Your legs are fairly shorter than an average human's, making you stand half one's height";
	now skin entry is "peach toned and rough"; [ format as "Your body is covered in (your text) skin"]
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
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 2; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "dwarven ale"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "dwarf male milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "stocky"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "dwarf"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

[Section 3-1 - Dwarf Knight

to say DwarfKnight wins:
	if HP of Player > 0: [player submits]
		say "     ";
	else: [player loses]
		say "     ";

to say DwarfKnight loses:
	say "     ";

to say DwarfKnight Desc:
	setmongender 3;
	say "     ";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"True_Dwarf_Male"	"[PrepCombat_True_Dwarf_Male]"

to say PrepCombat_True_Dwarf_Male:
	say "";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dwarf";
	add "True_Dwarf_Male" to infections of HumanList;
	add "True_Dwarf_Male" to infections of HistoricalList;
	add "True_Dwarf_Male" to infections of MaleList;
	add "True_Dwarf_Male" to infections of BipedalList;
	now Name entry is "True_Dwarf_Male";
	now enemy title entry is "Dwarf Knight"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He charges towards you with his sword! Luckily, you manage to get out with a slight cut.[or]He swings his sword around, hitting you with agonizing pain.[or]The short armored dwarf manages to smack you with his sword's pommel as you're off guard, leaving your head aching.[at random]";
	now defeated entry is "[DwarfKnight loses]";
	now victory entry is "[DwarfKnight wins]";
	now desc entry is "[DwarfKnight Desc]";
	now face entry is "a weathered middle-aged man's, rugged and long-bearded, with short and shaggy dark brown hair hugging the top of your head";
	now body entry is "that of a short and burly man, musclebound and covered in hair. Your legs are fairly shorter than an average human's, making you stand half one's height";
	now skin entry is "peach toned and rough"; [ format as "Your body is covered in (your text) skin"]
	now tail entry is "You have a hairy, compact muscled butt"; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a weathered male visage, rugged features and a long full beard growing out of your jaw and chin. Your hair becomes very short and dyed in a dark brown color"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a that of a middle-aged man, with a stocky and muscular build. Looking down, you notice your legs being much shorter than the rest of your body, making you standing half the height of an average human"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it gets rougher, becoming hairy and peach toned"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets tight and fuzzy, with compact muscled glutes"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 18;
	now sta entry is 20;
	now per entry is 15;
	now int entry is 10;
	now cha entry is 11;
	now sex entry is "Male";
	now HP entry is 85;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 2; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 10; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "dwarf male milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "stocky"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "dwarf"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;
]

Section 4-1 - Items

Table of Game Objects (continued)
name	desc	weight	object
"dwarven ale"	"a canteen bottle with some sort of strong alcoholic beverage inside. It's obviously dwarven in origin."	1	dwarven ale

dwarven ale is a grab object.

dwarven ale is infectious. Strain of dwarven ale is "Dwarf Male".

Usedesc of dwarven ale is "[dwarven ale use]".
to say dwarven ale use:
	say "You bring the canteen bottle to your mouth and chug its contents down, the drink tasting like a very strong beer that nearly burns down your throat.";
	PlayerDrink 10;
	addAlcPoints 4;

instead of sniffing dwarven ale:
	say "This beverage smells a lot like alcohol. It must be very strong.";

to say DwarfMaleTF:
	now TailName of Player is "Dwarf Male";
	now Tail of Player is "You have a hairy, compact muscled butt";
	now FaceName of Player is "Dwarf Male";
	now Face of Player is "a weathered middle-aged man's, rugged and long-bearded, with short and shaggy dark brown hair hugging the top of your head";
	now SkinName of Player is "Dwarf Male";
	now Skin of Player is "peach toned and rough";
	now BodyName of Player is "Dwarf Male";
	now Body of Player is "that of a short and burly man, musclebound and covered in hair. Your legs are fairly shorter than an average human's, making you stand half one's height";
	now CockName of Player is "Dwarf Male";
	now Cock of Player is "human";

Section 4-2 - Weapons

[golden greathammer moved to Core Mechanics/Weapons.i7x]

Section 5 - Endings

Dwarves ends here.
