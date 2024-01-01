Rhidall by Voidsnaps begins here.

Section 1 - NPC declaration

Table of GameCharacterIDs (continued)
object	name
Rhidall	"Rhidall"

Rhidall is a man.
ScaleValue of Rhidall is 3. [human-sized]
Body Weight of Rhidall is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Rhidall is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Rhidall is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Rhidall is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Rhidall is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Rhidall is 5. [length in inches]
Breast Size of Rhidall is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Rhidall is 2. [count of nipples]
Asshole Depth of Rhidall is 7. [inches deep for anal fucking]
Asshole Tightness of Rhidall is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Rhidall is 1. [number of cocks]
Cock Girth of Rhidall is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Rhidall is 9. [length in inches]
Ball Count of Rhidall is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Rhidall is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Rhidall is 0. [number of cunts]
Cunt Depth of Rhidall is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Rhidall is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Rhidall is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Rhidall is false.
PlayerRomanced of Rhidall is false.
PlayerFriended of Rhidall is false.
PlayerControlled of Rhidall is false.
PlayerFucked of Rhidall is false.
OralVirgin of Rhidall is false.
Virgin of Rhidall is false.
AnalVirgin of Rhidall is false.
PenileVirgin of Rhidall is false.
SexuallyExperienced of Rhidall is true.
TwistedCapacity of Rhidall is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Rhidall is true. [steriles can't knock people up]
MainInfection of Rhidall is "Sand Man". [Always match the capitalization of the infection. Case sensitive.]
Description of Rhidall is "[RhidallDesc]".
Conversation of Rhidall is { "<This is nothing but a placeholder!>" }.
The scent of Rhidall is "[RhidallScent]".

to say RhidallDesc:
	say "<Placeholder. Character only exists in events.>";

to say RhidallScent:
	say "<Placeholder. Character only exists in events.>";

Section 2 - Philip Interactions

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Piggy Dreams"	Piggy Dreams	"[EventConditions_Piggy Dreams]"	large shed	2500	8	100

to say EventConditions_Piggy Dreams:
	if Piggy Dreams is not resolved and Philip is booked and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Piggy Dreams	"Piggy Dreams"

Piggy Dreams is a situation.
ResolveFunction of Piggy Dreams is "[ResolveEvent Piggy Dreams]".
Sarea of Piggy Dreams is "Nowhere".


to say ResolveEvent Piggy Dreams:
	say "     Something's changed since the last time you visited Philip. You can't quite put your finger on what exactly feels different as you open the door, but you resolve to ask Philip what it might be, opening your mouth to speak as you close the door behind you and face the familiar boar. The cloying stink of boar greets you, but Philip doesn't, and you gasp as you realize why. 'Mmm. So sweet. Are all of these for me? Don't mind if I do...' Laying spread out on the floor, the pig man licks his lips, visibly drooling as he lavishes attention on a heavy pair of balls dangling over his face with long laps that fill the space with the sound of his efforts. His eyes are closed when you catch a glimpse of them around his prize, and he appears to be deeply asleep despite his oral worship, breathing slowly and evenly.";
	say "     Your gaze follows the curve of those balls up to their owner, lingering on a respectably sized human cock, and meets a golden pair of eyes. 'Ah, a visitor. I wasn't aware that this greedy boy belonged to someone else.' Stroking Philip's cheek, the brazen molester sprinkles something sparkling from his spare hand to Philip's exposed face, lighting up the pig man's sleeping expression with a brief flash of something magical. 'There we go, piggy. Stay deep asleep for me. Eat all the ice cream you can handle.' Turning his attention back to you as Philip's nose snuffles at drool-colored balls and his desperate tongue licks every inch of them, the tanned man sizes you up. 'I suppose you've caught me. I'm Rhidall. A wandering dream connoisseur. I haven't had the pleasure of making your acquaintance.' Appearing to ignore the pig's slovenly sucking, Rhidall perches on his face as he leans forward, hand extended and cock flopping lewdly against the pig's fat chin, drooling a bead of pre to his slightly jiggling chest. 'I do hope you'll let me sample more of these delights. Hedonism is such fun.'";
	LineBreak;
	let PigOral_Choices be a list of text;
	add "Watch Rhidall play with the sleeping pig." to PigOral_Choices;
	if Player is male or Player is female:
		add "Let him have his way with Philip, but only if you can join in." to PigOral_Choices;
	add "Attempt to defend the pigman's honor!" to PigOral_Choices;
	let PigOral_Choice be what the player chooses from PigOral_Choices;
	if PigOral_Choice is:
		-- "Watch Rhidall play with the sleeping pig.":
			say "     Deciding that Philip looks unharmed and even happy with his predicament, you watch him make out with the intruder's cocktip, snorting pre and making a mess of himself; you make up your mind. You have to admit it looks like great fun, and since you doubt he'll remember this anyway, you may as well take advantage. Setting aside anything that might get in the way, you approach the golden intruder, asking him if Philip is enjoying himself as much as he appears to be. Rhidall's fingers stroke along your cheek as you play with his manhood, surprising you with a kiss on your forehead. 'I don't mind showing you, though I suppose you'll have to allow my dalliance.' The sandman guides that golden erection between Philip's lips with the aid of your steadying hand, sinking it into his unresisting maw until his spit-shined balls plap against the pig's wiggling nose in an insistent rhythm. 'Have a seat, and I'll let you partake in this beautiful banquet.'";
			say "     Seconds after you sit your bare ass on Philip's jiggling chest, you find yourself spirited away on a sparkling carpet of golden sand. A strange world fades into view around you, and you find yourself standing next to a peculiar sight. Oinking away and covered in a sticky mess, Philip wades through a whimsical field of ice cream, licking everything in sight and sending melted confections dripping down his naked body. Strangely enough, his dream self appears to have a raging erection, and he humps away as he eats, sinking his cock into marshmallows, chocolate, and everything else it can touch, filling the air with the wettest sounds. Rhidall wasn't lying- it's hedonism at its best- a mixture of gluttony and lust so intertwined that you're unsure which of the pig's needs are more urgent.";
			say "     A soft zap pulls you back to reality, away from that bouncing, cake-covered pig ass, only to find Rhidall thrusting away, fucking Philip's face to a frantic beat. Somehow, seeing the dream that accompanied Philip's wanton sucking and frantic licking made the sight even better. You watch Rhidall's body hurtling towards a well-earned orgasm, and without realizing it, you touch yourself, wondering what sort of delights the pig will feel when the sandman cums. Inevitably, Rhidall reaches his finish, withdrawing his cock and butting it against Philip's sloppy, desperate licks, spreading rope after rope of glittering seed over his maw until every breath sends strings of it flying from flared nostrils. Again and again, he creams Philip's snout, not stopping until he's so coated in cum that you doubt the pig could open his eyes if he wanted to, trapped in his gluttonous dream and desperate to swallow all of the sweet syrup.";
			say "     'Ahhh. That's it.' Rhidall sighs as he pulls away, cupping your cheek in one hand and sprinkling golden sand onto your face. Your eyelids drift closed as he continues to speak. 'Perhaps I'll return. I trust you'll continue to be a gracious host?' Without waiting for an answer, he melts away into sand, letting you softly fall to the floor, drifting off into a nap. When you awaken, Rhidall's nowhere to be seen, and Philip is snoozing away in his own mess, his cock sticking straight up and dripping with un-touched desire. You gather your things, leaving the boar to sleep off his dreams. Maybe you should keep a lookout for the sandman. It seems he's not done with the library...";
			increase lust of Rhidall by 1;
			NPCSexAftermath Philip receives "OralCock" from Rhidall;
		-- "Let him have his way with Philip, but only if you can join in.":
			say "     Deciding that Philip looks unharmed and even happy with his predicament, you watch him make out with the intruder's cocktip, snorting pre and making a mess of himself; you make up your mind. You have to admit it looks like great fun, and since you doubt he'll remember this anyway, you may as well take advantage. Setting aside anything that might get in the way, you approach the golden intruder, asking him if he'll let you join in, reaching for his cock, and stroking slippery pig saliva along its length, admiring its throbbing length. Rhidall's fingers stroke along your cheek as you play with his manhood, surprising you with a kiss on your forehead. 'I don't mind a duet, though I suppose you'll have to wait your turn.' The sandman guides that golden erection between Philip's lips with the aid of your steadying hand, sinking it into his unresisting maw until his spit-shined balls plap against the pig's wiggling nose. 'Have a seat, and I'll let you partake in this beautiful banquet.'";
			say "     Seconds after you sit your bare ass on Philip's jiggling chest, you find yourself spirited away on a sparkling carpet of golden sand. A strange world fades into view around you, and you find yourself standing next to a peculiar sight. Oinking away and covered in a sticky mess, Philip wades through a whimsical field of ice cream, licking everything in sight and sending melted confections dripping down his naked body. Strangely enough, his dream self appears to have a raging erection, and he humps away as he eats, sinking his cock into marshmallows, chocolate, and everything else it can touch, filling the air with the wettest sounds. Rhidall wasn't lying- it's hedonism at its best- a mixture of gluttony and lust so intertwined that you're unsure which of the pig's needs are more urgent.";
			say "     A soft zap pulls you back to reality, away from that bouncing, cake-covered pig ass, only to find Rhidall thrusting away, fucking Philip's face to a frantic beat. Somehow, seeing the dream that accompanied Philip's wanton sucking and frantic licking made the sight even better. You watch Rhidall's body hurtling towards a well-earned orgasm, and without realizing it, you touch yourself, wondering what sort of delights the pig will imagine when the sandman cums. Inevitably, Rhidall reaches his finish, withdrawing his cock and butting it against Philip's sloppy, desperate licks, spreading rope after rope of glittering seed over his maw until every breath sends strings of it flying from flared nostrils. Again and again, he creams Philip's snout, not stopping until he's so coated in cum that you doubt the pig could open his eyes if he wanted to, trapped in his gluttonous dream and desperate to swallow all of the sweet syrup.";
			if Player is male:
				say "     Wiping sweat from his brow, Rhidall draws you closer, repaying your earlier help with a nudge of his own to place Philip's maw in front of your manhood. With his softened cock still radiating heat next to yours, he tilts Philip's head, guiding your cock into that cummy, slurping maw. No wonder he finished so fast. Emboldened by his sloppy dream, Philip's mouth has become whirling molten silk, slurping along your entire shaft as though suckling at a popsicle. Distracted by that perfect storm of cock-sucking, you let yourself go, humping away into the mess of cum as the sandman supports you. You don't last long with Rhidall's golden skin so close to you and stroking fingers teasing your sensitive skin. Adding to the mess with spurt after spurt of pleasure, you ride out the burst of pleasure by sinking to the root and letting the pig man drink down every drop you give him, only pulling out when he's nursing at your oversensitive cock.";
				NPCSexAftermath Philip receives "OralCock" from Rhidall;
				NPCSexAftermath Philip receives "OralCock" from Player;
			else if Player is female: [vagina only]
				say "     Wiping sweat from his brow, Rhidall draws you closer, repaying your earlier help with a nudge of his own to place Philip's maw beneath your cunt. With his softened cock still radiating heat next to your thigh, he tilts Philip's head, guiding that cummy, slurping maw to lap at your pussy. No wonder he finished so fast. Emboldened by his sloppy dream, Philip's mouth has become a whirlwind of activity, slurping along the length of your pussy as though digging for truffles and increasingly focusing on your sensitive clit with greedy lips and a circling tongue. Distracted by that perfect storm of sloppy cunnilingus spreading sandman cum and your juices, you let yourself go, humping away into the mess as the sandman supports you, keeping you upright. You don't last long with Rhidall's golden skin so close to you and stroking fingers teasing your sensitive skin. Adding to the mess with spurt after spurt of pleasure, you ride out the burst of pleasure by sinking to your knees and letting the pig man drink down every drop you give him, only pulling back when he's nursing at your oversensitive sopping slit, threatening to overwhelm you in your post-orgasm sensitivity.";
			say "     Exhausted, you collapse forward, your eyes drifting closed. You're not sure if it's Rhidall's influence or your orgasm, but you feel drained, as though you haven't slept in weeks. When you open your eyes, there's no sign of the sandman besides the mess on the pigman's face and the lingering memory of his touch. Free of that dreamy feeling and your own horniness, you gather your things, wondering whether Rhidall will be back. Will he take your acceptance as free reign to molest others at the library? Deep down, you wonder if that would be the worst thing.";
			increase lust of Rhidall by 1;
		-- "Attempt to defend the pigman's honor!":
			say "     Taking a swing at the would-be rapist, you tell him you won't sit by and watch him fuck a sleeping man. After all, it doesn't sit right with you to let something so depraved happen without consent! Sighing as your fist connects with soft sand and passes harmlessly through, Rhidall contemplates your reaction with a distasteful grimace. 'Pity. I suppose I'll respect your wishes. I'm not interested in violence.' Dismounting Philip as the sleeping boar attempts to follow his manhood with an indignant squeal, Rhidall melts from the feet upward, losing cohesion and becoming nothing more than sparkling sand. 'Sweet dreams, little hero. Though not as sweet as they could have been.' His last words whispering on an errant breeze, he pours under the shed's door, disappearing from view. You doubt you'll see him again but resolve to check on your companions more often.";
	now Piggy Dreams is Resolved;

Section 3 - Eric Interactions

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Fever Dreams"	Fever Dreams	"[EventConditions_Fever Dreams]"	Bunker	2500	8	100

to say EventConditions_Fever Dreams:
	if Fever Dreams is not resolved and Eric is booked and lust of Rhidall > 0 and Player is not CoA and HP of Eric > 9 and HP of Eric < 16: [Eric must be a cuntboy for this to fire.]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Fever Dreams	"Fever Dreams"

Fever Dreams is a situation.
ResolveFunction of Fever Dreams is "[ResolveEvent Fever Dreams]".
Sarea of Fever Dreams is "Nowhere".

to say ResolveEvent Fever Dreams:
	say "     As you make your way down the steps to the bunker, you can't help but notice how quiet it is. Isn't Eric down there? Fearing the worst, you take the stairs two at a time, rushing to his bunk only to find a familiar sight. Like Philip was not so long ago, he's tangled in golden, muscled arms, though his position is more dignified, leaning against Rhidall with a dreamy, faraway look on his face and his eyelids drooping. He doesn't acknowledge your presence as sleep finally comes, but you can't help but notice his nudity. 'Ah, my partner in crime.' Rhidall greets you warmly, cradling Eric against his chest as he guides ginger hair to a pillow, stroking pale skin and arranging him so that Eric's red bush is on display, his legs spread wide. 'I thought that little piggy was the most uninhibited among your companions, but it seems this beautiful boy's fantasies put his to shame.' Trailing fingers down Eric's flat chest, Rhidall circles his navel, homing in on his exposed sex. 'Would you like to observe? I think you'll enjoy this one.'";
	say "     [bold type]Do you want to watch Rhidall have his fun with Eric?[roman type][line break]";
	say "     [link](Y)[as]y[end link] - Yes. You're intrigued.";
	say "     [link](N)[as]n[end link] - No. You'll let him have his fun in private.";
	if Player consents:
		LineBreak;
		say "     Tossing aside your gear until you stand naked before Rhidall, you jump at the opportunity to participate in his sleep-sex-capades. There's something so deliciously naughty about getting a peek at your friends' wildest fantasies, and you're curious about what Eric's dreams might hold. Could it be that he dreams about being a conventional male? Or is he dreaming about you? 'I'm afraid I'll monopolize this little one's body this time. You don't mind, do you?' Beaming, the golden-skinned sandman cups your chin, meeting your eyes with a gaze that matches the rest of him, warm and metallic. You can't say no to him, even if you want to, so you nod, breathlessly agreeing with him as though hypnotized. Rewarding you with a silky sprinkle of sand from pinched fingers, he sweeps you off to the world of dreams, fading everything to black.";
		say "     You awaken in a strange, unfamiliar place. Bare trees at home in a haunted house surround you, and a full moon shines above a dark sky. Amazed by the level of detail, you look around, unable to see Eric anywhere, until a chorus of lupine howls split the air. Not long after, he appears from a nearby bush, out of breath and completely naked, with his hair unkempt and covered with twigs and leaves. He runs past you, passing through you as if you're a ghost, only to stop in his tracks with a look of horror on his face. Following Eric's gaze, you see a wall of bristling fur standing at least seven feet tall, unfurling itself with purpose and revealing the most imposing, reddest wolf-cock you've ever seen. It's at least as wide as his thigh! It's not hard to guess where this dream is heading, and before long, more of the monsters crash through the brush, surrounding him with claws and snarling teeth.";
		WaitLineBreak;
		say "     'No, leave me alone! I don't want-' Siezed by the first wolf, Eric struggles futilely, then groans with frustration, his voice silenced by a wet tongue stuffed into his mouth. Within seconds, he's gone limp, pushing weakly at the wolf's muscular chest and spreading his legs wide, kicking ineffectively at approaching paws. Resistance is futile, and before he can wiggle free, a snout finds the pair of lips nestled between his legs, slurping at them loudly. Jolted back to reality by Eric's moan, you find him underneath Rhidall, squirming from side to side and biting his lower lip. His face is red, and every undulation seems to work him closer to the leaning man's body, drawing your eye to that golden cock as it frots along his pussy, shining itself with free-flowing juices.";
		say "     'The struggle is nothing but a facade.' Rhidall says, white teeth shining in a smug grin as you move for a closer look. 'Though I suppose I'm unprepared for the challenge.' Contemplating his cockhead as it rolls against Eric's defenseless pussy, Rhidall takes advantage of his body's malleable nature, reshaping the sand between his legs into a dick that matches the ones Eric dreamed of, complete with a knot and pointed tip. Of course, it's not quite as thick- no doubt a courtesy to poor Eric's innards. Slipping in without any more preamble, Rhidall spreads Eric's nethers, sending a visible bulge along his thin stomach until you're sure he's stretching the poor boy's cervix. It's hard to look away from the massive bulge coring Eric out and even harder to ignore the reddened expression on the ginger boy's face. There's no way to misinterpret his open mouth and strangled moans- he's loving every inch! Even his stretched cunt dribbles its approval, sheening the red surface of Rhidall's borrowed cock with its juices.";
		WaitLineBreak;
		say "     Rhidall's hips speed with every thrust, his golden, toned ass rising high with the effort of yanking out that massive fuckstick. Seemingly just as lost in the pleasure of that doggy dick as Eric is, he grunts with effort, putting on a show of breeding that wet cunt. There's no doubt that he wants you to watch, and when he reaches his end, cramming the thick knot at the base between stretched lower lips, he moans out, propping himself on Eric's cot. You can't suppress your jealousy when you watch those sweat-shined balls pumping Eric full. Whether you want to be on the receiving end or wish you were the one breeding the normally bashful boy, you can't tell. One thing's for sure- you can't look away as trickles of combined juices dribble out around their coupling, staining the plain blanket and creating a mystery for the sleeping boy to solve later.";
		say "     'Such a greedy boy.' With effort, Rhidall leans over Eric, stroking his cheek as the sleeping boy twitches with each pulse of oversized cock, high-pitched sounds leaving his open, drooling mouth. 'I could never hope to match up to his dreams. Such virility attacks him from every angle. I doubt he'd be satisfied by a single bestial breeding.' Popping free amid a deluge of creamy cum, Rhidall leans back, his Cheshire smile melting away along with the rest of that toned, beach-ready physique. Left alone with the sleeping boy and an excessive mess, you bring yourself to orgasm, then gather your things, worried about being caught in a compromising position. Covering Eric's writhing body as you wipe your fingers clean on his sticky blanket, you scurry away before he awakens. After all, how do you explain the mess between his legs?";
	else:
		say "     Shaking your head, you resist the temptation to help Rhidall molest the sleeping boy. Stating that it doesn't feel right, you leave Rhidall to his fun, ignoring Eric's first gasp ad soft whimper of pleasure, along with his barely audible whine. 'It's too big~.' Curiosity almost brings you to turn aroundn, but you respect their privacy, walking back upstairs.";
		move Player to Grey Abbey Library;
	increase lust of Rhidall by 1;
	NPCSexAftermath Eric receives "PussyFuck" from Rhidall;
	now Fever Dreams is Resolved;

Section 4 - David Interactions

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Night Sweats"	Night Sweats	"[EventConditions_Night Sweats]"	Bunker	2500	8	100

to say EventConditions_Night Sweats:
	if Night Sweats is not resolved and David is booked and lust of Rhidall > 1 and Player is not CoA and Thirst of David > 4: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Night Sweats	"Night Sweats"

Night Sweats is a situation.
ResolveFunction of Night Sweats is "[ResolveEvent Night Sweats]".
Sarea of Night Sweats is "Nowhere".


to say ResolveEvent Night Sweats:
	LineBreak;
	say "     You've experienced Rhidall's presence often enough by now that you recognize the silence in the bunker. Making your way down, you set aside your things, eager to see what depravity he's bringing out in one of your companions. After all, your consent is what lets him invade their dreams. It seems disingenuous to pretend that you're not excited! 'Perfect timing, as always.' Rhidall sits atop a new bunk this time, stroking David's hair as his excited dick stands proud between gleaming thighs. 'I was afraid my captive audience would be missing for this performance.' Running his fingers over David's lower lip, he tilts the dazed man's unseeing face toward you. 'You have impeccable taste, though this one seems a bit reserved. Shall we see what his dreams hold?' Without waiting for your answer, he whisks you away the moment you're within touching distance, dragging you into another dream.";
	say "     'Yeah, man, her tits were huge!' Laughing male voices greet you, accompanied by the unmistakable heat, moisture, and scent of a men's locker room. Clad in nothing but dog tags, well-muscled men stand all around, talking with their cocks dangling flaccid. The place would look right at home in an X-rated movie about soldiers fucking! All colors of the skin rainbow parade past, but eventually, you notice David sitting on a bench, hunched over with a bright red expression on his face. It's not hard to tell why he's embarrassed- he's hard as a rock, trying to hide his cock with both hands but failing to cover its entire length. A puddle sits between his feet as though he's been cumming against his will, and he looks on the verge of blasting again, squirming uncomfortably.";
	WaitLineBreak;
	say "     'Well, look what we have here!' An authoritative voice parts the sea of bodies, bringing David to his feet and revealing his shame boner as he salutes, switching comically between covering himself and standing at attention. A faceless man with a muscular, dark brown body and the longest flaccid cock you've ever seen stands there, looking over David's posture with disapproving body language. 'It seems we've got a joker here!' Barking his words through a mouth that isn't there, the strange dream sergeant forcefully turns David toward the locker behind him, spreading his legs and showing off the private's ass. 'What's the protocol here, maggot? Why aren't you sharing with your superiors?!' David squeals as the faceless man's open palm smacks his ass, spreading his legs wide.'Sir, sorry, sir! I am just a hole, sir. Use me, sir!' He seems embarrassed by his words, but they flow out without pause, and his shaft nearly touches the cold metal in front, drooling its approval.";
	if Player is male:
		LineBreak;
		say "     'Sir, fuck me, sir.' David groans in his sleep as you snap back to reality, kneeling on all fours with his ass in the air. With a start, you realize he's pushing back on your cock, murmuring and grunting as he sheaths your dick in hot, tight depths. Rhidall grips your hips, steadying you as you recoil, and murmurs in your ear. 'You seemed so left out. Wouldn't you rather fulfill this sweet soldier's needs? He's begging for it.' Prodding at your unattended backdoor, Rhidall forces you forward as he penetrates you, filling your lower body with a warm, fuzzy feeling as his rounded tip seeks out your prostate. He's not gentle, but somehow, he glides like silk, with little friction to stop his buggering, and his mouth never stops roaming, radiating heat through your neck and ear.";
		say "     Trapped between David's slumbering whorishness and Rhidall's insistent humps, you can only hold on for the ride, gripping David's hips and raising your neck into the sandman's dominant kisses. It's not long before the duo works you to the edge, and you unload deep into the soldier's hole, slumping over him as your sandman paramour pounds you within an inch of your life. Rhidall joins you in orgasm shortly after, tugging you backward out of David's needy hole and into his lap, stroking fingers over your heaving stomach and murmuring in your ear. 'See you in your dreams, my little voyeur. I'm sure you don't mind if I help myself to everything you offer.' Before you can answer, he melts away into silken sand and disappears, leaving you with nothing but a well-seeded ass and the mess you made in David's bed.";
		WaitLineBreak;
	if Player is female:
		say "     'Sir, fuck me, sir.' David groans in his sleep as you snap back to reality, kneeling on all fours with his ass in the air. With a start, you realize he's pushing back on Rhidall's cock, murmuring and grunting as he sheaths his dick in tight-looking depths. You're trapped between writhing bodies, with Rhidall's cock jutting between your legs and his fingers playing your cunt like an instrument. Rhidall grips your hips, steadying you as you recoil, and murmurs in your ear. 'You seemed so left out. Wouldn't you rather fulfill this sweet soldier's needs? He's begging for it.' Ramming himself home in David's unresisting ass, Rhidall forces you forward as he penetrates you with two fingers, filling your lower body with a warm, fuzzy feeling as his fingers seek all the sensitive spots, working you to a dripping lather. He's not gentle, but somehow, he glides like silk, with little friction to stop his fingering, and his mouth never stops roaming, radiating heat through your neck and ear.";
		say "     Trapped between David's slumbering whorishness and Rhidall's insistent humps, you can only hold on for the ride, gripping David's hips and raising your neck into the sandman's dominant kisses. It's not long before the duo works you to the edge, and you dribble your orgasm down over the thrusting cock between your thighs, slumping over David as your sandman paramour pounds him within an inch of his life. Rhidall joins you in orgasm shortly after, tugging himself backward out of David's needy hole and into his lap, stroking fem-cum drizzled fingers over your heaving stomach and murmuring in your ear. 'See you in your dreams, my little voyeur. I'm sure you don't mind if I help myself to everything you offer.' Before you can answer, he melts away into silken sand and disappears, leaving you with nothing but a dripping cunt and the mess he made in David's bed.";
	say "     Shivering at the implication of Rhidall visiting your dreams to molest you, you clean yourself up, tucking the twitching soldier into bed and leaving the 'scene of the crime.' Hopefully, he wakes you before he finishes- you want to feel everything.";
	increase lust of Rhidall by 1;
	NPCSexAftermath David receives "AssFuck" from Rhidall;
	now Night Sweats is Resolved;


Rhidall ends here.
