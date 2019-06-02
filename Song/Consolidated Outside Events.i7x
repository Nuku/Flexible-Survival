Version 2 of Consolidated Outside Events by Song begins here.
[ Version 1.0 - Consolidatedbackground events - Stripes ]
[ Version 1.1 - Commented out #4 from set - Stripes     ]
[ Version 2.0 - Sweeping update - Song
	- Renamed "CEOutside" to "Consolidated Outside Events" for clarity
	- Moved file from Stripes' folder to Song's folder. To see the detailed GitHub changelog for the file pre-move, access the primary repository using a commit earlier than this one, or check a stale branch from another contributor. This will allow you to look at the history of the now-removed CEOutside in Stripes' folder
	- Restructured content into separate event names under the same file. This allows players to hunt for specific events and avoids a generic and uninformative event title
	- Removed old, commented-out event #4 altogether to reduce file length and make it easier to tell which content is still relevant. The old content can be salvaged if necessary by looking through the removed file's changelog - see above for details on how to do so
	- General writing and formatting cleanup. Importantly, added prefix spacing in say messages and cleaned up sentence structure
]

"Consolidates a collection of simple and background events to clear up the Outside area."


Section 1 - Grumpy Old Men (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Grumpy Old Men	"Grumpy Old Men"

Grumpy Old Men is a situation.
The sarea of Grumpy Old Men is "Outside".

when play begins:
	add Grumpy Old Men to BadSpots of FurryList;
	add Grumpy Old Men to BadSpots of MaleList;

Instead of resolving Grumpy Old Men:
	say "     While walking down the city streets, you stop when your eyes catch the form of two old men, a tiger and a wolf, arguing with each other while waving their hands up and down wildly at one another. Worrying that the two are about to start a fight, you watch as they move right on down the street past you, completely ignoring you. You wonder if you should speak up to say anything to stop their argument, but you find your words disappearing inside of your throat as you listen to their conversation, if only in bits and pieces.";
	say "     'Harry, you're too old be this cranky anymore,' the wolf says while walking next to his friend. The lupine seems a bit embarrassed by the feline, though he smiles all the while. 'I'll be too old when they put me in the grave. Until then, keep your fuzzy tail moving so we can find old Alma to see if we can borrow some of that ammunition of hers,' the tiger grumbles. 'Do you really think she survived all of this?' the wolf asks, waving his hand around to denote the mess that the town has become. The graying tiger gives the silver wolf a pointed look. 'I sure as hell do! Hell, knowing her, she's probably taking in refuges!' The tiger lets out a roar of laughter before hissing and leaning over to rub at his lower back. In a heartbeat, the wolf is helping the other by offering a shoulder, though the feline is a little too proud, or stubborn, to take it.";
	WaitLineBreak;
	say "     'Will you let me be?! I can manage just fine. I haven't gotten that old, damnit!' the tiger says, even while taking the arm of his cohort. 'I know, I know, sure shot. However, if you won't let me help you, then who will you let tend to your wounds?' The wolf seems to speak somewhat more softly at his friend. The tiger says nothing as he looks up into the bright eyes of his friend, before quickly turning his head to grumble something while using the wolf as a crutch. 'You keep this up, and the next thing you know, I'll be asking you to cook for me.' The wolf laughs in response. 'Harry, I already cook for you.' 'Yeah, but I don't have to ask for it just yet.' A playful smile crosses the feline's muzzle, and the lupine almost seems to flush at the other's statement.";
	say "     The two men walk down the street, the tiger slipping away from the wolf after he regains some of his balance. They continue to fuss at each other playfully while their tails wrap tightly around each other, and soon the two are out of sight. You can only hope that you'll have a friend like that when you reach the age of those old men.";
	now Grumpy Old Men is resolved;


Section 2 - Fleeing Minotaur (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Fleeing Minotaur	"Fleeing Minotaur"

Fleeing Minotaur is a situation.
The sarea of Fleeing Minotaur is "Outside".

when play begins:
	add Fleeing Minotaur to BadSpots of FurryList;
	add Fleeing Minotaur to badspots of HermList;
	add Fleeing Minotaur to BadSpots of MaleList;

Instead of resolving Fleeing Minotaur:
	say "     While traversing the city streets, you spot a figure swerving rapidly around a corner. As it sprints closer, you realize that it's some kind of minotaur, and you dodge it just in time to avoid being pulverized. To your surprise, the creature runs straight past you, ignoring your presence entirely and hightailing it at top speeds in the direction you just came from. Seeing the odd creature running so fast makes wonder what the hell could scare it so badly, only for the answer to come in the form of a hyena dominatrix charging down the street with a whip in her hand.";
	say "     The woman, who can't be more than five foot eight inches tall, is wearing nothing but a black bustier and stiletto boots, and she cackles manically as she follows the minotaur's trail. You're impressed that the hyena could actually frighten a creature almost twice her size and two and half heads taller than her, and you can't help but wonder what's up with that pair. Just before the woman is totally out of sight, you swear that you hear her say something along the lines of 'Call me queen, darling!'";
	now Fleeing Minotaur is resolved;


Section 3 - Scavenging Dalmatian (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Scavenging Dalmatian	"Scavenging Dalmation"

Scavenging Dalmatian is a situation.
The sarea of Scavenging Dalmatian is "Outside".

when play begins:
	add Scavenging Dalmatian to BadSpots of FurryList;
	add Scavenging Dalmatian to BadSpots of MaleList;

Instead of resolving Scavenging Dalmatian:
	say "     Walking down the almost deserted streets of the city, you come across a lone Dalmatian scavenging through a trash can. More than likely looking for food, the figure is failing to find anything appetizing inside the smelly waste container, their spotted tail hanging limply behind them.";
	if food is owned:
		say "     A part of you wants to feel sorry for the mutant, but do really want to spare some of your food to help?";
		if Player consents:
			say "     Whistling at the Dalmatian to get the cano-mutate's attention, you swallow nervously when you see the Dal's floppy ear flick and their black-spotted face turn in your direction. You have all of a half second to realize that you may have made a slight mistake as you watch the creature run toward you after seeing the small parcel of food in your outstretched hand. Bracing yourself for impact, you expect to be knocked onto the asphalt, but the Dalmatian creature simply skids to a stop two feet from your outstretched hand. Lowering itself to its haunches to beg like a normal canine, the Dal whines pleadingly while staring up at you with big, soulful brown eyes.";
			say "     Their whines of hunger are almost heartbreaking to hear. You set the food down in front of the anthro and then take a step back, watching as the spotted creature quickly gobbles up the food as though it hadn't eaten in days. Knowing how rough things are here in this city, the Dal was probably starving. When the dog finishes, it turns its muzzle to look up at you adoringly and then gives you a happy bark before trotting off. Even though you're shorter on provisions now, you feel good about feeding the hungry creature.";
			increase morale of Player by 5;
			SanBoost 12;
			delete food;
			increase score by 10;
			now Resolution of Scavenging Dalmatian is 1; [shared food]
		else:
			say "     Shaking your head, you turn away from the scavenging mongrel to make your way down the street some other way. It's not your business what others have to do to survive. You've currently got your own shit to deal with.";
			now Resolution of Scavenging Dalmatian is 2; [didn't share food]
	else if chips is owned:
		say "     You know that you don't have any proper food, but maybe some of the small snacks that you have in your pocket will tide the creature over. It might not be much, but it's better than food from a trash can, right?";
		if Player consents:
			say "     Whistling to get the anthro Dalmatian's attention, you watch as it turns and then looks down to see what you put on the ground at your feet. Turning to step away from the cano-mutant, you're already moving off on your way just as your ears pick up the sound of charging footsteps to grasp your left-behind treats. It might not have been much, but it was all that you had on you. A sense of relief washes over you at having helped a starving creature in the midst of all this chaos.";
			increase morale of Player by 2;
			SanBoost 6;
			delete chips;
			increase score by 5;
			now Resolution of Scavenging Dalmatian is 3; [shared chips]
		else:
			say "     Knowing that you have no food or snacks on your person, you move down along the street, ignoring the black-spotted mutant rustling through the garbage bin.";
			now Resolution of Scavenging Dalmatian is 4; [didn't share chips]
	else:
		say "     Knowing that you yourself are doing without, you move along the street, ignoring the black-spotted mutant rustling through the garbage bin.";
		now Resolution of Scavenging Dalmatian is 5; [didn't have food/chips to share]
	now Scavenging Dalmatian is resolved;


Section 4 - Captured Wyvern (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Captured Wyvern	"Captured Wyvern"

Captured Wyvern is a situation.
The sarea of Captured Wyvern is "Outside".

when play begins:
	add Captured Wyvern to badspots of FeralList;
	add Captured Wyvern to BadSpots of FurryList;

Instead of resolving Captured Wyvern:
	say "     Coming across a large group of soldiers, you notice that the uniformed men and women seem to have somehow brought a wyvern down onto the ground and are currently staring at the mutant irritably. The large beast, which has to be almost thirty feet long, cries and chirps loudly as the soldiers begin to shout and kick at it. The desperation in some of the humans['] voices has your body tensing as you watch the assembled collective.";
	say "     Not saying so much as a word to alert them of your presence, you watch the troops begin to viciously beat at the creature with both their boots and the ends of their long assault rifles. Blood and other fluids slowly start to leak around the defenseless creature's body in a quickly growing pool. Why, if they have already downed the mutant, don't they just kill it already? As the monster's cries of pain grow steadily louder, you feel compelled to interfere and protect it. Do you follow through on the urge?";
	if Player consents:
		say "     You can't bear to watch the soldiers torturing another living being, even one as monstrous as this. You furtively draw closer to the assembled group, waiting for an opportune moment, then loose a shrill battle cry as you hurl yourself into the fray. The men and women flip their heads around to look at you, but all they can see is a speeding ball of fury as you crash into the ones closest to the downed wyvern. Throwing the miscreants away from the beast, you find yourself looking at all of slightly scared soldiers in anger before suddenly flying into them. Punching and kicking and hissing at them like a mother protecting her young, you send the confused soldiers scattering as you savage anyone too slow, or too stupid, not to get away from the mutant.";
		say "     By the time you're done with them, your knuckles are wet with blood. Whether it belongs to the other humans, the wyvern's, or your own, you do not know, but it doesn't matter in the face of having sent the others away from your charge. Turning around to look at the poor creature, you realize that the wyvern is looking at you intensely with its strange, vertically slitted eyes. An understanding seems to go through you both as you flush down at the monster. Maybe now would be a good time for you to perform some first aid on the creature. Do you even have a medkit?";
		WaitLineBreak;
		if medkit is owned:
			say "     While you're no doctor, you manage to use your medical kit to stitch and patch up whatever wounds you can find on the big beast. A few chirps of pain come from the creature, but you just tell it to grin and bear it, as this is the cost of being taken care of. Once you are done, you take a few steps back to look at your [italic type]patient[roman type] and then nod accordingly when you see the other look over its battered and worn body. Blood quickly stains the bandages that you have wrapped around the wyvern as the mutant tries to get up.";
			say "     You have to quickly hush the thing to prevent it from ruining all of your hard work, quickly comforting the beast into settling down. You try and tell it not to move and that it needs to rest before it can recover fully. The monster seems somewhat hesitant about doing so, and looking around, you can understand why, as the area you both are in is quite open to possible attack, either from the soldiers or other mutants. Giving a sigh of exasperation, you slowly pad up to the reptilian creature's muzzle and then pat the wyvern on the snout gently before telling it that you will watch over it. The beast slowly relaxes and then settles down to rest. Once the wyvern is snoring in sleep, you prepare yourself to stand guard over the creature in order to keep your promise.";
			say "     Thankfully, you encounter little trouble, as neither the soldiers or any other mutants come around the vulnerable critter. The size and smell of it probably scare off anything with a shred of common sense. That soon changes, however, when a flock of wyverns come around to see about their missing companion. Noticing the large assortment of flying creatures, you decide that it's time to beat feet out of here. You've done your good deed for the day, after all.";
			delete medkit;
			SanBoost 10;
			increase score by 10;
			now Resolution of Captured Wyvern is 1; [Defended Wyvern, Used Medkit to heal]
		else:
			say "     Shaking your head, you go over and around the sides of the beast, tending to its wounds the best you can with your limited supplies as you strip your shirt off of your body to use for makeshift bandages. Tearing off strips of your upper garment, and even your pants in order to have enough material, you work carefully, but determinedly to cover the wyvern's grisly wounds, going over the entirety of the monster from top to tail.";
			say "     Looking at the creature to gauge how it feels, you see that your attempts to mend its wounds took too long for your patient's attention, as the wyvern is now asleep. Snorting somewhat in annoyance, you admit a genuine smile as you look down at the flying mutant with wonder. While you wouldn't want to face one of these in battle, you can't help but marvel slightly at the beauty of the creature before you. Reaching out to stroke the sleeping beast's muzzle, you suddenly go rigid as you hear the cries of other wyverns shouting throughout the sky above you.";
			say "     You find yourself moving on quick feet as you hightail it away from the wyvern before its friends can come around to see you standing there with their wounded kin. Kindness notwithstanding, you're not foolish enough to try and explain to a bunch of angry mutants that you didn't hurt their friend.";
			SanBoost 10;
			increase score by 1;
			now Resolution of Captured Wyvern is 2; [Defended Wyvern, Used clothes to heal]
	else:
		say "     The soldiers are just doing their job, you think with some confliction. You have no right to get involved, and there's always the risk of being gunned down yourself if you tried to play the hero. Shaking your head, you turn away and let the uniform-wearing men and women go about their [italic type]duty[roman type] without looking back. The loud chirps of the wyvern seem to grow louder, almost as if calling out for help, but then go quiet all of a sudden.";
		now Resolution of Captured Wyvern is 3; [Did not defend Wyvern]
	now Captured Wyvern is resolved;


Section 5 - Secrets (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Secrets	"Secrets"

Secrets is a situation.
The sarea of Secrets is "Outside".

when play begins:
	add Secrets to BadSpots of FurryList;
	add Secrets to BadSpots of FemaleList;
	add Secrets to badspots of HermList;

Instead of resolving Secrets:
	say "     While walking through the streets of the city, you come across an old public bathroom and decide to stop in to see if the water is working in here. You doubt it'll still be running, but there's no harm in checking. Walking into the public facility, you step carefully to avoid the globs of cum, milk and urine littering the once white tiled floor and walls. You make your way to the women's side of the restrooms, figuring the men's side is probably a biohazard zone by now. Right before you head to the sinks, which are amazingly free from any kind of stains, you freeze in place as an all too familiar noise reaches your ears. The sounds of moaning and thumping are resounding from off of the stalls of the public washroom, and you immediately feel compelled to flee before trouble finds you. However, before you can beat a retreat, one of the bathroom stalls pops open. The banging you had heard was coming from the cheap tin frame and not the far wall, and quickly two half-dressed soldiers pop out and onto the ground. Both are indeed female, and the larger of the pair catches her bulk with her hands to avoid crushing her fuck buddy. You find it odd that two women could be making so much noise, but your confusion is lifted when you spot the large feline shaft connecting them together. It would seem that the larger valkyrie has been tainted by this unclean world.";
	say "     You don't say anything as the blonde haired tigress-in-the-making quietly whispers to her fallen company, her eyes hastily checking over the other to make sure that the smaller brunette is alright. The pig tailed and bespectacled amazon underneath her can only smile shyly and then nod before reaching up to wrap her delicate hands around her would-be mate's neck. While only the blonde seems to have had any changes in her genitals, you take note of the dark stripes slowly spreading over the brunette's face, especially when her partner starts thrusting into her slightly weeping puss. Muscles seem to be forming on the valkyrie's chest and torso, and as you watch, six heavyset breasts rise much more fully from the blonde's already tight chest. Below, the smaller brunette is slimming down and becoming somewhat more demure than she already was compared to her larger lover, shivering and shuddering while her back arches in pure rapture. The sloppy squelching of the tiger cock between them hammering into the smaller woman has you biting at your lower lip while reaching down to rub at your aching groin. They pay no attention to you despite being no more than three feet away, the two moaning and growling together, their infection probably spreading deeper internally before changing their outward appearance.";
	say "     You can't help but feel that you have little right to impart yourself on this shared moment between the two once you see the lust and love they have for each other shimmering inside of their respective green and brown eyes. Deciding not to bother them, you hastily back away from the pair and turn to leave, but not without shutting the door to the ladies['] room first. You idly wonder if maybe some good has come from this entire fiasco, just in time to hear a thunderous feline roar that shakes the very foundations of the building you're standing in. It's definitely time to go now.";
	now Secrets is resolved;


Section 6 - School Spirit (by hiccup)

Table of GameEventIDs (continued)
Object	Name
School Spirit	"School Spirit"

School Spirit is a situation.
The sarea of School Spirit is "Outside".

when play begins:
	add School Spirit to BadSpots of FemaleList;

Instead of resolving School Spirit:
	say "     While exploring the city, you discover a crashed school bus. There is no one on the bus, but you do find a dozen shredded cheerleader uniforms. Judging by the uniforms, the cheerleaders were from the local college. All the uniforms are ripped around the middle, almost as if the bellies of all the cheerleaders grew until they ripped through their uniforms. You can only surmise that a creature must have boarded the bus and impregnated every single cheerleader with its infectious seed. Feeling uneasy, you quietly leave the bus and sneak away before the cheerleaders or their spawn return.";
	increase the score by 1;
	now School Spirit is resolved;


Section 7 - Another Survivor (by hiccup)

Table of GameEventIDs (continued)
Object	Name
Another Survivor	"Another Survivor"

Another Survivor is a situation.
The sarea of Another Survivor is "Outside".

when play begins:
	add Another Survivor to BadSpots of FurryList;
	add Another Survivor to badspots of HermList;

Instead of resolving Another Survivor:
	say "     While exploring the city, you spot another survivor. Before you get a chance to introduce yourself, a Hermaphrodite Gryphon swoops out of the sky, snatches up the other survivor, and flies away.";
	increase the score by 1;
	now Another Survivor is resolved;


Section 8 - Masturbating Fox (by hiccup)

Table of GameEventIDs (continued)
Object	Name
Masturbating Fox	"Masturbating Fox"

Masturbating Fox is a situation.
The sarea of Masturbating Fox is "Outside".

when play begins:
	add Masturbating Fox to BadSpots of FurryList;
	add Masturbating Fox to BadSpots of MaleList;

Instead of resolving Masturbating Fox:
	say "     While exploring the city, you hear a strange sound in the distance.";
	say "     'Squeak! Squeak! Squeak!'";
	say "     You follow the strange squeaking sound until you find its source. The sound is coming from a latex fox creature that you find behind a pile of rubble. The creature is vigorously masturbating its rubbery cock, creating a loud squeaking sound with each stroke. When it notices your presence, you brace yourself for a fight. Thankfully, the creature decides to ignore you and goes back to masturbating. You sigh with relief and leave before it can change its mind.";
	increase the score by 1;
	now Masturbating Fox is resolved;


Section 9 - Giant Egg (by hiccup)

Table of GameEventIDs (continued)
Object	Name
Giant Egg	"Giant Egg"

Giant Egg is a situation.
The sarea of Giant Egg is "Outside".

Instead of resolving Giant Egg:
	say "     You search through the city streets until you come across a giant egg. The egg is the size of a beach ball, and it appears to be freshly laid. You quickly leave the area before its mother can return.";
	increase the score by 1;
	now Giant Egg is resolved;


Section 10 - Ice Cream Truck (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name
Ice Cream Truck	"Ice Cream Truck"

Ice Cream Truck is a situation.
The sarea of Ice Cream Truck is "Outside".

when play begins:
	add Ice Cream Truck to BadSpots of FurryList;
	add Ice Cream Truck to badspots of HermList;

IceCreamTruckBadEnd is a truth state that varies. IceCreamTruckBadEnd is usually false.

Instead of resolving Ice Cream Truck:
	say "     An abandoned ice cream truck sits on its lonesome in the middle of the street. You quickly investigate it to check if there's anything edible that hasn't already been scavenged. Looking in the cooler in back, you are disappointed to find that the ice cream has melted all over the place, soaking the inside of the truck. Taking a whiff of a strange smell, you realize that the sticky white stuff may not be ice cream after all, but someone or something's cream. You might be able to find something useful here, but it would be messy. Do you try?";
	if Player consents:
		if humanity of Player < 10:
			say "     Try as you might to concentrate on your search, you struggle to stay focused amidst all the milk and cum coating almost every part of the interior. The heady miasma of sex leaves you increasingly lightheaded and aroused, and your body is enveloped in scintillating tingles as the fluids begin to seep into your [Skin of Player] skin. Feeling as though you're being sensually licked and caressed from every angle, your already fragile mind shuts down, and you sink to your knees in the slurry of mixed seed, rubbing and stroking yourself as lust roars through you.";
			say "     Looking over all the warm, sticky spunk that surrounds you, you debate how to best debase yourself. Your body seems to decide the next course of action for you, and you reach below to ";
			if Player is herm:
				say "cram some of the delicious cream into your cunt[sfn], your spare hand taking hold of your hardening [if Cock Count of Player > 1]cocks to stroke and frot them together[else]cock to stroke and pump it slowly[end if]. Your [cock size desc of Player] length[smn] throb[smv] and pulse[smv] with excitement as your fingers sink into your cum-sullied depths, spreading and rubbing along your sensitive inner walls";
			else if Player is male:
				if anallevel > 1:
					say "cram some of the delicious cream into your asshole, your spare hand taking hold of your hardening [if Cock Count of Player > 1]cocks to stroke and frot them together[else]cock to stroke and pump it slowly[end if]. Your [cock size desc of Player] length[smn] throb[smv] and pulse[smv] with excitement as your fingers sink into your cum-sullied rear, spreading and rubbing along your sensitive anal lining";
				else:
					say "take hold of your hardening [if Cock Count of Player > 1]cocks, stroking and frotting them together[else]cock, stroking and pumping it slowly[end if], your [cock size desc of Player] length[smn] throbbing and pulsing with excitement as you pleasure yourself";
			else if Player is female:
				say "cram some of the delicious cream into your cunt[sfn][if anallevel is 3] and asshole[end if], shuddering at the perverse bliss of smearing all that slimy cum along your inner walls. You gauge your elasticity by splaying your fingers apart, giving your free hand room to shovel more sticky gryphon cream into your [if anallevel is 3]needy asshole and [end if]slavering puss[yfn], soon so aroused that you can do nothing but jill yourself in absent ecstasy";
			else:
				say "[if anallevel > 1]cram some of the delicious cream into your asshole, your fingers sinking into your cum-sullied rear to spread and rub along your sensitive anal lining[else]gather more of the delicious cream. You slather it all over your body, gathering handfuls to devour and lick clean as you bask in the musky scent of your surroundings[end if]";
			say ". You moan and tremble with debilitating arousal, your thoughts drifting to fantasies of being pinned down and ravaged by one of the gorgeous gryphon herms that caused the mess you're now helplessly masturbating in. You daydream of wrapping your tongue around a large, knotted length, drinking down several thick, virile loads[if Player is female or (player is male and anallevel > 1)] while fingering yourself to orgasm after orgasm[end if][if Player is male]. You lust to sink into a hot, tight pussy while nursing from your partner's furry breasts, cooing and squawking noisily as you make love in the empty streets[end if].";
			say "     Subsumed as you are in your muddled thoughts, your eventual [if Player is neuter]sexless[else]messy[end if] climax nearly knocks you insensate. Pleasure crests in waves of euphoria that strip all sense of time of place, feeling suspended and weightless as you [if Player is not neuter]add to the mess marring the truck and [end if]bask in a wreath of mind-numbing warmth. Unable to control your spasms of orgasmic bliss, you slump face-first into the potpourri of milk and spunk, landing with a squelching splatter that excites your nanite-riddled body all over again. You roll in the muck as you continue to masturbate, your mind empty of anything but the joy of drenching yourself in the hot, sticky slime [if Player is neuter]until it[else]and contributing to the lather that[end if] cakes every inch of your body. You completely forget your goal of survival as you wallow in the intoxicating fluids, a delicious, nourishing banquet that sustains your hedonistic submission until you finally collapse after countless hazy peaks.";
			WaitLineBreak;
			say "     You awaken many hours later, completely spent and sore after the exertion. Rubbing your eyes of sleep, your swimming vision begins to normalize, and the incoherent blur of yellow and blue before you sharpens into the distinct shape of a blue gryphon's head. 'Good morning, gorgeous,' comes the beautiful creature's voice, soft and disarming, something about it leaving you utterly at ease. You struggle to rise on the truck's slippery flooring, stained in a now-cool slime of spent fluids. A smile tugs at the gryphon's furry cheeks, and she draws you in against her body, stabilizing your stumbling with her strong, buxom frame. So close to her, you are free to breathe in the scent of her arousal, squirming with need as lurid images fill the void in your mind. Your head sinks forward into the comfortable vise of her breasts, unable to find reason for concern as she cradles you close to her bosom.";
			say "     'There, there,' the hermaphrodite croons, her soft tongue sweeping between your ears. A taloned hand reaches below to play with your tube-like tail, threading the thin appendage between her digits, snaking up to toy with the plume at its tip, then sliding all the way back down again in one slow, continuous motion. The sensual contact relaxes you further, and you realize dimly that you are safe and sound in the arms of your blue-furred lover. 'I found you lying here all alone, and I thought you might like some company,' she teases, rubbing the side of her beak against your own with a soft, seductive coo.";
			say "     You shiver with delight as her wings wrap around your body, only to feel a twinge of shame as you reflect on the mess that mars your fur and plumage. Those concerns slough away when you feel her [if Player is male]take hold of your cock, stroking along the underside of your knotted, hardening length until it stands at full arousal in her grasp[else if Player is female]slip two fingers into your wide, deep pussy, pressing knuckle-deep into your slavering honeypot and pumping back and forth in your nectar-soaked fuckhole[else if anallevel > 1]slip two fingers into your reflexively clenching asshole, pressing knuckle-deep into your rectum and pumping back and forth along your achingly needy lining[else]rub along your featureless pelvis, her experienced touches exciting you in spite of your sexless state[end if]. A powerful need to [if Player is herm or (player is male and player is mpreg_ok)]breed and be bred[else if Player is female or player is mpreg_ok]be bred[else if Player is male]breed her[else]be fucked[end if] wells up in your body, and you pose no resistance when she sweeps you into a lusty, beak-locking kiss. Her confident steps lead you back until your legs catch on a crate, and you sink onto your back on the cum-soaked surface, the lusty herm quick to ";
			if (player is female) or (player is herm and a random chance of 1 in 2 succeeds): [Get fucked]
				say "[if Cunt Count of Player > 1]spread your legs and align her tapered cocktip with one of your wet, needy cunts[else]spread your legs and align her tapered cocktip with your wet, needy entrance[end if].";
				WaitLineBreak;
				say "     You squawk loudly as she spears into your depths, your avian mate leaning over your form with a soft, loving coo. Her scaly hands take hold of your [if Nipple Count of Player > 0 and Breast Size of Player > 0]breasts, rubbing and pinching your nipples between the firm of her talons until you leak trickles of milk beneath her touch[else]upper arms, keeping you pinned in place beneath her[end if]. You shudder and crane your head back, your elongated tongue lolling free from your beak as she grinds her hard knot to your soaked and drooling folds[if Player is male], your unattended length[smn] standing rigidly at attention[end if]. 'Look at you, so eager to be taken,' the herm coos softly. 'I'll have to bring you back to my nest after this. We'll make so many wonderful little gryphons together,' she teases, pulling her hips back just enough to drive deeply into your well-stuffed muff again. Wetness splatters against her crotch from the impact, the feeling of that amazing gryphon cock inside you making you tremble and nod with desperate approval. You're willing to say or do almost anything for more, your hips rocking meekly against the huge pole of pre-slick meat spreading you wide. 'Such a good little eggslut,' she croons, then leans down to snake her tongue along your throat, her hot breath flowing through your supple blue fur.";
				say "     You arch your back on the crate supporting your weight, then slump down bonelessly as she sets to pounding your yearning body, railing you like the horny gryphon slut you realize you were always meant to be. Those old, unnecessary human thoughts are chased from your mind by your rutting mate, her bestial shaft leaving a visible bulge in your belly with every thrust[if Player is male] while your own turgid length[smn] drool[smv] all over your fore[end if]. The heat and scent of sex are only compounded by your sordid surroundings, reducing the truck to a sweltering sauna of mindless breeding bliss. Lusting to be fucked and filled to the brim, you reach up to toy with your pumping partner's breasts, your firm squeezing coaxing out spurts of milky ambrosia. You lean up to curl your tongue around one of her dribbling tits, squeezing the flesh with your dexterous muscle to draw out more of that nourishing fluid, her shaky cries of delight testament to how much she enjoys your greedy suckling. As your lover's body grows tense with arousal, you fold your supple wings around her and draw her close, eager to muffle your squawks and screams of ecstasy in the embrace of each other's arms.";
				WaitLineBreak;
				say "     The gryphon's pumping grow tense and erratic, her long strokes giving way to short, frantic bucks that slam the bulb of her knot against your soaked and drooling entrance. The gryphon suddenly grinds her hips to yours, and with a loud pop, she rams the broader base of her root into your overfull passage. Your lover holds you close as she floods you with thick blasts of her avian seed, dousing the walls of your womb in ropes of tainted cum. Her copious output swells your stomach and squirts out around the imperfect seal, splattering back against her thighs and adding to the swamp of sexual fluids. What stays within to dome your belly leaves you feeling warm and happy, utterly content as your cunt[sfn] contract[sfv] [if Player is male]and twitching cock[smn] spray[smv] your [Cum Load Size of Player] load all over your chest [end if]in a shared, euphoric orgasm.";
				say "     By the time you come down from your debilitating high, you have trouble imagining being anything other than a lusty breeding bitch for your beautiful mate, who is still tied to you and licking over your beak as her final spurts taper to a dribble. Your eyes have long since glazed over, fantasizing of mothering clutch after clutch of young and sending them out in the world to breed more happy gryphons. Your mate's still-throbbing cock makes you shiver and coo, your scaled hands roaming over your stomach to languidly rub the softly sloshing bulge. 'Love you sweetie,' comes the gryphon's voice above, and you mumble something of a response, largely incoherent in your well-fucked daze. 'Mmh, I can't wait. Let's go you back to the nest right now,' she intones, and you rapidly nod your approval, eager to be fucked again as soon as gryphonly possible.";
				WaitLineBreak;
				say "     Despite the warning, her sudden withdrawal still manages to surprise you, yielding a light pang of pain in your nethers as she yanks her hard and swollen knot free from your cum-sullied snatch. You emit a long, wavering moan as a cascade of warm cream flows out from your freshly fucked pussy, leaking down [if Cunt Count of Player > 2]your lonely extra slits[else if Cunt Count of Player is 2]your lonely second slit[else if anallevel > 1]the crack of your ass[else]your thighs[end if] before dripping to the floor below. The gryphon gathers some of her escaping cum with a digit and smears it over your beak, giggling softly as your tongue chases after her delicious, dominant seed.";
				say "     You pose no resistance as she hefts you up to your feet, slipping and stumbling a little in the slime of spent fluids. She then pulls you by the wrist with an infectious sense of excited urgency, your cunt[sfn] already soaked with need by the time you're back outside. Using the street as her runway, your mate takes off into the sky with powerful flaps her wings, and your broken mind has little trouble following her lead, joining her side in the air. You fuck and breed wildly the moment you arrive at her nest, paying no heed to the world around you in the haze of taking her cock[if Player is male] and stuffing her pussy with your own knotted tool[smn][end if].";
			else if Player is male and player is not submissive: [Fuck her]
				say "straddle your waist and align your tapered cocktip with her wet, needy entrance.";
				WaitLineBreak;
				say "     You squawk loudly as she sinks your meaty gryphon cock into her folds, spreading herself wide around your bestial length. The lustful avian grinds down against the bulb of your knot, the squeezing tightness making you throb within her satiny walls. Her scaly hands take hold of your [if Nipple Count of Player > 0 and Breast Size of Player > 0]breasts, rubbing and pinching your nipples between the firm of her talons until you leak trickles of milk beneath her touch[else]upper arms, keeping you pinned in place beneath her[end if]. You shudder and crane your head back, your elongated tongue lolling free from your beak as she begins to rock her hips, sliding halfway up your impressive pole before making it disappear in her warm, wet oven of a cunt again. 'Such a [if Breast Size of Player > 0]gorgeous[else]handsome[end if] stud,' the gryphon coos. 'I'll have to bring you back to my nest after this. We'll make so many wonderful little gryphons together,' she teases, pulling up to the tapered tip of your dick to let her juices trickle down your sensitive cockflesh before sliding all the way back down again with almost torturous deliberation. You nod your head in desperate approval, willing to say or do almost anything for more, your hips giving needful little bucks into her gripping chalice as she leers at you sultrily. 'I knew you wanted to be mine,' she croons, then leans down to snake her tongue along your throat, her hot breath flowing through your supple blue fur.";
				say "     Straightening herself, the dommy gryphon takes hold of your shoulders for support, then begins to bounce atop your hips, impaling herself with your firm gryphon cock. Her motions drive your length deep inside her silky walls, ramming down on your knot with every harsh descent. Her squirting wetness soaks your crotch in clear, sticky fluids, the rich scent only adding to the pungency of your surroundings. Her heavy breasts cavort freely as she uses you like a toy for her amusement, her mounds['] rhythmic bouncing seeming mesmerizing to your sex-addled mind. In time, you lose track of everything but the damp, sweltering bliss of her pink-fleshed pussy massaging your maleness, savoring the waves of warmth and pleasure that radiate outwards from her contact. As your lover's body grows tense with arousal, you fold your supple wings around her and draw her down against your [if Breast Size of Player > 0]bosom[else]chest[end if], eager to muffle your squawks and screams of ecstasy in the embrace of each other's arms.";
				WaitLineBreak;
				say "     The gryphon suddenly grinds her hips to yours, and with a loud pop, the broader base of your root slides into her overfull passage. You crane your head back as your balls tense and your shaft ripples, riding that brief crest of pleasure for several beak-gnashing seconds until it all spills over in a crashing, trembling climax. You release a bestial cry of pleasure as you cum hard inside the dominant gryphon, your maleness pulsing and spurting wildly, the slick squelches of your shared peak soaking your crotch and inner thighs. You moan feebly as your ample output fills her cavernous cunt, stuffing her womb with your thick, tainted essence. What doesn't stay inside squirts and oozes around the imperfect seal of your knot, further sullying your form and sex-slick surroundings. Your climax continues on and on, far more powerful than anything you've felt before, the ecstasy of release only protracted by the suckling maw of her cream-soaked pussy until your ache in protest.";
				say "     Finally spent, you feel any trace of tension escape your altered body. Your mind empties of all but the desire to breed your beautiful mate, bearing clutch after clutch of powerful new gryphons to roam the city and convert more into your folds. Your eyes have long since glazed over as you fantasize of rutting your wonderful mate, day in and day out, for the rest of your simple existence. The gryphon's still-clenching walls make you shiver and coo, your scaled hands roaming over her stomach to languidly rub the softly sloshing bulge. 'Love you sweetie,' comes the gryphon's voice above, and you mumble something of a response, largely incoherent in your well-fucked daze. 'Mmh, I can't wait. Let's go you back to the nest right now,' she intones, and you rapidly nod your approval, eager to fuck again as soon as gryphonly possible.";
				WaitLineBreak;
				say "     Despite the warning, her sudden withdrawal still manages to surprise you, her cum-sullied hole sliding free from your hard and swollen knot with a light pop. You emit a long, wavering moan as a cascade of mixed fluids flows out from her freshly cunt, spilling all over your lap before dripping to the floor below. The gryphon gathers some of your escaping cum with a digit and smears it over your beak, giggling softly as your tongue chases after the warm, sticky bounty.";
				say "     You pose no resistance as she hefts you up to your feet, slipping and stumbling a little in the slime of spent fluids. She then pulls you by the wrist with an infectious sense of excited urgency, your cock[smn] already hard and dribbling by the time you're back outside. Using the street as her runway, your mate takes off into the sky with powerful flaps her wings, and your broken mind has little trouble following her lead, joining her side in the air. You fuck and breed wildly the moment you arrive at her nest, paying no heed to the world around you in the haze of stuffing her pussy over and over again[if Player is female], then bending over to have your own fertile passage[sfn] violated by your dual-sexed mate[end if].";
			else if anallevel > 1 and a random chance of 1 in 2 succeeds: [Get anally fucked]
				say "spread your legs and align her tapered cocktip with your tight, needy asshole.";
				say "     You squawk loudly as she spears into your depths, your avian mate leaning over your form with a soft, loving coo. Her scaly hands take hold of your [if Nipple Count of Player > 0 and Breast Size of Player > 0]breasts, rubbing and pinching your nipples between the firm of her talons until you leak trickles of milk beneath her touch[else]upper arms, keeping you pinned in place beneath her[end if]. You shudder and crane your head back, your elongated tongue lolling free from your beak as she grinds her hard knot to your rim[if Player is male], your unattended length[smn] standing rigidly at attention[end if]. 'Look at you, so eager to be taken,' the herm coos softly. 'I'll have to bring you back to my nest after this. [if Player is mpreg_ok]We'll make so many wonderful little gryphons together[else]You'll make for such a precious little pet[end if],' she teases, pulling her hips back just enough to drive deeply into your well-stuffed rear again, the feeling of that amazing gryphon cock inside you making you tremble and nod with desperate approval. You're willing to say or do almost anything for more, your hips rocking meekly against the huge pole of pre-slick meat spreading you wide. 'Such a good little [if Player is mpreg_ok]egg[end if]slut,' she croons, then leans down to snake her tongue along your throat, her hot breath flowing through your supple blue fur.";
				say "     You arch your back on the crate supporting your weight, then slump down bonelessly as she sets to pounding your yearning body, railing you like the horny gryphon slut you realize you were always meant to be. Those old, unnecessary human thoughts are chased from your mind by your rutting mate, her bestial shaft leaving a visible bulge in your belly with every thrust[if Player is male] while your own turgid length[smn] drool[smv] all over your fore[end if]. The heat and scent of sex are only compounded by your sordid surroundings, reducing the truck to a sweltering sauna of mindless breeding bliss. Lusting to be fucked and filled to the brim, you reach up to toy with your pumping partner's breasts, your firm squeezing coaxing out spurts of milky ambrosia. You lean up to curl your tongue around one of her dribbling tits, squeezing the flesh with your dexterous muscle to draw out more of that nourishing fluid, her shaky cries of delight testament to how much she enjoys your greedy suckling. As your lover's body grows tense with arousal, you fold your supple wings around her and draw her close, eager to muffle your squawks and screams of ecstasy in the embrace of each other's arms.";
				WaitLineBreak;
				say "     The gryphon's pumping grow tense and erratic, her long strokes giving way to short, frantic bucks that slam the bulb of her knot against your lewdly spread tailhole. The gryphon suddenly grinds her hips to yours, and with a loud pop, she rams the broader base of her root into your overfull passage. Your lover holds you close as she floods you with thick blasts of her avian seed, dousing the walls of your colon in ropes of tainted cum. Her copious output swells your stomach and squirts out around the imperfect seal, splattering back against her thighs and adding to the swamp of sexual fluids. What stays within to dome your belly leaves you feeling warm and happy, utterly content as your ass wrings her meat [if Player is male]and twitching cock[smn] spray[smv] your [Cum Load Size of Player] load all over your chest [end if]in a shared, euphoric orgasm.";
				say "     By the time you come down from your debilitating high, you have trouble imagining being anything other than a lusty [if Player is mpreg_ok]breeding [end if]bitch for your beautiful mate, who is still tied to you and licking over your beak as her final spurts taper to a dribble. Your eyes have long since glazed over[if Player is mpreg_ok], fantasizing of bearing clutch after clutch of young and sending them out in the world to breed more happy gryphons[else] as you fantasize about being pinned down and reamed, day in and day out, for the rest of your simple existence[end if]. Your mate's still-throbbing cock makes you shiver and coo, your scaled hands roaming over your stomach to languidly rub the softly sloshing bulge. 'Love you sweetie,' comes the gryphon's voice above, and you mumble something of a response, largely incoherent in your well-fucked daze. 'Mmh, I can't wait. Let's go you back to the nest right now,' she intones, and you rapidly nod your approval, eager to be fucked again as soon as gryphonly possible.";
				WaitLineBreak;
				say "     Despite the warning, her sudden withdrawal still manages to surprise you, yielding a light pang of pain in your ass as she yanks her hard and swollen knot free from your cum-sullied hole. You emit a long, wavering moan as a cascade of warm cream flows out from your freshly fucked rear, leaking down your thighs before dripping to the floor below. The gryphon gathers some of her escaping cum with a digit and smears it over your beak, giggling softly as your tongue chases after her delicious, dominant seed.";
				say "     You pose no resistance as she hefts you up to your feet, slipping and stumbling a little in the slime of spent fluids. She then pulls you by the wrist with an infectious sense of excited urgency[if Player is male], your cock[smn] already hard and dribbling by the time you're back outside[end if]. Using the street as her runway, your mate takes off into the sky with powerful flaps her wings, and your broken mind has little trouble following her lead, joining her side in the air. You [if Player is mpreg_ok]fuck and breed[else]embrace each other and fuck[end if] wildly the moment you arrive at her nest, paying no heed to the world around you in the haze of taking her cock[if Player is male] and stuffing her pussy with your own knotted tool[smn][end if].";
			else: [Get orally fucked]
				say "move around you, smearing her musky mast of knotted cockmeat across your parted beak.";
				WaitLineBreak;
				say "     Your eyes flutter closed as her thick, knotted tool slides over your palate, the heady aroma of sex and cum clinging fragrantly to her warm, delectable cockflesh. She gives you a brief moment of respite to slide your tongue along her lance, curling it around her pliant meat and slurping at that musk-laced mast, relishing the heat and taste that suffuses your salivating maw. Her taloned hands take hold of your neck in a gentle vise as she pushes deeper, sinking inch after inch that massive dick into your throat. Even craning your head back, the straight descent makes you gag and gurgle wetly around her pole, unsure if you can take the entirety of it all. However, your altered form proves remarkably elastic, and she soon pushes the bulb of her knot past your gaping beak, her pre already dribbling down your throat.";
				say "     What breath you manage is heavily doused in the strong scent of virility that wafts from the gryphon's crotch, the scent of her many past conquests enthralling your sex-addled mind. Your throat wrings around her embedded cock as you stare, upside down, into the lavish coat of blue fur that blots your vision, so close to her sack that your tongue can't help but flit further down to tickle at those weighty orbs. The gryphon gently massages your neck, pressing the walls of your throat directly against that pre-slick meat, feeding you more of her intoxicating aroma for what feels like an eternity of submissive bliss";
				if Player is male:
					say ", your neglected cock[smn] standing painfully erect throughout. Whether out of sympathy or simply to tease you further, the gryphon whips her tufted tail around to [if Cock Count of Player > 1]weave through your [Cock of Player] lengths, coiling and brushing along your [cock size desc of Player] malenesses[else]curl around your [cock size desc of Player] maleness, a ticklish vise that caresses and gently pumps your [Cock of Player] cock[end if]";
				say ".";
				WaitLineBreak;
				say "     Eventually tiring of teasing you, the avian draws her hips back, pulling that generous slab of knotted cockflesh back to smear across your tongue, then rams deep into your throat again. You a wince a little from the possessive force on display, only to moan when she leaks more of that delicious, sticky pre down your gullet, warming and arousing you from within. She wastes no time in setting a firm and confident tempo, sawing her immaculate gryphon cock back and forth in your well-stretched throat, her thrusts deliberate and measured in spite of her obvious need. Your moan and coo contentedly into the natural gag of her dick, muffled sounds of pleasure emanating from you in time with her pistoning motions[if Player is male]. Your length[smn] spurt[smv] and twitch[esmv] with each rough drive into your maw, the pleasure of being reduced to an obedient cocksleeve such a strong and sexy herm drilling into your mind and overpowering all thought[end if].";
				say "     With the gryphon already greatly aroused, it doesn't take long for her lust to boil over, and she squawks out noisily as she empties her balls into your belly. Thick blasts of tainted seed flow directly into your core, denying you its pungent flavor in favor of a deep, direct injection. Her length throbs and pulses with each rope of mind-melting seed she deposits in your body, taloned hands gripping just a little firmer around your neck, holding you possessively but clearly mindful not to hurt you";
				if Player is male:
					say ". Spurred on by her skillful tail's stroking, you eventually attain your own shuddering climax, spraying over your stomach and [if Breast Size of Player > 0]breasts[else]chest[end if] like some sort of perverted, defective fountain. The thrill of release has you burying your beak against her crotch, wanting nothing more than to soak in her all-consuming scent of virility and forget about everything but your new lease in life as a horny gryphon cockslut";
				say ".";
				WaitLineBreak;
				say "     By the time your trembling bodies settle down, you feel your stomach bloated outwards in a small, sloshing dome of infected seed. The gryphon's softening knot allows her pry free from your beak without risk, dragging along with her the intense, heady flavor of the lingering cum she just stuffed into your pliable form. 'That was fun,' the sexy herm coos in almost a purr, then giggles sweetly and pulls the rest of the way out. Rich splatters of seed leak from your gaping maw, your vision still blurry from the hormones and adrenaline while your tongue chases after the remnants of her delicious, copious cum.";
				say "     Stunned as you are, you pose no resistance as she hefts you up to your feet, slipping and stumbling a little in the slime of spent fluids. She then pulls you by the wrist with an infectious sense of excited urgency[if Player is male], your cock[smn] already hard and dribbling by the time you're back outside[end if]. Using the street as her runway, your mate takes off into the sky with powerful flaps her wings, and your broken mind has little trouble following her lead, joining her side in the air. You [if Player is mpreg_ok]fuck and breed[else]embrace each other and fuck[end if] wildly the moment you arrive at her nest, paying no heed to the world around you in the haze of taking her cock[if Player is male] and stuffing her pussy with your own knotted tool[smn][end if].";
			WaitLineBreak;
			now BodyName of Player is "Blue Gryphon Herm";
			now IceCreamTruckBadEnd is true; [ See - Timothy.i7x in Sarokcat's folder for endings ]
			now humanity of Player is 0;
			end the story saying "You spend the rest of your days with your lovely gryphon mate.";
		else:
			say "     Carefully digging through the mess returns a few bottles of milk that don't appear to be too tainted for use, although in the process of searching you managed to get some of the sticky cream on you as well. Trying to scrape the stuff off while leaving the truck, you find that the cream seems to be seeping into your skin, and your insides twist as you feel yourself change slightly.";
			increase carried of gryphon milk by 2;
			infect "Blue Gryphon Herm";
			now Resolution of Ice Cream Truck is 1; [Crawled around in Icecream Van]
	else:
		say "     Deciding it would be best to avoid any contact with whatever might be left in the truck, you continue on down the road, the truck soon lost in the distance behind you.";
		now Resolution of Ice Cream Truck is 2; [Did not crawl around in Icecream Van]
	now Ice Cream Truck is resolved;


Section 11 - Wyvern Flight (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name
Wyvern Flight	"Wyvern Flight"

Wyvern Flight is a situation.
The sarea of Wyvern Flight is "Outside".

when play begins:
	add Wyvern Flight to BadSpots of FurryList;

Instead of resolving Wyvern Flight:
	say "     You spy a small group of wyverns hauling off tables and chairs from a sidewalk café, apparently building a large nest somewhere nearby. You quickly lie low in a nearby storefront until the activity ceases, thankful to not be noticed. It seems the city keeps getting more dangerous every day.";
	now Wyvern Flight is resolved;


Section 12 - Strange Preacher (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name
Strange Preacher	"Strange Preacher"

Strange Preacher is a situation.
The sarea of Strange Preacher is "Outside".

when play begins:
	add Strange Preacher to BadSpots of FurryList;
	add Strange Preacher to badspots of HermList;

Instead of resolving Strange Preacher:
	say "     Wandering the deserted streets, you hear what sounds like a loud voice father down the street. Hurrying to see who is talking, you are shocked to see a strange creature shouting out to an empty street. Moving closer in case this is some kind of trick, you get a better look at the creature and find yourself shaking your head in astonishment. With the lower body of one of those panther taurs, she is resting her front legs on a box of some type while her back ones brace her on the street, her spread legs giving you a good look at hir erect feline cock. Behind hir, a long reptilian tail is lashing in time with her words, its scaled length almost as long as her entire furred lower body. Her torso seems to be covered in rough brown dog fur, with a bovine udder hanging off her upper body's stomach. Her arms are twisted around and pulled up into almost wyvern-like wings, obviously not strong enough to lift her even an inch off the ground. It is almost startling to see the rather human head sitting on the shoulders of the creature, her eyes closed as she continues to speak.";
	say "     Realizing that you've been staring at her form and not paying attention to what she's actually saying, you pause to listen for a minute. Listening to her speak, it quickly becomes obvious that she is singing the praises of something called the church of the maternal beast and someone she calls the Great Mother. She appears to be trying to appeal to the infected by telling them to embrace the changes, and the new sexuality sweeping the city, but not to let it overwhelm them. She continues on in lewd detail about the things that one should be careful of doing, or else you might give in and lose yourself completely. Her body shakes as she depicts several strange lewd acts to be avoided, and you can see her hind legs pumping her erect cock in the empty air eagerly as she continues to get more and more explicit in her descriptions. Shaking your head at the absurdity of it all, you leave the strange thing to its preaching, unsure if it even noticed you stopping to listen for a minute.";
	now Strange Preacher is resolved;


Section 13 - Hyena Kill (by Hellerhound)

Table of GameEventIDs (continued)
Object	Name
Hyena Kill	"Hyena Kill"

Hyena Kill is a situation.
The sarea of Hyena Kill is "Outside".

when play begins:
	add Hyena Kill to BadSpots of FurryList;

Instead of resolving Hyena Kill:
	say "     You come across a murder scene in the corner of one of the streets, blood spattered everywhere, on the walls, the sidewalk, the parked cars, and black spotted hair also. Powdered segments of bone are also scattered. It looks like one of the hyenas didn't go for the rape, but for the kill. Ouch. They must have really hated the person. You hope that isn't what they think of you.";
	now Hyena Kill is resolved;


Section 14 - Panther Trap (by Hellerhound)

Table of GameEventIDs (continued)
Object	Name
Panther Trap	"Panther Trap"

Panther Trap is a situation.
The sarea of Panther Trap is "Outside".

when play begins:
	add Panther Trap to BadSpots of FurryList;
	add Panther Trap to badspots of HermList;
	add Panther Trap to badspots of NonconList;

Instead of resolving Panther Trap:
	say "     You come across two large piles of debris that all but block the way forward. Despite them, you try and squeeze through. Unfortunately, the gray and tall junk piles fall onto you before you get fully through, trapping you with a loud smashing noise that you swear will be audible throughout the city. You wince to think of the attention coming your way and start trying to escape, fast.";
	if a random number between one and 20 < 12: [the felitaur heard]
		[puts Panther Taur as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Panther Taur":
				now MonsterID is y;
				break;
		say "     A panther taur comes up behind you, its trap having fallen on you, and proceeds to use you.";
		say "[panthertaur rape]";
		now Resolution of Panther Trap is 1; [Got raped by Panthertaur]
	else:
		if a random chance of one in 3 succeeds: [fight a monster instead of being raped]
			let Q be a list of numbers;
			repeat with X running from 1 to number of rows in Table of Random Critters:
				choose row X from the Table of Random Critters;
				if there is no area entry, next;
				if Name entry matches the text battleground, case insensitively:
					add x to Q;
			sort Q in random order;
			repeat with Z running through Q:
				choose row Z from the Table of Random Critters;
				if there is a Name entry:
					now MonsterID is Z;
				else:
					next;
				break;
			say "     A nearby monster catches you in the felitaur's trap and proceeds to fight you. In the process, it disrupts the rubble and frees you.";
			decrease the HP of the player by 10;
			fight;
			follow the turnpass rule;
			now Resolution of Panther Trap is 2; [Fought creature]
		else: [flee without being raped or having to fight]
			say "     Nobody shows up before you succeed at freeing yourself. Phew.";
			now Resolution of Panther Trap is 3; [Escaped without problem]
	now Panther Trap is resolved;


Section 15 - CatsandDogs (by Stripes)

Table of GameEventIDs (continued)
Object	Name
CatsandDogs	"CatsandDogs"

CatsandDogs is a situation.
The sarea of CatsandDogs is "Outside".

when play begins:
	add CatsandDogs to BadSpots of FurryList;

Instead of resolving CatsandDogs:
	say "     As you travel through the city, you come across a pair of old apartment buildings side by side. The windows are open and the tenants are yelling at one another. One building appears to be populated entirely by cats and the other by dogs. They are growling, yowling and making rude gestures at one another. They jeer at one another and toss trash across the alley dividing their buildings. Focused on their mutual hatred, they don't notice you, but you do steer clear, certain that you'd not be able to fight off the horde populating either building... or worse, end up as some sort of prize in a battle between them. You make note of the location and remind yourself to keep away, finding another path around this neighborhood.";
	now CatsandDogs is resolved;


Consolidated Outside Events ends here.
