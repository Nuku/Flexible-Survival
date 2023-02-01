Version 1 of Gargoyle Sentry by Gherod begins here.

"Adds the Gargoyle Sentry and NPC, Krumirr, to the game, along with the corresponding events."

[Version 1 - Moved Event to its own file]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Gargoyle Sentry	"Gargoyle Sentry"

Gargoyle Sentry is a situation.
ResolveFunction of Gargoyle Sentry is "[ResolveEvent Gargoyle Sentry]".
Sarea of Gargoyle Sentry is "Outside".
When play begins:
	add Gargoyle Sentry to BadSpots of MaleList;
	add Gargoyle Sentry to BadSpots of VoreList;

[RESOLUTION STAGES]
[0 - Never looked into the chest]
[1 - Explored chest, then left]
[2 - Explored chest, got close to the gargoyle, left]
[3 - Explored chest, was kicked by the gargoyle]
[4 - Returned to the place, but the gargoyle was nowhere to be found]
[-]
[5 - Disturbed the gargoyle and got punished at least once]
[6 - Managed to persuade the gargoyle into befriending you]

[KRUMIRR STATS]
[Libido - His sexual dialogue and options unlock as this value increases]
[Hunger - His vore dialogue and options unlock as this value increases (WIP)]

GargoyleSentryTracker is a number that varies. GargoyleSentryTracker is usually 20000.

a postimport rule: [fix for having set the event as resolved prematurely in a previous update]
	if Resolution of Gargoyle Sentry < 4:
		now Gargoyle Sentry is not resolved;

to say ResolveEvent Gargoyle Sentry:
	if GargoyleSentryTracker - turns < 7: [encountered the gargoyle in the current day]
		say "     It is too early for that. You have already seen the gargoyle sentry today, and he takes time to appear again.";
	else if resolution of Gargoyle Sentry is 0: [never looked into the chest]
		say "     Amidst your exploration, with no destiny specified, you stumble across a small rubble of stone in the far distance, as the shape of what seems to be a statue of some sort is standing right in the middle of it. Upon closer inspection, you realize the silhouette isn't quite human, and the more you approach, the more you conclude what kind of construct it is. A gargoyle, no less, and a fairly large one, complete with its privates dandling between the thick and muscular legs. Clearly a he, is immobilized at the moment, not breathing nor moving an inch, though by the looks of the area surrounding him, you guess that could immediately change if you got too close. The constructions seem to follow a safety perimeter, all man-built - so probably built by the gargoyle himself - and he must be resting still. Currently, he's sitting on a small stone pedestal, legs curled and back leaning forward, with each hand holding one knee of their respective size, and his eyes, albeit lifeless looking, are open, featuring a face that looks like a mix between a dragon and a bat, with a pair of small horns on the top of the head. His wings are resting on each side of his body, also hanging still as a statue.";
		say "     Before you consider taking the risk, you attempt to scout around for anything of interest. It seems he keeps a few treasures in a chest, probably things he values a lot, but some of them could probably be useful to you. However, the pattern these stones seem to make concerns you, as they don't look exactly like randomly placed rubble. There's an ominous sensation coming from them, and knowing how some stuff can unexplainably come to life around here, you think your presence would be able to disturb the surrounding area, and looking at how big he is, you know it'd be a very bad idea to go in carelessly. Maybe if you were small or light enough, you could cross this perimeter without alerting the gargoyle... ";
		if glowing mushroom is owned:
			say "But you do remember that you've collected a few strange looking mushrooms in the past that might be able to do the job.";
			WaitLineBreak;
			say "     Looking at one you pulled out of your inventory, you consider your options... [bold type]Would it be worth trying to ingest one of these and walk over the large gargoyle's territory?[roman type]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Sure, there's no reward without taking risks.";
			say "     ([link]N[as]n[end link]) - You could, but not now.";
			if Player consents:
				LineBreak;
				SGargoyleExplore;
			else:
				LineBreak;
				say "     Better not take any chances with this, at least for now. Though it seems he won't really go anywhere, so there's no rush in coming back again seeking this [bold type]gargoyle sentry[roman type]... Unless something unlikely happened.";
		else:
			say "Is there any way you can achieve that? Maybe a consumable of some sort that could shrink you...?";
			WaitLineBreak;
			say "     You figure you should look around for something with a [bold type]shrinking effect[roman type] before you return here and attempt to do anything. And your survival instincts tell you to NOT try your luck in going there normally. It would end badly for you, as this gargoyle seems bigger and stronger than any other you've seen if it was able to come to life.";
	else if resolution of Gargoyle Sentry > 0 and Resolution of Gargoyle Sentry < 4:
		say "     Amidst your exploration, with no destiny specified, you stumble across a small rubble of stone in the far distance. Upon closer inspection, you realize it's all very familiar to you. It's the place where you found that gargoyle sentry [if resolution of Gargoyle Sentry is 3]who almost crushed you to death after having covered you in his beastly cum [end if]the other day, and you were unable to retrieve anything of value out of it. Unfortunately, it looks like it will remain as such. The gargoyle is nowhere to be found, but neither is his treasures. Without anything else of interest to be done here, with the spot looking clearly abandoned, you erase this place off your notes and proceed further ahead, ignoring this area from now on.";
		say "     ... But something seems... wrong. Maybe you could keep looking for the [bold type]Gargoyle Sentry[roman type] in the future days. He couldn't have disappeared just like that, no. Something must have surely happened.";
		now Resolution of Gargoyle Sentry is 4;
	else if Resolution of Gargoyle Sentry > 3 and Resolution of Gargoyle Sentry < 6: [Follow-up]
		SGargoyleSearch;
	else if Resolution of Gargoyle Sentry is 6: [Befriended the gargoyle]
		SGargoyleVisit;

to SGargoyleExplore:
	ItemLoss glowing mushroom by 1;
	say "     Down the hatch goes a shroom, and you start feeling the effects almost immediately. The world around you shifts before your eyes as you feel yourself shrinking to only a few inches tall, [if player is not naked]having even shrunk through your gear and getting completely naked[else]your already naked body remaining as such, even more exposed to danger[end if]. Adrenaline rushes with the anticipation of attempting your dangerous plan before you dare to take a tiny step towards the stone perimeter. Relief arrives down your shoulders as your tiny feet makes it forward without anything out of the ordinary happening, so you start walking around slowly and, effectively, everything goes according to plan. Now that you're inside the safety perimeter, it's time to explore!";
	say "     The muscular gargoyle sleeps soundly and still, looking menacingly huge from your perspective of view. You don't even want to imagine what he could do to you being of that size if he suddenly came to life and saw an intruder so small and vulnerable, meaning you shouldn't linger for long. Making your way through the rudimentary stone pavement, you head directly towards the place where you've seen the goods, a much longer way than what it would be if you were normal sized... But you manage, after about a few minutes of walking. Then, you climb up through some stones, a task surprisingly easier to accomplish while you're tiny and light, and walk over the edge of some sort of chest. Luckily, it's not closed, as there are a few objects holding the top up in place. The bottom shines, as there must be a few valuables in here!";
	WaitLineBreak;
	say "     Carefully, you slide down through what seems to be a large copper ingot, and land on a solid surface. More ingots of many kinds cover the bottom of the chest, shining in various colors and sizes, but all in the same shapes, as expected. Seems like the gargoyle has a knack for collecting these kinds of stuff, but now another problem arises... You're too small to carry any of this! Ingots are heavy and long, you'd be lucky if you could manage to shove even a small one out of the chest, and even then, these things would hit hard once they fell to the ground, and it would be noisy to drag them across the stones. But you're not ready to give up, yet! There must be something you can bring with you... right?";
	say "     You search the inside of the chest thoroughly, but unfortunately... no luck. Seems like your idea to shrink and pass by unnoticed was brilliant in only one way, because you're not able to take anything with you. You could sell these ingots for some creds to anyone interested, only if you could transport them out. A misfortune, but at least you know it's not anything too valuable or worth running the risk of being smashed to death by a big bad manly gargoyle if he ever awakened and saw you as a menace. With disappointment, you figure it's time to leave the inside of the chest, so you make your way back by climbing up through the ingots and onto the edge of the treasure container.";
	WaitLineBreak;
	say "     Breathing outside air once more, you take a careful look around you, and towards the gargoyle. He's still dormant, and nothing strange happened while you were here. Pointless as this trip might have been, at least you have the opportunity to admire the work of art this beautiful statue is. Each muscle is flawlessly sculpted, almost as if it was a real organic being, and something about the creature strikes you with sheer power. Then, since you're leaving with your hands empty, an idea comes to mind... Realizing you're able to climb through stuff with ease, and never having seen such a gorgeous sculpture so up close while being as small as you currently are, how about you [bold type]go on a little adventure and explore this gargoyle's body?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Of course! Purely out of curiosity.";
	say "     ([link]N[as]n[end link]) - Wouldn't that be reckless and dangerous? Better just leave and note the location for future reference.";
	if Player consents:
		SGargoyleScene;
	else:
		say "     What nonsense were you just thinking? That would increase your odds of getting killed, for sure! What if it comes to life and doesn't like having a tiny person climbing around him? You'd be turned into powder, for sure... So it's better to just take your leave through the same path you took when you first arrived, then wait out the effects of the shrooms to subside. It takes a while, but soon you feel yourself regaining your normal size, able to proceed with your usual affairs and re-equip yourself. You also take note of this place, in case you come across it in a near future with the new knowledge you have just acquired.";
		now resolution of Gargoyle Sentry is 1; [explored chest, left]
	now GargoyleSentryTracker is turns;

to SGargoyleScene:
	say "     If you're careful enough, it won't even notice you're here. So you carefully bypass the chest and head towards the stone pedestal where the gargoyle is sitting on, and readying yourself to climb it up, you stretch your arms once more and give enough balance to jump over, grabbing the edge with both hands and bringing your body onto the top. From here, you can have a very clear view of his large clawed feet, holding against the pedestal firmly. They're not connected to the ground, which confirms your suspicions of this being one of those [']magic['] gargoyles. But looking between the thick thighs has you meeting an enormous manhood, long and smooth, hanging soft between his legs. Its tremendous size is only scarier when you're this small, but you're sure it would still be massive at your normal size! Beneath it, an equally sizable pair of testes hang heavily below, only overshadowed by the legs and the shaft, but they seem rather swollen.";
	say "     This visage gives you the chills... but you're able to take a good gaze at the masculine gargoyle's virile details, and the rest of his beautiful body, incredibly huge compared to you, from a delicious angle. [bold type]There's even an unexplainable musk coming from his parts, as if it were alive...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - This arouses you, so you want to get closer...";
	say "     ([link]N[as]n[end link]) - Alive... you think?! Something will most definitely happen if you don't leave right now.";
	if player consents:
		LineBreak;
		say "     This naughty idea doesn't leave your mind. How hot it is to face an exposed penis that can be as big as you're tall while soft, looking so smooth and appealing to the eye, and being just a few centimeters away from it, without any obstacle between it and you to keeping you from getting closer? How can you pass this opportunity? And surely, as light as you are, maybe you can just... have your fun without waking him up? A risky idea, but one that you can't miss. With the decision made, you bolster up the courage to step towards the gargoyle's considerable cock, the musk indeed becoming stronger, almost as if you were approaching an alive being's parts... It fills you with adrenaline, but it also makes you horny, and between the two, you know which you want to satisfy.";
		say "     When you get close enough to touch it, you extend your hands and softly brush both the palms against the tip all around. To your surprise, it feels warm and oddly smooth, as if the stone was polished to the very point of it being so soft and... even slightly squishy, like a real dick. But the thought doesn't set you off, much the contrary, as you continue to rub down through the solid shaft, completely lost in the sensation. You're even able to bounce it around realistically, and the more you do, the warmer it gets... and then it shakes slightly within your grasp. Your eyes widen as the sculpture's dong hardens slowly, growing further beyond, getting erect as you massage the entire thing.";
		WaitLineBreak;
		say "     This dick in its fully erect state is clearly much bigger than you, and so heavy it could probably crush you beneath if it ever fell on top of you. Since it becomes so hard, it lifts off the ground, and you're either forced to give up or attempt to climb to the top of it. You choose the second option, making your way through the base, bringing yourself up onto the top of the throbbing rod. Then, relocating towards about half of the cock, you put your arms and legs around his thickness to feel it all over beneath you...";
		WaitLineBreak;
		say "     ...Then suddenly, you hear a breath. A heavy one, inhuman, deep and very audible, almost monstrous, sound surging through the entirety of the gargoyle's body. Your heart starts beating at double the speed, your body immobilized and frozen in sudden fear, as you see both of the massive creature's arms moving slowly towards you. However, he does not hurt you... Instead, he seems to sit back comfortably, stretching his powerful legs forward, and bringing his full erection to poing up, with you still tugged on it. A powerful hand envelops you from the back, carefully rubbing you across the pulsing shaft, surprisingly gently. You look up at his face, his eyes now giving a dimming faint light through the black coal sclera, pointed towards you. He looks real, alive, and feels so much as such, that you could forget that he's made of stone...";
		say "     He does not direct any word towards you, instead continuing to jerk off his cock with you tugged around it. Your body around the throbbing shaft feels just too hot to not get turned on by the whole thing, your own existence smothered between it and the gargoyle's hand, bringing you up and down through the entirety of his length. He breathes of life, deeper in both intensity and sound, as he starts to slow down his stroking only to bring you closer to the glans. You can't almost believe your eyes when you see that he can actually leak precum, and not just a tiny bit of it, but copious amounts of it, enough to drown you in a single drop...! Feeling his ridiculously massive meat pulsing in arousal, you know he's about to do something naughty for his own enjoyment, and that follows up with having your face shoved against the oozing slit.";
		WaitLineBreak;
		say "     Serves you right for being so attracted to his musk, that now you're being forced to swallow any of the statuesque creature's juices as long as he wants, and the more he presses you against it, the harder he becomes and the more he leaks out. Each drop is enough to fill your mouth, and you can barely find a second to breath with his heavy finger pressed against the back of your head, holding you in place. Then, out of the sudden, the gargoyle huffs and pushes himself forward, landing on the ground on fours with a massive earthquake almost able to shake you off our own existence, his hand holding you against his cock and keeping you from suffering a very bad fall. Now the beast's prick is on top of you, drooling its liquids freely on top of you for a moment, its heavy weight almost crushing you underneath...";
		say "     But he's just getting started. You get a feeling he might be punishing you from intruding, but since you got him horny, he's probably doing it in a way that takes care of both problems... Or at least you'd like to think that. His ever throbbing erection only craves for more friction, and soon you find yourself getting brushed and rubbed against the massive shaft, over and over, up and down the long pole that's eager to explode. He's so turned on that you can even see his hips jerking back and forth, sometimes his hand standing still as he lets his body do all the movement. It gets almost unbearably hot between you and his dick, only worsening as he comes closer to the edge...";
		WaitLineBreak;
		say "     Then with an abrupt movement, he brings you down to the ground, a little too harshly for comfort, then gets his trunk thighs down to his knees as his rock hard cock is pointed directly at you. With a wicked grin on the beast's expression as he strokes faster and faster, the tip being only mere inches away from you, it's only a few seconds before your vision blacks out. An enormous and thick splat of cum hits you right on your face, covering it completely and throwing you back to the floor, as more and more of it falls directly on you, coating you under numerous and seemingly endless layers of his generous load, completely immobilizing you and keeping you to drown underneath, almost as if you were trapped in amber! By the waves you keep feeling, the gargoyle doesn't stop cumming for a very good while, enough to cause you start feeling lightheaded for the lack of air...";
		say "     However, you suddenly feel something heavy pressing against you, more and more, squishing all the cum against you, forcing some of it to slip to the side, then you feel yourself getting dragged around in a rather slippery pool, until the ground feels hard and harsh once more. Fortunately you're able to catch a breathe and shove some of the suffocating load off your face, but you can't say the same for the rest of your body, trampled under the monstrous beast's clawed foot. He pressed on downwards one time, then another, each harder than the last, and you almost feel your bones cracking from the force... Then, he keeps you there, on the verge of breaking, for a long minute... Until he lets go, his heavy foot landing just a few inches to your side with tremendous strength, causing the earth to shake around you!";
		WaitLineBreak;
		say "     The gargoyle doesn't speak, but eyes you intimidatingly, the message being clear in your head. Then, he streches his wings, his overshadowing and statuesque dimension enough to truly make you shit your pants - if you had them on - as he takes a step back, only to kick you away of his territory. You're sent flying across a few meters, ending up just outside of the stone perimeter, now covered in both dirt and cum as the gargoyle takes his spot above the stone pedestal, his manhood still giving signs of arousal even as it [']tries['] to return to its soft state. There's a satisfied smirk on his face as he turns into an immobile statue once more.";
		say "     Meanwhile you... Well, you've learned your lesson. Your body hurts all over and you're still dizzy from everything. Just do not mess with a gargoyle sentry ever again.";
		WaitLineBreak;
		say "     Taking a deep breath, all that you have left now is waiting for the shroom effect to disappear, so you're able to return to your usual affairs and re-equip yourself. Fortunately, you have an easier time cleaning yourself once you return to your normal size. You also take note of this place, in case you come across it in a near future with the new knowledge you have just acquired... Or at least to know better than to risk your life for a wicked curiosity.";
		now resolution of Gargoyle Sentry is 3; [explored chest, was kicked by the gargoyle]
	else:
		LineBreak;
		say "     Okay, you've had enough sightseeing for a lifetime, almost literally. Knowing you might have gotten a bit too close to the gargoyle, you simply decide to come down off the pedestal, turn towards the exit then slowly and carefully make your way out of the danger perimeter. You breath of relief once you've made it out in one piece, succesfully not waking up the gargoyle even with the risk you just took. Taking a deep breath, all that you have left now is waiting for the shroom effect to disappear, so you're able to return to your usual affairs and re-equip yourself. You also take note of this place, in case you come across it in a near future with the new knowledge you have just acquired.";
		now resolution of Gargoyle Sentry is 2; [explored chest, got close to the gargoyle, left]

to SGargoyleSearch: [Player searches for gargoyle sentry...]
	say "     In an attempt to find the large gargoyle statue once more, you go on an expedition around the outside area, hoping that you would find at least a clue or something which could lead you to his whereabouts. After you have found its former location, you realized there were no traces that could indicate an estimate of the direction he took, so he might have flown away to another area. With this in mind, you attempt to locate the gargoyle by searching the immediate area first, then expanding the perimeter towards places which would be more likely to have been picked as a hideout for a gargoyle creature, according to the circumstances and what little you know about them.";
	WaitLineBreak;
	if a random chance of 2 in 5 succeeds:
		say "     You are about to enter an abandoned little chapel, which you just discovered now, when you see a very familiar shape inside. You had no idea this was here, but you are glad to have stumbled across this area, as said shape is the very same one of the Gargoyle Sentry. There is nothing to be said about the chapel, except that is small and unidentified, ornamented with objects and symbols, possible of religious nature, that you don't recognize. The entrance almost looks too small for the gargoyle, even, and the space inside would not fit a lot more than just a few people at once. Definitely a curious place for such a sturdy stone creature.";
		WaitLineBreak;
		SGargoyleScene2;
		now GargoyleSentryTracker is turns;
	else:
		say "     Unfortunately, you are without luck, this time. Perhaps it would be better to pause and return to square one. He could not have gone too far...";
		if a random chance of 1 in 3 succeeds: [consolation reward]
			let randomnumber be a random number from 1 to 5;
			if randomnumber is:
				-- 1:
					say "     But not everything is bad. You managed to find a [bold type]bottle of clean water[roman type] during your search, lying abandoned in some random area where it could have possibly been dropped by someone, forgotten or both.";
					ItemGain water bottle by 1 silently;
				-- 2:
					say "     But not everything is bad. You managed to find a [bold type]soda can[roman type] during your search, lying abandoned in some random area where it could have possibly been dropped by someone, forgotten or both.";
					ItemGain soda by 1 silently;
				-- 3:
					say "     But not everything is bad. You managed to find a [bold type]can of food[roman type] during your search, lying abandoned in some random area where it could have possibly been dropped by someone, forgotten or both.";
					ItemGain food by 1 silently;
				-- 4:
					say "     But not everything is bad. You managed to find a [bold type]pack of chips[roman type] during your search, lying abandoned in some random area where it could have possibly been dropped by someone, forgotten or both.";
					ItemGain chips by 1 silently;
				-- 5:
					say "     But not everything is bad. You managed to find a [bold type]bottle of dirty water[roman type] during your search, lying abandoned in some random area where it could have possibly been dropped by someone, forgotten or both.";
					ItemGain dirty water by 1 silently;
			say "     Whenever you are ready to continue your search, simply begin your hunt for the [bold type]Gargoyle Sentry[roman type] until you find him.";
		else:
			say "     Whenever you are ready to continue your search, simply begin your hunt for the [bold type]Gargoyle Sentry[roman type] until you find him.";

to SGargoyleScene2:
	if Resolution of Gargoyle Sentry is 4:
		say "     There would be no other reason to enter here but perhaps using a second chance to explore the statue, although this time it could prove difficult due to his standing position. But even if you were up to the challenge, and because that is also part of the difficulty, you should already know that you would have to be really small, and very careful so that you wouldn't wake him up, else if your intention is to piss him off. Gargoyles do not like to be disturbed.";
		if glowing mushroom is owned:
			WaitLineBreak;
			say "     Looking at one of the mushrooms you pulled out of your inventory, you consider your options... [bold type]Would it be worth trying to ingest one of these for the occasion?[roman type]";
			LineBreak;
			say "     [link](1)[as]1[end link] - You wouldn't waste another chance!";
			say "     [link](2)[as]2[end link] - Not now, better return later (but you might have to search for him again).";
			say "     [link](3)[as]3[end link] - You no longer have any interest in him. Leave and forget.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to eat a shrinking shroom, [link]2[end link] to leave temporarily or [link]3[end link] to leave for good.";
			if calcnumber is 1:
				LineBreak;
				SGargoyleScene2Explore;
			else if calcnumber is 2:
				LineBreak;
				say "     You decide it is better not, for now. Even if you have to conduct another search to find him, at least then you should be ready.";
			else if calcnumber is 3:
				Linebreak;
				say "     You have had your misadventures with the gargoyle, and have decided that enough is enough. With this said, you simply take your leave and forget about the existence of this chapel. You have a feeling you will never encounter it again, ever.";
				now Resolution of Gargoyle Sentry is 99;
				now Gargoyle Sentry is resolved;
		else:
			say "     Unfortunately, you don't come prepared for that. You are lacking the shrinking mushrooms, and thus, unable to shrink. You have no other choice but to come back later, however you might have to conduct another search to find him. It looks like he changes locations, after all...";
	else if Resolution of Gargoyle Sentry is 5:
		say "     Judging from your last encounter with the gargoyle, you suppose he would remember you clearly, now. Perhaps this time, you could try to befriend him by entering the chapel with your normal size and politely reintroduce yourself, using the best of your manners while apologizing for coming to disturb him, or through some other way you might find most appropriate to create a bond with him without risking being kicked away off the chapel. Another option would be... to just eat another shrinking shroom and practically ask for another punishment, if there was any part of you that liked it. You can always leave and return later, too.";
		LineBreak;
		SGargoyleScene3Choices;

to SGargoyleScene3Choices:
	say "     [link](1)[as]1[end link] - Get the Shrinking Mushroom (Warning: Vore Content).";
	say "     [link](2)[as]2[end link] - Try talking to the Gargoyle Sentry.";
	say "     [link](3)[as]3[end link] - Leave, for now.";
	say "     [link](4)[as]4[end link] - You no longer have any interest in him. Leave and forget.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to eat a shrinking shroom, [link]2[end link] to try talking to him, [link]3[end link] to leave temporarily or [link]4[end link] to leave for good.";
	if calcnumber is 1:
		if glowing mushroom is owned:
			say "     Noticing you still have mushrooms in your pockets, your decision is made. Taking the item out of your inventory, you prepare yourself for the next steps...";
			WaitLineBreak;
			SGargoyleScene2Explore;
		else:
			say "     Wait, you don't have any mushrooms with you! It will be necessary to get more before you attempt this option again, since you have no other way of shrinking.";
			SGargoyleScene3Choices;
	else if calcnumber is 2:
		say "     This time, you have made the decision to attempt a conversation with the beastly gargoyle. With that in mind, you disregard any other options for a peaceful and quiet entrance, as your intention is to actually speak with the statuesque being. However, he remains dormant, unaware of your presence, even when you walk inside the chapel. Taking a glance over his silhouette, you carefully approach him...";
		WaitLineBreak;
		SGargoyleScene3;
	else if calcnumber is 3:
		say "     After looking at your options, you decide that it is better to leave, for now. You may have to conduct another search afterwards, but at least you know what you should be looking for... If that is any help.";
	else if calcnumber is 4:
		say "     You have had your misadventures with the gargoyle, and have decided that enough is enough. With this said, you simply take your leave and forget about the existence of this chapel. You have a feeling you will never encounter it again, ever.";
		now Resolution of Gargoyle Sentry is 99;
		now Gargoyle Sentry is resolved;

to SGargoyleScene2Explore:
	say "     It might be curiosity getting the best of you, or you just find yourself very attracted to such a sculptural form like the Gargoyle Sentry's. It may mimic one of a beast, but the vast majority of it strongly resembles a powerful and muscular adonis of stone, only with the head of something between a dragon and a bat. What draws your attention the most is that, unlike most decorative gargoyles you see in temples and cathedrals, this one has a considerably sizable penis between his solid thighs, and for that fact alone, it is impossible to mistake him for any other type of gargoyle. He remains dormant and completely oblivious of his surroundings, allowing you to take a good look at him before ingesting one of the magical shrinking mushrooms.";
	say "     Vertigo takes you over as your perspective of the world changes abruptly, with everything becoming much, much bigger before your eyes, with any gear you might have had becoming too big and falling off your body. The little chapel does not look so little now, but you do. Standing right by the entrance to the small worship space, you now feel very keen on staying far away of the outside and walk into the much safer looking chapel, towards the immobile gargoyle whose eyes remain closed and unaware of your presence. With tiny steps, you make your approach carefully, out of survival instincts regarding your vulnerable size, but you are so helplessly drawn to the masterpiece in front of you that there is not much else to care about, only to arrive at his position safely.";
	WaitLineBreak;
	say "     As you come close to the stone creature, you begin to feel slightly intimidated at his size. Not that you haven't seen him before, but now that you are taking a closer look, you remember how much he overshadows you at your current size. Someone as big as he, comparatively, could effortlessly squash you down like a bug with a single stomp, or do even worse than that with much less endeavor than what anyone would find suitable. Nonetheless, here you are, risking it for a little pleasure and fascination for the enormous gargoyle. Once you have decided to put your thoughts into actions, you begin to stretch your arms and legs as preparation for the climb ahead, which will be a long one, by the looks of it.";
	say "     After having pushed yourself towards the top of the altar, you slip between his thick toes, watching out for the pointy claws at the end of each, and bring your body above them and his feet, proceeding to grab yourself onto one of his ankles and climbing up through that bulging calf muscle. Once you have made it past the knee area, you use the inclination of his powerful thighs to ascend further, as his legs are slightly bending forward, to your luck. Taking a short rest, you examine your surroundings at this point. To your left, you have the crotch of the gargoyle, his cock at an already good size despite being in its soft state, and jacked torso above you, with a few lumps and bits due to the shape of his muscles that could make your climb doable.";
	WaitLineBreak;
	say "     [bold type]Which way would you like to take your exploration to?[roman type]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Up ahead, past his torso.";
	say "     ([link]N[as]n[end link]) - Shift towards his crotch.";
	if Player consents:
		LineBreak;
		say "     Having decided to climb up even higher, you carefully place your hands over his enormous waist and bring your weight up to grab his abs, which provide good support for your body. All the lumps and irregularities given by such sculptural muscles allows an easy climb, which also adds to the contribution of your lowered mass due to the shrinking you have undergone. Without much of a struggle, you are past his midriff, and have to squeeze yourself between his pecs in order to continue ascending. You have to be honest, his beastly face is something to be scared of, more so when you are this close. One could say they really were created with the sentinel aspect in mind when trying to justify their lack of handsomeness.";
		say "     But what the gargoyle lacks in beauty, has in the marvelously crafted body of stone, the pinnacle of masculine physique that any male human would dream of. You even forget about moving from the place you're at, right between the rock hard pectorals as you inspect the whole figure, feeling a faint beat coming from the inside of the statue as the stone gets warmer and warmer... Wait, that last bit was not expected. Truly, you feel your surroundings heating up, and what seems to be the heart of the gargoyle coming to life, with his stone skin becoming more like living flesh and the smell of an ancient beast flaunting at your nostrils. When you look up, his intimidating eyes are looking angrily at you, as if he was about to [italic type]eat[roman type] you alive.";
		WaitLineBreak;
	else:
		LineBreak;
		say "     You are not quite sure about the safety of such decision, but you are definitely very keen on grabbing onto that massive piece of rock meat and admire it from up close. Carefully, and with that in mind, you shift your position towards the inner side of his muscular thigh, then with some balance, you hurl your body at the soft yet solid base of his shaft. Raising one leg, you manage to bring your body up and on top of it, leaning your back against his pubic area, and now having a whole view in front of you. There is every inch of the chapel that you can see, but what is more interesting is the very thick and long cock that you're practically riding at this point.";
		say "     In its soft state, you actually have to be careful not to slip forward, and the fall would not be a comfortable one. There is a considerable height underneath you, and hitting the ground all the way from up here could possibly hurt you very much, so you remain held tight around the base of his shaft as you give it a pat and a rub. Despite the gargoyle being made of stone, it all feels and looks really smooth to the touch, and you could swear it begins to warm up the more you caress it... Wait, it is warming up. Truly, you feel the cavernous body of stone in which your legs are wrapped around harden and swell, raising up to attention as you hear a grunt coming from above. All the stone became more like living flesh by now, and there is the smell of an ancient beast flaunting at your nostrils. When you look up, the gargoyle's intimidating eyes are looking angrily at you, as if he was about to [italic type]eat[roman type] you alive.";
		WaitLineBreak;
	say "     'Another intruder in my domain?! Disturbing me in my sleep, no less...' he exclaims with a ground-shaking, inhumanly deep voice, as he goes for a grab of you with his thick hand, bringing you to the level of his eyes. 'I don't like to be disturbed.' His eyes are fixated on yours as he says that, piercing into your soul like an animalistic predator looking down over to their prey. At least, this is how you feel, given the overpowering size of the manly gargoyle compared to your vulnerable, shrunken frame. 'How dares a scavenger defile private property, uninvited?!' he gives you the question, though not really caring for your answer. Instead, he seems to be examining your body by flipping you around and poking at you with his index finger, and you can't do anything about it.";
	say "     'There's nothing on you now... Hm... Squishy and fleshy... I think someone like this came to me back when I was guarding that chest... Was it you? I cannot remember, with all honesty...' He keeps asking the questions, all while completely harassing you with daring touching, albeit without hurting you, surprisingly. In fact, you could say the gargoyle is somewhat amused by your tiny presence, although he still seems annoyed that you have woken him up. 'I was in a really bad mood, then. Not so much, right now... Although, I think you deserve a punishment for walking in without permission.' He stops, then brings you really close to his eyes, forcing you to face them.";
	WaitLineBreak;
	say "     'I shall let you choose your predicament. Where should I put you... In my mouth, and swallow you whole, or... in my cock, and... swallow you whole all the same?' he asks, showing you a wicked grin that sends shivers down your spine. 'Come on now, pick an option, or you may end up in my ass, instead.'";
	say "     [bold type]He really is waiting for your answer...[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - If you have to pick one... choose his mouth.";
	say "     [link](2)[as]2[end link] - Can he really do that with his dick?";
	say "     [link](3)[as]3[end link] - He also mentioned his ass... Is there a third option?";
	say "     [link](4)[as]4[end link] - Choose none! Apologize and beg for mercy!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to choose mouth, [link]2[end link] to choose cock, [link]3[end link] to ask about the ass option or [link]4[end link] to beg for mercy.";
	if calcnumber is 1: [Oral Vore]
		Linebreak;
		say "     After hearing your reply, he proceeds to give you a really long and hard lick through your entire body, leaving you coated in his saliva. 'Mmm... Is that it? Well, then...' his grip around you tightens as he gives you a scary look. 'Into my belly, you go.'";
		WaitLineBreak;
		SGargoyleScene2OV;
	else if calcnumber is 2: [Cock Vore]
		Linebreak;
		say "     After hearing your reply, he lets out a chuckle, as one of his hands reaches down for his member, throbbing hard by now, to give it a gentle stroke. It looks like he is really enjoying this. 'Yes...? That is the least you can do, make me enjoy it. Perhaps I might forgive you once you're stuck and held tightly in my balls.'";
		WaitLineBreak;
		SGargoyleScene2CV;
	else if calcnumber is 3: [Anal Vore]
		Linebreak;
		say "     Yes, you really have decided to ask him that. His eyes widen, then he lets out a laughter. 'Am I hearing it right? You actually [italic type]want[roman type] to be shoved up my ass?! What a weird one... But that is fine. If that is how you want to be punished... I hope you have a good time being pulled deep inside me.'";
		WaitLineBreak;
		SGargoyleScene2AV;
	else if calcnumber is 4: [He picks one for the player]
		Linebreak;
		say "     With all your might and despair, you beg the gargoyle to have mercy on you, apologizing for disturbing him with your unwanted presence. 'How miserable. You fear the consequences of your actions? You should be ashamed. More the reason for me to punish you. And you know what? You don't get to choose anymore.' With that said, the beast makes a decision for you, one that you are not allowed to regret...";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:
				SGargoyleScene2OV;
			-- 2:
				SGargoyleScene2CV;
			-- 3:
				SGargoyleScene2AV;
	if Resolution of Gargoyle Sentry is 4:
		now Resolution of Gargoyle Sentry is 5;

to SGargoyleScene2OV:
	say "     While slowly bringing you over his beastly face, the gargoyle lets his tongue out to explore every inch and crevice of your vulnerable tiny body, engulfing you in a bath of tongue and drool as his lips reach to deliver plenty of long nibblings over your arms and legs. With an appreciative hum as he examines your taste, he then pushes you closer to his mouth, then opens wide to push your whole body inside, slurping you completely from head to feet as you feel yourself being pulled past his lips and into what could be compared to a wet cavern. Shutting his lips close, he gives you a lot of whirls with his tongue, smothering you against the walls of his mouth while taking care with his teeth. He doesn't want to chew you, but definitely seems to want to teach you a lesson by forcing you to wrestle against his tongue.";
	say "     Obviously, the nimble and slippery organ is too strong for you, and you end up pinned underneath it more than once, or against the inside of his cheeks, and even his palate, all while it rubs against your body mercilessly. Inevitably, it is too much stimulation for your own comfort, sending all your might to waste with the overwhelming sensations. The air feels heavier and hotter, not to mention increasingly moist as you're covered in more and more drool, eventually tiring you to an extreme exhaustion. It is when he feels you stop wiggling and moving as much that he decides to start pulling you deeper, and with a gulp, you are sent down to his esophagus, putting every muscle of his throat to work at bringing you down.";
	WaitLineBreak;
	say "     The walls surrounding you squeeze your body almost painfully, though not enough to actually hurt you. Instead, all the momentum they provide makes you feel dizzy and weak, with all that slippering surface rubbing against you as it pushes you lower. Without much effort, you are dropped into the beast's stomach, which is even warmer and so damp that breathing feels pointless. Giving his belly a rub, you feel his insides rumble once you're held inside him, and you can hear him speak through every direction. 'Luckily for you... I'm just a gargoyle, meaning... I don't really to [']eat['] anything for good. But you are going to spend several hours in there... Just because I think you feel really good in there.'";
	say "     You feel the center of gravity shift, pushing you towards the stomach walls on your back. He keeps rubbing his belly, truly enjoying your presence inside him, as you can't help but wiggle and struggle against all that flesh attempting to smother you. It wouldn't be so unbearable if the gargoyle wasn't trying to absolutely torture you while getting a wank at your expense, but that actually seems to turn him on more. You feel the motions of his body jerking off that long rock solid length as you languish in his belly. There is no telling how long you have been punished by the beast until you lose your senses, all the added up heat, pressure against your body and the sickening motions contributing to a complete blackout.";
	if Resolution of Gargoyle Sentry > 5: [scene happens when he's befriended]
		WaitLineBreak;
		follow the turnpass rule;
		say "     Hours have passed, and you wake up later, not inside his belly, but actually on top of it, outside. It seems the gargoyle has taken you out, washed you and let you rest with your head leaning on his hard rock abs until you woke up. Oh, that is true, you have returned to your original size, something you only realize a few seconds later. He sees you moving, and suddenly pulls you in for a crushing embrace. Very affectionate, perhaps even cute, but extremely [italic type]painful[roman type]! 'Glad you're awake! I was afraid I was too rough, this time. Sometimes I just wanna keep you inside forever, though...' he says, only realizing that he's choking you once your face is nearly turning purple. 'Oh! Oh no, I'm sorry! I forget I'm too strong, sometimes! Please, pardon me!' shouts the gargoyle in a begging tone as he fans you with his hand, in hopes that it actually helps you catch your breath.";
		say "     He has his heart in the right place, but you have to assure him you're okay so that he actually lets you recover. 'Good! You have to be strong, too! Uh... And I hope you liked this. It was pretty hot for me, too... and... I would love to do it again... Uh, of course, whenever you feel like it! Just... let me know!' While he clearly took enjoyment on partaking in this activity, you really need some time before you can suggest anything like this again.";
	else: [continues as per normal]
		WaitLineBreak;
		follow the turnpass rule;
		say "     Hours have passed, and you wake up somewhere else entirely, in the middle of nowhere, hurting all over. When you try to get up, you realize that might be a more difficult task than what you would like to admit, losing balance immediately with your muscles simply refusing to put an effort. He really roughed you up, and you smell like you've been through a very, very nasty trip. Also, you are back to your original size, and your stuff seems to be laying about not too far from your position. At least he was considerate enough to deliver your belongings to you after having completely abused you.";
		say "     Maybe you could have another go with the [bold type]Gargoyle Sentry[roman type] in the future, or this time just attempt talking to him at your full size, now that it would be impossible for him to have forgotten about you... Probably. Better be wary of his mood, unless you want to be [']punished['] again...";

to SGargoyleScene2CV:
	say "     Bringing you over his mouth, the gargoyle first gives you a long wet lick before lowering you to his crotch. There is that familiar animalistic scent from before striking you with even more impact, making you feel woozy. His sizable member is already longer and thicker than you, throbbing with eagerness as you are brought closer to it. From mere inches of distance, you can feel how hot it is, like stone that has been heated by the sun, and smooth as the flesh of a living creature. He puts you against the underline of his shaft, starting to rub your whole body across the length of his dick, slipping by nicely due to the amount of saliva he coated you with before.";
	say "     However, he doesn't stop there. After letting you have a good feeling of how big his cock is, he slides you all the way down to his ballsack, each nut able to fit someone your size all curled up and tight, and making sure you feel them wobbling when you're pushed over the space between them and back up through his shaft. Having his fun rubbing you across his entire dong, there comes a time he simply begins to push your face against his glans, slipping it towards the already dilated slit, leaking precum droplets that are thick and generous at the sight of your approach. 'Hope you are enjoying your punishment so far. It will just get better, now.' he threatens, and just a little push is enough to send your head inside the hungry slit, your own strength insufficient to offer any resistance against the finger that keeps your face buried inside his urethra.";
	WaitLineBreak;
	say "     You can't help but wiggle your body and flail your arms around at the sudden surprise of lack of breathable air, and that only seems to further please the gargoyle, who just keeps pushing you inside with the help of his fingers, lifting your legs and squeezing you further in. His cock throbs at every extra inch of your body that gets swallowed, only serving as further encouragement for his penis to continue to slurp you in deeper and deeper. The beast lets out a long moan as his glans hit you past the waist, now with just your legs remaining outside. His pulsing flesh around you painfully embraces your entire body, threatening to crush you at any second, which only gets worse as the creature pushes the last bits of your body inside. His slit shuts off once your feet go in, and pushing his cock upwards, he lets gravity help you reach the point where you're simply dropped in his balls.";
	say "     The air is unbearably hot, and you are forced to raise your knees to your head in a fetal position in order to fit inside one of the gargoyle's balls, which have a lot of even warmer cum inside. Now that you're inside him, he seems to be rubbing his nutsack, pushing his fingers around in order to poke you and make your stay even more torturous. 'You have no idea how good it feels having you in there... I could do this all day...' he says, and you can hear him speak from every direction, all while lumps of flesh caused by his incessant poking reach to touch you, squeezing you inside as your surroundings smother and swing you about. Countless quantities of his seed find their way over to your face, forcing you to swallow some of it, and it only gets worse as his balls begin to fill... You feel utterly suffocated and overwhelmed, so much that you can't take it past a certain point. Once your body becomes fully submerged in hot cum, and the gargoyle's jerking motions become intense, you lose your senses and fall unconscious, with only his grunts of pleasure echoing in your mind.";
	if Resolution of Gargoyle Sentry > 5: [scene happens when he's befriended]
		WaitLineBreak;
		follow the turnpass rule;
		say "     Hours have passed, and you wake up later, not inside his balls, but actually on top of his belly, outside. It seems the gargoyle has taken you out, washed you and let you rest with your head leaning on his hard rock abs until you woke up. Oh, that is true, you have returned to your original size, something you only realize a few seconds later. He sees you moving, and suddenly pulls you in for a crushing embrace. Very affectionate, perhaps even cute, but extremely [italic type]painful[roman type]! 'Glad you're awake! I was afraid I was too rough, this time. Sometimes I just wanna keep you inside forever, though...' he says, only realizing that he's choking you once your face is nearly turning purple. 'Oh! Oh no, I'm sorry! I forget I'm too strong, sometimes! Please, pardon me!' shouts the gargoyle in a begging tone as he fans you with his hand, in hopes that it actually helps you catch your breath.";
		say "     He has his heart in the right place, but you have to assure him you're okay so that he actually lets you recover. 'Good! You have to be strong, too! Uh... And I hope you liked this. It was pretty hot for me, too... and... I would love to do it again... Uh, of course, whenever you feel like it! Just... let me know!' While he clearly took enjoyment on partaking in this activity, you really need some time before you can suggest anything like this again.";
	else: [continues as per normal]
		WaitLineBreak;
		follow the turnpass rule;
		say "     Hours have passed, and you wake up somewhere else entirely, in the middle of nowhere, hurting all over, with this massive pool of cum underneath and all around you, having gone cold by now. When you try to get up, you realize that might be a more difficult task than what you would like to admit, losing balance immediately with your muscles simply refusing to put an effort, falling right back in the thick fluids. He really roughed you up, and you smell like you've been gangbanged by dozens of horny beasts. Also, you are back to your original size, and your stuff seems to be laying about not too far from your position. At least he was considerate enough to deliver your belongings to you after having completely abused you.";
		say "     Maybe you could have another go with the [bold type]Gargoyle Sentry[roman type] in the future, or this time just attempt talking to him at your full size, now that it would be impossible for him to have forgotten about you... Probably. Better be wary of his mood, unless you want to be [']punished['] again...";

to SGargoyleScene2AV:
	say "     When he finishes speaking, he gives you one long lick before bringing you over his rear, carefully moving you around his waist and facing his round, muscular glutes. Must be from being in a squatting position most of the time, but the gargoyle's back leg muscles and asscheeks are so huge in shape and size that it feels like a whole new world to you. 'Enjoying the view back there? You're about to get a closer look...' he says, before bringing you over his ass, rubbing you across his left glute and letting you feel that enormous mass of stoneflesh, rock solid and impossibly huge. He even flexes it for you, a large ball of muscle bouncing up and down with you smothered between his hand and his warmed up skin.";
	say "     Once he had enough of nearly crushing you against his rock solid glutes, he then proceeds to slide you over to the space between his cheeks, and right against his pucker. The air around you is humid and hot, nothing far from a real ass of an actual living beast, which the gargoyle kind of is, in a way. It's not too long until you feel yourself being pressed against his hole, which pulses before your presence. With a careful push from the creature's finger, followed by a moan, your head slips inside the dilating orifice that welcomes you in the earnest, but he doesn't go much further. For now, he seems to be enjoying making a dildo out of you, pushing your head in until your chest and waist is fully buried inside, then pulling back out. The tunnel of flesh constricts around you tightly whenever you find yourself inside, pulsing before relaxing as your presence leaves.";
	WaitLineBreak;
	say "     Seemingly enjoying his time, the gargoyle continues to do this for a while, increasing the pace the more excited he gets. 'Mmph... I don't usually do this, but, oh yes... You feel really damn good...!' he says, just when you start wiggling your body a bit more due to the constriction around you starting to become a bit painful, not to mention you don't have a lot of time to take a breather. But fortunately for you, he stops for a moment, allowing you to catch some fresh air, for a change. Although, he keeps you fairly close to his asshole, which is still throbbing with you on contact with it. 'Phew, that's tiring... Mind if I take a seat?' You can [']feel['] him grinning as he says this, and just like that, your moment of respite is abruptly ended, replaced with only darkness as his cheeks engulf you against the ground.";
	say "     He leaves you there, smothered against his hole, as he continues to press it against you. The only thing keeping you from getting absolutely crushed underneath his enormous weight are the glutes on each side of you, leaving a space in between where you can be safe from that specific harm, but not from his hungry hole. To help the process, he slides a finger underneath you, encouraging you to come closer. 'You could give it some licking, since you're there... That might make it easier for me to pull you in.' he tells you in a sadistic tone, not even waiting for you to put any effort towards his request. Instead, you are finding your face being buried in his asshole once more, and as he grinds against you, more and more of your body finds itself inside his ass. It's not long before he's pushing your own ass in, followed up by the legs, and no kicking you do saves you from being completely devoured by his meaty pucker.";
	WaitLineBreak;
	say "     The tunnel of flesh around you constricts around your body tightly and continues to pull deeper and deeper, the scorching hot walls squeezing and smothering you from all sides. You hear the gargoyle speak from every direction 'It's going to be a problem getting you out, but I suppose you could stay there for a few hours, at least...' finishing with a chuckle, as he leans back and strokes his own member, making his prostate pulse against you. The feeling is so overwhelming and you're smothered so badly that you start feeling dizzy, your senses beginning to shut down at the intense torture he makes you go through. Nearly crushed, forced to breathe in the damp scent in his ass, your surroundings wanting to squeeze the life out of you, quite literally... It is too much, and a blackout inevitably takes you.";
	if Resolution of Gargoyle Sentry > 5: [scene happens when he's befriended]
		WaitLineBreak;
		follow the turnpass rule;
		say "     Hours have passed, and you wake up later, not inside his ass, but actually on top of his belly, outside. It seems the gargoyle has taken you out, washed you and let you rest with your head leaning on his hard rock abs until you woke up. Oh, that is true, you have returned to your original size, something you only realize a few seconds later. He sees you moving, and suddenly pulls you in for a crushing embrace. Very affectionate, perhaps even cute, but extremely [italic type]painful[roman type]! 'Glad you're awake! I was afraid I was too rough, this time. Sometimes I just wanna keep you inside forever, though...' he says, only realizing that he's choking you once your face is nearly turning purple. 'Oh! Oh no, I'm sorry! I forget I'm too strong, sometimes! Please, pardon me!' shouts the gargoyle in a begging tone as he fans you with his hand, in hopes that it actually helps you catch your breath.";
		say "     He has his heart in the right place, but you have to assure him you're okay so that he actually lets you recover. 'Good! You have to be strong, too! Uh... And I hope you liked this. It was pretty hot for me, too... and... I would love to do it again... Uh, of course, whenever you feel like it! Just... let me know!' While he clearly took enjoyment on partaking in this activity, you really need some time before you can suggest anything like this again.";
	else: [continues as per normal]
		WaitLineBreak;
		follow the turnpass rule;
		say "     Hours have passed, and you wake up somewhere else entirely, in the middle of nowhere, hurting all over. When you try to get up, you realize that might be a more difficult task than what you would like to admit, losing balance immediately with your muscles simply refusing to put an effort. He really roughed you up, and you smell like you've been through a very, very nasty trip. Also, you are back to your original size, and your stuff seems to be laying about not too far from your position. At least he was considerate enough to deliver your belongings to you after having completely abused you.";
		say "     Maybe you could have another go with the [bold type]Gargoyle Sentry[roman type] in the future, or this time just attempt talking to him at your full size, now that it would be impossible for him to have forgotten about you... Probably. Better be wary of his mood, unless you want to be [']punished['] again...";

to SGargoyleScene3:
	say "     ... But as you are about to touch him, the entrance to the chapel behind you seals shut, and the room becomes pitch dark. You feel a large, stone-made hand wrapped around your neck, its solid surface heating up as it becomes living flesh. You are then violently pinned down on the floor as another cluster of claws slashes against the ground next to your head, and you feel an impossible weight over your legs and arms keeping you from moving. A low growl escapes the gargoyle's mouth as you feel him leaning in closer, his breath eventually tickling at your face. As it takes a whiff of your scent, he then grins, and throws a laughter. 'Oh! Look who it is! A little bigger this time around, eh?'";
	say "     He then proceeds to give you a lick on your face as his dense, incredibly heavy body nearly crushes your bones, making you helplessly grunt in pain. 'Ah, sorry about that. I forget I'm heavy.' he says, relieving you of some pressure - though not all, it still hurts - but still effectively holding you down still. 'No matter how much I punish you, you always seem to come back. Why is that? Do you actually enjoy it...?' he asks, with a wicked toothy smile as he rubs the back of his finger down your cheek. 'You're soft... like all fleshy creatures. But I also eat fleshy creatures your size... so that makes me wonder why you thought I would be nicer if you came here without eating one of those funny looking mushrooms.'";
	WaitLineBreak;
	say "     Supporting his weight over one of his arms as most of his form maintains pressure over your body, the beast runs his free hand over your body playfully, feeling you up as the whim takes him. Any gear or object you might have is simply pulled, shoved away or plainly removed to keep you fully naked and exposed before him. You remain helpless, unable to offer any worthy resistance, as if something other than his great weight, something [italic type]magical[roman type], even, was keeping you from moving. 'Here, I am God. You serve any purpose I might find suitable for you. Meaning... you are either my food, or my plaything. But... I guess you're just too cute to be food, and you make my dick throb.' he says, as he gives you yet another face lick, this time slower and more tender, as now he shifts both his warms over the sides of each of your sholders, and rubs the top of your head.";
	say "     'Luckily for you, I am in an even greater mood. So tell me something interesting.' he says to you, as someone who is giving you an order. Your eyes, now accustomed to the little light that still manages to enter the chapel, can see his flaming orange irises staring at your soul from very, very close. His face must be at just a mere few inches of distance from yours.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Do everything he says.";
	say "     ([link]N[as]n[end link]) - Try to break free from his hold, if you're strong enough (He might not like that).";
	if player consents:
		Linebreak;
		say "     Trying to remember something that could interest the gargoyle, you go on about one of your really odd stories while exploring the post-apocalyptic world out there. The beast's eyes widen at your tales, amazed with how crazy that last one went for you. 'Oh... How the world has changed... I could not bear standing still exposed to its new ways... It's harder to find food this way, but much safer and peaceful...' he replies, as he contemplates your words. 'That's fair, I guess I can forgive you for intruding, since you have given me something for your freedom.' The gargoyle simply lifts his weight from your body, giving you enough space to crawl away from underneath him.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Do that and leave.";
		say "     ([link]N[as]n[end link]) - Point out the raging hard-on between his legs.";
		if player consents:
			Linebreak;
			say "     Since you were given permission, you say your goodbyes to the gargoyle, who ignores your presence from that point on. Well, this didn't go too poorly, but you suppose there should be some other way of earning his trust...";
		else:
			Linebreak;
			say "     But before you do that, you must talk about that enormous boner the gargoyle got from pinning you down and having his body grinding against yours for this long. He takes note of your observation with all the naturality. 'I get like that from rubbing against something soft. It feels good, and you're soft, like most fleshy creatures.' To think of what he can do with that, provided that a creature is small enough, you can guess why this is so normal for him. Either way, the beast doesn't do much else other than repositioning himself back on his pedestal. You suppose there could be a tiny chance that he would like you to make a move, but there is no way of telling how he would react to being disturbed again, since he has already fallen dormant.";
			say "     Now, all you have left is the option to leave, with the chapel's entrance now open, once more. Well, this didn't go too poorly, but you suppose there should be some other way of earning his trust...";
	else: [Runs a strength check. If successful, player earns his respect. If not, he punishes the player badly.]
		Linebreak;
		say "     Within a brink of determination, you have decided that you won't have any more of this. The gargoyle cannot simply pin you down every time he pleases, and you are about to teach him his place. Except... he is quite the heavy beast, and his crushing weight remains solidly above you.";
		WaitLineBreak;
		let bonus be (strength of player);
		say "[bold type]Strength Check[roman type]: [special-style-1][bonus][roman type] vs [special-style-2]20[roman type]";
		if bonus >= 20: [Automatic Success]
			say "     But your superior might allows you to lift him off you, which surprises the gargoyle. Doing a small turn-around with your body, you manage to get a grip of his horns and wings, flip him to the side as to give yourself some space, and earn your position on top of his stoneflesh figure, instead, sitting right by his back as you lean in between the wings. The beast eyes you from of his shoulder, startled by your sudden maneuver.";
			SGargoyleScene3Respect;
		else: [Not a failure yet, but the player is struggling...]
			say "     Your first attempt at it is not very successful, as the creature is enormously heavy. 'Oh? Trying to break free and ignoring my request?! Sounds like a punishment, for you.' he threats you as he is about to tighten his constriction around you, but bolstering up what remains of your strength, you do one last try...";
			WaitLineBreak;
			let bonus be (( strength of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Strength Check):[line break]";
			if diceroll + bonus >= 18: [Player succeeds, barely]
				say "     Much less effectively than what you desired, but more than you needed it to be, you manage to lift him off you, which surprises the gargoyle. Doing a small turn-around with your body, you manage to get a grip of his horns and wings, flip him to the side as to give yourself some space, and earn your position on top of his stoneflesh figure, instead, sitting right by his back as you lean in between the wings. The beast eyes you from of his shoulder, startled by your sudden maneuver.";
				SGargoyleScene3Respect;
			else:
				say "     Unfortunately, it comes out even worse than the first. He simply laughs at your lack of might and mocks you for the weakling he perceives you as. 'Puny little fleshy playthings, did you really think you could break my grip?' he says, as he thoroughly smothers you against the ground, his rock heavy body nearly grinding you to the floor as he tightens his embrace around you in an almost lethal manner. You cannot even wiggle or kick around, as the immobilization is painfully limiting your movements. He leaves you only the possibility of grunting and moaning in absolute suffering. At some point, you cease to be able to breathe, and your body begins to feel numb. The gargoyle is choking you out until there's not enough oxygen to fuel your conscience.";
				WaitLineBreak;
				follow the turnpass rule;
				say "     Hours have passed, and you wake up somewhere else entirely, in the middle of nowhere, hurting all over. When you try to get up, you realize that might be a more difficult task than what you would like to admit, losing balance immediately with your muscles simply refusing to put an effort. He really roughed you up, and your skin looks bruised and all beat up, sounding like you've been through some nasty places. Well, that went [italic type]terribly[roman type], but you suppose there should be some way of earning his trust... Perhaps if you were stronger, you could show him that you are worthy of respect.";

to SGargoyleScene3Respect:
	say "     'You are quite a strong one... Impressive! That explains how you keep being able to find this place, again and again...' he says, but you cannot conclude what was the goal of his compliment. Your confusion is evident to him, without the need to say anything. 'Only the ones worthy of being remembered are able to find the Chapel of Abyss. That means those who make a difference and have a distinguishing feature. You seem to be one of them!' The gargoyle keeps sending you cryptic declarations, only leaving more unanswered questions. 'Hah, nevermind. I guess I should drop the act, eh? I don't really like being mean, as you probably have noticed in our last encounters.'";
	say "     Within a moment of distraction, the gargoyle regains the upper hand by lifting himself, only to knock you back, and swiftly repositioning himself above you, one more time. However, he doesn't not pin you down, instead simply standing up straight and looking down in your direction. 'I guess you have earned my respect. Feel free to come over anytime, I'll make it easier for you to find me.' he adds, as he extends a hand to help you get up. You suppose you should just simply take his offer in order to stand back on your feet, facing the towering creature.";
	WaitLineBreak;
	say "     Once you're back up, the gargoyle gives you a pat on the back with a smile. 'Also, if you happen to bring some of those shrooms again... We could, uh... You know...' he leaves the suggestion, with the first time you witness the big beast getting embarrassed for suggesting something like that. 'Aye, don't get me wrong! I'm not saying I want to eat you again or anything, but... Ehh... You did feel kinda good... and... I promise I will be more gentle, too! I was just supposed to punish you for intruding, you know? Because I'm a sentinel! I have to be mean to naughty boys, gals and everything in between, fleshy or not!' He gives you another shy smile, hoping you understand his motives.";
	say "     Well, this took a turn you were not expecting in the beginning, but it seems the gargoyle is letting you come visit under peaceful intentions. 'You can call me Krumirr, by the way. That is the name given by my summoner. A peculiar one in tastes, eh?' he adds, with a chuckle, before he returns to his pedestal and opens the chapel's lights.";
	move player to Chapel of Abyss;
	now Resolution of Gargoyle Sentry is 6;

to SGargoyleVisit:
	say "     Once you've been walking around the region, your mind gives out a tingle once you think of the Gargoyle Sentry. It would be possible for you to look out for the chapel, if you were in the mood to pay your stone beast friend a visit.";
	say "     Would you like to?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, visit Krumirr, the Gargoyle Sentry.";
	say "     ([link]N[as]n[end link]) - No, you have other things in mind.";
	if player consents:
		say "     As if per something supernatural, you suddenly know exactly where to go in order to find the chapel. Without an explanation that could serve to shed some light into this, you find yourself simply following the path that has been imprinted in your brain, with the lack of better words, and bring yourself over to the small chapel that's standing right in the vicinity. A different location than last time, but you were still able to find it without any greater effort. The door opens as soon as you take a step towards it from a close distance, allowing you to walk inside.";
		say "     Then, the doors close shut behind you, welcoming you in its abyssal darkness.";
		say "     You have arrived at the [bold type]Chapel of Abyss[roman type][line break]";
		move player to Chapel Of Abyss;
	else:
		say "     You dismiss the thought, returning to your other affairs.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - Gargoyle Sentry as NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Krumirr	"Krumirr"

Krumirr is a man. Krumirr is in Chapel Of Abyss.
ScaleValue of Krumirr is 4. [DB sized]
Body Weight of Krumirr is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Krumirr is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Krumirr is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Krumirr is 9. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Krumirr is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Krumirr is 8. [length in inches]
Breast Size of Krumirr is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Krumirr is 2. [count of nipples]
Asshole Depth of Krumirr is 15. [inches deep for anal fucking]
Asshole Tightness of Krumirr is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Krumirr is 1. [number of cocks]
Cock Girth of Krumirr is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Krumirr is 16. [length in inches]
Ball Count of Krumirr is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Krumirr is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Krumirr is 0. [number of cunts]
Cunt Depth of Krumirr is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Krumirr is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Krumirr is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Krumirr is false.
PlayerRomanced of Krumirr is false.
PlayerFriended of Krumirr is false.
PlayerControlled of Krumirr is false.
PlayerFucked of Krumirr is false.
OralVirgin of Krumirr is true.
Virgin of Krumirr is true.
AnalVirgin of Krumirr is true.
PenileVirgin of Krumirr is true.
SexuallyExperienced of Krumirr is false.
TwistedCapacity of Krumirr is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Krumirr is true. [steriles can't knock people up]
MainInfection of Krumirr is "Gargoyle".
Description of Krumirr is "[Krumirrdesc]".
Conversation of Krumirr is { "<This is nothing but a placeholder!>" }.
The scent of Krumirr is "     Krumirr's scent is animalistic, despite him being made of stone, or a hybrid between rock and flesh. It is also a very masculine one, and it is unlike most gargoyles".

to say KrumirrDesc:
	say "     Krumirr is a gargoyle, and a fairly large one, complete with its privates dandling between the thick and muscular legs. Currently, he's standing on a short stone pedestal in a squatting position, with his back slightly leaning forward, and both arms converging towards the center between his clawed feet. His eyes, albeit lifeless looking, are open, featuring a face that looks like a mix between a dragon and a bat, with a pair of small horns on the top of the head. His wings are resting on each side of his body, also hanging still together with his statuesque frame. The now grey hard skin can turn into a dark blue shade of stoneflesh and his eyes lit with fiery orange irises whenever you move to awaken him.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Krumirr Talk Menu
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing Krumirr:
	say "     Approaching the pedestal where the gargoyle is standing still, you awake him with a tender touch. He opens his eyes and gives you warm welcome smile. 'Hey there, friend! Came for a talk with old Krumirr, eh?'";
	say "[KrumirrTalkMenu]";

to say KrumirrTalkMenu:
	say "     [bold type]What do you want to talk to Krumirr about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Krumirr to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Chapel";
	now sortorder entry is 2;
	now description entry is "Inquire about the nature of this chapel";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex";
	now sortorder entry is 3;
	now description entry is "Ask Krumirr about his sexual experiences";
	[]
	if Libido of Krumirr > 1:
		choose a blank row in table of fucking options;
		now title entry is "His way of... feeding";
		now sortorder entry is 4;
		now description entry is "Address the matters of vore";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask to leave";
	now sortorder entry is 99;
	now description entry is "Request the gargoyle to reopen the doors and allow you to leave";
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
					say "[KrumirrTalkHimself]";
				if (nam is "The Chapel"):
					say "[KrumirrTalkChapel]";
				if (nam is "Sex"):
					say "[KrumirrTalkSex]";
				if (nam is "His way of... feeding"):
					say "[KrumirrTalkVore]";
				if (nam is "Ask to leave"):
					say "[KrumirrTalkLeave]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You drop whatever subject you had going on with Krumirr to consider your options.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KrumirrTalkHimself:
	say "     Curious about what and who the gargoyle in front of you really is, you proceed to ask him about himself. The beast hums, glance around as if thinking about an answer, and eventually speaks something out. 'Well, aside from being a guardian over all these objects, I... Guess that's it, honestly?' You know there must be more to him, starting with whoever created him. 'Ah, I... Really don't like talking about my, uh... creator. I simply guard their personal treasury. And I say [']they['] because my summoner is genderless. Or at least, it's unknown... I don't know much about them, either, I am merely a gargoyle assigned sentry.' You don't think Krumirr has much else to say, and even have a feeling he doesn't know a whole lot about himself, either.";
	wait for any key;
	say "[KrumirrTalkMenu]"; [looping back to keep talking with him]

to say KrumirrTalkChapel:
	say "     Regarding this little chapel you are in, you have yet to ask the gargoyle what is the mystery behind it. 'This chapel? It is not called Chapel of Abyss for no reason. It changes locations by traveling through the void and back in the physical world. Nobody ever sees it doing that, it often happens when nobody is looking. That is how I keep myself safe, by changing locations around this region.' he explains, turning to the side and glancing all over the room before continuing. 'I would guess... a chaotic place infested with nanites would be the most safe place for a creature and a hold as unique as all of this. Nobody will freak out from seeing a moving gargoyle going for a meal. Although... people going horny from seeing one and begging to be eaten isn't necessarily an improvement, but well, at least they're easy prey.' Sometimes it is easy to forget what this gargoyle feeds on...";
	wait for any key;
	say "[KrumirrTalkMenu]"; [looping back to keep talking with him]

to say KrumirrTalkSex:
	if Libido of Krumirr is 0: [He doesn't really know what sex is]
		say "     You really want to know what a sexy gargoyle like him has done in his lifetime with other species, or people who came to visit him. That means a sex talk, according to your intentions, but the answer ends up being a surprising one. 'Uh... Sex? What is that?' Your eyes widen and your chin falls in shock at the incredible revelation. How come a creature like him does not know what sex is?! 'Is it... something I should know about? The way you describe that, it seems rather... strange! Although is that why some creatures have holes and others have, like... dicks? Eh, I always wondered why mine gets hard, I thought it just happened whenever I felt good!' So, it's not like he is a complete virgin, he just really doesn't know much about the concept.";
		say "     Maybe you could introduce him to it?";
		if Libido of Krumirr is 0:
			now Libido of Krumirr is 1;
	else if Libido of Krumirr > 1:
		say "     After having had your first proper sexual contact with the gargoyle, you decide to bring the subject once more, asking him how he feels about it, now that he had an experience. 'You have... certainly got me curious. The way your hand felt around my cock and, uh... All the touching, it's... different! It's like punishing puny and tiny fleshy creatures!' You better tell him that it's not quite the same, but he is getting there in what comes to being a pleasant activity. Perhaps you should do more different stuff, so you let him know there is more to that than just dominating something with raw strength.";
	wait for any key;
	say "[KrumirrTalkMenu]"; [looping back to keep talking with him]

to say KrumirrTalkVore:
	say "     Since he doesn't really hide that fact from you, now is as good a time as any to ask him about this peculiar characteristic of his. 'Huh? Oh, you mean, shoving the soft fleshy people inside me? I don't know, ask my summoner! They made me this way... a big hungry stone monster!' he explains, and it only leaves more questions. Surely that would be a bad choice if the intention was to provide him with a way of self-sustaining, as he's big, however, not big enough to feed on normal-sized creatures, but the gargoyle stops you there. 'What do you mean, I am not big enough? Oh, that's right... Every time we met, you used the shroom! So you never saw me at my real size!'";
	say "     He then proceeds to make further explanations about how much he can actually grow. With a single metamorphing spell, Krumirr can get as massive as a Giant, an enormous colossus with impossible weight able to crush anything with little effort, and that as a creature who was born through the Void, he hungers as one, desiring to consume both body and soul of whoever dares to cross his path. 'Although, I haven't taken yours, even after all that. Somehow, I felt you were different, so I allowed you to find me whenever you roamed close enough. Turns out that difference was due to the shrinking shroom! But I don't regret having been fooled by it, you have pleasantly surprised me throughout this time.' he adds, before dropping the subject entirely. 'It really can get lonely around here sometimes, though... I wish I could snatch you away and keep you within me forever! But that would have a lot of complications... so I'm happy to just have you visit and occasionally play prey for me.' finishes Krumirr, as he gives you a highly suggestive grin.";
	if Hunger of Krumirr is 0:
		now Hunger of Krumirr is 1;
	wait for any key;
	say "[KrumirrTalkMenu]"; [looping back to keep talking with him]

to say KrumirrTalkLeave:
	say "     You are about to ask Krumirr to send you out. Are you sure you want to leave the Chapel of Abyss?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		Linebreak;
		say "     Confirming your intention, you direct the request to Krumirr. 'You wish to go, already? That's fine, you know where to find me, I hope.' he says, before falling into his slumber once more, opening the door to allow you to walk away. With that done, you simply move outside into a foggy area, the chapel eventually fading away from behind you.";
		say "     Once the fog lifts, you find yourself in the Grey Abbey Library.";
		move player to Grey Abbey Library;
	else:
		Linebreak;
		say "     You dismiss that thought, for now.";
	wait for any key;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Krumirr Sex Menu
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking Krumirr:
	if Libido of Krumirr is 0:
		say "     Maybe you should talk to him about the subject, first. After all, he might actually not be able to grasp the concept of sex, so you have to make sure he understands what there is to it.";
	else if lastfuck of Krumirr - turns < 7:
		say "     So soon? You shouldn't be constantly pestering the gargoyle for sex, or should you? At least, give it some time before you try getting dirty with Krumirr, again. He too must have only so much stamina.";
	else:
		say "     Approaching the pedestal where the gargoyle is standing still, you awake him with a gentle touch. He opens his eyes and gives you warm welcome smile. 'Hey there, friend! What's with all the tenderness? Feeling lovelorn?'";
		say "[KrumirrSexMenu]";

to say KrumirrSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask to touch";
	now sortorder entry is 1;
	now description entry is "Just rub his body, with permission (and end with a handjob)";
	[]
	if glowing mushroom is owned:
		choose a blank row in table of fucking options;
		now title entry is "Have some shroom fun";
		now sortorder entry is 1;
		now description entry is "Shrink for the gargoyle";
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
				if (nam is "Ask to touch"):
					say "[KrumirrTouch]";
				if (nam is "Have some shroom fun"):
					say "[KrumirrShroom]";
				wait for any key;
				now lastfuck of Krumirr is turns;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself as Krumirr gives you an understanding smile.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say KrumirrTouch:
	say "     Your hand does not move away from his shoulder since the moment you took a step forward to awaken him. Looking into his sunset colored eyes and making a suggestive grope down his thick, muscular arms, the gargoyle chuckles at the tension built between you both. Not a bad one, by any means, being clearly sexual in nature. 'Eh...? Did you see something uh... strange?' he asks, and you're not sure if he's just playing dumb, or if he's actually being serious, but that doesn't stop you from sliding your hand from his bulging bicep to his perky pecs. No matter how rock hard his frame is, there is still a slight feeling of living warm flesh rubbing against your palms. And yes, both of your palms are on the two of his pectorals, feeling his chest up in circular motions and grabs.";
	say "     He lets you do what you're doing, placing his arms on the back of his head - though carefully enough to not bump on his wings - and let you continue feeling his entire torso up. Your hands happens to feel the sides of his ribcage, and rub close to his pits, which makes him grunt slightly. Looks like it is a sensitive area for him, and he likes when you caress it quite a lot, although you're not sure if his chuckling is because he's enjoying it or if he is actually kind of ticklish. But moving on, as the gargoyle is already humping his hips every so often, you decide to move your touch over to his midriff, then to his solid rippling abs, inevitably noticing the massive erection he built from all that touching.";
	WaitLineBreak;
	say "     'Your hands feel so soft... It's like... Ungh, it just feels so good...' he moans as you continue to feel his body, around his hips and legs, slowly making your way to the throbbing rockmeat that has been begging for attention since the second you had your hands on his stoneskin. It feels just like its fleshy version, yet more solid, like a smooth statue that has been warmed by the sun, and you can definitely feel the pulses, even the veins around his cock, simply hardening to a level you never thought possible at the very slight movement. Putting both your hands around his shaft, you start jerking him, slowly and steadily at first, with the occasional grope of his balls, which have swollen by now with increasing quantities of his seed churning inside.";
	say "     He cannot help but be humping against your grip, the energetic gargoyle wanting to take an active part of his pleasure. Krumirr thoroughly begins to fuck both your hands as you put them to form some sort of fleshlight. As he thrusts with increasing strength, you inevitably find yourself struggling to remain standing in the same place, as the force of a powerful stone creature is insane, especially when pounding like that. Luckily, you can feel he's close, so you try to calm him down, give him a body rub, especially around his chest and abs, and position yourself at his side, to stroke that massive stonelog with your dominant hand while caressing the big beast.";
	WaitLineBreak;
	say "     It is once he starts to breathe deep and shakingly, amidst moans and grunts, that you pick up the pace and stroke his cock even faster, to the point your arm seems like it's moving on its own. Within just a few seconds, the gargoyle releases a longer grunt, followed by his climax that surges right through, in the form of a thick, huge blog of white beast cum being shot all the way towards the chapel's door, followed by plenty of more as they make an enormous mess on the floor in front of you. He keeps going at it for what seems to be an entire minute, begging you not to stop during his whole orgasm, until the very last drop simply leaks and drips from the tip of his solid manhood.";
	say "     Once the peak of his pleasure subsides, he leaves a blissful smile on his face. 'That was... Damn! It feels so much better when it's someone else doing it for you... Can we do it again? Once I... feed my cock, that is. You've emptied my balls!' With a shrug, you let him know that you'll consider repeating this in the future, if you both feel like it, to which he responds with a sudden, almost bone-crushing hug, with his hot, rock hard body grinding against yours in a very painful way. 'Wish I could keep you forever in here! You're so fun to have around...! The things we could do toge-...' - he stops, realizing he's choking the life out of you, and letting go of you immediately - 'O-oh, no, I'm sorry, I'm sorry! T-this keeps happening...'";
	WaitLineBreak;
	say "     You let him know that you're okay, and once you've caught your breath, you move on to something else. Although you can't lie, you hurt all over from that very tight embrace...";
	if Libido of Krumirr is 1:
		now Libido of Krumirr is 2;

to say KrumirrShroom:
	say "     Knowing you are carrying some of the shrinking shrooms in your inventory, you give Krumirr the suggestion of having you ingesting one of them and allowing the large gargoyle to [']punish['] you again. Excitedly, he gives you a big smile as hard as his sudden erection while nodding affirmatively. He must really like it when you're tiny. 'Good, good! I was looking forward to do that again!' he says, eager to get started. With the deal made, you make haste and ingest one of the magic mushrooms right away, and it's only a matter of seconds until vertigo beings taking over your senses.";
	WaitLineBreak;
	say "     The chapel around you is looking bigger and bigger before your eyes, and the towering gargoyle eyes you with enthusiasm, seeing you shrink smaller right in front of him. His statuesque dimension is even more pronounced once you are the size of a little doll, tiny enough to fit in his palm or be squashed under his clawed feet, but he simply waits until the transformation is complete. His raging boner throbs impossibly hard, were it not for his flesh being already made of a stone hybrid, though puns aside, he really gets turned on from perceiving such a size difference between you. With a mischievous grin, he then grabs you gently, placing you between his fingers, and lifts you over to the same level as his eyes.";
	say "     Cleaning his throat, he pretends that you are an intruder, frowning what would be his eyebrows, if he had any. 'Oh! Hm...! Squishy and fleshy...! Just my favorite appetizer!' he says with a more or less dramatic done, while gently caressing your body all over. 'I was in a really bad mood before you showed up! Now I've got a new plaything to spend my next hours with! It goes well with the fact that you deserve a punishment for walking in without permission.' He stops, then brings you just an inch closer to his fiery orange irises.";
	WaitLineBreak;
	say "     'I shall let you choose your predicament. Where should I put you... In my mouth, and swallow you whole, or... in my cock, and... swallow you whole all the same?' he asks, showing you a wicked grin that still manages to sends shivers down your spine. 'Come on now, pick an option, or you may end up in my ass, instead.'";
	say "     [bold type]He waits until you tell him which do you want.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Go for some mouth play (Oral Vore).";
	say "     [link](2)[as]2[end link] - You want to go down his balls (Cock Vore).";
	say "     [link](3)[as]3[end link] - Let him shove you in his ass (Anal Vore).";
	say "     [link](4)[as]4[end link] - Pretend to be begging for mercy! And maybe let him pick, instead.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to choose mouth, [link]2[end link] to choose cock, [link]3[end link] to choose ass or [link]4[end link] to show your best dramatic skills while letting him know that he can be the one doing the choosing.";
	if calcnumber is 1: [Oral Vore]
		Linebreak;
		say "     After hearing your reply, he proceeds to give you a really long and hard lick through your entire body, leaving you coated in his saliva. 'Mmm... Is that it? Well, then...' his grip around you tightens as he gives you a scary look. 'Into my belly, you go.'";
		WaitLineBreak;
		SGargoyleScene2OV;
	else if calcnumber is 2: [Cock Vore]
		Linebreak;
		say "     After hearing your reply, he lets out a chuckle, as one of his hands reaches down for his member, throbbing hard by now, to give it a gentle stroke. It looks like he is really enjoying this. 'Yes...? That is the least you can do, make me enjoy it. Perhaps I might forgive you once you're stuck and held tightly in my balls.'";
		WaitLineBreak;
		SGargoyleScene2CV;
	else if calcnumber is 3: [Anal Vore]
		Linebreak;
		say "     Once you let him know that you want to go in his ass, his cheeks blush (yes, apparently they can do that), then he lets out an exaggerated laughter. 'Am I hearing it right? You actually [italic type]want[roman type] to be shoved up my ass?! What a weird one... But that is fine. If that is how you want to be punished... I hope you have a good time being pulled deep inside me...' he says, but then whispering '... Damn, I wouldn't think I enjoyed that one [italic type]that[roman type] much...";
		WaitLineBreak;
		SGargoyleScene2AV;
	else if calcnumber is 4: [He picks one for the player]
		Linebreak;
		say "     With all your might and fake despair, you beg the gargoyle to have mercy on you, apologizing for disturbing him with your unwanted presence, and shouting out loud something about oh how terrible it would be if he decided your fate. He can't help but let out a chuckle, almost breaking character. 'Hah! How miserable. You fear the consequences of your actions?! You should be ashamed. More the reason for me to punish you. And you know what? You don't get to choose anymore.' With that said, the beast makes a decision for you.";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:
				SGargoyleScene2OV;
			-- 2:
				SGargoyleScene2CV;
			-- 3:
				SGargoyleScene2AV;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 5 - Chapel of Abyss
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameRoomIDs (continued)
Object	Name
Chapel Of Abyss	"Chapel Of Abyss"

Chapel Of Abyss is a room. It is sleepsafe.
Description of Chapel Of Abyss is "[ChapelAbyssDesc]".

to say ChapelAbyssDesc:
	say "     This small chapel is surrounded only by darkness when its doors are closed behind you. Inside, you can see various different mementos, artifacts and talismans of different shapes, sizes and colors, all seemingly related to some sort of cult or religion. The floor is made of polished stone, and there is a pedestal in the center of the furthest wall where the Gargoyle Sentry poses during his dormant slumber. When he lets you in, his bright orange eyes are part of the scenery, no matter in which direction you glance towards.";

instead of smelling Chapel Of Abyss:
	say "     The scent you get from this place is the same as the Gargoyle's animalistic essence. Besides that, there is a whole feeling of nothingness. Where else would you be able to detect a similar smell...?";

Gargoyle Sentry ends here.
