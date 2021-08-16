Version 1 of Museum Roman Wing by Gherod begins here.

"Adds a Roman Wing to the Museum, linked to the Museum West Hub."

[Version 1 - File created]

[**************************************************]
Section 1 - The Roman Wing
[**************************************************]

Table of GameRoomIDs (continued)
Object	Name
Museum_Roman_Wing	"Museum_Roman_Wing"

Museum_Roman_Wing is a room.
Printed name of Museum_Roman_Wing is "Museum Roman Wing".
RoomID of Museum_Roman_Wing is "Museum_Roman_Wing".
Museum_Roman_Wing is south of Museum West Hub.

Description of Museum_Roman_Wing is "[Museum_Roman_Wing desc]".

instead of sniffing Museum_Roman_Wing:
	say "     It smells of old and ancient, still.";

to say Museum_Roman_Wing desc:
	say "     This expansive section is filled with historical objects of uncalculated value, belonging to the roman era when their empire was predominant. Around the room, there are several display cases filled with many different objects, from trinkets to weapons, pieces of traditional clothing, armor plates, stone carvings, among other things. A few windows are still open, providing some illumination during the day, but if not, the internal lighting still seems to be working.";
	say "     This wing seems to be rather full of stuff you could check, if you wanted. Objects to note are, for example, an [link]ornate armoire[as]use roman wing ornate armoire[end link] with two doors and several drawers underneath.";
	if Resolution of LarsAwakened is 0:
		say "     On one of the corners, a tall [link]statue of a roman soldier[as]use roman wing soldier statue[end link] stands, its stone skin looking weathered by time.";
	else if Resolution of LarsAwakened > 1 and Resolution of LarsAwakened < 99:
		say "     The corner where the formerly a roman soldier statue was is now only filled with Lars['] personal objects, as the centurion himself walks around the wing.";
	else: [is 99, probably]
		say "     The corner where the statue of a roman soldier was is now empty, nothing else filling the empty space that was once occupied by... whatever that creepy stone thing was.";
	say "     There are several [link]eye-catching paintings[as]use roman wing paintings[end link] hanging on the walls to your immediate left, when coming from the entrance.";
	say "     You could also try to investigate the [link]display cases[as]use roman wing display cases[end link] and see if you can find any object of good use. It might require some key to open them, but you could always apply more forceful tactics.";

[Players have to solve a puzzle in order to awaken Lars, the roman centurion.]
[They should give the roman soldier statue a gladius, a scutum shield, a red cape and a centurion helmet.]

[Ornate Armoire contains a key to open the display cases and a locked drawer, which contains the cape.]

[Soldier Statue will already have most of the outfit on it. Upon inspection and after seeing the paintings, the player can find a note with a rough sketch of a roman centurion.]

[One of the paintings is the solution. The player will know which is the correct one by noticing an opening behind it, which contains a key to the ornate armoire drawer.]
[The correct painting will feature a roman centurion wearing all the necessary equipment. A player will need to have found a sketch by the statue to know this.]

[The display cases contain a lot of ornamental weapons. Player will only collect the correct equipment when they know what to take. They must have discovered the correct painting, which is triggered upon either collecting the key or having seen the sketch.]

[Players then only have to bring the objects to the roman statue in any order.]

Table of GameEventIDs (continued)
Object	Name
LarsAwakened	"LarsAwakened"

LarsAwakened is a situation.
ResolveFunction of LarsAwakened is "". Sarea of LarsAwakened is "Nowhere".

[RESOLUTION STAGES]
[0 - Lars is still a statue or has never been awakened]
[1 - Lars has been awakened and player can interact with him]
[99 - Lars has been awakened, but left the wing without a trace]

Table of GameEventIDs (continued)
Object	Name
RWDisplayCasesKey	"RWDisplayCasesKey"

RWDisplayCasesKey is a situation.
ResolveFunction of RWDisplayCasesKey is "". Sarea of RWDisplayCasesKey is "Nowhere".

[RESOLUTION STAGES]
[0 - Player doesn't have the key]
[1 - Player has the key to the cases]

Table of GameEventIDs (continued)
Object	Name
LarsCenturionHelmet	"LarsCenturionHelmet"

LarsCenturionHelmet is a situation.
ResolveFunction of LarsCenturionHelmet is "". Sarea of LarsCenturionHelmet is "Nowhere".

[RESOLUTION STAGES]
[0 - Nothing yet]
[1 - Upon leaving the Roman Wing, player took the centurion helmet]

Table of GameEventIDs (continued)
Object	Name
LarsRedCape	"LarsRedCape"

LarsRedCape is a situation.
ResolveFunction of LarsRedCape is "". Sarea of LarsRedCape is "Nowhere".

[RESOLUTION STAGES]
[0 - Nothing yet]
[1 - Player has acquired the key to the drawer]
[2 - Player has collected the cape]
[3 - Cape was given to the statue]

Table of GameEventIDs (continued)
Object	Name
LarsGladiusAndShield	"LarsGladiusAndShield"

LarsGladiusAndShield is a situation.
ResolveFunction of LarsGladiusAndShield is "". Sarea of LarsGladiusAndShield is "Nowhere".

[RESOLUTION STAGES]
[0 - Nothing yet]
[1 - Player has seen the rough sketch]
[2 - Player knows the correct painting - ALSO REQUIRED FOR CENTURION HELMET]
[3 - Player has collected the gladius and the shield]

UseRWOrnateArmoire is an action applying to nothing.
UseRWRomanSoldierStatue is an action applying to nothing.
UseRWPaintings is an action applying to nothing.
UseRWDisplayCases is an action applying to nothing.

understand "use roman wing ornate armoire" as UseRWOrnateArmoire.
understand "use roman wing soldier statue" as UseRWRomanSoldierStatue.
understand "use roman wing paintings" as UseRWPaintings.
understand "use roman wing display cases" as UseRWDisplayCases.

check UseRWOrnateArmoire:
	if player is not in Museum_Roman_Wing, say "You're not in the Museum Roman Wing at the moment." instead;

check UseRWRomanSoldierStatue:
	if player is not in Museum_Roman_Wing, say "You're not in the Museum Roman Wing at the moment." instead;

check UseRWPaintings:
	if player is not in Museum_Roman_Wing, say "You're not in the Museum Roman Wing at the moment." instead;

check UseRWDisplayCases:
	if player is not in Museum_Roman_Wing, say "You're not in the Museum Roman Wing at the moment." instead;

carry out UseRWOrnateArmoire:
	say "     As you approach this tall and ornate armoire, made of dark wood and embellished details, you quickly that one of the doors seems like it is not closing completely, giving you the realization that those must be unlocked. As for the drawers on the lower part of the furniture, there are a total of four of them, and you are not so sure they can all be opened, as they all have locks on them without a visible key.";
	if Resolution of LarsRedCape is 2 and Resolution of RWDisplayCasesKey < 1: [only check the doors]
		say "     Since you have already found the cape in the locked drawers and they had nothing else, you head directly for the doors, as this was the place you have not checked before.";
		WaitLineBreak;
		say "[RWOrnateArmoireDoors]";
	else if Resolution of RWDisplayCasesKey is 1 and Resolution of LarsRedCape < 2: [only check the locked drawer]
		say "     Since you have already looked behind the doors and found the key to the display cases, your only choice is to check the drawers, so you simply do that.";
		WaitLineBreak;
		say "[RWOrnateArmoireDrawers]";
	else if Resolution of LarsRedCape < 2 and Resolution of RWDisplayCasesKey < 1:
		say "     You could try inspecting either the doors or the drawers. With this in mind, [bold type]which one would you like to start with?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Open the doors in front of you.";
		say "     ([link]N[as]n[end link]) - Check the drawers below.";
		if player consents:
			LineBreak;
			say "[RWOrnateArmoireDoors]";
		else:
			LineBreak;
			say "[RWOrnateArmoireDrawers]";
	else if Lars is in Museum_Roman_Wing:
		say "     It seems Lars has been using this piece of furniture as a place to store some supplies. The armoire is slowly being filled with bottles of water, food and the occasional trinket he finds. Some of those are... quite odd ones to keep around, but perhaps he likes collecting things.";
	else:
		say "     Though, as you have already looked inside and found everything you needed, you really do not see any point in lingering. After, perhaps, admiring the armoire for a while, you step away from it and focus on something else.";

to say RWOrnateArmoireDoors:
	say "     The furniture is old, so when you put your hand on the doors['] handle to open them, they creak all over the place with each inch they move. You do so carefully, as a quite fair bit of dust is sent flying from its interior, which seems empty at first glance. A closer inspection reveals what you feared, as there is nothing to be collected from the armoire except for a [bold type]small key[roman type]. It is made of metal and quite diminutive in size, so it should not belong to this armoire. Perhaps you could try it on the [bold type]display cases[roman type] behind you.";
	now Resolution of RWDisplayCasesKey is 1;

to say RWOrnateArmoireDrawers:
	say "     As you crouch down to inspect the drawers on the lower side of the armoire, you quickly realize that some of them can be opened when you try one of them out, pulling one to you to check its contents and doing so with every other. Unfortunately, you find nothing but dust inside them, except for the last one, to the lower right, that seems to be locked.";
	if Resolution of LarsRedCape is 1:
		WaitLineBreak;
		say "     Knowing you have a key that seems to fit the armoire's aesthetic, you decide to try it out on the drawer, finding out that it, indeed, can be pushed into the lock and rotated, a clicking sound soon following your attempt to unlock the drawer. Inside, it is not as dusty, but your eyes lay on some sort of red cloth covering the entire area. It could, potentially, be a [bold type]red cape[roman type] much alike those the roman soldiers wear. You do not need to collect it, but you know where it is in case you need it.";
		now Resolution of LarsRedCape is 2;
	else:
		say "     Since you have no means to unlock it, you leave it there and take note about this for when you find a way to open it. Perhaps [bold type]there should be a key[roman type], somewhere...";

carry out UseRWDisplayCases:
	say "     These display cases contain a variety of trinkets, weapons and shields reminiscent of the roman empire era. They are not too vastly different, all having lots of similarities with only its details to make the difference. Unfortunately, most of them are simply decorative and would probably not see any effective use in battle.";
	if Resolution of RWDisplayCasesKey is 1 and Resolution of LarsGladiusAndShield < 2:
		WaitLineBreak;
		say "     You do have a key to open these display cases, but there is no point in doing so, for now. At least, you know you can fetch any of these if the need presents itself.";
	else if Resolution of RWDisplayCasesKey is 1 and Resolution of LarsGladiusAndShield is 2:
		WaitLineBreak;
		say "     You happen to have a key to open these display cases, and according to the painting you have seen, there is indeed a [bold type]gladius and a scutum shield[roman type] that would serve the purpose you are looking to achieve. They are here, within reach, in case you need to bring them over somewhere.";
		now Resolution of LarsGladiusAndShield is 3;

carry out UseRWPaintings:
	say "     On this side, there are plenty of paintings featuring important figures of the roman empire, as well as depictures of certain groups, the most prominent being the soldiers and gladiators, some in armies and others alone. These must be quite old, and some show signs of having been recently restored while others have their colors more faded.";
	if Resolution of LarsGladiusAndShield is 0:
		say "     Currently, you do not see anything special about them. Perhaps you should check other things, first.";
	else if Resolution of LarsGladiusAndShield is 1 and Resolution of LarsRedCape is 0:
		WaitLineBreak;
		say "     There is one painting that, however, jumps to the eye. As you compare it to the rough sketch you have found behind the statue, you realize it quite looks like this one: A roman centurion proudly standing with his armor, red cape on the back flowing with the wind, holding a gladius and a scutum shield, and with his helmet on, a glorious metal carapace with a fan-shaped clump of red feathers on top. As you come closer to it, you realize that the painting seems to be hanging lightly from the wall, giving you the feeling you could actually move it easily. Curiosity gets the better of you and so you decide to test that theory. To your surprise, there is [bold type]an antique key[roman type] behind it, a pretty detailed one that seems like it belongs to the [bold type]ornate armoire[roman type], and perhaps one of its drawers?";
		say "     There seems to be more to it, too. This painting might mean something, and you find yourself looking back at the roman soldier statue from before. What would happen if you [bold type]completed it[roman type]? You are pretty sure you can find everything you need within this wing, and [bold type]there is a very similar helmet by the entrance, when you walk outside back to the hub...[roman type][line break]";
		now Resolution of LarsRedCape is 1;
		now Resolution of LarsGladiusAndShield is 2;

instead of going north from Museum_Roman_Wing while (Resolution of LarsGladiusAndShield >= 2 and Resolution of LarsCenturionHelmet < 1):
	say "     As you walk out of the Roman Wing, you pass by a [bold type]centurion helmet[roman type] that seems quite like the one you have seen in that painting. Figuring that this would probably be useful, you take it off the display stand without much trouble and bring it over inside, just in case you need it.";
	now Resolution of LarsCenturionHelmet is 1;

carry out UseRWRomanSoldierStatue:
	if Resolution of LarsAwakened > 0:
		say "     There is no statue here, anymore. It is gone.";
	else:
		say "     This statue represents a muscular and rather handsome roman soldier wearing their typical army armor, which consists of a metal chestplate and armor on top of a red tunic that ends right above the knees, with a pair of sandals as footwear. Something about this sculpture suggests that it is somehow... alive. It is warm to the touch and gives out an ominous aura, as if it was watching you.";
		if Resolution of LarsGladiusAndShield < 1:
			WaitLineBreak;
			say "     Upon inspecting it close enough, you notice a small sheet of paper by its feet. As you kneel to take a closer look, you reach for it with your hand and snatch it from between its sandals. It is a rough sketch of what seems to be a roman centurion, given away by the typical helmet they normally wear along with the army attire, cape and weapons. For some reason, this makes you wonder if any of the [bold type]paintings[roman type] on the other side would be of any relevance...";
			now Resolution of LarsGladiusAndShield is 1;
		if Resolution of LarsRedCape is 2:
			say "     You have a red cape ready to be placed on the statue.";
		if Resolution of LarsGladiusAndShield is 3:
			say "     You have a gladius and a shield you can place on the statue's hands.";
		if Resolution of LarsCenturionHelmet is 1:
			say "     You have found a centurion helmet that can be placed on the statue's head.";
		if Resolution of LarsRedCape is 2 and Resolution of LarsGladiusAndShield is 3 and Resolution of LarsCenturionHelmet is 1 and Resolution of LarsAwakened is 0:
			WaitLineBreak;
			say "     Given that you have everything you require to fulfill the conditions presented by the rough sketch you found, [bold type]would you like to place everything on the statue[roman type] and see what happens? Something could, in fact, take place, though that remains to be seen. A feeling tells you it would do something, but the only way you have to know is if you try.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, dress up the statue.";
			say "     ([link]N[as]n[end link]) - No, back away, for now.";
			if player consents:
				LineBreak;
				say "[RWRomanSoldierStatueAwakening]";
			else:
				LineBreak;
				say "     You decide not to. Does not mean you will never do it, but at least, not now.";

to say RWRomanSoldierStatueAwakening:
	say "     After having placed the last required piece on the handsome statue-man, you take a step back to look at it in its full glory... And you are not quite sure why the word [']handsome['] came to your mind, but indeed, this particular statue looks so very realistic that you could almost swear it was a real person standing right in front of you, like some sort of masculine adonis eyeing you from head to feet, just while standing very still. One would even remember those talented street performers who would pretend they were statues to passersby, only to jumpscare them by moving suddenly. For some reason, it even triggers the uncanny valley feeling in your brain the more you look at it, because it looks so alive, despite its stillness...";
	say "     An urge to touch it pops in your head as you mindlessly move your hand over its arm. You are still not sure why you did that, but it felt like you [italic type]had[roman type] to, as a reflex. For some reason, you thought it was going to fall! Though... It is when you look up at him that you see something disturbing. The statue is looking back at you once your eyes meet, the roman soldier made of stone having moved within the blink of an eye... that, or you are just seeing things. Quickly, you remove your hand and take a step back, once more, only to notice it is not moving at all, but... it is standing in an entirely different position. Confused, you close and rub your eyes to shake away this, you think, hallucination or very vivid dream, and when you open them again...";
	WaitLineBreak;
	say "     It has returned to its previously normal pose, standing up straight and holding what you gave it.";
	WaitLineBreak;
	say "     This is all so very strange, but it seems the soldier has not moved, at all. Perhaps you are just tired from having to figure out how to... What was really the point of all that, actually? You gave the statue a cape, weapons and a helmet much like you have seen in the portrait, but for what reason? Nothing has changed... Did you really just waste your time? And was the statue smirking before...? Confusion really begins to take hold of you, much like what this museum makes you feel, and you strongly consider just leaving this place before you lose your mind... But you cannot shake away this feeling of uncertainty, questioning your actions that ultimately led to nothing... Just when you were so sure you were solving some sort of puzzle that would lead to, maybe... Riches? Secrets? A pleasurable good time?";
	say "     In fact, you look at the statue, once more... You inspect its characteristics and features, in hopes of understanding what is going on... Even asking yourself why do you feel so confused about this. You have just placed objects on the statue and nothing came out of it, so should you just leave in disappointment?! That is the only conclusion, right?";
	LineBreak;
	say "     However, you still [bold type]feel something...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - An unexplainable attraction towards the statue.";
	say "     ([link]N[as]n[end link]) - Creeped out. You really just want to leave.";
	if player consents:
		LineBreak;
		say "     It is such a handsome statue, each muscle sculptured in utmost detail, so anatomically perfect... Your gaze loses itself in its body as you admire its features, that masculine visage, so incredibly attractive... You reach out to him, once more, laying your hand on its forearm... The stone is warm, it almost feels like you are touching a person, smooth and lively... Then you realize you just happened to be repeating your steps from before, and end up looking at its face, once more. It is looking back at you, just like before. But, this time, you do not feel creeped out by it. Those lips call for yours, and before you think how absolutely ridiculous this would seem, you reach out for them and plant a kiss with your own.";
		say "     Closing your eyes, you simply enjoy the warmth of the statue's mouth against yours. You are kissing a statue. A tall, masculine and handsome statue. A statue that should not be this hot - quite literally - and attractive, but a statue nonetheless. This is such a twisted thing to do, but looking at where you have been and the state of the world out there, is this really such an odd act? You do not care anymore, surely tons of people, creatures and whatnot have done way worse than this. You are simply admiring - and kissing - a man made of stone. That is it, nothing more and nothing less, and you intend to enjoy it while it lasts. The next seconds are spent in bliss as you continue to make out with this sculpture, its unmoving and oddly warm lips being enough to turn you on...";
		WaitLineBreak;
		say "     You [if player is not naked]begin to remove your clothes and[else]simply[end if] begin to rub your bare body against its frame, and even though its armor is cold against your skin, you feel the warmth of its presence touching you as you embrace it. Only if it was alive... the man could hug you back, rub those strong hands all over you as you shared tongues. Your mind is doing all the work, these feelings being so vivid that it nearly looks like the statue is actually moving and doing all that. It... really feels like you are being rubbed all over, and that its lips and tongue are moving to meet yours... You want more... You [italic type]need[roman type] more. Perhaps you could remove its armor and get it naked?";
		say "     It is then when you open your eyes, once more, and... Find yourself trapped within the statue's arms, which have somehow moved around you. Looking back at its face, you realize its mouth is frozen still, open and with its tongue in a position that suggested it was twirling around yours as you were kissing it. However, the statue is not moving, anymore. It really does not move an inch, and you watch it carefully from very up close. Just... What is happening?!";
		LineBreak;
		say "     Looking at this strange situation, [bold type]what should you do, next?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Close your eyes.";
		say "     ([link]N[as]n[end link]) - This got very weird, now. Leave immediately.";
		if player consents:
			LineBreak;
			say "     Maybe you do need to close your eyes? Whenever you felt movement, you were not looking at it. Is this some sort of weeping angel thing? Well, you will know once you try it out, diving into visual darkness for yet another time...";
			WaitLineBreak;
			say "     And it is then that you feel its hand move through your body. The once still statue is now moving, definitely, but you try your very best at keeping your eyes shut. You simply let the stone soldier feel you up, and you hear the creaking of the hard stone as it takes a step towards you, bringing its body close to yours. It feels so natural, like an actual living man touching you, sliding his hand over your privates like he knew exactly what he was doing. You give in to the sensations and let him explore you, rubbing at your [if player is male]throbbing cock[else if player is female]dripping cunt[else]sensitive crotch[end if] like a true master of arms, perhaps only like a soldier would.";
			say "     He is quick to bring you over the edge with such a masterful touch, quickly learning where your weak spots are and exploiting this, causing you to squirm in his arms like a helpless opponent under their adversary's hold. You are losing the fight, a very wonderful loss that you intend to have with full pleasure as he properly defeats you, making [if player is male]your cock pulse and shoot your load all over the roman statue like a squirt gun [else]you quiver[end if] as this intense surge of pleasure takes over you. Only your moans are audible in this room, its echo removed by all the objects scattered around which absorb the sound, leaving your genuine joy to fill the layer of silence.";
			WaitLineBreak;
			say "     As you catch your breath, you decide to open your eyes, now that the deed is done and your head is clearing up. It seemed like the statue knew your next move, and simply placed its head in front of yours, presenting its lips in a way that would be easy for you to kiss. He is still holding you, so you think it would not be possible to just leave until you give it what it wants... With a simple move by leaning slightly forward, you plant your lips on those, once more, and give the roman statue another tender smooch. You thought this would be the last thing to do and then you would be allowed to walk away, but something else seems to be happening, as you feel the statue slightly trembling...";
			say "     Regardless of either you have your eyes open or not, the statue moves to grab you and kiss you passionately, though a lot of dust begins to fall on you. It is then that you realize the stone is slowly falling apart, but the soldier is still standing, looking more and more like a person. He does not force you nor keeps you against your will, and is actually quite gentle with his moves, but has the need to pull from his stillness rather suddenly, like someone cracking their bones and stretching after a long night of sleep. You walk back, and his hold follows as he takes a step forward, then another, all while tasting your lips like he needs it. You figure that he must be feeding off the humanity you are providing him with, or... something like that, and decide to let it all happen.";
			WaitLineBreak;
			say "     After a while, he lets go of you, and you are free to walk backwards to see what is going on. The statue is... No longer one. In front of you is an actual person, now. An actual roman soldier standing in front of you, wiping the dust of his body as it all crumbles around him. He then looks at you with his now warm brown eyes and a friendly face, giving you such a nice feeling of safety, from his appearance alone. The soldier then begins to speak in latin, but soon realizes you do not understand what he is saying, so he stops and seems to be thinking to himself... Then turns his face back towards you and speaks, once more. 'Thank you. I believe you have freed me.' His tone is shockingly cold, as if the emotion in him was still dormant.";
			say "     'It has been... a long time. I have slept in this museum as people observed me. I did not understand why. For... a long time, I saw the world change without being able to be part of it. But once you have given me my belongings, I felt... alive.' You only blink at these words, having no idea what to tell him. In fact, he talks as if he was an actual statue that just came to life, but you have no idea how you were able to awaken him. He predicts the questions in your mind and resumes speaking. 'These small things... The ones you cannot see, for how small they are... I think they change. They give life, too. Or, perhaps, I was never just a statue, but more... Nevertheless, I must thank you.'";
			WaitLineBreak;
			say "     Perhaps you should just nod and smile, and tell him it was no problem. 'And the process... Touching you felt good. I have looked at some rather quaint paintings and sculptures that had people rubbing their bodies together. What is it for? Pleasure? Desire? Bonding? Or... Perhaps a bit of all?' Well, it seems you have a lot of work to do with this man, as he does not seem to know what he was doing, despite him knowing exactly what he was doing. What a paradox... But you end up telling him the basics about it. 'It just felt natural to touch you in such a way, but I wonder how it would feel on me. I [if player is male]do not seem to have a... what do you call it? That thing you had between your legs that just kept on throbbing in my hand, and then shot something warm and sticky onto me? That, which I have also seen in other depictures of men, much like me[else]do not seem to have any sort of thing between your legs, like those I have seen in in other depictures of men, much like me[end if] I... wonder if that could be changed?'";
			say "     You will figure something out, for sure, so you assure him that, indeed, something like that could most definitely be arranged. And, perhaps, then you could have some more fun, together. 'That sounds good. Thank you. You are very nice. And you may call me Lars Duccius Gavros. This was the name of my maker, I believe. I would like to honor him. I suppose Lars will suffice.' He then politely bows to you.";
			WaitLineBreak;
			say "     [bold type]You have awakened Lars, and he will be staying in the Roman Wing, for the time being[roman type]. Perhaps you should take care of his lack of genitalia and help him get acquainted with the world before you take him anywhere else, if he would agree to join you in your adventures later on.";
			now Resolution of LarsAwakened is 1;
			WaitLineBreak;
			say "     'Oh, and have this, as well. I believe you would find better use for it while I stay in here. And it is a token of gratitude from me,' says Lars as he hands you what seems to be a gladius. It looks like it is in pretty good conditions and could actually see some use in a fight!";
			ItemGain ancient gladius by 1;
			move Lars to Museum_Roman_Wing;
		else:
			LineBreak;
			say "     No, you will not take any further moment in this cursed room, so you will just slide down its grasp, grab your things and walk straight out through the entrance's door as fast as you can. You do not look at the statue anymore, no, you are directly headed to the exit.";
			say "     But then, the door shuts in a loud blam. The world around you crumbles as a sense of dread descends upon you. This place really is cursed, and now you are locked inside of it. No, this cannot be! You move to the door and immediately attempt to open it, but it is locked up tight, refusing to budge. You look back, and the statue of the roman soldier is no longer in the corner... It disappeared. You look around and do not see it anywhere. There is no trace of the cape, nor the weapons, neither the helmet is anywhere to be found. The room is silent and quiet, not a single sound nor movement... And just then, you hear a tick on the door. You try to open it, now, and it easily gives way.";
			WaitLineBreak;
			say "     This was... one of the strangest experiences you have ever had, but you are now free to go... You think.";
			say "     And as you take a step forward, you realize that you have bumped your foot onto something. It is a sword, but one that looks actually usable! Perhaps you should just collect it, so that you do not leave without anything worth your trouble, at all.";
			say "     As you hold it, you notice how light and easy to wield it is. It must be one a roman gladius, one of those blades used by the roman soldiers, back in the time, much like those you saw in the paintings.";
			ItemGain ancient gladius by 1;
			now Resolution of LarsAwakened is 99;
	else:
		LineBreak;
		say "     Yes, your heart is beating out of fear, chills run down your spine and you are definitely losing whatever sanity is still left in your feeble, vulnerable mind. The silence is not helping, the stillness in the air, everything in this museum, in fact! You turn tail and begin to walk towards the entrance of the Roman Wing, having decided that you shall not spend any further moment in this cursed place, so your steps are quick and decisive.";
		say "     But then, the door shuts in a loud blam. The world around you crumbles as a sense of dread descends upon you. This place really is cursed, and now you are locked inside of it. No, this cannot be! You move to the door and immediately attempt to open it, but it is locked up tight, refusing to budge. You look back, and the statue of the roman soldier is no longer in the corner... It disappeared. You look around and do not see it anywhere. There is no trace of the cape, nor the weapons, neither the helmet is anywhere to be found. The room is silent and quiet, not a single sound nor movement... And just then, you hear a tick on the door. You try to open it, now, and it easily gives way.";
		WaitLineBreak;
		say "     This was... one of the strangest experiences you have ever had, but you are now free to go... You think.";
		say "     And as you take a step forward, you realize that you have bumped your foot onto something. It is a sword, but one that looks actually usable! Perhaps you should just collect it, so that you do not leave without anything worth your trouble, at all.";
		say "     As you hold it, you notice how light and easy to wield it is. It must be one a roman gladius, one of those blades used by the roman soldiers, back in the time, much like those you saw in the paintings.";
		ItemGain ancient gladius by 1;
		now Resolution of LarsAwakened is 99;

[**************************************************]
Section 2 - NPC
[**************************************************]

Table of GameCharacterIDs (continued)
object	name
Lars	"Lars"

Lars is a man. [full name: Lars Duccius Gavros]
ScaleValue of Lars is 3. [human sized]
Body Weight of Lars is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lars is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lars is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lars is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lars is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lars is 4. [length in inches]
Breast Size of Lars is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lars is 2. [count of nipples]
Asshole Depth of Lars is 8. [inches deep for anal fucking]
Asshole Tightness of Lars is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lars is 1. [number of cocks]
Cock Girth of Lars is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lars is 9. [length in inches]
Ball Count of Lars is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lars is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Lars is 0. [number of cunts]
Cunt Depth of Lars is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lars is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Lars is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lars is false.
PlayerRomanced of Lars is false.
PlayerFriended of Lars is false.
PlayerControlled of Lars is false.
PlayerFucked of Lars is false.
OralVirgin of Lars is false.
Virgin of Lars is true.
AnalVirgin of Lars is true.
PenileVirgin of Lars is true.
SexuallyExperienced of Lars is false.
TwistedCapacity of Lars is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lars is true. [steriles can't knock people up]
MainInfection of Lars is "".
Description of Lars is "[Larsdesc]".
Conversation of Lars is { "<This is nothing but a placeholder!>" }.
The scent of Lars is "     The roman soldier has a very masculine smell, quite distinguishable from the surrounding scents.".

to say LarsDesc:
	say "     Once merely a statue, Lars somehow came to life as a full human, albeit quite odd in posture and attitude, as if he belonged to another era. He is a tall and muscled man with quite strong roman features on his face, such as the wide jawline, the straight nose, a peachy skintone, dark eyes and short brown hair. He has only a stubble across his chin and jaw, and stands up straight in a quite military fashion. Speaking of his attire, it is reminescent of a roman centurion. His helmet is made of steel with red feathers, shaped like a fan, sitting on top of it, matching the steel plate protecting his torso. His outfit then ends in a sort of a red skirt that leaves his sculptural legs open, much like his arms. He also wears a long red cape tied around his neck and covering his back.";

LarsDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Lars:
	say "[TalkToLars]";

to say TalkToLars:
	say "     As your intention is to only speak with the roman soldier, you approach him as you consider what subject you wish to discuss with him. He eyes you back as you get closer with a warm smile on his face. 'Oh, hello there. Is there anything you need?' he asks, and lets you follow with whatever you wish to talk about.";
	say "[LarsTalkMenu]";

to say LarsTalkMenu:
	say "     [bold type]What do you want to talk to Lars about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask him how he is doing";
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
					say "[LarsTalkHimself]";
				wait for any key;
				if LarsDoneTalking is false:
					say "[LarsTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You give Lars a polite bow as you take your leave, which he retributes.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LarsTalkHimself:
	say "     You ask the former statue what he has been doing with his freedom, now that he is an actual living man, and if he has been faring well. He smiles and gives you a polite bow as he speaks, 'All is well, thanks to you. I am enjoying my freedom a lot and learning new things every day. It would definitely not have been possible if you hadn't freed me. Feels good to breathe and feel alive, for once.' There seems to be a genuine feeling of joy coming from the roman soldier, and he makes sure to let you know that he is very happy with the outcome of your actions. 'I need only to learn more about this... thing of being a person. I feel like the world is a tad strange outside... Every creature seems to want to rub themselves on me.'";
	say "     Yes, perhaps it is best that he sticks to this room, for now. Not that he is not a capable fighter, but it is utter chaos, out there. Too many things would be too difficult to explain. 'But I'm fine, of course. And I manage to survive. Turns out I'm a very good scavenger! Anyway, I enjoy your visits. Perhaps you should come by more often... I'd like that.' You then leave the warrior to his doings. Perhaps in the future you may be able to help him more.";

instead of fucking Lars:
	say "[SexWithLars]";

to say SexWithLars:
	say "<<Author's Note: Currently unavailable, to be updated in the future!>>";

Museum Roman Wing ends here.
