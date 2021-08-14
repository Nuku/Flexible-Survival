Version 1 of Seraphis by Vinickus begins here.
[Version 1 - new npc]

[ SeraphisRelationship                                       ]
[   0: not met                                               ]
[ 100: met, refused                                          ]

[ HP of Seraphis                                             ]
[   1-15: Seraphis is dominant one.                          ]
[   16-30: Seraphis is submissive one.                       ]
[   50-60: Seraphis was abandoned at some point, and broken by various other horny beasts in the plains. ]
[   50: Seraphis was left.]
[   61: Seraphis is pleased with the Player character, but mostly neutral towards them sexually.]
[   199: Seraphis event chain was abandoned.                 ]

[ Libido of Seraphis                                         ]
[   0: anal virgin                                           ]
[   1: Player fucked him                                     ]


Section 1 - Basic Setup

Table of GameCharacterIDs (continued)
object	name
Seraphis	"Seraphis"

Seraphis is a man.
ScaleValue of Seraphis is 4. [human sized]
Body Weight of Seraphis is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Seraphis is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Seraphis is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Seraphis is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Seraphis is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Seraphis is 4. [length in inches]
Breast Size of Seraphis is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Seraphis is 2. [count of nipples]
Asshole Depth of Seraphis is 24. [inches deep for anal fucking]
Asshole Tightness of Seraphis is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Seraphis is 1. [number of cocks]
Cock Girth of Seraphis is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Seraphis is 22. [length in inches]
Ball Count of Seraphis is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Seraphis is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Seraphis is 0. [number of cunts]
Cunt Depth of Seraphis is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Seraphis is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Seraphis is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Seraphis is false.
PlayerRomanced of Seraphis is false.
PlayerFriended of Seraphis is false.
PlayerControlled of Seraphis is false.
PlayerFucked of Seraphis is false.
OralVirgin of Seraphis is false.
Virgin of Seraphis is true.
AnalVirgin of Seraphis is true.
PenileVirgin of Seraphis is false.
SexuallyExperienced of Seraphis is true.
TwistedCapacity of Seraphis is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Seraphis is false. [steriles can't knock people up]
MainInfection of Seraphis is "Centaur Stallion".
Description of Seraphis is "[SeraphisDesc]".
Conversation of Seraphis is { "<Hello.>"}.
The scent of Seraphis is "     He radiates a strong, equine musk."
SeraphisRelationship is a number that varies.
SeraphisContent is a number that varies. [Determines if Seraphis will let the Player through the gate.]
MarkedSeraphisCum is a number that varies. [Determines if the Player has been covered/marked by Seraphis's potent seed.]
ConclaveKnowledge is a number that varies. [Determines if the Conclave knows of the Player.]
PlayerInformed is a number that varies. [Determines if the Player knows how Seraphis was dosed.]
[Seraphis is in Slaver Village Gate.]
SeraphisNeedy is a number that varies. [Helps differentiate the two dominant Seraphis scenes for this event.]

Section 2 - Seraphis Events

Table of GameEventIDs (continued)
Object	Name
Conflict within the Plains	"Conflict within the Plains"

Conflict within the Plains is a situation.
ResolveFunction of Conflict within the Plains is "[ResolveEvent Conflict within the Plains]". The level of Conflict within the Plains is 6.
Sarea of Conflict within the Plains is "Plains".
when play begins:
	add Conflict within the Plains to Badspots of MaleList;
	add Conflict within the Plains to Badspots of FurryList;

to say ResolveEvent Conflict Within the Plains:
	if HP of Seraphis is 0: [First interaction]
		say "     Moving through the plains rarely brings much of interest to your eyes, but as you don't have much else to do during your travel through the grasses, you let your eyes wander far and wide. Surprisingly, you notice a glint of light off to the side. As you focus your gaze that way, it repeats again and again in irregular intervals, drawing your attention to what might be reflecting [if daytimer is day]sun[else]moon[end if]light out here. The source definitely seems to be on the move, and after studying another half-dozen flashes, you manage to pin down the direction and speed of your curiosity. Your drive to learn what the object is outweighs any wariness within your mind, so you set out to close the distance.";
		say "     It takes a few minutes of running through the grass to begin making out any details at all, but eventually, you do manage to learn that it isn't one source of reflected light, but three, moving from right to left in the intermediate distance. After another minute or two more of running, you're finally close enough to make out what's before you: Three angry, gorilla-like beings in metallic armor that are chasing a centaur. Before your very eyes, they drive him into a field of crumbling ruins and pen him in against a wall, blocking any further flight. The situation looks rather risky, as the conflict of whoever they are might splash over on you.";
		say "     [bold type]It looks rather risky, maybe leaving and coming back another time would be for the best, but then you might miss something. Do you run or stay?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay and see what's happening.";
		say "     ([link]N[as]n[end link]) - Run, run, and keep running in whatever direction isn't this one.";
		if Player consents:
			LineBreak;
			say "     You move in closer to get a better look at the three armored, almost gorilla-looking individuals. Their armor covers them from head to toe, leaving no possible way to see a single bit of skin, hair, or any other identifying factor. All that you can go off of is their general shape and posture. They stand hunched over, their arms stretching down to their knees and obviously quite large, judging by the sheer diameter of the armor around them, and ending with fists curled up into metal balls. All the metal covering their bodies is also entirely based around straight plates and angled connections between them. The helmets they wear are square in the back half, and around where one would assume the ears are, they angle at forty-five degrees towards the middle of the entities['] faces. It all gives off an almost rugged science fiction appearance, and the all-metal look easily reflects any light directed at it, explaining the light glints.";
			say "     With these threatening forms before you, your muscles tense up, either from aggression towards these hostile figures, worry about yourself, or sheer outrage at how they're treating such a majestic centaur. His hair is short, buzz cuts running across the sides with a bit of it barely making it toward the top. Even with just seeing his back, his body is well-sculpted and hard to look away from, his equine half matching the human half with lithe, powerful muscles. It looks like he isn't wearing a thing over any part of his body, though that could be because he was stripped by the beasts crowding in on him. Even with him looking to be in danger, and being so dashing, should you get in trouble with him, or even for him? You don't know him, so why risk it? Still, he could be friendly, helpful even. Of course, you could always sneak closer and listen in, then go from there.";
			now PlayerInformed is 1; [Player knows how Seraphis was dosed.]
			LineBreak;
			say "     [bold type]What do you want to do?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Listen in to find out what's going on, and approach when it's safe.";
			say "     [link](2)[as]2[end link] - Try to approach the surrounded centaur quietly. Maybe you can catch the big guys unaware.";
			say "     [link](3)[as]3[end link] - Run like hell away from anything to do with whatever this is.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to listen in, [link]2[end link] to sneak up or [link]3[end link] to run.";
			if calcnumber is 1:
				LineBreak;
				say "     As you try to keep yourself unseen, you creep close enough to overhear voices, and lucky for you, all four figures seem completely consumed by their own presence. However, their tone carries quite a bit of disdain, and as you cue more into who is talking when, you notice that the centaur is uncharacteristically quiet. The only ones that seem to be speaking are the gorilla-like beings. Their grunt-filled voices ring out with significant bass, and much like their muscled forms, ooze with hostility and significant strength, doing little to make the situation feel safe.";
				say "     Once you get yourself close enough to clearly understand what the big humanoids are saying, you go completely prone, merely lifting your head to listen in. 'So you thought that you could take it away from us and use it for yourselves?!' one of the gorilla-beings says harshly. 'How dare you even think that you're worthy of anything on this level. Your petulance will be dealt with quite easily though, and will leave us no worse for it.' After that statement, you see the centaur getting animated, struggling against something that you can't quite make out. Hell, knowing the way that this city is now, he could be held down by magic for all you know.";
				WaitLineBreak;
				say "     Either way, whatever he's struggling against is rendered moot a moment later. One of the bipedal creatures walks over to him, grunting a few times before cupping his hand over the centaur's face, and at that moment, the half-equine man freezes. You find yourself unable to look away now, but with the centaur still held stock-still, the three armored figures begin to leave, the centaur still stuck in the same spot. 'As soon as the first creature uses him, it won't be long before he's just another mindless cumdump out here.' The male who just spoke then turns to another of his kind. 'Isn't that right, captain?' He just receives a nod as a response. The third then chimes in, 'Fitting punishment, considering.' As they move farther away, spurts of laughter can be heard, clearly unperturbed by their recent actions.";
				say "     After they get far enough away from the scene, you find the urge to investigate the centaur growing stronger. After a few seconds of watching the stock-still male, you glance back to the other side of him, watching as the three bulky figures disappear into the haze simmering off of the ground. Feeling relieved that they're finally gone, you head over to the unmoving centaur. As you approach, your nose flares, a scent in the air growing more powerful and spicy as you close in on the male. It seems to grow thicker as you get closer, your thoughts dashing away each time you reach for one, leaving you questioning even the most obvious details.";
				WaitLineBreak;
				say "     It's at the time the scent grows its strongest that you feel your mind grow a bit more resistant to it, and you realize what it is: pure, unadulterated sex, need, and musk. And it fills your mind with such... images and needs, driving you to an insane desire that you rarely feel. At that point, you can't resist examining the centaur and all his curved, muscled, chiseled features, but most of all, you can't take your eyes off of his curvy horse-like ass, or his long, hard, dripping and throbbing equine tool. 'I-I'm... I need. Please, let me. I need to fuck you. You need. You. Please, let me.' His meandering and stuttering lasts long enough for you to move right in front of him before anything of interest comes out of his mouth.";
				say "     'Let me sink my cock into your ass and leave it gaping!'  You're almost knocked over just by his sudden outburst alone, but as soon as you feel your wits return, you feel his hands grabbing and groping at you as he pokes and pinches at all sorts of places, both sensitive and near-to numb. A mix of pain and pleasure leaves you overwhelmed and stimulated in all sorts of ways. Even with how much of you is lost to his smell and groping, you still have the presence of mind, and the strength, to knock back the hands. Once they're out of the way you jump back, getting clear of the centaur's reach.";
				WaitLineBreak;
				say "     'Dammit. Get back here!' the centaur hoarsely yells. You know that's something you're definitely not going to do without a good reason. You try to question him for a decent idea as to what's going on, but you mostly get grunts and lusty comments. The only solace about this entire situation is the fact that his hooves seem firmly stuck where they're planted. Deciding that you need to investigate him more thoroughly, you move around his broad form, getting close and running your hands along his equine body, out of reach of his human torso.";
				say "     His hairs bristle against your skin, the fur strangely coarse in places, but soft and yielding in others. You find your hands trailing closer to the centaur's flank as you walk, taking no time before they find themselves grasping at the cushioned rear of the horse-man. 'I change... to slave, no...' You hear him give out what sounds like a protest, but his words are jumbled and messy. Though they make you hesitate, you still rub and squeeze at his ass, your digits roaming closer to the pucker in the middle of his rump. 'I'll be your... turned slave,' he grunts out, unable to form a coherent sentence.";
				if Player is not male: [Content relies on Player having a dick]
					say "     [SeraphisAvoid]";
				else: [Options for males]
					LineBreak;
					say "     [bold type]What do you do; give him control, continue what you're doing, or leave him?[roman type][line break]";
					say "     [link](1)[as]1[end link] - Give yourself to him, for now.";
					say "     [link](2)[as]2[end link] - Continue with his ass.";
					say "     [link](3)[as]3[end link] - Leave him to deal with the issue on his own.";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>[run paragraph on]";
						get a number;
						if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
							break;
						else:
							say "Invalid choice. Type [link]1[end link] to Give Control, [link]2[end link] to Take Control or [link]3[end link] to Abandon Him.";
					if calcnumber is 1:
						LineBreak;
						say "[DominantSeraphisFirst]";
					else if calcnumber is 2:
						LineBreak;
						say "[SubmissiveSeraphisFirst]";
					else if calcnumber is 3:
						LineBreak;
						say "     While he is hot and awfully tempting to bend over for, or even use, you decide that it's not worth the risks of dealing with someone so... unstable. At least, that is, for now.";
						now HP of Seraphis is 50;
						now Resolution of Conflict Within the Plains is 99; [player left (wrong gender state or refused to deal with), NPC lost]
						now Conflict Within the Plains is resolved;
			else if calcnumber is 2:
				LineBreak;
				say "     You question your decision each second you get closer to the four figures, the shorter distance giving you a far more stark view of the situation. The centaur is easily kept docile, by what, you don't know, and it's disconcerting to see such a powerful beast rendered so mute. And as you get closer, the three hulking beasts around the distressed centaur cock their heads, causing you to instinctively drop to the ground barely fifty feet from where they're standing. Your instincts guide you to drop behind a lone bush, instead of right in the open, so as they look at where you were standing just seconds before, they see nothing threatening. However, you feel a light breeze blowing past you and right towards the three hulking creatures.";
				say "     You instinctively take a few deep breaths, sniffing at whatever scent might be discernable from everything else. Unfortunately, there's not much hiding that you very much have a detectable scent, which is made even more clear when the three gorilla-like beings look directly at you. You can't tell much from their masks, but you're almost certain there's a sneer spreading across their faces at that moment. Surprisingly enough though, they turn back to the centaur and run their hands over him, whispering something into his ear before they wander off, one of them glaring in your direction frequently as they go.";
				now ConclaveKnowledge is 1; [The Conclave knows of the Player character]
				WaitLineBreak;
				say "     When you can only barely make out the three armored beings in the distance, you carefully move closer to the centaur, your eyes darting over his form, taking in every slight twitch or movement. 'Don't get too close, whoever you are.' You're a little startled, but his voice comes across as calm and well-mannered, or at least that's what he's attempting to get across. You can tell that he's quite nervous and just a little twitchy, which doesn't frankly surprise you. 'Don't touch my hide, or you'll get the oil on you too.' As you try to question him on what he's talking about, you catch movement from around his flank, his equine shaft pushing out and downward as the seconds go by. His fluids also drip out like a broken faucet, and it leaves much of his shaft shiny with pre.";
				say "     He hasn't moved since you laid eyes on him, his hooves entirely flat to the dirt under them. His leg muscles give off a twitch here and there, but his hooves seem unable to move from their immediate spot. However, he doesn't really have to move to influence the area around him, because saying that his musk is palpable is an understatement. It almost overwhelms you with need several times and makes it ever harder to understand anything he says, but you manage to catch him saying something about an oil, or liquid, referred to as Morphing Lust, and how it influences the person it gets on or in. 'Just... just stay... let me fuck you, and it'll be handled. You'll enjoy it, and I'll get my needs dealt with.' He turns to look at you. 'Plus, you look like you could take a load or three.'";
				if Player is not male: [Content relies on Player having a dick]
					say "     [SeraphisAvoid]";
				else: [Options for males]
					LineBreak;
					say "     [bold type]Do you give into his demands and help sate his need, wait it out to see if the effects wear off, or take advantage of the man's current state?[roman type][line break]";
					say "     [link](1)[as]1[end link] - Jump at the chance to sate this beast's sexual needs.";
					say "     [link](2)[as]2[end link] - Make sure to keep a healthy space between yourself and the lust mad centaur.";
					say "     [link](3)[as]3[end link] - Walk behind him and use the lustful beast for your own desires.";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>[run paragraph on]";
						get a number;
						if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
							break;
						else:
							say "Invalid choice. Type [link]1[end link] to give in to him, [link]2[end link] to stay back or [link]3[end link] to take control.";
					if calcnumber is 1:
						LineBreak;
						say "[DominantSeraphisFirst]";
						now SeraphisNeedy is 1;
					else if calcnumber is 2:
						LineBreak;
						say "     Considering that he can't really move from where he's standing, it's not hard to stay away from him, and after a few hours, it begins to look like as though he's coming down from his lust high. More intelligence is visible within his eyes with each passing second, and as the third or fourth hour passes, you can see his cock is deflating a little. However, he's still very evidently horny, but at least a little more in control than before. 'Huh. You're a rather... unique individual. Most would have jumped at the chance for a fuck, especially nowadays.'";
						say "     You tell him about what you've been through so far, leaving out anything too risky, and his face seems to lighten up a bit. 'Ah, so you avoided the brunt of the start. Lucky, ";
						if bodyname of Player is "Human":
							say "and you've even kept your own body.' His equine shaft jerks up a bit as he says that. ";
						else:
							say "well, for the most part, for you definitely lost your old body,' he remarks with some evident disappointment. ";
						say "'Either way, I need to get out of this, so if you'd mind standing back for a second...' The centaur pauses as he looks down, eyes closed the next second. Then, with a flick of a wrist, his eyes open again, his hooved feet lifting one after another.";
						WaitLineBreak;
						say "     'There we go. Now, for introductions,' he mentions as he turns to you. 'I'm Seraphis, and I must thank you for distracting those three before they could do anything to me that was too severe.' You acknowledge his thanks and give your own name. 'Well, thank you for trusting me with your name[if Player is not defaultnamed], [name of Player][end if]. Beyond that, I have to go deal with someone immediately. I do hope we meet again though. Goodbye,' he gracefully declares as his arm crosses his waist and his human half bows. He then moves away, getting into a gallop seconds later.";
						now SeraphisContent is 1;
						now HP of Seraphis is 61;
						now Resolution of Conflict Within the Plains is 2; [no sex, player got to know his name]
						now Conflict Within the Plains is resolved;
					else if calcnumber is 3:
						LineBreak;
						say "[SubmissiveSeraphisFirst]";
			else if calcnumber is 3:
				Linebreak;
				say "     You decide that whatever is going on here is too strange and dangerous for you, drawing you to get up and move away quickly and quietly.";
				now HP of Seraphis is 50;
				now Resolution of Conflict Within the Plains is 100; [player left, NPC lost]
				now Conflict Within the Plains is resolved;
		else:
			LineBreak;
			say "     You move away as hastily as you can manage without making much noise. Soon you're far, far away from anything immediately dangerous, relatively, at least.";
			now HP of Seraphis is 50;
			now Resolution of Conflict Within the Plains is 100; [player left, NPC lost]
			now Conflict Within the Plains is resolved;


Table of GameEventIDs (continued)
Object	Name
Plant Ruins Encounters	"Plant Ruins Encounters"

Plant Ruins Encounters is a situation.
ResolveFunction of Plant Ruins Encounters is "[ResolveEvent Plant Ruins Encounters]". The level of Plant Ruins Encounters is 6.
Plant Ruins Encounters is active.
Sarea of Plant Ruins Encounters is "Plains".

Prereq1 of Plant Ruins Encounters is Conflict Within the Plains.
The Prereq1Resolution of Plant Ruins Encounters is { 1, 2 }. [dom, neutral]

when play begins:
	add Plant Ruins Encounters to Badspots of MaleList;
	add Plant Ruins Encounters to Badspots of FurryList;

to say ResolveEvent Plant Ruins Encounters:
	[
	TODO: Check if this scene is only supposed to play for dom/sub/neutral Seraphis
	if HP of Seraphis is 1:
	]
	say "     With boredom setting in as you wander the plains, you spot some crumbling ruins in the distance: the stone construct slowly being reclaimed by green, red, and even purple hued vines and roots. Trees of similar colors surround the very same ruins, the limbs looking akin to arms or claws, reaching out to the stone itself. It's an image that reminds you of something from a horror movie, where a cult would gather and sacrifice a poor virgin to a tree god. Even with that image in mind though, it breaks up the monotony, drawing you to go in for a closer look. Once close enough though, the sounds of moaning and gasping stoke your curiosity ever further.";
	say "     When you close in on the crumbling building, the noises are replaced by gurgling and gagging sounds. Within seconds, a familiar centaur rushes out of a destroyed entryway, grinning at you. 'Ah, it's so nice to see you again!' Seraphis then dashes towards you, grabbing you up with both arms as he holds you tight to his muscled pecs. Almost as soon as you take your first breath of his musk, you feel a hand grabbing at your ass, squeezing it before several fingers start rubbing up and down your crack. 'Oh, you still have such a nice...form.' He declares with another groping motion.";
	WaitLineBreak;
	say "     With more than a little hesitation, the big male sets you back down. 'Whatever brings you here, I could definitely use a good brain to pick, and a nice servant to poke.' He then gives a wry smirk, before turning and walking back into the dilapidated building. The moans pick up again a few moments after Seraphis disappears from view, and with how horned up his musk has made you, it's hard to resist investigating further. So investigate you do, heading towards the crumpled doorway that the big beast just went through. Once at the door, and after a few seconds of hesitance, you peak around the edge, looking straight into what should be a stone interior.";
	say "     The inside of the building is entirely coated in vines of various hues and thickness. There's nothing about the vines that one could call ordinary though, as each one carries several polyps along them, every one evenly spaced from the last. The farther along the vine the polyps seem to be, the smaller they get. Within the last ten feet of each vine, before they reach their pointed ends, most polyps seem to be no bigger than a pebble. However, near the beginnings of each vine, there are polyps that easily look the size of an average adult human, but even that comparison makes you feel like your mind is underselling the true scale of them. These very same growths seem to vary from open to closed at random intervals, showing little or no patterns in that regard. The insides look very fleshy though, and each one looks to be quite comfortable to reside within, if you desired such a fate. You have doubts you'd ever be free again, but somehow that seems like a small price to pay.";
	WaitLineBreak;
	say "     Of all the various pods, growths, and vines that catch your attention, the movements from within most of the large, closed pods leave an even bigger impression. 'Come on in[if Player is not defaultnamed], [name of Player][end if].' You hear from the centaur.";
	say "     [bold type]This entire situation is questionable at best. If you leave now, you could avoid anything unsavory done to you, or by you, but this may be your only chance to see more. Do you take your first step in, or step away, and leave this and Seraphis behind?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go through the doorway, and to a possibly new view on life.";
	say "     ([link]N[as]n[end link]) - Leave this area and never turn back.";
	if Player consents:
		LineBreak;
		say "     Walking through the doorway, you see the vines are more unresolved than you originally thought they'd be. One vine in particular is moving at a breakneck pace: shoving itself in and out of the rear-end of a quite wriggly anubian jackal. The pale green, tentacle-like object never loses rhythm. The long, rapid strokes would even look robotic, if it wasn't for the slithery pulsing, or circular motions it uses to drag out ever more moans. The most notable reaction to your arrival comes from the jackal, in a form that could only be described as a pleading groan. 'This is the viper that got me into that trivial mess a bit ago. Apparently the power he sought, found him wanting.' Seraphis clops over to you, resting a hand on your shoulder before squeezing it. 'This hopefully shows what happens to those who plot against me.'";
		say "     Desire gleams in Seraphis' eyes as the groaning continues unabated. Looking back over at the anubian, you see his body quivering and jerking back and forth, his butt's muscles tensing as he tries to squeeze his cheeks closed. The male's back constantly flexes too, enunciating his lithe, athletic form even more. It's quite hard to pull your eyes away from his body, but Seraphis' fingers drop into your field of view before snapping. 'I didn't show you this so that you could be Induced.' Before you can ask what he means, the centaur saunters over to the restrained male, placing a hand on the jackal's ass as he stares back at you. 'He used to be such a dominant man, so eager to seed a tight hole. But his virility has a newfound purpose,' he says as he glances around the room. 'More's the pity.'";
		WaitLineBreak;
		say "     The plant's voracity grows with Seraphis' interactions with its prey. It's then that you notice what's been keeping the jackal from doing more than groaning. Right in-front of his face is an oval shaped flower that could easily be mistaken for a pitcher plant - if not for the tentacles surrounding the mouth-like pit in the center. In the middle of said pit, a stamen sticks out well past where the flower ends, and at least somewhat into the jackal's mouth. As you watch in fascination, you can see the man's muzzle being spread wider and wider around the stamen with each passing second.";
		say "     With a muted squelch, the muzzle of the jackal meets with the dark pit before it. Inch after inch of furry skin is then overtaken by the gobbling maw. As you notice the male's dark eyes, they dart to meet your own, glaring at you through a maelstrom of lustful and anxious emotion, before they too are covered by the undulating faux mouth. 'Don't worry about the traitor, he'll be kept very healthy. How would he fertilize the plant otherwise.' Seraphis then smirks at you, and as if on queue, the jackal releases a muffled moan as he coats assorted tentacles and roots in pure white virility.";
		WaitLineBreak;
		say "     'So I did mention picking your brain, and I figure I may as well take advantage of your... uniquely submissive perspective.' The centaur continues smirking, stepping back towards you. 'I have grown a bit bored of feeding everyone into a stasis-sack,' Seraphis says as he gestures around him, 'so should this little weasel be left out as a nice tasty bit of bait instead?'";
		say "     [bold type]Do you let the anubian stay revealed for anything coming into the building - to see and use before they too get captured by the plant - or should he simply become part of yet another squirming sack of moans and ecstasy?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let the jackal stay out in the open, free to be used as bait for anything in the area.";
		say "     ([link]N[as]n[end link]) - Give the jackal entirely to the plant - feeding his entire body into a stasis-sack, much like the plants other victims.";
		if Player consents:
			LineBreak;
			say "     With your decision passed on, the centaur gives off a moaning neigh, his sheath's throbbing drawing your eyes to his flank. 'That's what I wanted to hear. Now to give you a taste of what can truly be done around here.' Seraphis' body then starts to radiate a brilliant white light. It soon streaks with blue, cilia-like tendrils, as the male appears to shift into something else. Within seconds your eyes fill with a searing pain, your hands reflexively jerking up in-front of your face: eyelids clenching tight to block out the blinding spectacle.";
			say "     Once the pain and light ebb, you hear shaky moans. Out of reflex, you open your eyes with timid curiosity, slowly removing your hands from view as you glare at the sight before you. A lithe, bipedal equine that stands over seven feet, steps behind the jackal - his muscular cheeks supplanting your view of the canine's. 'Don't worry[if Player is not defaultnamed], [name of Player][end if], I'm still me,' the male declares. Your eyes then dart over his lower back as his glutes clench, hips moving back before lurching forward: drawing out a long sigh from the equine, and a muffled moan from the jackal. 'Can't say I've ever frotted with a vine before this,' Seraphis chuckles out.";
			WaitLineBreak;
			say "     Waving you over, the equine man gives you a lusty grin. Both his hands then disappear from view, followed by his hips lurching into gear: sounds of wet slaps, slurps, and open palm smacks proceeding after the vigorous thrusting begins.";
			say "     [bold type]Do you head over like ordered, or excuse yourself and let him continue with his lustful aspirations alone?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Move over to Seraphis['] side, like ordered.";
			say "     ([link]N[as]n[end link]) - Let Seraphis know you're leaving, then go back to exploring.";
			if Player consents:
				LineBreak;
				say "     As you move over to his side, Seraphis starts humping with ever more aggression and force. However, his entire demeanor stays several steps back from actual anger. It's all mesmerizing in the moment; the undulating equine body drawing your eyes, as the sounds and smells of sexual abandon draw in your mind. There's also the strange sight of watching a plant vine thrust in and out of the jackal's hole, mirroring the equine shaft right above it. You are drawn forward by the twin digits working in tandem, thinking you'll just get a bit closer, before you find yourself mere inches from the equine's groin. You are lost in the burning need to take in the virile musk, to get a closer look at that wet shaft plundering those depths, to taste it.";
				say "     Seraphis' large hand slaps the other male's ass, making you jump back. The edges of your vision darken as you feel like you're floating, even as you snap out of your reverie. Seraphis is all too happy to watch you jump, wearing an ever widening grin. His voice only comes to you when your eyes meet his, 'Be more careful about how close your face gets to one of these vines. I can only protect you so much.' You find yourself stumbling backwards once more, your mouth huffing as your lungs burn. 'I also tend to have a strong...' His mouth then releases grunts from the dexterous pleasure of the jackal's ass, the canine pushing his rear back into each thrust. 'Just watch what you breathe into those tiny lungs of yours.' Seraphis then slows his thrusts and gives you an almost sympathetic look, before turning back to the traitor and continuing his rough dominance.";
				WaitLineBreak;
				say "     As your eyes glue onto the rippling flesh and undulating hips, you gaze at the ridiculous amount of fluids dripping out of the brutalized hole. While some of it is tinged with yellow, the rest is pearlescent white. Between the sexual juices and plundering equine cock, you feel your mind numbing to anything other than pure arousal. 'Why don't you go on and leave me to it, little one? I have my hands full, and you're not going to stay yourself if you remain much longer.' Deciding not to question him, you turn to leave, only stopping to take in one last breath of lustful air.";
				now Resolution of Plant Ruins Encounters is 1; [player obeyed]
				now Plant Ruins Encounters is resolved;
			else:
				say "     Deciding to leave Seraphis to his lust, you let him know you're leaving. He simply nods at you and tells you, 'I'll let you leave this time, but next time we meet, I'll expect more from you. And so will the others.' He then hunches over his prey, pounding into the jackal with all the force of a truck. The noises alone make you realize you won't get anymore answers today, so you step out of the ruins and head back to exploring.";
				now Resolution of Plant Ruins Encounters is 90; [player left]
				now Plant Ruins Encounters is resolved;
		else:
			LineBreak;
			say "     Seraphis' eyes narrow at you. 'Fine enough, I suppose. It's better than this impudent traitor staying in my presence.' The male possessively strokes a finger across the jackal's back as he speaks. When that very same finger flicks up, several root-like tentacles emerge from the stony ground. Each one of the green appendages stroke over the anubian's body, tracing down his muscular arms and legs. Once they get to his wrists and ankles, they gently curl around the joints, tightening their hold as the more phallic tentacle continues to violate the man. Within moments, the wiggly arms lift the constricted limbs: almost lovingly slow in their new methodical movements. And as you watch the man ascend towards the ceiling of the old ruins, your eyes catch the opening of his new home.";
			say "     The giant pod peels open an outer layer, revealing a pearlescent white inner skin, before that too ripples and splits. The interior seems to almost salivate as its meal gets closer and closer, white globs pooling in every recess and cavity inside it. When the anubian male's arms brush the edges of the pod, every part of the plant undulates and ripples. With a wet tearing noise, several more wiggling appendages lurch from the fluid slick interior, whipping and lashing at the air. Soon they whip at the jackal's body, only slowing their lashing when he is forced against the back of the pod. Then their true desires come to fruition as they wrap around each of his legs and arms multiple times, binding all the way up and down each limb to the point that they coil around themselves.";
			WaitLineBreak;
			say "     Once the male's limbs are entirely encased, the cock-like tendril slides out of his hole, unleashing a flood of yellow tinged fluid. A loud slurp fills your ears as another thick tentacle eagerly uses the free lube, slipping right into the jackal's new permanent fuck-hole. This new pistoning appendage is directly attached to the innards of the pod, which makes it all the more interesting to watch: it's like some kind of perverted robotic arm on an assembly line. After just a few more muffled noises and ecstatic screeches, the pod slowly closes, and the bits wrapped around the jackal's head become impossible to distinguish from the rest of the pod's innards.";
			say "     'That will be his fate from here on out, or at least for the next decade or so. I guess we'll see how his demeanor is then. You, however, while a bit predictable, are quite a specimen to behold. You could do quite wonderous things in the future. Especially at my humble village.' Seraphis then glows once more, your eyes slamming shut as the light burns through the lids yet again. Your eyes just barely adjust in time to witness him galloping off after his little magic trick. Looking back up at the newly christened and squirming pod, your nose leads you back to the pool near the center of the ruins. It smells so alluring, like both the perfect lover, and the most delicious meal. You just barely manage to avoid temptation - this time - and turn to leave the ruins.";
			now Resolution of Plant Ruins Encounters is 91; [player fed the guy to the plant]
			now Plant Ruins Encounters is resolved;
	else:
		LineBreak;
		say "     Deciding it'd be best to leave and not come back, you turn around and head back in the direction you came from. You're surprisingly quick when your very being is at risk, and manage to easily avoid any attempts by the centaur to find you. He doesn't look like he wants to waste time either, and moves back to the ruins by the time you get just out of view, leaving you sure that you'll not encounter him again.";
		now Resolution of Plant Ruins Encounters is 100; [player refused, left]
		now Plant Ruins Encounters is resolved;


	[if HP of Seraphis is 16:
		"     ";
	if HP of Seraphis is 50:
		"     ";
	if HP of Seraphis is 61:
		"     ";]

Section 3 - Seraphis Location and Details

[if SeraphisContent is 0: [Seraphis isn't pleased enough to open the gate]]


[if SeraphisContent is 1: [Seraphis sees the Player as worthy of entrance]]


to say SeraphisDesc:
	if debugactive is 1:
		say "DEBUG -> SeraphisRelationship: [SeraphisRelationship], HP: [HP of Seraphis] <- DEBUG[line break]";
	say "     Seraphis is a muscled, 9 foot tall centaur that'd easily make any brave individual quake in their boots, especially if they were on his bad side. His body is chiseled like what you'd expect of an old Adonis renaissance sculpture, except with a strong, horse-like body from his waist down. Of course, much like a horse, he has a cock to be reckoned with, one that has to be at least a foot long, probably even larger whenever it's fully ready for action. However, at most times, his dick is either semi-flacid, like now, or at incredibly rare times, withdrawn into his sheathe.";


Section 4 - Talk

[Instead of conversing the Seraphis:]



Section 5 - Sex

to say DominantSeraphisFirst:
	say "     [if SeraphisNeedy is 1]His words seems to draw you to serve him, to help bring down his need.[else]You give in to his stuttered speaking and decide that it'd be best to help him first.[end if] The sheer sexual musk radiating off of him only makes it that much harder to resist your [if Player is dominant]typically repressed submissive urges[else if Player is submissive]powerful and needy submissive side[end if]. You can't help but walk to his side, stroking a hand through his fur as you lean down for a closer look at his dripping need. You have to question your decision as you do so though, as you're immediately hit with an even more powerful whiff of musk.";
	say "     Your cock lurches and releases a good dollop of pre as you take a deep breath, your body drawn to take in more air after feeling the sheer heat emitting from his crotch. Of course, none of that helps your already aching cock and needy body, making everything all the more sensitive. You can't resist any of your lust-addled mind's needs any longer. You reach forward, grasping the fluid-covered cock, giving it a few pumps as you get onto your hands and knees, working yourself right under the beast of a man. The musk right next to his genitals is close to the strongest smelling masculine scent that you've ever encountered, however it is a moot point by now, as your brain is already entirely consumed by the scent and lust.";
	WaitLineBreak;
	say "     Once you get close enough to his cock, you drag your tongue up his shaft, snaking your way along the bulging veins covering his cock, going from the low hanging, cum-packed orbs, to the flaring tip. When your tongue is nice and covered in the pre dribbling down his dick, you eagerly suck it back into your mouth, swishing the seed around and around, savoring every little taste you can get before swallowing it. Before long, you find your lips sucking and kissing at his tip, his urethra rewarding your dutiful attention with more of his musky nectar. You then happily sit down under him, spreading your legs and giving yourself easy, comfortable access to his sexual fluids, the top of your head brushing against the big male's belly as missed cum, and your saliva, drip down over your chest and groin.";
	say "     What little is left of your logical mind tells you to remove whatever clothing you have on and toss it all to the side. With that handled in just seconds, you quickly get back to your duty of lathering up the beautiful pole before you. It takes very little time for his cock to pulse, and as you work your lips around his flaring head, you know exactly what to expect. And so you prepare yourself for the oncoming deluge of cum; both hands grasping onto his cock, lips firmly locked around the tip. It is a good thing that you got a firm grip and a nice lip lock, because when the big equine dick gives one final, huge throb, you get a solid and hard first spurt of cum right to the back of the throat.";
	WaitLineBreak;
	say "     You barely contain a few coughs as you use your tongue to block off your throat and push the cum to the top of your mouth, letting your greedy maw fill with ever more musky fluids. With the warm liquid contained and the problem resolved, you relax your jaw, encouraging some of the rapidly dispersing cum to flow down your throat once more. With the flow of his seed controlled, it becomes a lot easier to take large gulps at once, but with how many spurts he gives you every few seconds, and with how much cum accompanies each spurt, it's hard to keep up. Eventually, the warm flow manages to slip out here and there, his flare barely keeping most of it contained within your mouth. After several minutes of leaking, a good amount of seed trails down your chin and over your torso, pooling around your cock, and then trickling between your legs and over your ass.";
	say "     The flood of cum eventually trickles down to a constant dribble, freeing your hand to run down your torso, gathering up the equine cum over you, and rub over your penis and testicles. With the cum that coats your ass and hand, you lightly rub over and prod at you hole, getting it a bit more stretched than before, and certainly more lubed. With your cheeks spread open, the cum that trickles down now goes right into your crack and helps your ever increasing zeal when it comes to lubing and stretching yourself.";
	WaitLineBreak;
	say "     Within a few minutes, you feel ready, and with your gut filled from one end and his urethra just giving a trickle of cum, you get up onto all fours and push your back against the centaur's warm, furred stomach. Planting your feet firmly on the ground, you grab onto one of the big male's front legs with one hand while reaching back with the other and grabbing his dick. It takes you a few tries, but you eventually get him angled towards your sloppy hole, the flared tip poking at your eager and relaxed anus. Your body as ready as it'll ever be and his cock still leaking onto your ass, you push back slowly, easing his tip a millimeter, then a centimeter, then an inch into your ass.";
	say "     Your methodical approach to stretching and getting him inside of you is abruptly ended by a loud whinny, and then a powerful thrust from the big hybrid's hips forces you forward. You barely brace yourself in time and are left with both of your hands pressed against the ground as his cock gets lodged a quarter-of-the-way inside of you. You have little desire or choice but to keep going, and you quickly reorient yourself with feet braced against the ground instead of up in the air, your hands clasping onto the forelegs of the equine again as well.";
	WaitLineBreak;
	say "     Fully ready, you push back, relaxing your hole as slurping sounds greet your ears, and the wet cock spears further into you, lubed by the sexual fluids constantly leaking out of it. Of course, more whinnies fill your ears when the flare scrapes your inner walls, the cock burying itself deeper within, and the hips of the big beast aid that with infrequent but forceful thrusts. Once past the medial ring, it doesn't take long to find your ass brushing against fur and the male's sheathe, your own testicles feeling a light touch from the heavy testicles of the far bigger male.";
	say "     You begin to pull yourself away, letting his cock slip from your hole inch by inch, but as you do, the centaur beats you to it, pulling back halfway before slamming forwards again, burying his dick all the way once more. Instinctively tightening your grip on the male's front legs, you keep yourself steady as wet slap after wet slap fills the area, slippery, slurping noises aiding in the orgasmic sound of sex. You find it hard not to enjoy the idea of being used by the powerful beast, and the musk makes any resistance impossible, so you stay braced, relaxing and tightening your anus at the right times to encourage the centaur even more.";
	WaitLineBreak;
	say "     Thrust upon thrust upon thrust, and he's still pounding you with no sign of stopping, even after what feels like hours of your ass being used. You do feel yourself approaching an edge though, and it quickly gets closer and closer as his flare rubs against your swelling prostate more with each second. Within a short period of time, you jerk and thrust and hump, trying to [if Player is knotted]knot something that isn't there [else]fuck something that isn't there [end if]while also trying to keep fucking yourself on the equine breeding rod. Before you even realize it, you're being filled with warmth, your own cum firing out while the rod within you pulses and expands.";
	say "     The flare digs into your inner walls as the superior male breeds your hole. Minutes go by, and your orgasm passes as you're constantly filled with so much seed that it goops at your entrance before falling down to the ground in loud splats. Most of it seems to cling to you though, caking your groin in white sexual fluids. When you finally feel the pressure ease and the warmth inside you stop growing, you hear a breathy, hushed voice say, 'Thank you for that.' You then see his hands appear and shortly thereafter, his hooves pick up off of the ground.";
	WaitLineBreak;
	say "     'I really needed the help there.' He gives a light chuckle before backing up, your body too drained to do more than stay upright, swiftly failing when his flare starts pulling at your anus. 'You'd be fun to train, but I need to go deal with someone first. And the name's Seraphis, by the way. However, you'll most likely not use that name much, if at all.' Seraphis then turns to you, walking over your form with his cock angled at your face. 'Lick me clean. None of my seed should go to waste.' You use what little energy you have left to do as your told, the musk minimizing your desire to go against anything he says. The salty fluids soon rush over your tongue as you lap up the cum, making sure to pay special attention to his medial ring and behind his flare. After a short period of this, he backs off. 'Good. Now I'll leave you to deal with yourself for now. I'm sure we'll meet again soon.' He gives a wry smile before turning away and moving into a gallop.";
	NPCSexAftermath Player receives "AssFuck" from Seraphis;
	now MarkedSeraphisCum is 1;
	now Resolution of Conflict within the Plains is 1; [Seraphis was Dominant in the first event]
	now Conflict within the Plains is resolved;
	now HP of Seraphis is 1;
	now SeraphisContent is 1;

to say SubmissiveSeraphisFirst:
	if anallevel < 2:
		say "     You open up your clothes and let your [cock of Player] genitals flop out, your eyes completely locked onto this beast's flank. The donut hole back here, plus the curvy rump around it, is hard to look away from. You know how good it's going to feel to sink your cock down to the root in it, all the while grinding your hips into him. You gather up as much spit as you can in your mouth, and when there's enough of it, you spit it onto his ass, using your cock to smear it around and into his hole. You then angle his flank down towards your hips.";
	else:
		say "     You open up your clothes and let your [cock of Player] genitals flop out, your eyes completely locked onto this beast's flank. The donut hole back here, plus the curvy rump around it, is hard to look away from. You know how good it's going to feel to sink your cock down to the root in it, all the while grinding your hips into him, but you can't resist getting a nice taste of that ass before anything else. Which is why you immediately, and a bit harshly, yank his tail out of the way. Your rough treatment earns you a nice sight of his donut and a quiet, whimpering neigh. With your sight now locked in on your goal, you drop to one knee, propping yourself up as you push your face between those sexy equine curves.";
		say "     Your nose is quickly met with a strong, masculine musk, and as you poke your tongue out, the taste of sweat and the very same musk that you smelled, greets you. With a near mad vigor, you run your tongue over every nook and cranny of his ass, gracing the hole ever so slightly at random intervals, keeping the centaur on edge the entire time. It doesn't take long for his hole to start winking, his excitement growing with each swipe of your tongue, each huffed breath over his ass. Whinny after whinny starts filling your ears, panting gasps and moans following each one, and as you finally move over his twitching hole, you dart your tongue straight into him.";
		WaitLineBreak;
		say "     With your tongue wiggling about in his depths, you sloppily thrust it in and out, swiping it around the edges of the inner walls. While you keep up your pleasuring of the beast, you can't help but reach out with your free hand to grip at his ass, rubbing and squeezing his furred flank. You smile to yourself at the sheer noises the centaur makes, giving into the satisfaction of twisting another to your whims. Just as you think about that, you hear huffed utterances, 'Please...pl-please. Fuck. Fuck me.' Your smile grows even more, glee filling you as you give one more thrust of your tongue and one last suck on his hole. With that, you pull back, angling his flank down towards your hips. With the centaur's strong back legs lowered, his hips are easy to get into the right position.";
	say "     The big male's flank is soon mere inches from your cock, and as you pull it closer to your tip, you can feel heat radiate off of his rear. That heat envelopes your crotch, driving your lusts further, and as you push your hips forward, you feel his saliva-slickened hole part for your [cock length of Player] breeding rod. As you sink inch after inch inside of him, sheathing your cock into his depths, you move your hand from his flank, resting it on your hip as you push into him. While you sink further in, the lust that filled you before doubles, no, triples as the donut hole tightens and loosens constantly. The hole is quite large, but it has more muscles than most any other hole you've been in, and the mad beast uses them with exceptional skill.";
	WaitLineBreak;
	say "     Even with how needy he is, you still feel exceptionally skilled muscle movements, twitches, and control. It all drives you closer to the edge even faster than if your sole goal was to get off, but this lustful half-beast still has a great deal more use to you. As you pump in and out of his quivering hole, you do everything you can to not think of the slick, suctioning hole quivering around your cock, or how it feels when you slam your hips into him, his raised anus pressing against your groin, or how it feels to be pistoning in and out of that warm, fleshy pit.";
	say "     It's all for naught though, and you find your balls tensing and rising with each second, your cock pulsing as you hit the edge and shoot right past it[if Player is knotted], shoving your knot straight into his ass[end if]. As you feel your seed pumping through your shaft, the ecstasy of orgasm rushes over your body, filling you with more savage desire as you [if Player is knotted]yank your knot out and shove it back in, continuing to pound him as you slip it in and out of [else]keep pounding in and out of [end if]the fleshy hole.";
	WaitLineBreak;
	say "     Your violent [if Player is knotted]knot-fucking [else]fucking [end if]picks up as your need slows, soon dropping as you eventually just press your hips firmly to his flank[if Player is knotted], popping your knot into him deeper than ever[end if]. Your body freezes, your head and back bending backwards, forcing you on your toes, in a silent howl as you release into the centaur. The only movement you give off is the occasional pulse rushing through your body, signaling your spurts of seed shooting into your newfound mount. With each spurt, the warmth of the half-equine's hole grows exponentially, giving your sensitive penis a newfound escalation of pleasure.";
	say "     As the pleasure tapers off, you lower your head, looking over the expanding and contracting back of the centaur. The pants slow as you stay buried within the male, his hole going lax around you, allowing bits of your semen to flow out around your softening shaft. As more trickles out and covers your crotch in bits of seed, you grip onto the man's hips with both hands, releasing his tail as you pull out[if Player is knotted], your extra-sensitive knot making you shiver as it pops out[end if]. You feel his muscles moving, his body trying to push back as you pull out, but you manage to hold him in place long enough to fully withdraw. Happy with how eager he is, you slap a hand against his flank, the centaur raising his ass back up to almost chest level.";
	WaitLineBreak;
	say "     You're about to congratulate him on how well he sated you, but he talks first, 'That was great... but I need to go deal with someone.' With a little irritation in your voice, you warn him about not having thought of your wants first, but decide to let him go. First, however, you request his name, and that he clean you up. 'My name is Seraphis, sir. And alright.' He then reaches both hands down, closing his eyes for a few seconds before lifting each hoof off of the ground. 'There,' he whispers, turning towards you. 'So you have a cloth?' You grin at him before grabbing his head and pulling it down towards you, roughly kissing him.";
	say "     After a solid minute of making out, you step back, pulling his head lower. You let his face grace your chest, stomach, and when he reaches your groin, you push him against it, smearing seed over his face as he does nothing. After a few seconds of grinding him into your crotch, he gets the hint, giving a trepid lick or two before getting into it, swiping his tongue over your whitened groin. He gathers up a nice bit of seed then swallows it, rinsing and repeating until he gets most of it off of you, and then he sucks your cock into his mouth. This elicits a firm moan from you as he suckles all of the loose sexual fluids off of you.";
	WaitLineBreak;
	say "     When you hear a few loud, content gulps, you thrust your hips forward and yank his face all the way to your crotch. [if Player is knotted]Your still partially engorged knot gives a bit of trouble while shoving your dick into him, but he opens his cheeks wider, and it pops right in easily enough[end if]. ";
	if WSlevel is 3:
		say "[if Player is knotted]With your knot plugging his face hole, you feel more than confident in filling him with far more fluids than he expected, and no doubt he'll be forced to take however much you deign to give. [else]With your cock plunged deep into his mouth and undoubtedly a bit down his throat, you feel quite assured in your next idea of asserting who's in control. [end if]So without any further delay, you relax your bladder, letting the warm liquid flow through your cock and into him.";
		say "     A look of surprise covers his face, but you can feel his throat reflexively swallowing, his body easily accepting his new place. Still carrying a confused and hesitant look, he sucks down every drop you give him, drinking greedily as you relax and let more of your piss fill him. It doesn't take long for your bladder to completely empty, or for him to drink it all down, and once you feel satisfied, you [if Player is knotted]pop your knot out of his mouth[else]pull your cock out of his mouth[end if], wiping the tip on his tongue for good measure.";
		WaitLineBreak;
	else:
		say "You then pull your hips back, thrusting forward a second later and hearing the smacking sound of your hips slamming against his face[if Player is knotted], and the slickening feeling of your knot popping back into his drooling mouth[end if]. Almost content with the dominating display, you grind into him, holding his head in place as you rub against his face[if Player is knotted], pushing your almost deflated knot deeper into his mouth[end if]. When you grow tired of using him, [if Player is knotted]you pop your knot out of his mouth[else]you pull out of his now sloppy mouth and step back[end if].";
	say "     You watch as he rises up to his full height, eyes glazed and body sluggish. When he seems to fully recover, he clears his throat and announces his intent, 'I must take care of that insolent fool.' However, he still looks to you, eyes questioning. You give him a single nod, and he gallops away. With nothing but dust remaining of his presence, you redress and tidy yourself up before leaving the area.";
	NPCSexAftermath Seraphis receives "AssFuck" from Player;
	NPCSexAftermath Seraphis receives "OralCock" from Player;
	now Resolution of Conflict within the Plains is 51; [Seraphis was Submissive in the first event]
	now Conflict Within the Plains is resolved;
	now HP of Seraphis is 16;
	now SeraphisContent is 1;

to say SeraphisAvoid:
	say "     For the time being, it seems he's a bit too transfixed to mess with. You have a sneaking suspicion that later on, he will be tailored more to your own needs. You also don't feel quite properly equipped for the current state of this man. Heading back to your travels with an odd sense of disappointment isn't easy, but you know you'll be able to partake in this man and his world eventually.";
	now Conflict Within the Plains is resolved;
	now Resolution of Conflict Within the Plains is 99; [player left (wrong gender state or refused to deal with), NPC lost]

Seraphis ends here.
