Sunbathing Gator by Voidsnaps begins here.

a postimport rule:
	if Resolution of Proper Introductions is 1 or Resolution of Proper Introductions is 2:
		change up exit of Rocky Cliff to Lazaros's Camp;
		change down exit of Lazaros's Camp to Rocky Cliff;

Section 1 - First meeting

Table of GameEventIDs (continued)
Object	Name
Sunbathing Gator	"Sunbathing Gator"

Sunbathing Gator is a situation.
PrereqTime of Sunbathing Gator is "Day".
ResolveFunction of Sunbathing Gator is "[ResolveEvent Sunbathing Gator]".
The level of Sunbathing Gator is 5.
Sarea of Sunbathing Gator is "Beach".

to say ResolveEvent Sunbathing Gator:
	SunbathingGatorEvent;

to SunbathingGatorEvent:
	say "     As you trudge past the rocks, away from the bustling beach, you [if PlayerMet of Lazaros is false]nearly trip over a thick green tail[else]stumble upon the sunbathing gator in the same place you left him[end if]. Scrambling backward on the sand, you search for its owner, settling on a chubby male gator lying in the sand. [if PlayerMet of Lazaros is false]'My, my. What have we here? [else]Hullo there. Fancy meeting you again.' [end if] The crocodilian chuckles at your wary expression, scratching his smooth scales and stretching clawed toes. He's sitting with his legs spread, giving you an impressive view of a sweat-slickened cock and two heavy balls the size of goose eggs. 'Don't look so [if PlayerMet of Lazaros is false]terrified[else]surprised[end if], [if Player is male]boy[else if Player is female]girl[else]kiddo[end if]. [if PlayerMet of Lazaros is false]I'm not here ta hurtcha. I'm just catching some sun. [else]I'm here every day. Nothin' much to do these days. Not like I can flick on a TV.' [end if] [line break]";
	say "     [bold type]What do you want to do now?[roman type][line break]";
	LineBreak;
	let Sun_Gator_Initial_Choices be a list of text;
	add "Take a closer look at the alligator. His weighty assets are sure worth a second glance!" to Sun_Gator_Initial_Choices;
	add "You're interested in interacting with him, but you're a bit busy. You'll come back later." to Sun_Gator_Initial_Choices;
	add "Apologize and back away. Best to avoid this reptile." to Sun_Gator_Initial_Choices;
	let Sun_Gator_Initial_Choice be what the player chooses from Sun_Gator_Initial_Choices;
	if Sun_Gator_Initial_Choice is:
		-- "Take a closer look at the alligator. His weighty assets are sure worth a second glance!":
			say "     Apologizing, you start to stand, your gaze lingering on that soft, foreskin-hooded cock. It's not an uncommon sight in the city, but the way the green skin of his balls catches the light, and the spongy head's darker green glistening at its apex, providing a counterpoint to its cream-colored foreskin, sticks in your brain. You wouldn't mind worshipping something so delicious-looking! 'Heh. I see y'have good taste.' The gator catches you staring, reaching down to peel back his foreskin and show off that sweaty shaft. He's still soft, but his cock fills his massive paw without a problem, twitching like an awakening beast. 'If y'like, you can have a closer look. I could use a coat of sunscreen.' Holding out a bottle of tanning lotion he produces from a backpack at his side, he propositions you, presenting you with a choice.";
			say "[Sun_Gator_TouchChoice]";
		-- "You're interested in interacting with him, but you're a bit busy. You'll come back later.":
			say "     You'll see the alligator later. You make sure to tell him that you'd love to interact with him on a more personal level later, but you're a bit busy at the moment. He shrugs and nods his head, scratching his belly lazily. 'No problem, kid. I'm here all the time. Nothing better t'do.'";
		-- "Apologize and back away. Best to avoid this reptile.":
			say "     Apologizing as you regain your footing, you brush sand from your knees and shake your head. Though he hasn't asked you for anything, you're not interested in sweaty gator men and whatever they might ask you to do. Thankfully, the gator seems to understand, shrugging his shoulders and settling back in, unbothered by your blunt response. You leave before the silence between you becomes awkward.";
			now Resolution of Sunbathing Gator is 100; [no interest, avoiding]
			now Sunbathing Gator is resolved;

to say Sun_Gator_TouchChoice:
	say "     [bold type]Do you want to touch the gator?[roman type][line break]";
	LineBreak;
	let Sun_Gator_Choices be a list of text;
	add "Rub the gator down with suntan lotion." to Sun_Gator_Choices;
	add "Give in to your lust. Suck his cock." to Sun_Gator_Choices;
	add "You only wanted a glance, nothing more. Touching him would be a bit much." to Sun_Gator_Choices;
	let Sun_Gator_Choice be what the player chooses from Sun_Gator_Choices;
	if Sun_Gator_Choice is:
		-- "Rub the gator down with suntan lotion.":
			say "     Taking the bottle from the gator with shaking hands, you look over that chubby, but muscular body, contemplating your approach. A dollop in your hand doesn't seem like enough, so you squirt long lines over that squishy belly and chest, swallowing hard as you set aside the empty bottle and start spreading it over soft scales, biting your lip as your fingers sink in. Fuck, the gator's so soft! You feel like you're rubbing lotion into a waterbed. 'Don't be shy, [if Player is male]boy[else if Player is female]girl[else]kiddo[end if]. Dig those fingers in...' The man sighs, relaxing into your fingers. It seems you're doing [Italic Type]something [Roman Type]right, judging by that growing spire of pure masculinity threatening to slap your face and spitting a small river of pre down the gator's shaft.";
			say "     Barely resisting the urge to seize that beautiful cock, you dutifully coat every inch of the gator's chest and stomach with lotion. Spending extra time on the dark green nipples peeking at the apex of firm but yielding pecs and watching that mammoth cock dance in delight, you decide that giving it some attention can't hurt, giving the gator's legs a cursory once-over with your creamy hands before settling between slightly spread legs. Rolling your hands over that river of pre, you smear it, along with what's left of the lotion, over the gator's colossal shaft, your thighs rubbing together as you stroke. Thoughts of taking its length fill your head, but you're sure it would break you, and you don't want to rob yourself of the heated musk rolling off of its surface, enhanced by the precum trickling from its head. You lean in, breathing in the mixture of coconut-scented lotion and pure masculinity, stroking faster and closing your eyes, basking in the heat, pouring off it with every pulse of that fat cumvein.";
			WaitLineBreak;
			say "     A grunt heralds the gator's orgasm, painting your face with a wet splurt of seed, and you moan, opening your mouth to take the next on your tongue, letting him mark you with gooey satisfaction as your hands slide up and down his bucking cock, milking every drop. It seems like an eternity before the flow slows to a thin dribble, and you have to wipe your face on your arm to blink your glued-shut eyes open, but you don't regret a thing, contemplating his sagging cock as if hoping it'll return to hardness. 'Fuck, [if Player is male]boy[else if Player is female]girl[else]kiddo[end if]. You know how to handle a cock. Come back any time, and I'll let you baste yourself again. I might even bring enough lotion for you to coat my ass. See what those talented hands can do when they slip under my tail.' The gator's voice has a pleased, tired quality to it when he thanks you for his service, and before you finish cleaning yourself up, he's napping in the sun, soaking up the rays and wallowing in the puddle of cum beneath his balls. Licking stray cum from your fingers, you leave the gator to sleep off his orgasm, [if PlayerMet of Lazaros is false]making a mental note of his sunbathing spot [else] reminding yourself to return later[end if]. You don't think you'll be able to go long without another bout with that scaly cock.";
			NPCSexAftermath Lazaros receives "Stroking" from Player;
			now Resolution of Sunbathing Gator is 2; [Player creamed him]
		-- "Give in to your lust. Suck his cock.":
			say "     Fuck the lotion! You know what you want to do, and it doesn't involve slathering the scaly man with anything but your spit! Pushing aside his hand, you kneel, burying your face in emerald balls and drawing deep breaths of the gator's sweaty musk as if sampling a fine wine. Thankfully, he doesn't move to stop you, and you heft those slick orbs in both hands, burying your face and rolling your tongue over them, tasting their salty flavor. 'Greedy thing. Alright, make sure you clean up after yourself. Y'ever tried to clean cum from under scales?' Releasing his cock, the gator lets it settle over your face, smothering you in his scent. Every inch of it pulses with his heartbeat, and the heat pouring from it is so intense that you feel like it might sear you.";
			say "     Eager to get started, you follow the curve of the half-hard cock's shaft, sliding your tongue over the cream-colored cock until you reach the glistening emerald at its tip, opening your mouth to seal it between your lips. The sensation of a growing cock drags a moan from your lips, and you debate trying to take its length into your throat, but the head brings a dull ache to your jaw, and by the time it's finished growing, it's so fat that you can barely fit both hands around it. With no choice but to suckle at the tip, you lavish long, wet licks across it, rolling the foreskin up and down that perfect length as it twitches and spits arousal onto your tongue, filling your mouth with the heady taste of musk and pre. It's almost a religious experience, and you moan gently against that perfect cock, closing your eyes and focusing on the pulse of salty flesh against your mouth. Have you died and gone to heaven?";
			WaitLineBreak;
			say "     The gator's breathing grows ragged the longer you suckle, and his pre grows so copious that you can't drink it all, slickening your stroking as the remainder drools down to coat every inch of that glorious monster. Without warning, you feel a strong jet blast your throat open, sending twin jets of musky goo from your nostrils as you try to swallow every bit. You lose the battle against the rising tide, flopping backward and taking the last blasts across your chest and marking yourself with the alligator's cum, watching in awe as he fountains three more times, coating his heaving stomach in trails of cream. Remembering the gator's quid pro quo, you immediately capture that drooling tip, slurping the last of his seed and continuing along his shaft, cleaning with long licks and swallowing every drop until his scales show no signs of your fun, clean but soaked in your saliva.";
			say "     'Fuck yeah, [if Player is male]boy[else if Player is female]girl[else]kiddo[end if]. You know how to treat a man. You should see me again if you want another drink. I'll let you suck my cock as often as you like.' Licking his lips and settling back, he strokes his spent cock idly, his eyes drifting closed and a snaggle-toothed, serene smile across his maw. Licking stray cum from your fingers, you leave the gator to sleep off his orgasm, [if PlayerMet of Lazaros is false]making a mental note of his sunbathing spot[else]reminding yourself to return later[end if]. You don't think you'll be able to go long without another bout with that scaly cock.";
			NPCSexAftermath Player receives "OralCock" from Lazaros;
			now Resolution of Sunbathing Gator is 1; [Player sucked him off]
		-- "You only wanted a glance, nothing more. Touching him would be a bit much.":
			say "     After a quick glance at the alligator, you shake your head. You're not interested in exploring his body, and you'd prefer not to spend any longer in his company. Hopefully he understands. The gator only shrugs when you speak, settling back on the sand and cocking his head to the side in a pointed motion, shooing you away. [italic type]You doubt you'll run into him again, and even if you do, he won't want to interact with you. [roman type][line break]";
			now Resolution of Sunbathing Gator is 100; [no interest, avoiding]
	now Sunbathing Gator is resolved;

Section 2 - Proper Introduction

Table of GameEventIDs (continued)
Object	Name
Proper Introductions	"Proper Introductions"

Proper Introductions is a situation.
PrereqTime of Proper Introductions is "Day".
Prereq1 of Proper Introductions is Sunbathing Gator.
Prereq1Resolution of Proper Introductions is { 0, 1, 2 }.
ResolveFunction of Proper Introductions is "[ResolveEvent Proper Introductions]".
The level of Proper Introductions is 5.
Sarea of Proper Introductions is "Beach".

to say ResolveEvent Proper Introductions:
	say "[ProperIntroductions]";

to say ProperIntroductions:
	say "     'Hey!' As you stretch your legs, looking out over the ocean, you hear a familiar voice calling from a few feet away. Turning to meet its owner, you see the gator [if Resolution of Sunbathing Gator is 2]that you jerked off [else]that you sucked off [end if]smiling a toothy grin and waving. He's still nude, and his scales glisten with oil this time, catching the light. His color looks brighter than the last time you saw him, but his belly's still as plump as before, jiggling as he moves. As you walk over, you can't help but look at the gator's manhood, feeling your cheeks flush as you remember how it felt in your hands. You wonder if the gator might be interested in another go, but your hopes are dashed by that cock's softness. Perhaps you'll bring it up? Realizing that you've drowned out the gator's voice by focusing too much on his cock, you shake your head and tear your eyes away from its glistening length and up to the gator's knowing grin. He knows you were staring.";
	say "     'Hey there!' The gator looks up at you from his sandy lounging spot, scratching his belly with a devil-may-care grin. 'Haven't seen you around in a while. I thought I'd scared you off. It was rude of me not to tell you my name, especially when you were [if Resolution of Sunbathing Gator is 1]so eager to hoover my cock[else]stroke my cock[end if].' Patting the sand next to him and politely shifting a few rocks out of the way, the gator yawns lazily. 'Name's Lazaros, but you can call me Laz.' You introduce yourself, politely ignoring the arousal from being so close to the scaly man. He smells so good that you can't stand it, like manliness and coconut oil, and you barely resist the urge to lean in for a long sniff. Instead, you try to make small talk, clenching your fingers in the sand and pointedly staring at the sun-drenched sea. 'You can drop the shyness, kiddo. If you want to do something else, say the word.' Winking, Laz ruffles your hair with one colossal scaly paw. 'When I got this second chance, I told myself I won't deny the urge to take anything I want. It hasn't steered me wrong yet.' Stretching out, he kicks the sand by his feet, his legs spreading and his hands going behind his head. He looks surprisingly peaceful despite the state of the world, and you can't help but wonder what he was like before.";
	WaitLineBreak;
	say "     Sliding in closer to Lazaros's bulky body, you indulge yourself, resting your head against his chest and running your hands over chubby muscles, squeezing his pecs and playing with their dark green nipples. His scales are strangely soft and smooth, and there's a bit of jiggle to make him a comfortable pillow. 'Mmm. Damn, kid. Just went right for it- Can't say I blame ya.' Sighing and letting you explore, Laz allows your hands to roam, his cock showing its appreciation as it fills out and bounces like an eager puppy, dribbling onto his stomach. A contemplative look crosses his face as his eyes drift half-closed, and he seems to come to a decision. 'Do you mind, uh-' Trailing off as your fingers touch his cock, Lazaros bucks his hips, then seems to regain his composure, his tongue flicking across his drooling lips. 'Normally I wouldn't mind doin' this in public, but I don't want to clean sand off my junk again. Cum's like glue. Mind meeting me at my place, instead? I'll give you something to eat after we've done the deed.'";
	say "     Stopping your slow stroking, you gulp and nod, watching Lazaros's delectable cock retreat with defiant throbs. It takes some effort, and you can see him clenching his muscles to let himself go soft, even though his denied cock dribbles in protest. Eventually, it's returned to a half-hard sausage, and he stands, offering you a hand. 'Thanks. I'll head home. No pressure. Come over tonight. I'll be waiting.' Surprising you with his tenderness after you've just met, the gator leans in, kissing your lips and cupping your face in his hands. His arms enfold you and drag you against his scaly body, and the world disappears in a blur of scaly warmth as he hugs you tight, only letting you go once your vision darkens from lack of air. Rubbing the back of his head and looking away from your surprised expression, he grins again. 'Sorry if that's not what you're into. I'm not good at keeping things casual. Figured I should get that out of the way before I catch feelings.'";
	say "     Before you can respond, Laz presses a piece of paper into your hand and walks away, leaving a trail of wet sand from his still-dripping cock in his wake. Stupified by his forwardness, you unfurl the note, finding a map to Lazaros's place. When did he have time to write this? Has he carried it with him as he waited for you? That's sweet. Quickly, you memorize the route, then tuck the paper away for safe keeping. [bold type]It seems Lazaros lives above the Rocky Cliffs. [roman type][line break]";
	change up exit of Rocky Cliff to Lazaros's Camp;
	change down exit of Lazaros's Camp to Rocky Cliff;
	now Proper Introductions is Resolved;

Section 3 - NPC Declaration and Location

Table of GameCharacterIDs (continued)
object	name
Lazaros	"Lazaros"

Lazaros is a man.
Lazaros is in Lazaros's Camp.
ScaleValue of Lazaros is 3. [human sized]
Body Weight of Lazaros is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lazaros is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lazaros is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lazaros is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lazaros is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lazaros is 5. [length in inches]
Breast Size of Lazaros is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lazaros is 2. [count of nipples]
Asshole Depth of Lazaros is 9. [inches deep for anal fucking]
Asshole Tightness of Lazaros is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lazaros is 1. [number of cocks]
Cock Girth of Lazaros is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lazaros is 14. [length in inches]
Ball Count of Lazaros is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lazaros is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Lazaros is 0. [number of cunts]
Cunt Depth of Lazaros is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lazaros is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Lazaros is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lazaros is false.
PlayerRomanced of Lazaros is false.
PlayerFriended of Lazaros is false.
PlayerControlled of Lazaros is false.
PlayerFucked of Lazaros is false.
OralVirgin of Lazaros is false.
Virgin of Lazaros is false.
AnalVirgin of Lazaros is false.
PenileVirgin of Lazaros is false.
SexuallyExperienced of Lazaros is true.
TwistedCapacity of Lazaros is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lazaros is false. [steriles can't knock people up]
MainInfection of Lazaros is "Sewer Gator".
Description of Lazaros is "[LazarosDesc]".
Conversation of Lazaros is { "<This is nothing but a placeholder!>" }.
The scent of Lazaros is "[LazarosScent]".

to say LazarosScent:
	say "He smells like sweat and musk.";

to say LazarosDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Lazaros] <- DEBUG[line break]";
	say "...";

Table of GameRoomIDs (continued)
Object	Name
Lazaros's Camp	"Lazaros's Camp"

Lazaros's Camp is a room.
Lazaros's Camp is sleepsafe.
Description of Lazaros's Camp is "[LazarosCampDesc]".

instead of sniffing Lazaros's Camp:
	say "     The comforting scent of male gator permeates the camp, with an undertone of the tropical-scented lotions the gator wears.";

to say LazarosCampDesc:
	say "     Above the rocky cliffs sits Lazaros's camp in a small clearing flanked by trees. It's humble, but looks quite cozy, consisting of a fire pit surrounded by stones, and a weathered tent, through which you can see a pile of sleeping bags arranged into bedding. [if Lazaros is in Lazaros's Camp]Lazaros sits nude in front of a roaring blaze, tending to a bubbling pot of something that smells delicious. His scales look shiny in the flickering firelight, and your eyes can't help but admire his masculine form[else]The camp sits empty. Looks like Lazaros is probably sunbathing at the beach today[end if].";

Section 4 - First Time At The Camp

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Away From It All"	Away From It All	"[EventConditions_Away From It All]"	Lazaros's Camp	2500	0	100

to say EventConditions_Away From It All:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Away From It All	"Away From It All"

Away From It All is a situation.
Prereq1 of Away From It All is Proper Introductions.
ResolveFunction of Away From It All is "[ResolveEvent Away From It All]".
Sarea of Away From It All is "Nowhere".

to say ResolveEvent Away From It All:
	say "     When you finish the relatively easy climb to where Lazaros's map leads you, you stumble upon an idyllic camping setup. A fire pit sits a safe distance from a large tent fit for even the bulkiest mutant, and a quick peek reveals half a dozen sleeping bags arranged into a sort of comfy nest. There's no mistaking who the place belongs to: you can smell Lazaros's signature coconut musk all over the camp. 'You came.' A familiar voice greets you, and a toothy grin distracts you from a scaly physique covered in dripping water. 'I thought you'd be a while longer, so sorry that I don't already have dinner going. You like fish?' The gator bends down, giving you an eyeful of dangling balls and a green hole between jiggly cheeks, and tends to the fire, hefting a stick with several speared, freshly gutted fish lining its length and setting them over the blaze. You assure Lazaros that you don't mind, even as you stare at his assets, swallowing the drool that comes to your mouth as you remember playing with those big balls. Nonchalantly, you broach the subject of fooling around while you wait for your dinner to cook. After all, you weren't satisfied with where you left things at your last meeting.";
	say "     Lazaros chuckles, adjusting the sizzling fish to be further away from the flame, turning his head to the side, then facing you, returning to his full height. His cock has plumped at the mention of sex, and he places his clawed fingers on his hips, letting you watch it throb to life. 'I suppose I did promise. Not like it's much of an imposition.' Pulling aside the tent's flap, Lazaros makes his way inside, flopping on his back and crooking a finger, his gloriously sized manhood on full display. 'Come here, then. Let's pick up where we left off.' Scrambling to join him, you step into the tent, shedding your gear until you're as nude as the gator before you. The possibilities dance in front of your eyes, and as you straddle Lazaros and press your lips to his, your hands firmly planted on soft, malleable pecs, you try to figure out what you want.";
	LineBreak;
	say "     While your focus until now has mostly been on Lazaros's Manhood, you're sure he wouldn't mind mixing things up. [bold type]What do you want to do with him?[roman type][line break]";
	LineBreak;
	let Gator_Tent_Fuck_Choices be a list of text;
	add "Jerk him off!" to Gator_Tent_Fuck_Choices;
	add "Take his dick." to Gator_Tent_Fuck_Choices;
	if Player is male: [neuters go home!]
		add "Explore that gator butt." to Gator_Tent_Fuck_Choices;
	let Gator_Tent_Fuck_Choice be what the player chooses from Gator_Tent_Fuck_Choices;
	if Gator_Tent_Fuck_Choice is:
		-- "Jerk him off!":
			LineBreak;
			say "     You know what you want- to see Laz cum again. The easiest way to get to that point seems to be using your hands, so you reluctantly break your kiss, licking your lips free of the slightly salty taste of the gator's affection. Kissing your way lower, you work your way down his body until you can feel the heat of his cock against your cheek, then press a gentle kiss on its crown, taking hold of the thick shaft with both hands and giving it a slow stroke. 'Fuck. How does that feel so good?' Laz groans as you work his shaft, his cockhead peeking from his foreskin with each downward stroke. His legs spread further to give you room to work, and he closes his eyes, his tongue hanging from the side of his sharp-toothed maw. It seems he's giving up complete control.";
			say "      Unwilling to waste this chance, you lavish care on that heated shaft, delighting in the sloppy pulse that slickens your fingers and fills the tent with wet noises and musky odors. With your face just inches from that drooling cockhead, you bask in the heat pouring from green skin, speeding your fingers until they blur. There's no point in taking things slow. You want to make him cum! 'Grrah.' Growling deep in his throat, Lazaros fucks your hands, losing any trace of inhibition for more of your touch. His tail sweeps from side to side, and his balls churn, drawing up against the base of his shaft. Finally, his cumvein bloats with the first string of seed, and he relaxes, weakly pumping his hips as an incoherent, pleasured sound emanates from his throat.";
			WaitLineBreak;
			say "     The first pulse hits the ceiling, but the rest are more of an ooze than an eruption, flinging themselves onto his scales and coating his chest, stomach, and balls in a heavy coat of gator cream. His balls are impressively productive, and before he's slowed to a dribble, your hands are dyed white with cum, along with most of his body. Sated, the gator leans back against his pillows and stares down at you affectionately, licking his lips free of a few shots that painted his face. 'Mmm. Could get used to that.' Lazaros says, stretching lazily. Grabbing a nearby rag, likely for this exact purpose, he swipes it over his scales, cleaning most of the mess but leaving the wet shine of your fun on his scales. ";
		-- "Take his dick.":
			LineBreak;
			if player is female:
				say "     You know what you want- To ride Laz's cock. Straddling his hips as best you can, you take his dick in both hands and nuzzle it up against your cunt, biting your lip as his piss-slit kisses your clit, then belches pre against your hole, painting it with his virile juices. You can't wait any longer. With a soft groan, you spread your legs wide, piercing your sex with that mammoth member and gritting your teeth as you feel it stretch you open.";
				if player is twistcapped:
					say "     You take every inch of that fat cock in one thrust, stretching your wet pussy around that fat shaft, and steady yourself as you feel heavy balls slap against your ass cheeks. Slowly, you fuck yourself on that big gator cock, closing your eyes and focusing on the intense sensation of Laz's shaft drooling and twitching within your inner walls. You're proud of yourself for taking every inch, and when you look down, you can see the outline of the gator's cock in your stomach. Heavy paws move to rest on your hips, aiding your efforts, and before long, you don't have to move anymore, shivering as Lazaros bounces you on his cock, his heavy balls tapping against your ass as he grinds against your womb. You feel like a fleshlight in the best possible way, and when Lazaros speaks under his breath about how good your pussy is, you feel like you'll cum right then, bracing yourself on his chest and clamping your inner muscles.";
					WaitLineBreak;
					say "     Shortly before you cream his shaft, you feel Lazaros pump his hips upward, his balls pressing against your ass as he pumps your already over-stuffed pussy and kisses his tip against your cervix. His dick HEAVES, and as you open your eyes, you see him lean his head back, the expression on his slack jaw sending a shiver through your body. There's something so hot about making a big guy like him lose control, and the sensation of being filled with heavy pumps of gooey gator doesn't hurt, made even better by the fact he's balls-deep inside you. The sensation of overflowing gator seed sets you off, and you clamp your thighs, whimpering needily as your body coils in orgasm. Every pulse of Lazaros's manhood swells your stomach and prolongs your finish, and you can barely feel your legs by the time his cock softens enough to flop free of your lower lips.";
				else:
					say "     You can only fit the first few inches of Lazaros's breeding tool, but you don't mind. That's enough to stretch your pussy and set your lower lips drooling. Slowly, you fuck yourself on that big gator cock, closing your eyes and focusing on the intense sensation of his shaft drooling and twitching within your inner walls. Heavy paws move to rest on your hips, aiding your efforts, and before long, you don't have to move anymore, shivering as Lazaros bounces you on his cock, his heavy balls tapping against your ass. You feel like a fleshlight in the best possible way, and when Lazaros speaks under his breath about how good your pussy is, you feel like you'll cum right then, bracing yourself on his chest and clamping your inner muscles.";
					WaitLineBreak;
					say "     Shortly before you cream his shaft, you feel Lazaros pump his hips upward, shoving a few more inches of his cock into your already over-stuffed pussy and kissing his tip against your cervix. His dick HEAVES, and as you open your eyes, you see him lean his head back, the expression on his slack jaw sending a shiver through your body. There's something so hot about making a big guy like him lose control, and the sensation of being filled with heavy pumps of gooey gator doesn't hurt. The sensation of overflowing gator seed sets you off, and you clamp your thighs, whimpering needily as your body coils in orgasm. Every pulse of Lazaros's manhood swells your stomach and prolongs your finish, and you can barely feel your legs by the time his cock softens enough to flop free of your lower lips.";
			else if player is male:
				say "     Guiding Lazaros's cock between your ass cheeks, you kiss his tip against your hole, biting your lower lip as you feel the intense heat of his peeking head. Slowly, you roll the drooling tip against your hole, wetting it with his pre, then applying gentle pressure until the head pops in. He's so big that it stings a little but you're so hard that it almost hurts, and you can't wait to feel him mashing your prostate.";
				if player is twistcapped:
					say "     You take every inch of that fat cock in one thrust, stretching your pre-slickened asshole around that fat shaft, and steady yourself as you feel heavy balls slap against your ass cheeks. Slowly, you fuck yourself on that big gator cock, closing your eyes and focusing on the intense sensation of Laz's shaft drooling and twitching within your backdoor. You're proud of yourself for taking every inch, and when you look down, you can see the outline of the gator's cock in your stomach, throbbing each time he hilts. Heavy paws move to rest on your hips, aiding your efforts, and before long, you don't have to move anymore, shivering as Lazaros bounces you on his cock, his heavy balls tapping against your ass as he grinds against your prostate, squishing it under his shaft's girth. You feel like a fleshlight in the best possible way, and when Lazaros speaks under his breath about how good your ass is, you feel like you'll cum right then, bracing yourself on his chest and clamping your inner muscles to give him a more intense fuck.";
					WaitLineBreak;
					say "     Shortly before you cream his stomach, you feel Lazaros pump his hips upward, his balls pressing against your perineum as he pumps your already over-stuffed ass and mashes your prostate with his bouncing cock. His dick HEAVES, and as you open your eyes, you see him lean his head back, the expression on his slack jaw sending a shiver through your body. There's something so hot about making a big guy like him lose control, and the sensation of being filled with heavy pumps of gooey gator doesn't hurt, made even better by the fact he's balls-deep inside you. The sensation of overflowing gator seed sets you off, and you clamp your thighs, whimpering needily as your body coils in orgasm. Every pulse of Lazaros's manhood swells your stomach and prolongs your finish, and you can barely feel your legs by the time his cock softens enough to flop free of your ruined backdoor.";
				else:
					say "     You can only fit the first few inches of Lazaros's breeding tool, but you don't mind. That's enough to stretch your ass and set your cock drooling. Slowly, you fuck yourself on that big gator cock, closing your eyes and focusing on the intense sensation of his shaft twitching within your inner walls. Heavy paws move to rest on your hips, aiding your efforts, and before long, you don't have to move anymore, shivering as Lazaros bounces you on his cock, his heavy balls tapping against your ass. You feel like a fleshlight in the best possible way, and when Lazaros speaks under his breath about how good your hole is, you feel like you'll cum right then, bracing yourself on his chest and clamping your inner muscles to give him an even bettter experience.";
					WaitLineBreak;
					say "     Shortly before you cream his shaft, you feel Lazaros pump his hips upward, shoving a few more inches of his cock into your already over-stuffed asshole and squishing your prostate with his thick head. His dick HEAVES, and as you open your eyes, you see him lean his head back, the expression on his slack jaw sending a shiver through your body. There's something so hot about making a big guy like him lose control, and the sensation of being filled with heavy pumps of gooey gator doesn't hurt. The sensation of overflowing gator seed sets you off, and you clamp your thighs, whimpering needily as your body coils in orgasm and your cock paints his chubby stomach. Every pulse of Lazaros's manhood swells your stomach and prolongs your finish, and you can barely feel your legs by the time his cock softens enough to flop free of your ruined backdoor.";
		-- "Explore that gator butt.":
			LineBreak;
			say "     That gator butt calls to you. Without asking for permission, you ease Lazaros's legs apart, lifting his balls until you can see his winking green hole. Surprisingly, he doesn't look all that tight, and as you line up your shaft, you slide in easily, aided only by pre. Lost in the intense sensation of hot gator ass, you hump away, biting your lower lip at the intense feeling of your balls slapping against the underside of his tail. His cock makes a great handhold, and as you angle your thrusts for his sweet spot, it pulses and spits, flinging pre and coating your stomach.";
			say "     With such a fat ass wobbling on either side of your cock, and the gator's intensely heated ass gripping you like wet silk, you know you won't last long, and you speed your thrusts. All thoughts have fled outside of the intense desire to breed, and you feel like you've been ruining that emerald hole for hours, despite knowing it's been mere minutes. 'That's it. Fuckin' cum inside.' Lazaros moans as you pound him, his tail swishing beneath you and tickling your taint, then curling upward to pierce your hole, seeking out your prostate. The tip thrusts in time with each of your hip movements, urging you to new heights, and before you know it, you're emptying your balls into the gator's depths, falling forward against his gushing cock as it joins you in orgasm.";
	say "     You spend some time snuggled up to the surprisingly affectionate gator, then have some grilled fish, sitting on his lap by the fire and enjoying the musky embrace of his smooth scales as you eat the savory treat. Lazaros is quiet but good company, and you can't think of a better use of your time, but soon enough, you have to leave. Gathering your gear, you kiss the scaly hunk on the cheek, promising you'll see him again. After all, who would pass up another chance to play with such a hot gator?";
	PlayerEat 10;
	now Away From It All is Resolved;

Section 5 - Lazaros Talk Menus And Fuck Menus

instead of conversing Lazaros:
	if Lazaros is in Lazaros's Camp:
		say "[Lazaros_Camp_Talk_Menu]";
	else:
		say "[Lazaros_Beach_Fuck_Menu]";

instead of fucking Lazaros:
	if Lazaros is in Lazaros's Camp:
		say "[Lazaros_Camp_Fuck_Menu]";
	else:
		say "[Lazaros_Beach_Fuck_Menu]";

An everyturn rule:
	if Away From It All is resolved:
		if daytimer is day: [sunbathing]
			move Lazaros to Public Beach;
		else if daytimer is night: [cooking at camp]
			move Lazaros to Lazaros's Camp;

to say Lazaros_Camp_Talk_Menu:
	say "     [bold type]Lazaros seems engrossed in cooking something, but you doubt he'll mind some company by the fire. What do you want to talk about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Lazaros who he was before he transformed";
	now sortorder entry is 1;
	now description entry is "Lazaros seems pretty laid back. Wouldn't it be nice to find out who he used to be";
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
				if (nam is "Ask Lazaros who he was before he transformed"):
					say "[LazarosPast]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gator, deciding not to bother him while he cooks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Lazaros_Camp_Fuck_Menu:
	say "     [bold type]Lazaros's always nude body calls to you. From where you're standing, you can see his dimly lit butt beneath his thick tail and his manhood tucked between his legs to keep it away from the bubbling food, giving you a view of everything he has to offer. You doubt he'd mind if you asked for some fun.[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grope him";
	now sortorder entry is 1;
	now description entry is "Grope the gator's butt";
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
				if (nam is "Grope him"):
					say "[GatorGrope]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gator, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Lazaros_Beach_Fuck_Menu:
	say "     [bold type]Lazaros is right where he usually is, laying on a towel in the nude with scales shining in the sun. As he notices you, he flashes you a grin and scoots over, offering you a place at his side as his cock twitches between his legs, happy to see you. If you wanted, you could fool around with him.[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jerk him off";
	now sortorder entry is 1;
	now description entry is "It could be fun to watch Lazaros cum all over himself again. Stroke his cock with some suntan lotion and feel him up in the process";
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
				if (nam is "Jerk him off"):
					say "[GatorJerk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Shaking your head, you wave to the gator and continue on your way. Maybe you'll fool around with him next time.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LazarosPast:
	say "     After thinking about whether it would be rude to ask something so personal, you sit next to the gator, leaning against his side, and ask him if he'd tell you about his past. Surely he didn't always live the way he does now. 'Does it matter?' Lazaros sighs, then shakes his head. 'No, I guess it does. I shouldn't be s'damn evasive.' He sets aside the stick he was using to poke at the fire, then drapes his arm around your shoulder. 'I guess if there's anyone I should tell, it should be you. Just give me a moment.' Lazaros's expression falls for the first time since you've met him, and he takes on a brooding look. 'Look, kiddo. My childhood sucked. My parents found out I was bisexual when I was 14 and kicked me out. I bounced from foster home to foster home, then ended up on the streets when I was 18. Homeless ever since. I didn't want to bring it up because of that bullshit response most people have when you mention people like me. Like we're not even human.'";
	LineBreak;
	say "     [bold type]Comfort the gator?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You don't see Lazaros any differently!";
	say "     ([link]N[as]n[end link]) - Stay quiet. Nothing you say would make a difference.";
	if player consents:
		say "     Interlacing your fingers through Laz's, you give them a gentle squeeze. Quietly, you explain that you don't care if he used to be homeless. As long as he was as sweet as he is now, you're sure you would have enjoyed his company just as much as you do now. You swear the gator blushes, though you can't tell beneath his scales. Stammering his words, he tries to continue, his free hand on the back of his head. 'A-Anyway. When all that crazy transformation stuff went down, and everyone started losing their shit, I was half-dead, curled up in an alleyway, and hadn't eaten for days. Dunno what changed, but I passed out and woke up like this, munching my way through most of the stock of some fast food chain.' Patting his stomach as if indicating it, the gator grins ruefully and shakes his head. 'Guess that's why I got this jelly belly. Would you believe that I used to be a string bean?'";
	else:
		say "     'Anyway. When all that crazy transformation stuff went down, and everyone started losing their shit, I was half-dead, curled up in an alleyway, and hadn't eaten for days. Dunno what changed, but I passed out and woke up like this, munching my way through most of the stock of some fast food chain.' Patting his stomach as if indicating it, the gator grins ruefully and shakes his head. 'Guess that's why I got this jelly belly. Would you believe that I used to be a string bean?'";
	say "     You listen to Lazaros talk about the early days of the infection and how he decided to get out of the city and set up camp here. It seems his size kept him from being accosted by most mutants, and he was able to raid a camping supply store before supplies got scarce. Ironically, it seems like the apocalypse has improved his life greatly, and by the time that you stand up to leave, you feel like you know the gator better. No wonder he's smiling all the time. It's like he's gotten a second chance at life!";

to say GatorGrope:
	say "     Sneaking up behind the cooking gator, you goose his ass, grabbing one wobbly butt cheek, feeling the fatty muscle beneath your fingertips. You wolf-whistle and spank his rump, commenting on how hot Lazaros looks, then step back and await his response. 'Damn straight. I'm proud of this ass. Always had a bubble butt.' Wiggling his green booty as you watch its wobble, the gator winks over his shoulder. 'I know how to use it too. Maybe I'll show you sometime.' You laugh at the silly reptile's antics and give that butt one last squeeze before you go, telling him you'll hold him to that promise.";

to say GatorJerk:
	say "     Grabbing Lazaros's bottle of lotion, you look over that chubby, but muscular body, contemplating your approach. A dollop in your hand doesn't seem like enough, so you squirt long lines over that squishy belly and chest, swallowing your drool as you set aside the empty bottle and start spreading it over soft scales, biting your lip as your fingers sink in. Fuck, the gator's so soft! You feel like you're rubbing lotion into a waterbed. 'Don't be shy, [if Player is male]boy[else if Player is female]girl[else]kiddo[end if]. Dig those fingers in...' The man sighs, relaxing into your fingers. It seems you're doing [Italic Type]something [Roman Type]right, judging by that growing spire of pure masculinity threatening to slap your face and spitting a small river of pre down the gator's shaft.";
	say "     Barely resisting the urge to seize that beautiful cock, you dutifully coat every inch of the gator's chest and stomach with lotion. Spending extra time on the dark green nipples peeking at the apex of firm but yielding pecs and watching that mammoth cock dance in delight, you decide that giving it some attention can't hurt, giving the gator's legs a cursory once-over with your creamy hands before settling between slightly spread legs. Rolling your hands over that river of pre, you smear it, along with what's left of the lotion, over the gator's colossal shaft, your thighs rubbing together as you stroke. Thoughts of taking its length fill your head, but you're sure it would break you, and you don't want to rob yourself of the heated musk rolling off of its surface, enhanced by the precum trickling from its head. You lean in, breathing in the mixture of coconut-scented lotion and pure masculinity, stroking faster and closing your eyes, basking in the heat pouring off it with every pulse of that fat cumvein.";
	WaitLineBreak;
	say "     A grunt heralds Lazaros's orgasm, painting your face with a wet splurt of seed, and you moan, opening your mouth to take the next on your tongue, letting him mark you with gooey satisfaction as your hands slide up and down his bucking cock, milking every drop. It seems like an eternity before the flow slows to a thin dribble, and you have to wipe your face on your arm to blink your glued-shut eyes open, but you don't regret a thing, contemplating his sagging cock as if hoping it'll return to hardness. 'Fuck, [if Player is male]boy[else if Player is female]girl[else]kiddo[end if]. You know how to handle a cock. Come see me again sometime. We can fool around back at my place.' The gator's voice has a pleased, tired quality to it when he thanks you for his service, and before you finish cleaning yourself up, he's napping in the sun, soaking up the rays and wallowing in the puddle of cum beneath his balls. Licking stray cum from your fingers, you leave the gator to sleep off his orgasm, reminding yourself to return later. You don't think you'll be able to go long without another bout with that scaly cock.";



Sunbathing Gator ends here.
