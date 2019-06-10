Version 1 of Gildwing Kobold Events by Taelyn begins here.
[Version 1.0 of Gildwing Kobold Events - Created - Taelyn]

Section 1 - Entrance Exam

Part 1 - Variables

[Unsaved Variables]
StrClass is a number that varies. [Used to determine class recommendation]
DexClass is a number that varies. [Used to determine class recommendation]
PerClass is a number that varies. [Used to determine class recommendation]
IntClass is a number that varies. [Used to determine class recommendation]
LostChoice is a number that varies. [Used to temporary remember which choice you made during this part of the event]
AmbushChoice is a number that varies. [Used to temporary remember which choice you made during this part of the event]
[Saved Variables]
TaniClassMemory is a number that varies. [The class Tani recommends][1=Warrior, 2=Knight, 3=Rogue, 4=Bard, 5=Marksman, 6=Scout, 7=Tactician, 8=Companion][Saved Variable]
TaniRecommendation is a number that varies. [Whether the player accepted the recommendation or not.][1=Declined, 2=Accepted][Saved Variable]
PlayerClass is a text that varies. PlayerClass is usually "Error". [Player's Chosen Class][Warrior, Knight, Rogue, Bard, Marksman, Scout, Tactician, Companion][Saved Variable]
KoboldScaleColor is a number that varies. [Determines Infection Scale Color][Saved Variable]

Part 2 - Kobold Infection Menu

to say KoboldInfectionMenu:
	say "     [link](1)[as]1[end link] - Eye Color Potions[line break]";
	say "     [link](2)[as]2[end link] - Scale Color Potions[line break]";
	say "     [link](3)[as]3[end link] - Full Kobold Potion[line break]";
	say "     [link](4)[as]4[end link] - Selective Transformation[line break]";
	say "     [link](5)[as]5[end link] - Cancel[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice.";
	if calcnumber is 1:
		say "[KoboldEyeMenu]";
	else if calcnumber is 2:
		say "[KoboldScaleMenu]";
	else if calcnumber is 3:
		now scalevalue of player is 2;
		now BodyName of player is "Avalon Kobold";
		now FaceName of player is "Avalon Kobold";
		now TailName of player is "Avalon Kobold";
		now SkinName of player is "Avalon Kobold";
		now CockName of player is "Avalon Kobold";
	else if calcnumber is 4:
		say "[KoboldSelectiveMenu]";
	else if calcnumber is 5:
		say "     ";

to say KoboldEyeMenu:
	say "     What color will your eyes be?";
	say "[link](Red)[as]1[end link][line break]";
	say "[link](Blue)[as]2[end link][line break]";
	say "[link](Green)[as]3[end link][line break]";
	say "[link](Yellow)[as]4[end link][line break]";
	say "[link](Orange)[as]5[end link][line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Please choose [link]Red[as]1[end link], [link]Blue[as]2[end link], [link]Green[as]3[end link], [link]Yellow[as]4[end link], or [link]Orange[as]5[end link] eyes.";
	if calcnumber is 1:
		say "     Do you want to have red eyes?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now Eye Color of Player is "ruby";
		else:
			say "[KoboldEyeMenu]";
	else if calcnumber is 2:
		say "     Do you want to have blue eyes?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now Eye Color of Player is "sapphire";
		else:
			say "[KoboldEyeMenu]";
	else if calcnumber is 3:
		say "     Do you want to have green eyes?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now Eye Color of Player is "emerald";
		else:
			say "[KoboldEyeMenu]";
	else if calcnumber is 4:
		say "     Do you want to have yellow eyes?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now Eye Color of Player is "amber";
		else:
			say "[KoboldEyeMenu]";
	else if calcnumber is 5:
		say "     Do you want to have orange eyes?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now Eye Color of Player is "fiery";
		else:
			say "[KoboldEyeMenu]";
	WaitLineBreak;

to say KoboldScaleMenu:
	say "     What color will your scales be?";
	say "[link](Red)[as]1[end link][line break]";
	say "[link](Blue)[as]2[end link][line break]";
	say "[link](Green)[as]3[end link][line break]";
	say "[link](Black)[as]4[end link][line break]";
	say "[link](White)[as]5[end link][line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Please choose [link]Red[as]1[end link], [link]Blue[as]2[end link], [link]Green[as]3[end link], [link]Black[as]4[end link], or [link]White[as]5[end link] scales.";
	if calcnumber is 1:
		say "     You want to be Red Scaled?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now KoboldScaleColor is 1;
		else:
			say "[KoboldScaleMenu]";
	else if calcnumber is 2:
		say "     You want to be Blue Scaled?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now KoboldScaleColor is 2;
		else:
			say "[KoboldScaleMenu]";
	else if calcnumber is 3:
		say "     You want to be Green Scaled?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now KoboldScaleColor is 3;
		else:
			say "[KoboldScaleMenu]";
	else if calcnumber is 4:
		say "     You want to be Black Scaled?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now KoboldScaleColor is 4;
		else:
			say "[KoboldScaleMenu]";
	else if calcnumber is 5:
		say "     You want to be White Scaled?";
		say "     ([link]Yes[as]y[end link])[line break]";
		say "     ([link]No[as]n[end link])[line break]";
		if player consents:
			now KoboldScaleColor is 5;
		else:
			say "[KoboldScaleMenu]";
	WaitLineBreak;

to say KoboldSelectiveMenu:
say "";
[uneeded yet]

Part 3 - Class Menu

to say ClassMenu:[This is a one time use menu for this event only]
	WaitLineBreak;
	say "     'There are eight classes available to you right now. Warrior, Knight, Rogue, Bard, Marksman, Scout, Tactician, and Companion.'";
	LineBreak;
	say "'What class do you want to know about?'[line break]";
	say "     [link](Warrior)[as]1[end link][if TaniClassMemory is 1] - Tani's Recommendation[end if][line break]";
	say "     [link](Knight)[as]2[end link][if TaniClassMemory is 2] - Tani's Recommendation[end if][line break]";
	say "     [link](Rogue)[as]3[end link][if TaniClassMemory is 3] - Tani's Recommendation[end if][line break]";
	say "     [link](Bard)[as]4[end link][if TaniClassMemory is 4] - Tani's Recommendation[end if][line break]";
	say "     [link](Marksman)[as]5[end link][if TaniClassMemory is 5] - Tani's Recommendation[end if][line break]";
	say "     [link](Scout)[as]6[end link][if TaniClassMemory is 6] - Tani's Recommendation[end if][line break]";
	say "     [link](Tactician)[as]7[end link][if TaniClassMemory is 7] - Tani's Recommendation[end if][line break]";
	say "     [link](Companion)[as]8[end link][if TaniClassMemory is 8] - Tani's Recommendation[end if][line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 8:
		say "Choice? (1-8)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5 or calcnumber is 6 or calcnumber is 7 or calcnumber is 8:
			break;
		else:
			say "Invalid choice. Please pick either [link]Warrior[as]1[end link], [link]Knight[as]2[end link], [link]Rogue[as]3[end link], [link]Bard[as]4[end link], [link]Marksman[as]5[end link], [link]Scout[as]6[end link], [link]Tactician[as]7[end link], or [link]Companion[as]8[end link].";
	if calcnumber is 1:
		say "     '[bold type]Warrior[roman type]; a true fighter. Sometimes you just need to punch a unicorn in the face to get the job done, and you're the one with the strength to do that.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "warrior";
			if TaniClassMemory is 1:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 2:
		say "     '[bold type]Knight[roman type]; honorable and strong, you strive to use your strength to protect others. A truly noble goal.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "knight";
			if TaniClassMemory is 2:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 3:
		say "     '[bold type]Rogue[roman type]; someone with skill in agility and combat. Someone who knows that the upfront way of doing things isn't always the best.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "rogue";
			if TaniClassMemory is 3:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 4:
		say "     '[bold type]Bard[roman type]; someone who realizes that sometimes it's better to manipulate others with actions and words, and that avoiding a fight is best when possible.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "bard";
			if TaniClassMemory is 4:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 5:
		say "     '[bold type]Marksman[roman type]; with a keen eye, you find and eliminate your target from a distance. Take them out before they can reach, or sometimes even spot you.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "marksman";
			if TaniClassMemory is 5:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 6:
		say "     '[bold type]Scout[roman type]; they skillfully move past danger and analyze what needs to be done. No one is better at going behind enemy lines, and the information they collect is crucial to winning wars and avoiding disaster.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "scout";
			if TaniClassMemory is 6:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 7:
		say "     '[bold type]Tactician[roman type]; you're intelligent and consider yourself a leader. You can use those skills to help guide others or take out enemies with wit instead of brawn. It's better to fight smart than to run in blindly.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "tactician";
			if TaniClassMemory is 7:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";
	else if calcnumber is 8:
		say "     '[bold type]Companion[roman type]; someone whose goal is more focused on the support of others. Companions use what skills they have to heal the body and soothe the woes of their allies. They have... indirect methods of dealing with things when they have to.'";
		LineBreak;
		say "Is this the class you want to be?";
		say "     ([link]Yes[as]y[end link])";
		LineBreak;
		say "     ([link]No[as]n[end link])";
		LineBreak;
		if player consents:
			now PlayerClass is "companion";
			if TaniClassMemory is 8:
				now TaniRecommendation is 2;
			else:
				now TaniRecommendation is 1;
		else:
			say "[ClassMenu]";

Part 4 - Event

Table of GameEventIDs (continued)
Object	Name
GildwingKoboldTest	"GildwingKoboldTest"

GildwingKoboldTest is a situation.
The sarea of GildwingKoboldTest is "Nowhere".

when play begins:
	add GildwingKoboldTest to BadSpots of FemaleList;
	add GildwingKoboldTest to BadSpots of MaleList;
	add GildwingKoboldTest to BadSpots of FurryList;

Instead of resolving GildwingKoboldTest:
	GildwingKoboldTest;

instead of going east from Avalon-Crossroads while (Resolution of GildwingKoboldTest is 0):
	GildwingKoboldTest;

to GildwingKoboldTest:
	say "There is likely a lot of Kobolds ahead. It could take some time. Are you ready?";
	LineBreak;
	say "     ([link]Yes[as]y[end link]) - Continue";
	LineBreak;
	say "     ([link]No[as]n[end link]) - Not Ready Yet";
	LineBreak;
	if player consents:
		say "     'Haaaalt!' a kobold screams at you from on top of the wall as he and the other guard both point their crossbows at you. Suddenly, several of the bushes around you move, revealing a fairly large group of the lizards, all with bows and crossbows trained on you. 'Don't move. We don't wanna shoot ya['].'";
		say "     'I do!' comes a voice from somewhere on your left.";
		say "     'Okay, Keelyoo wants to shoot ya['], but the rest of us don't!' The kobolds stay focused on you for about a minute before two red kobolds climb their way up to the wall. You've seen one of them before; it's the popcorn-munching kobold from when you first fell into Avalon, who this time seems to be eating a bag of chips. The other wears leather and chainmail armor and holds in one hand a seemingly well-crafted spear.";
		if resolution of Fall-O-the-Wisp is 1: [watched]
			say "     The spear-wielding red kobold gestures to the others, and slowly they all lower their weapons before he turns to you. 'So, you're the newcomer. My brother here told me about how you fell on your ass earlier,' he says with a look of amusement while some of the other kobolds snicker from their positions. 'We can't take chances that you're a spy from The Order. We can't afford to lose this war.'";
		if resolution of Fall-O-the-Wisp is 2: [fought and won]
			say "     The spear-wielding red kobold gestures to the others, and slowly they all lower their weapons before he turns to you. 'My brother says you beat up a unicorn while it was getting lucky. That's pretty damn funny!' he laughs. Some of the other kobolds snicker from their positions as well. 'We can't trust you just yet though. Not with the war going on.'";
		if resolution of Fall-O-the-Wisp is 3: [fought and lost]
			say "     The spear-wielding red kobold gestures to the others, and slowly they all lower their weapons before he turns to you. 'My brother says you tried to beat up a unicorn while it was getting lucky. That's pretty damn funny!' he laughs. Some of the other kobolds snicker from their positions as well. 'We can't trust you just yet though. Not with the war going on.'";
		if resolution of Fall-O-the-Wisp is 4: [ran away]
			say "     The spear-wielding red kobold gestures to the others, and slowly they all lower their weapons before he turns to you. 'My brother says you fell on your ass, messed with a unicorn while it was getting lucky, then ran away. That's pretty damn funny!' he laughs. Some of the other kobolds snicker from their positions as well. 'With The Order after our tails, we can't just let anyone in. We can't afford to lose this war.'";
		[]
		if resolution of Fall-O-the-Wisp is 4:
			say "     'I'm Tyrin Redscale, level 20 Chieftain,' he continues. 'Why is it that you've come to the Gildwings?'";
			say "     [link](1)[as]1[end link] - Just Exploring";
			LineBreak;
			say "     [link](2)[as]2[end link] - Wanting to Help";
			LineBreak;
			say "     [link](3)[as]3[end link] - Just Scavenging";
			LineBreak;
			say "     [link](4)[as]4[end link] - Wanting to Become a Kobold";
			LineBreak;
			say "     [link](5)[as]5[end link] - Invited to Join";
			LineBreak;
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 5:
				say "Choice? (1-5)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] for exploring, [link]2[end link] for wanting to help, [link]3[end link] for scavenging, [link]4[end link] for becoming a kobold, or [link]5[end link] for invited.";
			if calcnumber is 1:
				say "     'If you're able to move around Avalon so freely, then maybe we could use someone like you.'";
			else if calcnumber is 2:
				say "     'Is that so?' Tyrin asks, rubbing his scaly chin in thought.";
			else if calcnumber is 3:
				say "     'We have supplies, but it's only rationed to our clan and our allies,' Tyrin says, rubbing his scaly chin in thought. 'Maybe if you became our ally, we could help you out.'";
			else if calcnumber is 4:
				say "     'Really?' Tyrin asks with a look of pleased surprise. 'If that's what you really want, we can grant you that wish, but you need to prove that you're not an enemy first.''";
			else if calcnumber is 5:
				say "     'So my brother has told me. We'd be happy to have you as soon as we know we can trust you.'";
		else:
			say "     'I'm Tyrin Redscale, level 20 Chieftain,' he continues. 'Why is it that you've come to the Gildwings?'";
			say "     [link](1)[as]1[end link] - Just Exploring";
			LineBreak;
			say "     [link](2)[as]2[end link] - Wanting to Help";
			LineBreak;
			say "     [link](3)[as]3[end link] - Just Scavenging";
			LineBreak;
			say "     [link](4)[as]4[end link] - Wanting to Become a Kobold";
			LineBreak;
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] for exploring, [link]2[end link] for wanting to help, [link]3[end link] for scavenging, or [link]4[end link] for becoming a kobold.";
			if calcnumber is 1:
				say "     'If you're able to move around Avalon so freely, then maybe we could use someone like you.'";
			else if calcnumber is 2:
				say "     'Is that so?' Tyrin asks, rubbing his scaly chin in thought.";
			else if calcnumber is 3:
				say "     'We have supplies, but it's only rationed to our clan and our allies,' Tyrin says, rubbing his scaly chin in thought. 'Maybe if you became our ally, we could help you out.'";
			else if calcnumber is 4:
				say "     'Really?' Tyrin asks with a look of pleased surprise. 'If that's what you really want, we can grant you that wish, but you need to prove that you're not an enemy first.'";
		[]
		say "     Tyrin says something to one of the nearby guards that you can't quite make out, followed by the guard saluting and scrambling into their base. 'If you want to prove that you aren't our enemy, then you're going to have to go on a quick quest with one of our Scouts. There has been reported enemy activity in an area. Deal with them, and if Gildwing approves, we'll allow you to join us,' he explains before the gates start to opening.";
		say "     You get a small glimpse of the cave entrance as a green kobold steps forward. Unlike the others, this one is dressed in what seemed like high-quality leather armor with feathers tied to its small horns. The lizard offers a hand in greeting, which you shake, partly out of habit.";
		WaitLineBreak;
		say "     'Tani Featherhorn, Level 15 Scout, reporting in! Nice to meet ya!' they say cheerfully in a cute, feminine voice. With Tani now with you, the other kobolds start to return to their hiding places, though not without gossip.";
		say "     Tani looks towards you excitedly. 'We don't get many visitors, even fewer that will join us. Tani is excited to see what you'll do, and Tani will report his findings on you truthfully. Just try to keep up, alright? If you abandon the test, the Gildwings will have to consider you an enemy, and Tani doesn't want that.' You are a little surprised when they refer to themselves as male, but your attention quickly shifts as [']he['] start leading towards the forest.";
		WaitLineBreak;
		say "[Tracking Test]";
	else:
		move player to Avalon-Crossroads;

to say Tracking Test:
	say "     You follow closely behind Tani as the little lizard moves through the forest with practiced skill. You try your best to keep up, but the kobold is too fast and you end up losing sight of him after he moves behind a tree. Alone in the forest, you need to find Tani again before he thinks you abandoned him.";
	LineBreak;
	say "You could track him and try to find signs of Tani's movements, or you could simply call out to him.";
	say "     ([link]1[as]y[end link]) - Track";
	LineBreak;
	say "     ([link]2[as]n[end link]) - Call Out";
	LineBreak;
	if player consents: [Track]
		say "You look carefully where you last saw him, recently disturbed leaves and bent grass helping tell you where he went. A broken twig on a bush and a scuff in the dirt help you narrow in on him until you find Tani waiting for you with a pleased expression. 'You managed to find Tani, huh? That's good, but there's still more to do.'";
		increase PerClass by 1;
		increase DexClass by 1;
		now LostChoice is 1;
	else:
		say "Not wanting to take the risk of getting lost, you call out Tani's name. A few moments later, his reptilian head peeks out from behind the tree, a smile on his face as he ushers you onward. 'Come on, friend. No time to lose!'";
		increase IntClass by 1;
		increase StrClass by 1;
		now LostChoice is 2;
	say "[Ambush Test]";

to say Ambush Test:
	say "     Tani leads you a little further until he stops, holding a small, clawed hand out to halt you as well. 'Tani hears something. They're this way,' he says as he creeps forward, stopping behind some bushes and gesturing for you to join him. Peeking through the leaves, you see two men, one with a short beard and blond, shoulder-length hair, the other is a young man with short, tawny hair and bright, excited eyes. The older of the two wears chainmail, while the younger has medieval clothing you might find at a renaissance fair. Both wear cloth draped over themselves baring a lewd knight's crest of a man [']riding['] a dragon.";
	say "     'You must be able to don and doff armor and clothes quickly, young ward. No belt or button should ever be a hindrance to you,' says the knight to his squire, who seems more than excited to get started. 'Now, my boy, strip us both bare so that we might cross swords!'";
	say "     As the squire starts unfastening his belt, hastily trying to pull down his pants, the green kobold turns to you. 'So, what do you think we should do?' he asks with a look of anticipation. 'Do we ambush them and attack them with their pants down? Or do we return to the caves so that my clan-mates can set up traps in this area?'";
	LineBreak;
	say "Do you want to Ambush them now, or Report In?";
	say "     ([link]1[as]y[end link]) - Ambush";
	LineBreak;
	say "     ([link]2[as]n[end link]) - Report in";
	LineBreak;
	if player consents:
		now inasituation is true;
		say "     You watch the Squire succeeds in undoing his own belt, letting his trousers drop down to his ankles before he moves to undo his master's. While they are both distracted, you spring out of the shadows and into action. The Squire notices you first, moving to go after you, only to trip on his own pants and fall face-first onto the ground. The knight is a bit slower, having been distracted by the Squire's erection before turning to face you. 'Attacking during our training? Have at thee!' he yells as he charges.";
		challenge "Knight";
		if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     Your consciousness starts to fade as your vision goes blurry. You watch in a daze as multiple small arrows are fired from the bushes behind you and lodge themselves into your attacker. He staggers before collapsing to the ground, just before your vision wavers and everything goes black.";
			WaitLineBreak;
			say "     When you come to, your eyes are met with the light streaming in from between the leaves of the trees above, and as your sight slowly comes to focus, you are met with the smiling face of Tani, his toothy lizard grin accompanied by bright eyes. 'That was quite brave of you to throw yourself at them like that, but I guess you still need to get stronger. How about we head back and report in,' he says as he does his best to help you to stand up.";
		else if fightoutcome is 30: [fled]
			say "     As you turn your back to run, you hear the knight call out, 'Coward!', followed by a sudden sharp pain as your consciousness begins to fade and your vision goes blurry. You watch in a daze as multiple small arrows are fired from the bushes behind you and lodge themselves into your attacker. He staggers before collapsing to the ground, just before your vision wavers and everything goes black.";
			now HP of player is 1;
			WaitLineBreak;
			say "     When you come to, your eyes are met with the light streaming in from between the leaves of the trees above, and as your sight slowly comes to focus, you see the smiling face of Tani, his toothy lizard grin accompanied by bright eyes. 'That was quite brave of you to throw yourself at them like that, but I guess you still need to get stronger. How about we head back and report in,' he says as he does his best to help you to stand up.";
		else if fightoutcome < 20: [player won]
			say "     Taking the last blow, the knight falls unconscious with a surprised groan. The Squire just manages to kick his pants off at last to free himself. Standing up, he turns towards you with fear and anger. 'Even if I lose, I will fight and fall alongside my master!'";
			challenge "Squire";
			if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Your consciousness starts to fade as your vision goes blurry. You watch in a daze as multiple small arrows are fired from the bushes behind you and lodge themselves into your attacker. He staggers before collapsing to the ground, just before your vision wavers and everything goes black.";
				WaitLineBreak;
				say "     When you come to, your eyes are met with the light streaming in from between the leaves of the trees above, and as your sight slowly comes to focus, you are met with the smiling face of Tani, his toothy lizard grin accompanied by bright eyes. 'That was quite brave of you to throw yourself at them like that, but I guess you still need to get stronger. How about we head back and report in,' he says as he does his best to help you to stand up.";
			else if fightoutcome is 30: [fled]
				say "     As you turn your back to run, you hear the Squire call out, 'Coward!', followed by a sudden sharp pain as your consciousness begins to fade and your vision goes blurry. You watch in a daze as multiple small arrows are fired from the bushes behind you and lodge themselves into your attacker. He staggers before collapsing to the ground, just before your vision wavers and everything goes black.";
				now HP of player is 1;
				WaitLineBreak;
				say "     When you come to, your eyes are met with the light streaming in from between the leaves of the trees above, and as your sight slowly comes to focus, you are met with the smiling face of Tani, his toothy lizard grin accompanied by bright eyes. 'That was quite brave of you to throw yourself at them like that, but I guess you still need to get stronger. How about we head back and report in,' he says as he does his best to help you to stand up.";
			else if fightoutcome < 20: [player won]
				say "     With a much smaller groan, the squire falls alongside his master, still half naked and quite aroused despite the beating you gave him. Tani quickly scampers over towards the two, pulling out some rope from the pack on his back. 'Good work,' he says as he starts tying the two up. 'We try to avoid killing when we can, but that means we have to use other ways to make sure they don't attack us again,' he explains. In an impressive display of strength, the kobold drags the larger, now bound form of the squire towards a tree, resting him there. You follow suit, grabbing the knight and moving him next to the younger man. 'Hopefully, when we get back, Tani can send someone to pick them up.' The effeminate kobold turns to you and smiles. 'Now then, You and Tani go back now?'";
		increase StrClass by 1;
		increase DexClass by 1;
		now AmbushChoice is 1;
		now inasituation is false;
	else:
		say "Concerned that there might be more knights nearby, you tell Tani that you think that it's better to tell the others to set up traps and defenses in this area. The kobold nods and makes a gesture to pull back. As you leave the two behind, you're not surprised to hear moaning and more [']verbal encouragement['] from the knight.";
		increase PerClass by 1;
		increase IntClass by 1;
		now AmbushChoice is 2;
	say "[Class Question]";
	WaitLineBreak;

to say Class Question:
	if StrClass is 2 or IntClass is 2 or DexClass is 2 or PerClass is 2:
		say "     With your mission complete, you follow the same path that brought you here, Tani staying by your side this time instead of leading you. He happily hums to himself, looking around at nothing in particular. The kobold seems very carefree despite returning from a mission of war. After about a half an hour of silence, he turns to you at last with curious eyes.";
		WaitLineBreak;
		[STR]
		if StrClass is 2:
			say "     'So... Why is it you fight? What do you fight for? Is it for yourself? Survival Is tough after everything that has happened, and there's no shame in it. Or is it that you fight for others and are trying to make things better, hoping to inspire them to do the same?";
			say "     ([link]1[as]y[end link]) - For Myself"; [Warrior]
			LineBreak;
			say "     ([link]2[as]n[end link]) - For Others"; [Knight]
			LineBreak;
			if player consents:
				say "     'It's good to be alone sometimes, yes?' he says as he stares up at the leaves flowing gently in the breeze. 'There's no one else there to distract you from what you have to do.'";
				now TaniClassMemory is 1;
			else:
				say "     'A noble goal for a noble person,' he says with a smile. 'Tani hopes you stay with us. We're always looking for people who care about the clan and look out for each other.'";
				now TaniClassMemory is 2;
		[DEX]
		if DexClass is 2:
			say "     'So... Just for fun, let's say that someone has something important that you really need. Would you rather just take it unnoticed, or would you try to put on the charm and convince them through wit or appeal to give it to you?'";
			say "     ([link]1[as]y[end link]) - Steal"; [Rogue]
			LineBreak;
			say "     ([link]2[as]n[end link]) - Charm"; [Bard]
			LineBreak;
			if player consents:
				say "     'Sometimes it's better to just avoid it all, right?' he says as he looks off into the distance. 'There's enough trouble these days without stirring up more.'";
				now TaniClassMemory is 3;
			else:
				say "     'Oh? Confident, are we?' he says with a smile and a wiggle of his tail. 'Sometimes just talking is the way to go. Why fight when you can work it out, yes? Or lie. Lying is good sometimes, too.'";
				now TaniClassMemory is 4;
		[PER]
		if PerClass is 2:
			say "     'So... Just for fun, let's say that you got a mission to find the identify an enemy target for later assassination. You get up on a hill and find the target in a field down below, perfectly in range of your crossbow! Would you take the shot, or go back and report in?'";
			say "     ([link]1[as]y[end link]) - Take the Shot"; [Marksman]
			LineBreak;
			say "     ([link]2[as]n[end link]) - Report In"; [Scout]
			LineBreak;
			if player consents:
				say "     'Why waste the opportunity, right?' he says as his fingers tighten on his bow at the thought. 'Still, there's often reasons to follow the mission to the letter. Sometimes there are details that the higher ups can't risk you being caught with yet, yes?'";
				now TaniClassMemory is 5;
			else:
				say "     'Yes! There's a thrill to this, isn't there? Sneaking in, being the eyes and ears of the Gildwings...' he says excitedly, happy with your answer. 'Information is what wins wars after all. Making a hasty decision on your own could lead to lost lives.'";
				now TaniClassMemory is 6;
		[INT]
		if IntClass is 2:
			say "     'So... You have followed Tani this far because we didn't really give you much of a choice, but if you had the choice, would you rather be the one planning and giving the missions or the one carrying them out so you can do your part to help others?'";
			say "     ([link]1[as]y[end link]) - Leader"; [Tactician]
			LineBreak;
			say "     ([link]2[as]n[end link]) - Follower"; [Companion]
			LineBreak;
			if player consents:
				say "     'You don't like to leave your fate to others, huh? You'd rather be the one pulling the strings.' Tani gives you a little smile. 'Well, stick with the Gildwings and maybe you'll be giving me orders someday.'";
				now TaniClassMemory is 7;
			else:
				say "     'Sometimes supporting others is the key to victory. It's always good to know where and when your talents are most useful.' Tani gives you a little nod. 'Tani hopes you have a good heart inside of you, despite all of the darkness in the world. The Gildwings could use an extra glimmer of hope.'";
				now TaniClassMemory is 8;
		WaitLineBreak;
		say "[DragonMeet]";
	else:
		say "Error, you shouldn't be able to get here, please report this bug on the FS Discord with the Class Question Event and Numbers StrClass:[StrClass] IntClass:[IntClass] DexClass:[DexClass] PerClass:[PerClass]";

to say DragonMeet:
	say "     The rest of your journey back to the Kobold Caves Gatehouse is quiet and uneventful. Tani hums to himself much of the way until the wooden walls come back into view. The excited calls of kobolds can be heard as they gather around, crossbows out, but no longer aimed towards you. The gates open as Tyrin, the red kobold from before, steps out, his spear in one hand as he nods towards Tani.";
	say "     'Sir!' Tani says as he snaps to attention. 'Level 15 Scout, Tani Featherhorn, reporting!' She gives him a salute as Tyrin returns it awkwardly. 'How'd it go?' he asks before looking towards you. 'Can we trust [ObjectPro of player]?'";
	WaitLineBreak;
	say "     'Tani doesn't know about trust, but...' Tani looks towards you with a smile. 'Tani likes [ObjectPro of player]. [SubjectProCap of player] promise. Tani thinks we should bring [ObjectPro of player] to the master and let him decide.' Tyrin smiles slightly as he gestures the others to return to their posts. 'Follow me,' he says as he leads you both through the gates.";
	say "     Past the wall, the cliffside opens up into a cave entrance large enough for a truck to drive through. The inside seems to be dimly lit by glowing crystals that give off a soft while light, each held in a sconce about ten feet apart. The floor is dirt at first, likely trailed in by lots of feet going in and out of the cave, but continuing on, it quickly transitions into smooth stone. As you travel through the tunnels you pass by kobolds of various colors, ";
	if BodyName of player is "Kobold" and FaceName of player is "Kobold":
		say "most of which seem too focused on whatever they have on their minds.";
	else:
		say "some of which give you a curious expression, suggesting they aren't used to all that many non-kobolds coming in.";
	WaitLineBreak;
	say "     Continuing down, there are side passages that branch off from the main tunnel. These were clearly carved out and unnatural, each blocked with a thick wooden door which are open for now, but can be closed in case of an attack. 'Home sweet home, at least until we can live on the surface again,' Tani says, his voice echoing against the stone. 'This is true,' Tyrin adds without looking back, 'though Gildwing will tell you more. We can always talk about things afterwards, if you decide to stay with us.'";
	say "     'Tani hopes you choose to become a kobold! Tani thinks you'd make a great kobold.' He coos happily, to which Tyrin adds, '[PosAdjCap of player] choice is [PosAdj of player] own, though another kobold is welcome, as any ally is helpful.' Tani just giggles and says, 'Yeah, but kobolds are the best!'";
	WaitLineBreak;
	say "     The cave finally comes to an end, opening up into a very large room. Stalactites hang from the ceiling and stalagmites line the bottom edges. There's a pool on the floor to the right side, fueled by a flow of subterranean water leaking out of the wall like a faucet. What really grabs your attention, however, is the huge golden dragon that stands staring into the pool thoughtfully. It looks just like something out of a fantasy book, standing on four bestial legs, each ending in feet baring deadly looking claws. Its skin is covered with golden-yellow scales that seem to have a slight metallic sheen. Its bat-like wings are furled and tucked against its back, and upon its head are four proud, golden-colored, draconic horns.";
	say "     The dragon slowly turns towards you, his blue eyes softly glowing with power in the dim light of the crystals. 'You have brought someone to see me, Tyrin?' He speaks in a deep and powerful voice that echoes throughout the room. 'Yes, master.' Tyrin says as he and Tani bow politely. 'This one shows potential, but we leave them for you to judge.' The red and green kobolds stand up and quickly go back the way you came, leaving you alone with the dragon.";
	WaitLineBreak;
	say "     The dragon leans towards you, sniffing you a little before standing up proudly. 'I am Gildwing, and I have taken these kobolds under my care,' he says before asking, 'What is it that I may call you?' You introduce yourself and ask what he wants from you. 'I'm sure you have noticed that we are at war[if player is not defaultnamed], [name of player][end if]. I am also sure that the other side will tell you that we are monsters who seek only chaos and destruction. Though this once was true, it is not anymore.'";
	say "     The dragon slowly lays down, curling up a little, but his eyes never leave you. 'When I found the kobolds, they were a dying ember. They had suffered from the outbreak that has laid waste to your world, and as such, they had attacked and raped as many creatures do. They were rightfully forced back by the Wisp Queen and her Champions, and sealed within these caves where they had come from, but this... the underground... being locked down here with the infection quickly shatters the minds of the kobolds. They were a pathetic and dying race, one that I felt sorry for and wanted to help. I came and I sealed their infectious nature. I did my best to restore their sanity and reduce their urges to attack. Like many in your world, they still struggle with their nature, but down here, they have no chance to survive. Even with my help, unless the kobolds become free to wander the surface, they will all lose their minds to the infection, but the people still remember the times when kobolds were a blight and fear what their return may bring.'";
	WaitLineBreak;
	say "     Goldwing stretches his neck towards you, looking deep into your eyes. 'This is why we have brought war. We fight for our survival and sanity. Once we have earned our place up above, we will help return things to order once more and show that no race is above redemption! This... is where you are needed[if player is not defaultnamed], [name of player][end if].' The dragon bows his head in respect before continuing. 'My kobolds are not as strong as the Wisp Queen's Champions, and though we outnumber them, I fear this isn't enough. We need outside help if we are to change the tides of this war, and both Tyrin and I can sense that there is something special about you. So, I ask you, will you join the Gildwings in our fight for survival? If you join us, we can help train you and equip you, and help you in any way we can. If you need time to think, feel free to decline. The offer will remain open as long as you do not join our enemy. So[if player is not defaultnamed], [name of player][end if]... Will you join us?'";
	say "     ([link]Yes[as]y[end link]) - Join the Gildwings";
	LineBreak;
	say "     ([link]No[as]n[end link]) - Decline For Now";
	LineBreak;
	if player consents:[Join Gildwings]
		say "[GildwingClanAccept]";
	else:[Don't Join Gildwings]
		say "     The dragon nods, though there is disappointment in his eyes. 'As you wish. You will be escorted from the caves, but if you change your mind, tell the kobolds at the gate that you wish to speak with me.' With one more polite nod, he says, 'I still hold hope you will join our cause and wish you luck on your ventures,' before turning away from you. Before long, a male, green-scaled kobold with a spear enters the room and leads you out of the cave and in front of the gate again, which slowly close behind you with a creak.";
		now Resolution of GildwingKoboldTest is 1;
		move player to Avalon-Crossroads;

to say GildwingClanAccept:
	say "     The edges of the dragon's mouth curl into a smile as you tell him you wish to join. 'Good, good!' he says as he sits up. 'If you will join us, you have two options. You can serve as you are, but if you wish to truly become one of my own, then I can give you my blood. I have made it so the kobolds can no longer spread their infection in order to keep them from spreading too quickly, so it is now the only way you can become a Gildwing Kobold of whatever color you wish. With dragon blood within you, you will truly be one of us, but this is your choice to make.'";
	say "     ([link]Yes[as]y[end link]) - Become a Kobold";
	LineBreak;
	say "     ([link]No[as]n[end link]) - Stay As You Are";
	LineBreak;
	if player consents:[Become a Kobold]
		say "     Gildwing smiles again as he sits proudly and holds a clawed [']hand['] upwards. It shakes somewhat as blood is pulled forth from it, flowing magically into a small crimson sphere which soon begins to glow a soft gold. 'By my blood and magic, we shall be bound together,' he says before the blood orb flies towards and into you. The moment it makes contact, the blood seeps into your body as if being sucked inside. 'Think of what sort of kobold you wish to be,' he says as you feel your whole body start to heat up. You can feel your veins pulse as the dragon blood flows through you. You close your eyes, trying your best to focus on the kind of kobold you wish to be.";
		WaitLineBreak;
		say "[KoboldEyeMenu]";
		say "[KoboldScaleMenu]";
		[Size]
		if scalevalue of player > 2 or scalevalue of player < 2:
			say "     [if scalevalue of player < 2]You are struck with dizziness as you suddenly start to expand, increasing in size until you reach around half the size of a human.[else if scalevalue of player > 2]You are struck with dizziness as the world seems to grow around you shrink closer to the ground, stopping at around half the size of a human.[else][end if]";
			now scalevalue of player is 2;
			LineBreak;
		[Skin]
		say "     Your skin begins to itch horribly as [if KoboldScaleColor is 1]rose-red[else if KoboldScaleColor is 2]azure[else if KoboldScaleColor is 3]forest-green[else if KoboldScaleColor is 4]charcoal-black[else if KoboldScaleColor is 5]snowy-white[else](Error, value invalid. Please report this issue to the FS Discord Server with KoboldScaleColor: [KoboldScaleColor].)[end if] scales form to cover your whole body. They interlock and smooth out and leaving you with sleek, [if KoboldScaleColor is 1]red[else if KoboldScaleColor is 2]blue[else if KoboldScaleColor is 3]green[else if KoboldScaleColor is 4]black[else if KoboldScaleColor is 5]white[else](Error, value invalid. Please report this issue to the FS Discord Server with KoboldScaleColor: [KoboldScaleColor].)[end if], kobold scales.";
		now SkinName of player is "Avalon Kobold";
		now Skin of Player is "[if KoboldScaleColor is 1][one of]crimson[or]red[or]rose-red[at random][else if KoboldScaleColor is 2][one of]azure[or]blue[or]sea-blue[at random][else if KoboldScaleColor is 3][one of]verdant[or]green[or]forest-green[at random][else if KoboldScaleColor is 4][one of]obsidian[or]black[or]charcoal-black[at random][else if KoboldScaleColor is 5][one of]alabaster[or]white[or]snow-white[at random][else](Error, value invalid. Please report this issue to the FS Discord Server with KoboldScaleColor: [KoboldScaleColor].)[end if] scales. Despite their protective nature, you can still feel everything just fine through your now draconic";
		LineBreak;
		[Chest]
		if breast size of player > 0:
			say "     You feel a tightness in your chest as your breasts slowly shrink until they disappear completely, leaving you smooth-chested.";
			now Breast Size of player is 0;
			now Nipple Count of player is 0;
			LineBreak;
		[Body]
		say "     Your legs suddenly collapse underneath you, causing you to fall to your knees. Your legs and feet quiver as they bend and reconfigure into a more draconic digitigrade shape with a three-toed, raptor-like foot. Your hands clench involuntarily as your fingers merge in such a way that you are left with only four fingers instead of five, each tipped with a small claw. Feeling stable again, you push yourself to your feet and try to get used to your new stance.";
		now BodyName of player is "Avalon Kobold";
		now Body of Player is "lithe but surprisingly strong. It looks and feels perfect for a cave dwelling Kobold. [if player is female]Besides that, there is also a bit of a feminine curve to your hips, making them somewhat wider for egg laying. [end if]Your legs are digitigrade and end in three-toed feet, while your arms sport four fingered hands, each tipped with a small claw.";
		now TorsoName of Player is ""; [wiping out the new style parts]
		now BackName of Player is ""; [wiping out the new style parts]
		now LegsName of Player is ""; [wiping out the new style parts]
		now ArmsName of Player is ""; [wiping out the new style parts]
		LineBreak;
		[back]
		[if player:
			say "     ";
			LineBreak;]
		[Tail]
		say "     A sharp pressure builds at the base of your spine, quickly changing into a strange tingle that shifts outwards, traveling along your new reptilian tail as it settles into its new shape. Wiggling it back and forth, you confirm quickly how well it can move and shift your balance. The perfect tail for a kobold!";
		now TailName of player is "Avalon Kobold";
		now tail of player is "A long and agile reptilian tail sways behind you, adjusting to your every movement to help you keep balance. It is surprisingly dexterous and you are able to control your tail as well as any other limb. It seems to wiggle at times when you are happy.";
		now AssName of Player is ""; [wiping out the new style parts]
		LineBreak;
		[Face]
		say "     Your vision turns blurry and your head aches as it rearranges its shape. Pressure builds at the back of your skull as two small kobold horns grow, and by the time the headache clears and your vision returns, you are met with a small draconic snout with a mouth filled with pointy little teeth, making you look similar to a small dragon.";
		now FaceName of player is "Avalon Kobold";
		now Face of Player is "reptilian in shape and crowned with two small horns. Your wide, [Eye Color of player] eyes are surprisingly keen, even while in the dark. Small but sharp teeth and a pointed tongue complete your draconic visage";
		now HeadName of Player is ""; [wiping out the new style parts]
		LineBreak;
		[Cock&Balls]
		if player is male:
			say "     Your crotch feels warm as your arousal flares, causing your [if player is internal][Cock of Player] cock to stir within you, slowly pushing its way out from your vent, beginning to pulse as its shape changes to something more fitting for a small lizard. It becomes smooth; tapering down until thickening into a pseudo-knot bulge at the base. As soon as the transformation is complete, the feeling starts to fade, and slowly your new kobold cock withdraws back into your genital slit[else][Cock of Player] cock to harden and grow to its full length, beginning to pulse as its shape starts to change. Your balls pull up, and for a moment you are worried that you are losing them, but you can feel them traveling within you to become internal. At the same time, your dick becomes something more fitting for a small lizard. It becomes smooth; tapering down until thickening into a pseudo-knot bulge at the base. You feel a new depth push inward as a vent is formed to house your new reptilian length. As soon as the transformation is complete, the feeling starts to fade, and slowly your new kobold cock withdraws into your genital slit, leaving it impossible to tell your gender merely by looking at your groin[end if].";
			now CockName of player is "Avalon Kobold";
			now Cock of Player is "[one of]reptilian[or]draconic[or]taperd[or]kobold[at random]";
			WaitLineBreak;
		[Womb]
		if (Player is female or Player is mpreg_ok) and ovipregalways is false:
			say "     You feel a shift in your belly as your insides adjusts to your new form. Instinctually, you know you now are an egg layer, ready to breed the next generation of kobolds.";
			WaitLineBreak;
			now ovipregalways is true;
			now ovipreglevel is 3;
		[]
		say "     Gildwing looks over your new kobold form with a pleased expression. 'This suits you well,' he says before calling out, 'Tyrin!' The red kobold quickly enters the cavern room, stopping for a moment as soon as he sees you. 'Oh! Our friend decided to join us? Tani will be happy about that.' The dragon gestures towards you. 'Please show [ObjectPro of player] around and explain how [SubjectPro of player] may help.' Tyrin nods and looks towards you. 'Follow me please,' he asks before leading you out into the main passageway.";
		now Resolution of GildwingKoboldTest is 3;
	else:
		say "     'As you wish,' he says before calling Tyrin into the room. It isn't long before the red kobold makes his way over and stands next to you. '[if player is not defaultnamed][name of player][else]This new recruit has[end if] decided to join us. Please, show [ObjectPro of player] around and explain [PosAdj of player] role.' Tyrin bows politely to the dragon before turning to you with a slight grin. 'So, you'll be helping to Gildwings? That's good to hear! Follow me, and I'll explain how things work around here.'";
		now Resolution of GildwingKoboldTest is 2;
	WaitLineBreak;
	say "     Tyrin uses his spear like a walking stick while you make your way towards one of the side passages. 'Now that you're one of us, I can explain the situation. We and the Wisp Queen's champions are currently at a stalemate, and we are hoping you might be able to help us get a proper foothold in Avalon. To do that, you'll need your class, then you'll need to complete missions for us which will hopefully sway this war in our favor.'";
	say "     The stone cavern echoes with the sound of Tyrin's voice and the spear clicking against the stone. 'Now you may have noticed that us kobolds designate ourselves to each other with classes and levels. This mostly helps us keep track of who is good at what, and how good they are at it. There are a lot of us, and it's hard to keep track of everyone, so this is important. This is also part of Tani went with you, to assess what class you might be should you join us.' He turns to look at you with a small, toothy smirk. 'He speaks well of you.'";
	WaitLineBreak;
	say "     When you got separated from him, ";
	if LostChoice is 1:[Tracked]
		say "you had the skill to track him down on your own. This shows you were perceptive and careful to not alert the enemy.'";
	else if LostChoice is 2:[Called]
		say "you called out to him, which suggests you are willing to rely on others when you need to.''";
	LineBreak;
	say "When it came to the Knight and Squire, ";
	if AmbushChoice is 1:[Fought]
		say "you didn't hesitate to take them down when you had the opportunity to ambush them.'";
	else if AmbushChoice is 2:[Reported]
		say "you understood that there could be more, and by pulling back and reinforcing the area with traps, it would deal with the threat to greater effect in the long run.";
	LineBreak;
	say "     'These acts, as well as the question he asked you at the end, suggest that you would fit best as a ";
	[1=Warrior, 2=Knight, 3=Rogue, 4=Bard, 5=Marksman, 6=Scout, 7=Tactician, 8=Companion]
	if TaniClassMemory is:
		-- 1:
			say "[bold type]Warrior[roman type]; a true fighter. Sometimes you just need to punch a unicorn in the face to get the job done, and you're the one with the strength to do that.'";
		-- 2:
			say "[bold type]Knight[roman type]; honorable and strong, you strive to use your strength to protect others. A truly noble goal.'";
		-- 3:
			say "[bold type]Rogue[roman type]; someone with skill in agility and combat. Someone who knows that the upfront way of doing things isn't always the best.'";
		-- 4:
			say "[bold type]Bard[roman type]; someone who realizes that sometimes it's better to manipulate others with actions and words, and that avoiding a fight is best when possible.'";
		-- 5:
			say "[bold type]Marksman[roman type]; with a keen eye, you find and eliminate your target from a distance. Take them out before they can reach, or sometimes even spot you.'";
		-- 6:
			say "[bold type]Scout[roman type]; Tani was proud of your ability to track him down, and to have the patience to fall back and request the traps. He doesn't suggest someone becoming a scout lightly.";
		-- 7:
			say "[bold type]Tactician[roman type]; you're intelligent and consider yourself a leader. You can use those skills to help guide others or take out enemies with wit instead of brawn. It's better to fight smart than to run in blindly.'";
		-- 8:
			say "[bold type]Companion[roman type]; someone whose goal is more focused on the support of others. Companions use what skills they have to heal the body and soothe the woes of their allies. They have... indirect methods of dealing with things when they have to.'";
	LineBreak;
	say "     The red kobold looks you in the eyes. 'Now this is what Tani suggests, but it isn't what you have to be. You can accept his suggestion, or you can choose one of the other seven options. It's ultimately up to you.";
	LineBreak;
	LineBreak;
	say "     ([link]Accept Tani's Recommendation[as]y[end link])";
	LineBreak;
	say "     ([link]Check Other Options[as]n[end link])";
	LineBreak;
	if player consents:
		if TaniClassMemory is:
			-- 1:
				now PlayerClass is "warrior";
			-- 2:
				now PlayerClass is "knight";
			-- 3:
				now PlayerClass is "rogue";
			-- 4:
				now PlayerClass is "bard";
			-- 5:
				now PlayerClass is "marksman";
			-- 6:
				now PlayerClass is "scout";
			-- 7:
				now PlayerClass is "tactician";
			-- 8:
				now PlayerClass is "companion";
			now TaniRecommendation is 2;
	else:
		say "[ClassMenu]";
	[1=Warrior, 2=Knight, 3=Rogue, 4=Bard, 5=Marksman, 6=Scout, 7=Tactician, 8=Companion]
	say "     Tyrin nods approvingly. 'From now on, you are now [if player is not defaultnamed][name of player],[else]a[end if] Level 1 [PlayerClass in sentence case]. You say this when you report in. To gain levels in your class, you need to complete missions to prove your skill.'";
	WaitLineBreak;
	say "     You both finally come upon another room with a thick wooden door. The room beyond contains shelves of books, scrolls, and maps, while in the center is a large table with another large map on it, along with what look to be small figurines and some dice. In one corner of the room, you can see a bed, a dresser, a side table, posters of anime characters and dragons, and action figures standing posed on the dresser... It is the bedroom of a true nerd, and it seems almost out of place among everything else in the room. 'This is the War Room, and where I live. You can come here to find me and accept your missions,' he explains before walking off, not even giving you a chance to ask further questions.";
	say "     The next room he shows you is pretty massive. The long chamber contains rows and rows of simple bunk beds, each one with chests to match. In the corner closest to the door is an area closed off with what seems like a somewhat poorly constructed building. There's a large window on the side, closed off with bars. Within, you can see chests, armor racks, weapon racks...";
	WaitLineBreak;
	say "     'This is the Barracks,' Tyrin says as he walks towards the structure. 'Here is where you can get equipment for your missions, as well as talk to Uska.' Before you can ask who Uska is, a black-scaled kobold slips out of the shadows to stand next to you. 'Greetings,' he says with a slight hiss to his voice, his orange-slitted eyes looked you over as if trying to determine your worth. 'Uska, this is [if player is not defaultnamed][name of player][else]our new recruit[end if]. [if player is not defaultnamed][name of player][else]New recruit[end if], this is Uska Blackheart. He manages our resources as well as some of the more sensitive missions.' Uska nods slowly, his eyes never leaving you. 'When we are done here, you can pick up your standard kit from him and get situated.'";
	say "     As soon as Tyrin finishes explaining, Uska gives him and nod as well before silently making his way back into the shadows. You know he is there now, and you can still see his eyes watching you from back there, making you feel somewhat uneasy.";
	WaitLineBreak;
	say "     The next room looks a little different than you would have expected. It's lined with wooden fences and pocked with piles of hay, logs, and random stone walls that lead nowhere and block nothing. What catches your eye the most, however, is the multitude of giant, long creatures who wiggle and played around the fenced area. Those are some big weasels. 'This is the Warrens. This is where we train our mounts and our scouts.'";
	say "     Hearing Tyrin's voice, a green kobold turns to see you, a big smile on his face as Tani hurries over. 'As you can guess, Tani is in charge here. Anytime there's a scouting mission, you'll be coming here for a briefing.' Tani's tail sways as he looks at you with bright eyes before adding, 'Tani hopes we'll be working with each other a lot, and don't be afraid to visit, too!'";
	WaitLineBreak;
	say "     He seems a little disappointed when your short visit comes to an end, but Tani walks back towards the weasels while you and Tyrin continue on. As you pass one room, you can hear moaning and talking from behind the door, but with it closed, you can't see what's behind it. 'That's the brood chamber. It's uh... It's where eggs are taken care of and made,' he explains, but didn't stop. Instead he continues on to the last room, much closer to the mouth of the caves, where he stops just outside with a sad look on his face.";
	say "     'I want you to know, we aren't proud of this room, but it is a necessity,' he says before taking a deep breath and opening the door to reveal metal cages, many filled with people with varying levels of kobold infection. There is a table on one side where a white kobold sits, looking over a scroll of some sort. Various vials of substances are organized on a counter, and chains and ropes hang from the walls.";
	WaitLineBreak;
	say "     'This is a war, [if player is not defaultnamed][name of player], [else][end if]and if we are going to win it, we need the ability to take enemies off of the field. The problem is, we all heal too quickly now. This leaves very few options remaining to pacify foes. We could kill them, but even this is difficult, and we don't want to take control of Avalon through death. We don't have the room or resources to imprison a whole army, like the Champions do, and we refuse to drive the enemy feral, as that is the fate we struggle against ourselves. The only option left...' Tyrin gestures to the captive infected and the vials, '...is to turn them into one of us. Now, this is different than what Gildwing offered you, and if you want details, you can talk to Kona over there.' Tyrin points towards the white kobold who seems too focused on their reading to pay you two any attention. 'Tani also knows some about this since he is the one who deals with the ferals like the ones you saw today. Just know that we only do this because it is the only way we can keep enemies we captured both alive and sane.'";
	say "     Closing the door to the strange, prison-like room, Tyrin turns to you and tries to regain his composure as a leader. 'I will do what I have to in order to protect the clan, and I hope you will do the same. When you are ready, come to me for your first mission. Until then, I wish you luck.' The chieftain gives you a salute before turning back towards the War Room, leaving you to contemplate your choices. You are now a member of the Gildwing Clan, and you have chosen your side in this war. It's time to see what fate has in store for you now.";
	move player to Kobold Caves Gates;


Part 5 - Return Event

instead of going east from Avalon-Crossroads while (Resolution of GildwingKoboldTest is 1):
	GildwingReturnEvent;

to GildwingReturnEvent:
	say "     The gates that block the kobold caves stand before you. The guards seem at the ready just in case you do anything, but do not appear to be actively aggressive towards you. 'You here to see Master?  You change your mind?'";
	say "     ([link]Yes[as]y[end link]) - Speak to Gildwing";
	LineBreak;
	say "     ([link]No[as]n[end link]) - Return to the Crossroads";
	LineBreak;
	if player consents:
		say "     The guard says something to presumably another kobold behind the wall. A few minutes later, the gates slowly open and you are quickly lead back through the caverns and towards the dragon's chamber. Gildwing seems more ready for you this time; the gold dragon sitting patiently as you come into view. 'I greet you once more[if player is not defaultnamed], [name of player][else][end if]. Have you changed your mind? Have you come to join us?'";
		say "     ([link]Yes[as]y[end link]) - Join the Gildwings";
		LineBreak;
		say "     ([link]No[as]n[end link]) - Decline For Now";
		LineBreak;
		if player consents:[Join Gildwings]
			say "[GildwingClanAccept]";
		else:
			say "     The dragon looks slightly disappointed at your answer, but nods in understanding. 'The offer still stands, but I am afraid that we can not allow those unallied with us to roam our halls freely. Please, return once you have decided to join my children in their struggle.' With that, the kobold guard leads you back out in front of the gate to return to the crossroads.";
			move player to Avalon-Crossroads;
	else:
		say "     You tell the guard you aren't ready yet, which is met with disappointed looks from the guards. 'Then you should leave until you ready. Until then, we can no let you in.' he explains in broken English. With no other options, you turn back towards the crossroads.";
		move player to Avalon-Crossroads;

Gildwing Kobold Events ends here.
