Version 1 of Diavoborg by Gherod begins here.

"Adds Diavoborg, a Behemoth NPC, to the game."

[Version 2 - Expanded Diavoborg, added rooms and NPC interaction, including dialogue and sex scenes. Loyalty capped at 10 - Gherod]

[STAT CHANGES]

[Energy]
[ 0 - Didn't have any conversation yet]
[ 1 & 2 - Simple checks to keep unlocking more dialogue]
[ 3 - Checkpoint for personal quest]

[Libido]
[ 0 - Nothing]
[ 1 - Flirted during pre-event]
[ 2 - Ready for first sex interaction]
[ 3 - Diavoborg is more open to sex experimentation - WIP]

[---]

Section 1 - Pre-Events

Table of GameEventIDs (continued)
Object	Name
Four Leg Wrath	"Four Leg Wrath"

Four Leg Wrath is a situation.
The sarea of Four Leg Wrath is "Plains".

instead of resolving Four Leg Wrath:
	if BodyName of player is "Behemoth" or BodyName of player is "Human Giant" or scalevalue of player > 4:
		say "     You walk through the dry plains in an attempt to find the red beast, but you being giant sized on your own makes it impossible to sneak upon it. Perhaps it would be best if you changed that?";
		stop the action;
	else if Resolution of Four Leg Wrath is 0: [Sighting]
		say "     Amidst your walking through the dry plains, you often expect to encounter some of its creatures roaming around, which makes you be extra careful when making your way through the wide open terrain. Your advantage is that you can see anyone coming from miles away, but that is simultaneously your problem, as they can also see you from a considerable distance. While there's plenty of tall grass, it isn't by far an ideal way of concealing yourself from possible dangers, so you're left pretty much out in the open. Nonetheless, this fact actually somewhat helps you in the upcoming event. Far, very far in the distance, you see a monstrous shape, looking small to your eyes now, but seemingly huge when you come closer.";
		say "     Whatever you are looking at, from this far, you can't quite make any distinguishments regarding its shape or nature, but it seems to be some sort of beast, and a [italic type]very[roman type] big one. You should know by now what very big beasts can do to puny little preys if they ever get their strong, gigantic clawed paws on them, so you should make a decision based on that, and possibly in how much courage and bravery you've got... and even how kinky you are. Would you like to [bold type]investigate? There are enough conditions to do it safely[roman type]. Or you can always just [bold type]leave and note this area out of your future wandering[roman type], if you prefer.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Approach the mystery."; [get closer]
		say "     ([link]N[as]n[end link]) - Perhaps it would be better to avoid this general area from now on."; [avoid this encounter forever]
		if player consents:
			Linebreak;
			say "     Your decision is to investigate, and for that, you should get ready for some stealthy crouching using the grass as your only cover while you direct your efforts towards approaching the beast. As you are practically squatting through the entire way, your thighs soon get sore after such a workout, only to minimize the chances of you being detected. Though you can't help but have second thoughts as you realize how actually enormous the creature is. Its color could have fooled you, but everything else points at the fact that this magnificent, grand beast is... a Behemoth. There is no need to panic, however, as it seems very peaceful for now... Just keep a safe distance as you observe the plains dweller.";
			say "     It is incredible, a red furred counterpart of the horned four-legged beasts often avoided around these parts even by the most experienced survivalists, for they are massive, mighty and powerful, nearly unbeatable in an unfortunate encounter with one of its kind. You really don't want to end up being its food - or something worse... right? - and if you want to get even closer, you'll have to crawl now, as the grass barely hides you with your current method of travel. With that said, you lie your body on the ground and proceed to push it forward using both your arms and legs, just to cut a little bit more of distance between you and it...";
			WaitLineBreak;
			say "     You're not quite sure of what it is doing, but right now, it seems entertained with something near the tree in your sight, sniffing around and pushing it with its paw. It's actually menacing seeing those sharp claws that could probably severe you in one blow if they had the chance to hit, and something tells you this behemoth is not like the others, and the first reason being the shape of its tail. The spikes around it and at the tip remind you of a scorpion tail, instead of the scattered ones usually seen in these beasts. And the obvious visual characteristic, its red fur, is also a blatant sign that there are plenty of differences to take into account regarding this creature that you don't know of, yet.";
			say "     Suddenly, you have to stop, as it makes a move that, yet again, is quite unusual. The red behemoth effortlessly gets up, standing on its back legs and leaning against the trunk of the tree, leaning its enormous head over the foliage, and with another paw, it reaches for one of the fruits that would otherwise be too high for it to reach (it is a very tall tree, and you see very few of these). Then, it takes the fruit out and sits down, grabbing it through the stalk and biting it whole, gulping it down within seconds. And while all this happened, you could confirm that at least some of it is male, as its enormous dong dangled before your eyes, bouncing around while it was standing up.";
			WaitLineBreak;
			say "     The beast does this a few more times, and you keep seeing its gigantic junk hanging beneath that monstrous frame, with its sack that is more comparable to a couple of basketballs accompanying its movements. Now that is a hole destroyer, and that's without mentioning how incredibly muscular these creatures are and how hard they fuck. Sadly, you don't have enough information to conclude if this is an average size for someone of their kind, as this is the first red-colored behemoth you see since ever, and it's possible that you won't be seeing any other... for a long time, at least. Either way, the four-legged gigantic beast ceases to give you a show once the tree runs out of fruits. Did it really just eat [italic type]all[roman type] of them in a span of what, a couple of minutes?!";
			say "     Now it seems to be walking away, to wander off to some other place within the plains. It's probably best to let it go for now, and perhaps in the future you will be able to learn something more about it.";
			now Resolution of Four Leg Wrath is 1; [has sighted the viper behemoth]
		else:
			Linebreak;
			say "     A free ticket to a gigantic beast's stomach, or something else where you can probably be shoved inside as they see fit? That's not in your agenda, not now nor ever, at least here. It shouldn't be too difficult to never stumble across this beast again if you remember this area, which you will do from now on.";
			now Resolution of Four Leg Wrath is 99;
			now Four Leg Wrath is resolved;
	else if Resolution of Four Leg Wrath is 1: [Hunting... lovingly.]
		say "     Another day exploring the Dry Plains, making your way through the open golden fields that are only filled with tall grass and the occasional tree. Speaking of which, you happen to stumble across that same tree where you last saw the peculiar behemoth beast, a four-legged beast of magnificent proportions, with slight differences compared to the usual forest green behemoth that often roams the farthest region of the plains. It was interesting to see how resourceful it was - and how well-endowed - when it was reaching for all the fruits in this tree. You can't help but wonder if you'll ever see it again, and discover the reason behind this odd mutation[if intelligence of Player > 16]... Well, [italic type]certainly it must have had something to do with the nanites and the way they reacted in this specific beast, or a mutation set that is not entirely originary from the behemoth strain[roman type]... almost surely[end if].";
		say "     Although, while spending some time thinking to yourself and glancing around the area, you notice some marks on the ground that you could almost for sure never fail to notice. It's footprints, and very large ones, which can only mean a monstrous creature was here just recently. Following the tracks could, perhaps, lead you to it... But it may also lead you to a normal behemoth, and that might be problematic. This particular area of the plains isn't covered by a lot of grass, so you will be left visible, denying you any chance of preemptively retreating. This means that if you decide to [bold type]follow the tracks[roman type], you will have to commit to this action until the very end and deal with any consequences of this decision, but it may be worth your time, as there is a chance that these footprints belong to the red behemoth.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let's follow the tracks.";
		say "     ([link]N[as]n[end link]) - Back off for now.";
		if player consents:
			Linebreak;
			say "     The worst that can happen is that you find yourself facing a gigantic behemoth that is probably not happy to see you, and you still have the option to flee, so you could be in worse predicaments. Nonetheless, you decide to follow the tracks, and they're quite visible for a while...";
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1: [finds nothing]
					Linebreak;
					say "     During your long and exhausting walk, some wind rose to the plains, and the tracks soon seem to have been erased with the dust covering them. You lose the trail and end in the middle of nowhere, with nothing to be found and no clue of where to go next. Seems like you have to call it quits and hope for another opportunity. Maybe you should keep searching for tracks that would hopefully lead you to that [bold type]Four Leg Wrath[roman type] of a beast...";
					wait for any key;
				-- 2: [finds a normal behemoth]
					Linebreak;
					say "     It's a long and exhausting walk until your efforts finally provide some sort of reward... Though this is definitely not what you desired. More like, this is definitely what you feared. The tracks belonged to a normal behemoth, who seems to be walking around the plains, apparently without any specific goal. What is important is that it notices you on its tail, and it seems like you are in a pinch. You will have to either fight the beast or evade it somehow.";
					wait for any key;
					now inasituation is false;
					challenge "Behemoth";
					say "     After having dealt with the behemoth, you're back to square one. Maybe you should keep searching for tracks that would hopefully lead you to that [bold type]Four Leg Wrath[roman type] of a beast...";
				-- 3: [finds the viper behemoth]
					Linebreak;
					say "     It's a long and exhausting walk until your efforts finally provide some sort of reward... And you find yourself, gladly, looking at the oddly colored behemoth you found the other day. Fortunately, it seems distracted enough to not notice your presence, but what is it doing, exactly? Your curiosity gets the best of you immediately, though this area where the beast led you actually has a little more to take cover from view than the one behind, which means you're in luck. Same strategy as before, you seek a hiding place that provides you with a good view of what is happening, and take it, concealing yourself within the tall grass.";
					WaitLineBreak;
					say "     The first thing you notice is that the beast seems to be... the right word would be grunting a little, not out of annoyance, but something similar to a moan, just way more beastlike and definitely scarier. It is an exciting find, however, but it is even more interesting to see what is the situation causing such a thing. The view widens your eyes, as a fully erect, four and a half foot long of an gigantic dick right beneath the enormous frame of the beast is brightly presented to your gaze for entertainment, and as the creature's back legs are slightly spread, you can also see that the beast shares the hermaphroditism from its cousin species, with a leaking vulva just behind the basketball-sized testicles hanging in there.";
					say "     What's more relevant, however, is that said massive shaft is getting grinded on some other creature underneath the beast, screeching like mad in what seems to be an enduring protest. A closer look reveals that it is one of the bald eagles, a rather large avian man, but tiny in comparison to the towering behemoth that is pinning him down. There's not much he can do against a giant and heavy meatlog almost as big as him, pressing against his body and keeping him on the ground, slowly getting more and more covered in the beast's precum. Looks like the red behemoth is finding himself in need of a satisfying release, and what's better to achieve that than finding another creature, willing or not, to satisfy its primal desires?";
					WaitLineBreak;
					say "     You observe them for a while, the behemoth just going faster and faster as if it was fucking some hole, in desperate need of pleasure and nearly dragging the bald eagle across the ground with every thrust. Eventually, he begins to cooperate, wrapping his arms and legs slightly around the girthy beasthood, a gesture that the monstrous creature greatly appreciates, with its grunting intensifying as the enormous balls bounce back and forth, hitting the eagle's legs, smashing the ground, and making a dusty mess all over the area that makes it hard for you to see. Although the prolonged grunt that follows in the next moments is quite suggestive of what's happening.";
					say "     With the beast raising its head, its huge cock hardens and throbs to its maximum, only to deliver a massive load of cum right on top of the poor bald eagle, who is helpless to the whole situation, forced to accept a bath of behemoth cum right off the tap. It keeps going for quite a while until it starts to subside, and once the dust settles down, you see a huge pool of jizz around the creature, still pinned down under the monster's dick. You can even smell the musk from here, a very enticing one that nearly makes you think it would be a good idea to get closer, except that wouldn't be safe for you, at all. However, the beast ends up getting drowsy and falling asleep shortly after... With the avian man still underneath.";
					WaitLineBreak;
					say "     Looks like someone is going to have a heavy naptime, both for different reasons, but that also means there is nothing left for you to see. It might be a good idea, however, to take note of this area the next time you want to look for the exquisite behemoth, so you can avoid unnecessary risks.";
					now Resolution of Four Leg Wrath is 2;
	else if Resolution of Four Leg Wrath is 2: [He notices player, pins him down... then fights another behemoth. Choose to watch, or try to help. Successful help nets loyalty, while losing lowers it. Doing nothing has no changes.]
		say "     While you're taking a walk around the Dry Plains, you remind yourself of the gigantic beast you've been encountering lately, the mysterious red behemoth that still lingers in your mind as an unsolved enigma, one that you could crack if you continued to observe it, hopefully. It also ends up being quite fun to watch it in action, so you can't really complain. Given the opportunity, there is now a chance to head over the area where you last saw it, in hopes of finding another trail, or even the beast itself. Although you should keep in your mind that it's always somewhat risky to do this, so you should [bold type]keep your guard up[roman type] and give a good thinking about proceeding with this quest.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Attempt to find the red behemoth.";
		say "     ([link]N[as]n[end link]) - Postpone this for now.";
		if player consents:
			Linebreak;
			say "     Determined to find the peculiar beast once again, you initiate march towards the area where you last found it being quite intimate with a roaming bald eagle, inevitably running the images of that enormous shaft grinding against the helpless avian man, who was pinned down against the dirty soil. It is still a creature with needs, and that shows with a certain type of behavior such as this. Nevertheless, observing the beast still proves to be quite an entertaining task if your intention is to know more about it, as long as you keep out of its way and don't look like an easy prey. Achieving that should be possible if you keep low and use any spots to conceal yourself in case of any event.";
			say "     After a long walk through the areas that you've memorized, you find yourself in the remote vicinity of the beast's last known location. All you've go to do now is to pay attention, keep your senses to their maximum performance, raise your guard and glance around carefully as you slowly make your way through the tall grass. There should be some tracks on the ground eventually, if the beast has been here recently... Though it takes you a significant amount of time to find tracks, and once you do, they don't seem to make sense. The footprints seem to intertwine and are spread around in circles, leading nowhere in specific, at least on the first impression.";
			WaitLineBreak;
			say "     This proves itself as a whole new challenge, as you have to follow each and every one to see where they end up at, in hopes to find a lead to the beast's next location, but it seems impossible to catch the end of it! Frustration begins to take place, and it obviously ends up worsening your performance, which wasn't being very fruitful to begin with. However, as you were so busy directing all your attention towards trying to solve this [']puzzling['] trail, you only notice the earth shaking beneath your feet a while after, with an overtaking shadow following up... And soon, the entire world around you whirling as your body is literally flung forward with incredible strength!";
			say "     Your heart nearly jumps straight out of your chest as the massive beast of a behemoth you wanted to find lands with its menacing clawed paws right next to your vulnerable self, its breath nearly blowing your eyelids off as it takes a few whiffs near your face. 'Hm... fleshy... Fragile. Tender. Very tasty... and somewhat attractive as well, though someone my size can't really be too picky about who they fuck.' This nearly ear deafening voice booming towards you is actually a very deep one, clearly what would be expected from such a beast, but at the same time, it is a surprising fact that the beast is sentient and can actually talk!";
			WaitLineBreak;
			say "     'Why have you been following me?' it asks you - though you should really just start calling [']it['] a [']him['] now, since he's probably some sort of individual, appearing more male than female - pressing his heavy paw downwards on top of your chest, with its sharp claws dangerously close to your face. The red behemoth leans his head towards you, only slightly opening his mouth, giving you a really scary view of all the cutting edge teeth he possesses. Given the circumstances, [bold type]you may want to answer that quickly.[roman type][line break]";
			Linebreak;
			say "     [link](1)[as]1[end link] - Tell him that you were just passing by, though you know that's a lie.";
			say "     [link](2)[as]2[end link] - Be honest and tell him that you were following him about, fascinated with his unique features.";
			say "     [link](3)[as]3[end link] - Let him know that, in all truth, you're just craving for a really big beasty lover like him.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to give an excuse, [link]2[end link] to tell him that you've been curious about him or [link]3[end link] to blatantly flirt with the beast that could eat you up in one go.";
			if calcnumber is 1:
				Linebreak;
				say "     All you can think about is saying that your really just happened to be walking through and saw tracks that he left behind, then got a little distracted and let yourself be pinned down by a gigantic behemoth... Him. He squints his big eyes before his voice booms out again. 'Lies! I know you've been following me around. I saw you looking at my junk while I was teaching that eagle man a lesson, or when I was leaning over that tree to have a snack. I even insisted on giving you a prolonged show, since you seemed to be enjoying the view, in hopes that you would be satisfied and go away... And now I find you here?! Not a coincidence... Tell me what you want from me before I bite and chew you into minced meat!'";
				say "     It seems you would be forced to answer, were it not for a situation that comes to save you... Or at least, serving as an interruption.";
				WaitLineBreak;
			else if calcnumber is 2:
				Linebreak;
				say "     You're in no position to be attempting to deceive a beast of gigantic proportions that could easily tear you apart with one strike, so you decide to be sincere and let him know that you've actually been wanting to observe him, wondering to yourself why is he so different from the other behemoths. He looks at your for a while, then shows you a really, like, [italic type]really[bold type] toothy smile that could scare away even an army of soldiers. 'Ah, that's it? You're just curious as to why I'm red and have a weird tail? That happens if you spend way too much time in a nanite filled apocalypse like this one and get too close to behemoths and scorpions simultaneously, I think. Or at least that's one of the possibilities regarding what happened to me.'";
				say "     Scorpions and behemoths? That would be some incredible result, but before you're able to know more, something comes to interrupt you...";
				WaitLineBreak;
			else if calcnumber is 3:
				Linebreak;
				now Libido of Diavoborg is 1;
				say "     This opportunity cannot be wasted, you have to tell him how you feel about that enormous frame, those sharp teeth, these claws that could crush you so easily, the absolutely monstrous dick hanging beneath him, with the pair of balls that are easily bigger than your head, the fun addition of a gaping cunt right behind them... And you're daydreaming, which pisses him off quite a lot. 'Answer at once!' he shouts, looking scarier by the second. The only thing that occurs to you is commenting on how [']big['] he is, and how much you'd love to get to know him [']up close[']. The beast retracts with an frowned eyebrow, or well, the closest expression to that which he could make. 'Uh... Really? Shouldn't you be picking someone your size or something? I don't think I could fit in any of your holes... But sure, if that's all you want, I can pin you down under one of my parts. Which one do you want?'";
				say "     It's actually exhilarating how prompty he raises up, to bring his musky junk hovering above your head. You can even notice his cock slowly thickening and hardening at the situation... 'I've got something for everyone, I'd say. It's quite awesome, in my opinion...' With a lot of choices to make, you're left there, simply admiring the amazing view this behemoth is giving you, with a maximized representation of each reproductive organ that are getting progressively more excited...";
				say "     However, something comes to abruptly interrupt this moment.";
				WaitLineBreak;
			say "     Feeling the earth shaking around you with the red behemoth above you standing still, you know that's bad news. 'Looks like we've got another visitor...' he says, letting go of you as he walks towards a certain direction. When you look, you see another behemoth, of the usual forest green color, looking back at him fiercely. It looks like they're about to fight eachother, leaving you with a few options as they walk in circles with their guards up to see who makes the first move. As they growl at eachother, you can use this opportunity to [bold type]run away while you can, forever[roman type], or you can actually [bold type]offer help in fighting the behemoth[roman type]. Alternatively, you can simply [bold type]observe the combat until it's over[roman type], since it's a very big threat, but it might net you some positive score with the peculiar beast if you actually manage to show off your strength, perhaps.";
			Linebreak;
			say "     [link](1)[as]1[end link] - This was definitely a mistake. Get away and never chase this beast again.";
			say "     [link](2)[as]2[end link] - Help the red beast and fight off the invader behemoth.";
			say "     [link](3)[as]3[end link] - Just stay where you are, this will be over soon.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to go away and never return, [link]2[end link] to help him fight the behemoth intruder or [link]3[end link] to stay where you are.";
			if calcnumber is 1:
				say "     The two beasts are very distracted fighting eachother, so you find the best opportunity to scramble away and run as fast as you can until you can't hear their grunts and growls anymore. Phew, that was a very dangerous experience... Let's not do that again. He will probably be thankful if you don't show him your face ever again, too, given how he found you to be quite an annoyance.";
				if libido of Diavoborg is 1:
					say "     Though he did seem interested in showing off his privates to you... Oh, well, some things may not be worth the hassle, anyway.";
					now Resolution of Four Leg Wrath is 99;
					now Four Leg Wrath is resolved;
			else if calcnumber is 2:
				say "     Seeing how this will be a ferocious battle, your help could be crucial to allow your new acquaintance to leave without any major injury. With that in mind, you rush towards the fight with all your might.";
				wait for any key;
				FLWBehemothFight;
			else if calcnumber is 3:
				say "     It might be better if you do not interfere. Fighting a beast much bigger than yourself may not be the most wise decision, especially when there's a chance it might be enraged. You simply step back and observe the fight from a safe spot.";
				WaitLineBreak;
				say "     The behemoth beast charges towards the red one, who swiftly dodges the tackle and positions himself right behind the wild monster, though this isn't enough to completely avoid a strike from its tail. He manages to dampen the attack with a smart usage of his shoulder and front leg, but has to rapidly move around the creature in order to gain an opportunity. Soon, there's a lot of dust floating around, making it hard to see in detail what is going on, but you can still distinguish the shapes behind, going at eachother with their claws and fangs in what seems to be a pretty bloodthirsty fight. When the next charge in happens, your crimson acquaintance does something different...";
				say "     While he manages to evade his opponent, he doesn't run to his backside. Instead, attempts to tackle it like the beast did previously, only to gain an excellent angle in reach of his tail. Within a gleaming shine provided by the sun against the razor sharp spike on the tip of his tail, he stings the creature with an incredible speed, releasing a grunt of pain from the enraged monster. The grunt diminishes quickly, and becomes something more prolonged and low, associated with a brief dizziness. Then, it's only moans, as the beast collapses. Dust finally settles down completely, and you can see the red behemoth is victorious, flexing his thick frame on top of the defeated enemy who, by the way, has a massive hard-on throbbing helplessly between its legs.";
				now Loyalty of Diavoborg is 5;
				WaitLineBreak;
			say "     It is a rather curious situation, but you don't give it much thought until to put two and two together. A sting of the red behemoth's tail was enough to drop a beast like that and make it horny... What just really happened here? 'Yes, as you are probably wondering, I delivered a venomous strike to the behemoth. My venom isn't deadly, however, but once it is in a creature's system, it makes them debilitatingly aroused. The bigger they are, the more venom it requires. Not sure what it would do to someone like you, but it would probably be enough to send you into spontaneous orgasm.' He explains as he wiggles his tail around like a snake's body, looking down at you with condescendence.";
			if Libido of Diavoborg < 1:
				say "     'Anyway, you still haven't given me a proper answer as to why you are so interested in following me around. Be it curiosity or not, I'd rather be left in peace as I enjoy my days exploring.' he reminds you, as he licks his claws clean, one by one. Before you're given a chance to answer, however, the beast continues to talk. 'Tell you what, I don't really care anymore. It seems it is rather dangerous to be out here in the open, and I don't want to fight another unfortunate imbecile.' He turns his tail to you, but before he departs, he tells you one last thing. 'I live in a cavern near the mountains. If you find it, I'll welcome you and talk to you there. Until then, don't follow me around anymore.'";
				WaitLineBreak;
				say "     Now he finally takes his leave, letting you on a clue about where his lair is located. He might be friendlier in there, and truth be told, there is not point in following him around anymore. You might want to search for this cavern if you intend to continue your relationship with the peculiar behemoth.";
				say "     Perhaps you should look for [bold type]that red cave[roman type] in the future while in the Dry Plains, if you want to reencounter this strange behemoth.";
			else:
				say "     'So... where were we? Oh, yes, you were admiring my privates, and I was getting in the mood for some fun... Sadly, it's now gone. I hate being interrupted like this...' he laments, sighing out of annoyance. 'It would have been good to have an eager and willing tiny little thing like you massaging my balls, but I guess if you really want to do that, you'll have to find me in my lair. A cavern near the mountains, not too far from here. If you find it, I'll welcome you, and you can hug my junk all you want. Sounds like a good deal to you?' he teases you, giving you another brief, yet generous view of his dandling sack and cock as he turns around to take his leave. 'Don't keep me waiting for long, though. You know what happens when I run out of patience.'";
				WaitLineBreak;
				say "     With a final wink, he takes his leave, letting you on a clue about where his lair is located. Truth be told, there is not point in following him around anymore, since he actually invited you to his place. You might want to search for this cavern if you intend to continue your relationship with the peculiar behemoth, and possibly get laid with a marvelously big beast lover.";
				say "     Perhaps you should look for [bold type]that red cave[roman type] in the future while in the Dry Plains, if you want to reencounter this strange behemoth.";
			now Resolution of Four Leg Wrath is 3;
			now Four Leg Wrath is resolved;
		else:
			Linebreak;
			say "     Given how risky your last attempt was, your resolve tells you to come better prepared for any upcoming events that could pose a risk to you. With that in mind, you dismiss the idea and continue on whatever you were doing previously.";

to FLWBehemothFight:
	now inasituation is true;
	Challenge "Behemoth";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     Incredibly so, your might, wits, courage and swift strikes manage to bring down the beast completely on your own, as the red behemoth eyes you in awe. 'Oh... you can slay them on your own?! You're more powerful than you look...' he comments, poking the behemoth with his frontal paw as he examines the collapsed creature, who is grunting - or rather... moaning, to your surprise - as it lies defeated. 'It seems that my venom aided you, as well.' adds the red beast as he points you towards the massive hard-on your enemy now has, helplessly throbbing between its legs.";
		now Loyalty of Diavoborg is 9;
		WaitLineBreak;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     This was a terrible idea, you can't really fight it and now you're in too much pain to even move. Seems like [bold type]you've made yourself of a fool[roman type] in front of the red behemoth...";
		say "     'Some fighter you are. If it wasn't for me, you'd be in a bad spot right now.' comments your new acquaintance as he bodyblocks the beast's next attacks and keeps you away from harm, then attempts to tackle the beast once it has to stop in order to recover some stamina. This allows him to gain an excellent angle in reach of his tail, and within a gleaming shine provided by the sun against the razor sharp spike on the tip of his tail, he stings the creature with an incredible speed, releasing a grunt of pain from the enraged monster. The grunt diminishes quickly, and becomes something more prolonged and low, associated with a brief dizziness. Then, it's only moans, as the beast collapses. Dust finally settles down completely, and you can see the red behemoth is victorious, flexing his thick frame on top of the defeated enemy who, by the way, has a massive hard-on throbbing helplessly between its legs.";
		WaitLineBreak;
	else if fightoutcome is 30: [fled]
		say "     This was a terrible idea, you can't really fight it and now you've provoked it to target you, so you're forced to run before it can end you.";
		say "     Though, to your luck, your new acquaintance bodyblocks the beast's next attacks and keeps you away from harm, then attempts to tackle the beast once it has to stop in order to recover some stamina. 'Let me take the fight from now on.' he shouts, while he gains an excellent angle in reach of his tail, and within a gleaming shine provided by the sun against the razor sharp spike on the tip of his tail, he stings the creature with an incredible speed, releasing a grunt of pain from the enraged monster. The grunt diminishes quickly, and becomes something more prolonged and low, associated with a brief dizziness. Then, it's only moans, as the beast collapses. Dust finally settles down completely, and you can see the red behemoth is victorious, flexing his thick frame on top of the defeated enemy who, by the way, has a massive hard-on throbbing helplessly between its legs.";
		now Loyalty of Diavoborg is 5;
		WaitLineBreak;

Section 1.1 - Finding the Cave

Table of GameEventIDs (continued)
Object	Name
That Red Cave	"That Red Cave"

That Red Cave is a situation.
The PreReq1 of That Red Cave is Four Leg Wrath.
The PreReq1Resolution of That Red Cave is { 3 }.
The sarea of That Red Cave is "Plains".

Instead of resolving That Red Cave:
	say "     After having encountered that one peculiar behemoth person who could actually talk and act with the intelligence of a normal person (which is, by the way, an extremely odd situation, given the fact most behemoths are not talkative at all, grunting and fucking everything that moves... or worse, given their size) and experienced a few events together, he (yes, [']he['], as it was established already that he is an actual person, or something like that) has let you know that he lives in a cave close to the mountains, accessible through the Dry Plains... of all places. Traveling through such a vast area only to arrive at the only visible rocky region from here is, indeed, a chore, but you have gone through worse. In fact, things look particularly calm, you haven't been ambushed by any sex-crazed creature so far.";
	say "     Just how, exactly, would it happen? A sentient behemoth with a scorpion tail and a spicy fur color, with a personality as big as him, and so almighty and powerful as he is? Would he be the only one who happened to have this condition? Or is there something he is not telling you? Many questions could surge in your mind if you thought well about them, as they easily drift around when walking through a long, long area full of uninteresting things to see, mainly grass and ground. There is also the possibility that he lied to you and there is actually no cave, which would be immensely frustrating and disappointing, but one should not be judged so lightly. After all, you barely know this... beast.";
	WaitLineBreak;
	say "     This trip could be called extremely boring and tiring. At some point, it could be said that a little encounter with a random creature would make it [italic type]tolerable[roman type], but not even that is happening. In fact, the more you approach the mountains, the more rare they get. It is just the sound of your steps on the dirt that reaches your ears, and the occasional breeze, nothing else. But you are almost there, reaching the edge of the plains after what seemed to be an eternity of walking. Your feet actually hurt... but you have to ignore the pain, or most of it, if you want to make it until the end.";
	say "     And so, you continue to walk, step after step towards the plausible location of a deep cave. You will, most definitely, have to look for an entrance around these portions of land, but for a behemoth to fit in, it should not be a tiny cave that is very hard to see, hopefully. Now that you think of it, he never mentioned how his cave looked, or the appearance of the entrance, or even its remote location. You are simply looking for it because he said it existed! No details whatsoever were given on where to head to when looking for this specific place. And why would you spend your time doing this? Perhaps you are thinking it would be worth gaining the friendship of a large, powerful and very unique beast? Well, maybe it is, but that remains to be seen. For now, you simply begin you search, now that you have arrived.";
	WaitLineBreak;
	say "     You follow a path near the base of the mountains, on the border shared with Mount Shirley. But before proceeding any further, you decide to take a little rest...";
	WaitLineBreak;
	say "     ... And as you are about to take a seat and lean back against a rocky bump, you hear a strange noise. It sounded like someone had suddenly start walking... Someone heavy, causing some tiny pebbles to roll down the slope as you glance around, trying to catch a clue of what it was, but you find nothing. It could be just a bird or something, so nothing too important to note. Perhaps you are being paranoid, even...";
	say "     So after a few moments of search, you let you guard down and decide to take into your resting efforts once more...";
	WaitLineBreak;
	say "     ... Then suddenly, an enormous creature jumps out of nowhere towards you, pinning you down under its heavy, clawed paw, and proceeds to give you a very, very large and wet lick on the face. It is the red behemoth. 'Look who's here! I thought you'd have been eaten by now! Glad to see my tasty snack found its way to my trap!' Your eyes widen in realization, then revolt takes over as you discover that you have been tri-... He speaks again before you can finish that thought. 'I'm just kidding. It would have been a genious move on my part... which also surprises me that it would have worked, somehow... But that wasn't my intention. I just wanted to say hi.' he says, giving you another lick as you attempt to process what is happening. 'You look tired. Wanna head inside?' he asks with a wide smile, open enough so you can see his gaping throat from where you are, and you blink for a moment... 'Not inside ME, you dork. I mean my lair. Home. Whatever you want to call it. I'm not going to eat you!'";
	say "     Since he is making the invitation, perhaps you should take it. You did not come all the way here to leave with no results, after all your effort. You nod at the big beast, and so he helps you up and pushes you gently to walk in front of him. 'It's not too far. Just keep going forward, then turn around that corner over there, and we'll be close.' he tells you, as you both make your way towards your next destination.";
	WaitLineBreak;
	move player to Red Rock Lair Hall;
	move Diavoborg to Red Rock Lair Hall;
	AddNavPoint Entrance to Red Rock Lair;
	now That Red Cave is resolved;

Section 1.2 - Red Rock Lair

Table of GameRoomIDs (continued)
Object	Name
Entrance to Red Rock Lair	"Entrance to Red Rock Lair"

Entrance to Red Rock Lair is a room. It is a fasttravel.
The earea of Entrance to Red Rock Lair is "Plains".
The description of Entrance to Red Rock Lair is "[DiavoborgLairEntranceDesc]".

to say DiavoborgLairEntranceDesc:
	say "     The entrance to Diavoborg's Lair lays east of your position and at the base of a smaller mount, which is an extension connected to a bigger mountain, being large enough for any giant-sized beast to fit in comfortably. From here, you can see the vast area of the Dry Plains, hiding behind fog at longer distances.";

to connect Entrance to Red Rock Lair:
	now Entrance to Red Rock Lair is known;

a postimport rule: [bugfixing rules for players that import savegames]
	if That Red Cave is resolved: [event resolved, room not connected yet]
		connect Entrance to Red Rock Lair;

instead of smelling Entrance to Red Rock Lair:
	say "     This place doesn't give off any particular smell, apart from a faint animalistic scent. Probably a behemoth's, which wouldn't be that odd.";

[-----------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Red Rock Lair Hall	"Red Rock Lair Hall"

Red Rock Lair Hall is a room.
Red Rock Lair Hall is east of Entrance to Red Rock Lair. It is sleepsafe.
The earea of Red Rock Lair Hall is "Plains".
The description of Red Rock Lair Hall is "[DiavoborgLairHallDesc]".

to say DiavoborgLairHallDesc:
	say "     This particular division serves as the hall of Diavoborg's Lair, leading to other rooms that the behemoth himself excavated. There isn't a lot to tell about, only that it is ample and spacious, so that Diavoborg can freely move around. At the middle of this particular room there is a firecamp, bigger than you are used to, which is lit during the night to provide some light. He also took the time to hang some torches on the walls, since little light gets in the deepest parts of the cave. One of these paths leads to his resting place, while the other seems unfinished, with rubble scattered around. Perhaps the red behemoth is working on something.";

instead of smelling Red Rock Lair Hall:
	say "     Inside Diavoborg's lair, his animalistic scent is more intense. You can definitely tell it apart from other beasts.";

[-----------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Red Rock Resting Chamber	"Red Rock Resting Chamber"

Red Rock Resting Chamber is a room.
Red Rock Resting Chamber is southeast of Red Rock Lair Hall. It is sleepsafe.
The earea of Red Rock Resting Chamber is "Plains".
The description of Red Rock Resting Chamber is "[DiavoborgRestingChamberDesc]".

to say DiavoborgRestingChamberDesc:
	say "     Here is where Diavoborg retreats to sleep. He has set up a really neat bedrock to serve as bed for someone his size, which would probably feel a little too hard and uncomfortable for you. The walls have lit torches, so that this division doesn't fall into pitch darkness. It also looks like the behemoth has a pretty collection of colorful gemstones and different rocks, all organized and ordered by size, appearance and shape. There are some wild scratches on the floor, as well.";

instead of smelling Red Rock Resting Chamber:
	say "     Inside Diavoborg's lair, his animalistic scent is more intense. You can definitely tell it apart from other beasts.";

[-----------------------------------------------]

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Diavoborg	"Diavoborg"

Diavoborg is a man.
ScaleValue of Diavoborg is 5. [Behemoth sized]
Body Weight of Diavoborg is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Diavoborg is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Diavoborg is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Diavoborg is 25. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Diavoborg is 5.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Diavoborg is 13. [length in inches]
Breast Size of Diavoborg is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Diavoborg is 2. [count of nipples]
Asshole Depth of Diavoborg is 50. [inches deep for anal fucking]
Asshole Tightness of Diavoborg is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Diavoborg is 1. [number of cocks]
Cock Girth of Diavoborg is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Diavoborg is 54. [length in inches]
Ball Count of Diavoborg is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Diavoborg is 6. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Diavoborg is 0. [number of cunts]
Cunt Depth of Diavoborg is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Diavoborg is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Diavoborg is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Diavoborg is false.
PlayerRomanced of Diavoborg is false.
PlayerFriended of Diavoborg is false.
PlayerControlled of Diavoborg is false.
PlayerFucked of Diavoborg is false.
OralVirgin of Diavoborg is false.
Virgin of Diavoborg is false.
AnalVirgin of Diavoborg is false.
PenileVirgin of Diavoborg is false.
SexuallyExperienced of Diavoborg is true.
TwistedCapacity of Diavoborg is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Diavoborg is true. [steriles can't knock people up]
MainInfection of Diavoborg is "Behemoth".
The description of Diavoborg is "[Diavoborgdesc]".
The conversation of Diavoborg is { "<This is nothing but a placeholder!>" }.
The scent of Diavoborg is "     Diavoborg smells like a beast you can't quite compare to anything but the behemoths themselves, though perhaps the closest would be something between a bull and a dragon. It is very animalistic, nonetheless, especially around his junk, which makes you quite dizzy at first if you take a deeper whiff while standing next to him".

to say DiavoborgDesc:
	say "     The unique example of the Viper Behemoth subspecies that Diavoborg is features a dark red fur, his main characteristic, and it greatly distinguishes him from the remaining beasts of his kind. He still has teeth like razors, albeit shorter in length, and he is about the same size as other Behemoths, with the same amount of hide covering his hulking sixteen foot long frame, a generous white mane adorning his enormous head just like them, sharing the shape of his cousins regarding his two onyx horns that jut from his scalp, and equally clawed paws that scrap the ground beneath his monstrous form. The only exception is his tail, which while retaining the usual nine foot long size, its spikes are longer and stretch forward, the ones towards the center arching downwards, resembling scythes, and are venomous. He's laying it at ease for now, merely sitting in front of you as his four and a half foot long cock and basketball-sized nuts rest between his four legs, but fully exposed.";
	if Loyalty of Diavoborg < 10:
		say "     Staring at you with his bright grey eyes, his gaze trails your movements attentively.";
	else if Loyalty of Diavoborg > 9 and Loyalty of Diavoborg < 20:
		say "     He seems more at ease, now that he's been with you a few times by now, although his eyes still follow you wherever you move.";
	else if Loyalty of Diavoborg > 19 and Loyalty of Diavoborg < 30:
		say "     His posture is almost completely relaxed, though his tail's movement betrays his apparent comfort, still flicking whenever you make a sudden move. At least he doesn't show you his sharp teeth as much as before.";
	else if Loyalty of Diavoborg > 29:
		say "     He's not constantly watching your movements anymore, and seems completely relaxed in your presence... which is a good sign.";

Section 3 - Diavoborg Talk

instead of conversing Diavoborg:
	say "[DiavoborgTalkMenu]";

to say DiavoborgTalkMenu:
	say "     [bold type]What do you want to talk to Diavoborg about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Diavoborg to tell you more about himself";
	[]
	if Energy of Diavoborg > 0:
		choose a blank row in table of fucking options;
		now title entry is "This location";
		now sortorder entry is 2;
		now description entry is "Inquire about his choice of home";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Him as a Behemoth";
		now sortorder entry is 3;
		now description entry is "Ask how he likes to be one big beast";
	[]
	if Energy of Diavoborg > 1:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 4;
		now description entry is "Have a sex talk with the behemoth";
	[]
	if Libido of Diavoborg > 1:
		choose a blank row in table of fucking options;
		now title entry is "Gender";
		now sortorder entry is 5;
		now description entry is "Ask him about his actual gender, given the fact he has a bit of both, down there...";
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
					say "[DiavoborgTalkHimself]";
				if (nam is "This location"):
					say "[DiavoborgTalkLocation]";
				if (nam is "Him as a Behemoth"):
					say "[DiavoborgTalkBehemoth]";
				if (nam is "Sex"):
					say "[DiavoborgTalkSex]";
				if (nam is "Gender"):
					say "[DiavoborgTalkGender]";
				wait for any key;
				say "[DiavoborgTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you have to take your leave. Diavoborg smiles to you, though he can't hide the disappointment in seeing you go.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DiavoborgTalkHimself:
	if Energy of Diavoborg is 0:
		say "     You still didn't have many chances to speak, so you figure you should try asking Diavoborg a little about himself, first. He gives you a long glare, then looks to the side, as if thinking about an answer. 'Uhm... I'm big... I like rocks... And apples...' He seems to be thinking pretty hard to give you all these answers. 'I'm sorry, I don't talk to a lot of people, as you may imagine... I kind of forgot how to do this...' You reassure him, before direction your question towards something more specific. 'Oh, you mean how I came to be here and the way I am? Ah, I think I can tell you that...' he says, before making a brief pause.";
		now Energy of Diavoborg is 1;
	else:
		say "     You decide to ask the behemoth to tell you about himself, in order to recall a bit of his story. He doesn't seem to have any issues in telling you all about it again.";
	say "     'I was a geologist. One day during my travels I got stung by a scorpion, and that actually was a pain to treat... but eventually, I made it out of that trouble. Although, that wasn't so long ago, and it probably, uh... had something to do with the way I turned after being shoved into some behemoth's balls in the past.' You tilt your head, wondering how he got into that situation. 'I was just taking a walk, then suddenly one of them grabs me and... does the thing. I had no way to offer any sort of resistance, you know how big they are...' he proceeds, looking around in embarassment. 'Then once the beast blew me away, it was only a matter of time until my body started to change. But differently! I suddenly had this strange scorpion tail, with the venom and all, but in appearance... it was still behemoth-like.'";
	WaitLineBreak;
	say "     'I guess I call what I am the Viper Behemoth variant... But in truth, it was just a weird reaction that happened with my body. I don't think I can turn anyone into behemoths like me, unless they have been bitten by any scorpions in the past, probably.' You thank him before moving on to something else.";

to say DiavoborgTalkLocation:
	say "     His choice of residence is certainly a peculiar one, so you decide to ask him about that. 'Well, there aren't really any other places that are suitable for me, besides... I feel at home between rocks and mountains. It is where I always wanted to be.' You extend your question, asking him if he wouldn't prefer living somewhere else, maybe with more company and less isolated from the rest of the world. 'I always liked the quiet, and people usually are scared of me, so... I am fine, here. This is my home, for the time being, and it is quite comfortable, to be honest.' Maybe Diavoborg really likes it here, after all.";

to say DiavoborgTalkBehemoth:
	say "     Given the fact he has to live his life as a generously sized beast, you decide to ask about his perspective on the matter, regarding his days as a behemoth. He takes a moment to think. 'Honestly, it isn't that bad! This form is really useful to study some rocks in hard to reach places. I can excavate very easily, as a creature with superior strength and size. I don't really mind being like this, it has its perks. Although it can scare some people off, I admit. What would you do if a giant sized beast came walking towards you, with those sharp claws and teeth...? Wait, actually, don't answer that. There's no need to go there.'";
	say "     It appears he does not mind being a behemoth, although you can't help but wonder how he managed to keep his full sanity, being isolated as he is. 'It is not as difficult as it may initially seem. Keeping my mind busy and focused helps me stay away from any... debauchery. But I think I embraced this quite well, so it just became easier the more I got used to it. I was a very horny person before, though... and that hasn't changed, but still isn't in a debilitating way like most creatures I see.' That is one way to put it, and he is actually doing quite well in that department.";
	if Energy of Diavoborg is 1:
		now Energy of Diavoborg is 2;

to say DiavoborgTalkSex:
	if BodyName of player is "Behemoth" or BodyName of player is "Human Giant" or scalevalue of player > 4:
		say "     <<Sex with Diavoborg with a giant-sized mutation is currently not supported. You will have to go smaller if you want any fun with the viper behemoth. This may change in the future.>>";
	else if Libido of Diavoborg < 2:
		say "     Now that you have talked to him about all the basic things, it is a good a time as any to ask him about sex. Grabbing the subject, you ask the questions away.";
		if Libido of Diavoborg is 1: [already flirted with him]
			say "     'Ah, I saw the question coming, given how our last meeting out there went. I suppose you wanted to get a good look at these...?' he asks, giving you a clear view at his male junk by spreading his front legs to the sides, basketball-sized balls resting on the ground below a pretty thick and long, gargantuan-sized cock, that only made sense to exist on a beast as big as him. You already know that behind those there is a pussy, whose dimentions are not far behind his masculine appendage. 'Answering your question, I would be more than glad to receive a balls massage or something like that. If you are so willing to offer me a good time... I will let you.'";
			say "     It looks like Diavoborg is more than willing to let you touch him. Perhaps you should start by following his suggestion...?";
			now Libido of Diavoborg is 2;
		else if Libido of Diavoborg is 0: [first time mentioning something sexual]
			say "     He just stares at you with an incredulous expression, looking over your much smaller size with a nearly mocking expression. 'Oh my... Is that why you followed me about?!' his tone sounds almost as if he was offended, but then it becomes clear the beast is only amused. 'I am not one for kink-shaming, but don't you think we are a little, uh... Too different? Like in size and shape...?' he asks, but at the same time, he is slowly readjusting his position to give you a clear view at his male junk by spreading his front legs to the sides, basketball-sized balls resting on the ground below a pretty thick and long, gargantuan-sized cock, that only made sense to exist on a beast as big as him. You already know that behind those there is a pussy, whose dimentions are not far behind his masculine appendage.";
			say "     'Hey, my eyes are up here, snack.' you are called into the realization that you were so rudely staring at his privates, and immediately return your gaze to his. 'I mean, I couldn't fuck you or anything of the sort... But we don't have to [italic type]fuck[roman type], right? There are a lot more ways to do this, if you are into... overly large sizes. Oh, I know... You could rub my balls, for starters. How does that sound?' he makes the suggestion, purposely making his massive orbs very visible to you.";
			WaitLineBreak;
			say "     It looks like Diavoborg is more than willing to let you touch him. Perhaps you should start by following his suggestion...?";
			now Libido of Diavoborg is 2;
	else if Libido of Diavoborg is 2: [Talked, but haven't done anything yet]
		say "     You have already talked to the red behemoth about this, and estipulated you could have some fun together. Perhaps you should give it a try?";
	else if Libido of Diavoborg > 2: [Had the first interaction]
		say "     After having done the deeds, you figured it should be for the best if you checked on him. He may be a big and tough beast, but he is still human, deep down, who got infected with the nanites. 'Oh, don't worry about me' - he says, chuckling amidst his words - 'Like I told you, my mind is still solidly sane, and it will be kept that way. Although I am curious as to what kinds of things I can do with this body... Maybe sometime we can explore some new things. All in due safety, of course.'";
		say "     It is true that the behemoths do have some very... peculiar ways to mess with smaller creatures, and you have a feeling Diavoborg never tried any of those.";

to say DiavoborgTalkGender:
	say "     Since you get to talk to an actual behemoth, you might as well ask about the fact they have both organs underneath the waist, and what his gender initially was. 'I have always been a male, and honestly I don't feel any less male. It's actually fun having a pussy too, you know? It feels kind of good... It's probably because I never had one...? Although I wouldn't trade my dick for anything, fucking a tight hole is still the best feeling ever. Too bad I don't get to actually fuck an ass too much, these days.' he admits, to all of these things at once, as you pay close attention to every word. 'I said before I feel good as a behemoth myself, but... Truth is, I wouldn't mind being human again. I was pretty hot back in the days, used to hit the gym and have some fun in the locker rooms... That is, when I wasn't busy exploring mountains and caves... Ah, I'm getting sidetracked. Answering your question, male, always.'";
	say "     You thank him for the answers before you change the subject.";
	if Energy of Diavoborg is 2:
		now Energy of Diavoborg is 3;

Instead of fucking Diavoborg:
	if BodyName of player is "Behemoth" or BodyName of player is "Human Giant" or scalevalue of player > 4:
		say "     <<Sex with Diavoborg with a giant-sized mutation is currently not supported. You will have to go smaller if you want any fun with the viper behemoth. This may change in the future.>>";
	else if Libido of Diavoborg < 2:
		say "     You might want to reach this subject with Diavoborg by talking to him, first.";
	else if lastfuck of Diavoborg - turns < 6:
		say "     Given the short time that passed since your last sexual interaction with Diavoborg, it might be too early to suggest another go. How about you try that again later?";
	else if Libido of Diavoborg >= 2:
		say "     You approach the red behemoth with your intentions clear, as he smiles back at you with eagerness. 'Seems like someone's in the mood... I guess I have some free time for a pretty snack such as yourself.' he says, turning towards you with utmost interest for your request.";
		say "     [bold type]What shall you do with Diavoborg?[roman type][line break]";
		Linebreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Massage his balls";
		now sortorder entry is 1;
		now description entry is "You've heard he likes them rubbed";
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
					if (nam is "Massage his balls"):
						say "[DiavoborgBallsMassage]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You excuse yourself as you have to take your leave. Diavoborg smiles to you, though he can't hide the disappointment in seeing you go.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say DiavoborgBallsMassage:
	if Libido of Diavoborg is 2:
		say "     Following your previous conversations, you remember the behemoth saying he would love a nice massage over his basketball-sized orbs, and it is something you have been considering since then. Making your move, you ask Diavoborg if he would be willing to receive one right now, so you could finally have some fun together.";
	else:
		say "     Wondering your possibilities, you end up asking if your friend needs a big rub down on his full basketball-sized orbs, given how much he likes those. Hearing your words, the big beast pops a toothy smile.";
	say "     'For sure! I was needing one badly, in fact...' he says, giving you enough room to make an approach close enough to his sizable parts. The animalistic scent intensifies the closer you get, and it is truly amazing to see how big and heavy they look from this angle. He is currently standing on all fours, as per normal, and in order to provide you a good reach, he stretches his back legs and brings the rest of his body forward, in this way lowering his balls to ground level and allowing you to effectively touch them. 'Hope you can get all angles like that.' he says, and indeed, you are able to move around his marvelous gonads without getting squashed. After letting him know that everything's good, you get to work by putting your hands on his furred balls, surprised by the soft feeling of all teh fur once your palms lay on their surface.";
	WaitLineBreak;
	say "     He lets out a soft huff, caused by the first impact of your initial rubbing, running your hands all over the roundness of his balls, which bounce around heavily, as full as they seem. On the other side, you see your beastly friend growing a boner, and a very large one by the looks of it. It starts thickening at first, then as the veins pop out, it begins to raise tentatively, expanding with each throb as it continues to grow, further encouraged by your so much appreciated massage. What is impressive is that, even for something that big, he is still a grower. You observe his huge cock increasing in size as it hardens, leaving its former size to shame as it hits a whole four and half feet long, primed to its fullest.";
	say "     It is not only his masculine equipment that seems to like the attention you are giving his balls. Behind the sack, right above you, his engorged labia and a constant stream of watery secretion are proof of his general appreciation, although you end up catching a few drops from his inevitable arousal. 'You are really good at this...!' he compliments your efforts, as you apply pressure on all the right spots, not too roughly, but not that softly either. He seems to like a good firm rub all across his gonads, one that actually manages to reach every bit and corner of his sack, a task that would be difficult for someone with large paws such as his 'It's so difficult for me to reach over there...' - he comments, as you make a move towards the meaty back of his sack, usually stretched due to his low hangers and right above them - 'Y-yeah, right there...!' You suppose you should just comply, since he is loving it so much.";
	WaitLineBreak;
	say "     But your persistent movements leave the red behemoth very, very horny. So much in fact, that he begins to ever so slightly hump the ground, his vast cock grinding against the smooth rocky surface where he's leaning against, and you feel all the momentum concentrated in his big testes. Heavy bouncing from back and forth ends up taking your hands along, forcing you to adopt a more solid position in order to keep the rubbing going. 'Fuck... yes...' he grunts in a beast-like manner, letting his primal needs take priority over anything else. You don't think he really is paying attention to your efforts anymore, as his movements get more wild and intense, at some point becoming so fast and rough that it seemed as if he was pounding a tight hole.";
	say "     From this point forward, everything that comes out of him is moans and grunts, no words or anything that would suggest his human background, only pure lust in the air. As he continues to do this, you are more trying to hold yourself onto his balls rather than actually rubbing them, but you keep trying to do your best. This lasts until you feel those enormous balls raising, and one final prolonged grunt as Diavoborg hits the point of no return. You definitely feel everything in his sack shaking and trembling as his cum starts getting pumped out, one glance over his cock showing you the deluge he's causing in that area. A whole lot of spunk delivered upon the surface in its thickest form, white and creamy simply forming a puddle that soon reaches you, as he continues to shoot like the huge creature that he is.";
	WaitLineBreak;
	say "     His orgasm seems to last for a while, until it subsides. Eventually, he comes to the realization of what happened, then lets out a chuckle. 'Fuck, you're really good at that. I guess I got a bit carried away...' he says, looking a bit embarassed at the enormous mess he has made. 'Well, I guess I have to clean this... Uh... Thanks! This was amazing...!'";
	say "     It seems like he really enjoyed the attention you gave him, although he can't help but feel a little shy. Perhaps that's just his personality.";
	now lastfuck of Diavoborg is turns;
	if Libido of Diavoborg is 2:
		now Libido of Diavoborg is 3;
	if Loyalty of Diavoborg < 10:
		increase Loyalty of Diavoborg by 1;

Diavoborg ends here.
