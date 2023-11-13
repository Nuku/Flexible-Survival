Janaz by Voidsnaps begins here.

[Thirst of Janaz: Whether you've tamed him. 0 is no. 1 is yes. 0+ trait "Hunting" in Janaz's TraitList allows his scenes to happen.]
[Lust of Janaz: How much you've tried to rehabilitate him.]
[0: You have only been spawn-fucked by Janaz.]
[1: You've been fucked by Janaz at least two times, but never tried to trick him.]
[2: You've taught Janaz about the importance of using his tongue.]
[3: You've blown Janaz and been fucked by him.]
[4: You've admitted that Kal Ren is just using Janaz and that you lied to him.]


an everyturn rule:
	if thirst of Janaz is 0 and "Hunting" is listed in Traits of Janaz and Player is not female:
		if a random chance of 1 in 5 succeeds:
			say "[JanazForceFuck]";
		else:
			stop the action;

Section 1 - Character Declaration

Table of GameCharacterIDs (continued)
object	name
Janaz	"Janaz"

Janaz is a man.
ScaleValue of Janaz is 4. [human sized]
Body Weight of Janaz is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Janaz is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Janaz is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Janaz is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Janaz is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Janaz is 12. [length in inches]
Breast Size of Janaz is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Janaz is 2. [count of nipples]
Asshole Depth of Janaz is 10. [inches deep for anal fucking]
Asshole Tightness of Janaz is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Janaz is 1. [number of cocks]
Cock Girth of Janaz is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Janaz is 16. [length in inches]
Ball Count of Janaz is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Janaz is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Janaz is 0. [number of cunts]
Cunt Depth of Janaz is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Janaz is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Janaz is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Janaz is false.
PlayerRomanced of Janaz is false.
PlayerFriended of Janaz is false.
PlayerControlled of Janaz is false.
PlayerFucked of Janaz is false.
OralVirgin of Janaz is false.
Virgin of Janaz is false.
AnalVirgin of Janaz is false.
PenileVirgin of Janaz is false.
SexuallyExperienced of Janaz is true.
TwistedCapacity of Janaz is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Janaz is true. [steriles can't knock people up]
MainInfection of Janaz is "Demon Fox". [Always match the capitalization of the infection. Case sensitive.]
Description of Janaz is "[JanazDesc]".
Conversation of Janaz is { "<This is nothing but a placeholder!>" }.
The scent of Janaz is "[JanazScent]".

to say JanazDesc:
	say "     Standing at easily 5 feet at the shoulder, the feral demon fox almost resembles a dire wolf. Golden eyes stare back at you, following your every move, and a permanently erect, dripping cock swings between his legs, dribbling to the ground. His coloration matches his demonic father's, with red and black fur and several tails flitting above his rear.";

to say JanazScent:
	say "     Pure, unadulterated fox musk pours off of Janaz. If you weren't used to the stench, you would almost say it smells foul.";

Section 2 - Forced Sex Scenes

to say JanazForceFuck:
	if Lust of Janaz is 0: [First time. Can't be comforted.]
		say "     A sudden feeling of dread comes over you, and before you can figure out why you feel so exposed, you hear a deep voice in your ear. 'Father sends his regards.' Hot, wet breath tickles your ear, and you barely have time to lurch forward before the weight on your back forces you to the ground. Sonorous and demanding, the growl of the creature standing over you leaves no room for denying its will, and when teeth tug at your pack, you meekly allow the demon fox to toss it aside. [if Player is not BareCrotch]Your pants soon follow, exposing your ass to the heated snuffle of a bestial nose. [else]Your bare ass provides a target for that rooting nose, and as it parts your cheeks, you can feel hot breath taking in your scent and a long tongue unfurling. [end if]It seems a cursory lick, accompanied by a generous portion of drool, is all the courtesy you'll get as you feel shaggy fur against your bare back and the molten, pulsing sensation of a demonic dick taking the place of his snout.";
		say "     The size of that shaft is a bit intimidating, so you try to talk your way out of its use, offering all sorts of alternatives to the hulking beast. Alas, it's all in vain, and all you can do is grit your teeth and try to bear down, allowing that massive shaft to bulldoze its way into your woefully underprepared colon. Resigned to your fate, you cling to the paws on either side of your body, attempting to arch your back to keep your cock from getting smashed against the ground below. 'Bitches don't deserve mercy. Breeding is all they're good for.' Janaz's voice grunts from above even as he hunches over you, humping with breakneck speed that forces his molten hot cock deep inside you hard enough that your stomach swells in its shape. 'Father's bitch. Father's hole.' The words come out almost monotone, as though Janaz repeats a mantra.";
		WaitLineBreak;
		say "     There's no time to ponder your 'son's' motivations. His hips have reached Mach speed, and every thrust inward inches his knot past your defenses, squelching loudly as his pre oozes out around his cock, creating an orange puddle between your legs. Such rough thrusts have coated your lower back, thighs, and several feet of your inner walls in that same orange goo, so it's only a matter of time before the excessive lubrication allows him through. 'Father's. Unf. Bitch. Hnngh. Hero.' Janaz says with a satisfied grunt as that fat bulb pops past your entrance, securing his hot sheath between your cheeks and holding you in place as a veritable flood of vulpine seed coats your innards, swelling your stomach into a pregnant bulge. With his task completed, he flops on top of you, still pumping overflowing blasts of molten seed into your unresisting body.";
		say "     Minutes pass before his knot deflates, but the slightest attempts at communicating with your demon spawn to pass the time meet with hostility. Unwilling to be bitten by wicked, sharp teeth, you stop yourself before you speak more than a few words, swallowing hard. It wouldn't do to get on Kal Ren's less merciful side, or else you might have a whole GANG of Janaz's brothers to deal with. Thankfully, once his cock has softened, Janaz yanks himself free, letting you fall to the ground in a heap and bounding off. Shaky and oversensitive, you grab your gear, wincing as your ruined ass leaks the bright orange evidence of your submission. If Kal Ren wanted you humiliated, you suppose he's gotten his wish.";
		now lust of Janaz is 1;
	else if Lust of Janaz is 1: [First meeting. Repeatable if you don't choose Yes.]
		say "     Swallowing hard as you notice a golden pair of eyes watching you from nearby, you acknowledge Janaz's presence, setting aside all your gear and standing before him in the nude. He wasn't gentle the last time you crossed paths, and you hope to prevent any of your things from being ruined by his teeth and claws. His silence is a little unnerving, so to break it, you acknowledge his presence, watching the hypnotic bob of the perpetual hardness between his legs and trying not to imagine fitting that monster cock inside you. 'You are not frightened?' Janaz growls as he approaches, sharp teeth on display and his tongue hanging free of his muzzle, dripping drool to the ground below. It's remarkable how much he looks like a quadrupedal version of his demonic father, though his eyes, golden as they are, are a different shade from Kal Ren's yellow ones. Approaching you cautiously, he flicks one ear, looking a bit annoyed.";
		say "     Shrugging, you state it's not the first time you've been pinned to the ground and fucked senseless. Now that you know what to expect, it has less impact. The confusion on Janaz's face gives you an idea. You could probably convince him to be less rough. Your demon spawn seems naive enough to believe you, and you could exert some control over your 'punishment.'";
		LineBreak;
		say "     Do you want to take charge of your punishment and welcome the horny creature with open arms?";
		say "     [link](Y)[as]y[end link] Yes, you want to be fucked in a more comfortable position, with more control.";
		say "     [link](N)[as]n[end link] No, you'll simply bend over and let the beast have his way with you.";
		if Player consents:
			LineBreak;
			say "     Trying to hide your attempt at trickery, you insinuate that there's a way that Janaz could dominate you even more thoroughly than a mounting. All he has to do is warm you up before he mounts you. Kal Ren MUST have told him that foreplay is the easiest way to get someone addicted to your touch. 'Foreplay?' Your demonic son seems to fall for the idea almost instantly, tilting his head and sitting before you. Honestly, he seems less a slavering beast and more a curious pup, though the cock bobbing between his forelegs leaves no room for underestimating his status as a breeder. 'Father has not entrusted me with this information. Have I displeased him? I must immediately-'";
			say "     Before the confused fox can wander off, you cross the distance between your bodies, cradling his head in both hands and stroking down his back. It wouldn't do to let Kal Ren know that you're attempting to soften your 'punishment.' Continuing the lie, you apply honeyed words, stating that you're willing to help fill in the gaps in Janaz's knowledge before his father notices this minor incompetence. Suspicious despite his gullibility, the fox leans into your touch, grumbling as he mulls over the idea. Musk fluffs from his fur with every movement, and you can barely resist the urge to bury your face in surprisingly fluffy fur. 'Alright. I will allow you to teach me. But if this is an attempt-' Trailing off as your fingers find the base of his ears, the demonic fox pants softly, his eyes crossing for a moment. It seems he shares that sensitive spot with most dogs.";
			WaitLineBreak;
			say "     Piling on the praise, you kiss the feral's cheek, adamantly denying wrongdoing. You'll still allow him to carry out his duty. You'll even hold still as long as he likes. He has nothing to lose by letting you teach him your 'secret techniques.' And teach him you shall. The pain of huge insertions is something you're used to by now, between Kal Ren and his son, but it's something you'd prefer to mitigate. Taking advantage of Janaz's blissful expression, you begin your lesson, pressing a gentle kiss to the tip of his muzzle. First, as you explain to him, the best way to dominate your prey is to show them how deeply you can violate them. Demonstrating with your smaller muzzle, you tilt your head, pressing your lips to Janaz's and worming your tongue into his sweltering muzzle. Thankfully, hot as his breath is, it isn't all that unpleasant, though his spit is thicker than you'd imagined, slobbing your lips in a lewd gloss.";
			say "     Janaz is a fast learner, though perhaps a bit overexuberant. A tentative lick swirls over your tongue, then dominates it, forcing yours back into your mouth as he seeks the back of your throat. Left with no choice, you gag softly, clinging to the scruff of fur around his neck and clamping your eyes shut as you swallow the thick appendage. Fuck, it feels like he's trying to taste the inside of your stomach, but somehow you can't help but enjoy yourself, your cock standing at full attention and squirting thin strings of approval to mar his fur. Janaz is the first to break the kiss, withdrawing his tongue and panting, his golden eyes gleaming as he looks at you like you've just given him water in a desert. 'More. This new act intrigues me.' He growls, wasting no time diving back in and raping your throat with his tongue. There's no room to protest with his appendage lathering your mouth, and all you can do is hang on for the ride, trying not to pass out as drool coats every bit of your senses.";
			WaitLineBreak;
			say "     You're not sure how long the demon thrusts his tongue into your throat, but as he resurfaces for air, you crumple to the ground, your chest and stomach coated with strings of fox spit and your cock leaking a river of approval. Barely able to catch your breath as he brings his cock to bear over your prone form, you squeak out a protest. There's one other way to dominate you with his tongue, and you'd be remiss if you didn't show him how before he breeds you and leaves. No doubt intrigued by the thought of more fun, Janaz watches as you spread your legs and bare your ass to him, arching your body so that your entrance is on display. This time, he seems to get the message without your explanation, and you tense up as he sniffs your hole curiously. The long, slow lick you received the first time he mounted you starts his exploration, but it doesn't end there as his tongue worries at your clenched rump, worming its way inside.";
			say "     A brief moment of panic sets in as jaws settle around your most sensitive areas, but Janaz is surprisingly gentle, and as his teeth close on your thighs, all you feel is the slightest pressure. Without a single protest, he swabs your insides, shoving nearly a foot of tongue deep into your colon and slathering your innermost depths with slippery lubricant. He's a natural at pleasing others, and you're certainly not going to ask him to stop, so you groan and squirm, letting him soften you until he finishes on his own, licking his chops with a huff. Impatient despite his progress, the demon fox takes your tonguefucked, yawning hole as an invitation, hunching over you and stuffing his cock into your relaxed depths, sending rivulets of drool dripping down your back. It doesn't seem to matter to him that you're significantly less sturdy than him, and your hips ache as he crashes his weight down on them, shoving your legs further apart and slurping his knot into your hole, only to drag it back out, threatening to take your insides with it. It's too much, and before long, you feel your shaft pitifully squirt into the mass of sweaty fur grinding on your body, leaving your demon-spawn a memento of your time together.";
			WaitLineBreak;
			say "     When Janaz cums, it's far less mechanical than the first time. Whimpering moans slip from his muzzle as he uses you like a knot-accessible fleshlight, and by the time you feel the first blast painting your innermost depths, his fluffy fur suffocates you. Lying there as he dips his cock into your ruined hole, he works you far longer than before, seemingly savoring your body even as his bubbling seed creates a mess around your sweating body. 'Perhaps-' Licking his lips, Janaz takes a deep breath, standing and allowing his softening spire to plop free of your ruined hole. '- there is merit to this 'foreplay.'' Licking his lips at the words as if tasting it, he saunters off, stealing a glance over his shoulder that you could almost mistake as wistful.";
			say "     You lie in your mess until your legs work again, gathering your things and rubbing your smarting ass where virile balls reddened them. You're still sore, but it's far from as bad as last time. Maybe you should [italic type]continue to teach Janaz how to be a better lover? [roman type][line break]";
			now Lust of Janaz is 2;
		else: [repeats infinitely if you choose no every time.]
			LineBreak;
			say "     The size of that shaft is a bit intimidating, but you know better than to protest. All you can do is grit your teeth and try to bear down, allowing that massive shaft to bulldoze its way into your woefully underprepared colon. Resigned to your fate, you cling to the paws on either side of your body, attempting to arch your back to keep your cock from getting smashed against the ground below. 'Bitches don't deserve mercy. Breeding is all they're good for.' Janaz's voice grunts from above even as he hunches over you, humping with breakneck speed that forces his molten hot cock deep inside you hard enough that your stomach swells in its shape. 'Father's bitch. Father's hole.' The words come out almost monotone, as though Janaz repeats a mantra.";
			say "     There's no time to ponder your 'son's' motivations. His hips have reached Mach speed, and every thrust inward inches his knot past your defenses, squelching loudly as his pre oozes out around his cock, creating an orange puddle between your legs. Such rough thrusts have coated your lower back, thighs, and several feet of your inner walls in that same orange goo, so it's only a matter of time before the excessive lubrication allows him through. 'Father's. Unf. Bitch. Hnngh. Hero.' Janaz says with a satisfied grunt as that fat bulb pops past your entrance, securing his hot sheath between your cheeks and holding you in place as a veritable flood of vulpine seed coats your innards, swelling your stomach into a pregnant bulge. With his task completed, he flops on top of you, still pumping overflowing blasts of molten seed into your unresisting body.";
			WaitLineBreak;
			say "     Minutes pass before his knot deflates, but the slightest attempts at communicating with your demon spawn to pass the time meet with hostility. Unwilling to be bitten by wicked, sharp teeth, you stop yourself before you speak more than a few words, swallowing hard. It wouldn't do to get on Kal Ren's less merciful side, or else you might have a whole GANG of Janaz's brothers to deal with. Thankfully, once his cock has softened, Janaz yanks himself free, letting you fall to the ground in a heap and bounding off. Shaky and oversensitive, you grab your gear, wincing as your ruined ass leaks the bright orange evidence of your submission. If Kal Ren wanted you humiliated, you suppose he's gotten his wish.";
	else if Lust of Janaz is 2:
		say "[TrainingJanaz]";
	else if Lust of Janaz is 3:
		say "[FreeingJanaz]";

Section 3 - Taming Your Son

to say TrainingJanaz:
	say "     Your heart starts racing, and before you have time to think about why, Janaz manifests from a nearby shadow, his slavering face staring you down. You barely have time to toss your gear aside before he's on you, stuffing his tongue past your lips and trapping you in a feral kiss. With no choice but to suck on his tongue, you gag on its length, your vision darkening and your fingers tangling in his fur. Thankfully, he stops before you fall unconscious, though your face drips with fox drool. 'On your knees. I wish to put your teachings to work!' Janaz growls, licking his lips and nosing at your chest. It seems he's as excited about learning as ever, though perhaps he's mistaken how much he needs to study. His attentions are still too focused on domination, and you'd prefer a less single-minded approach.";
	say "     Holding out your hand, you stop the fox the only way you know how tugging at one ear before he can bowl you over and shove his tongue up your ass. With his attention refocused, you clear your throat, politely ignoring the overpowering flavor of fox lingering on your tongue. Your voice is hoarse, but you explain that he's only scratched the surface of foreplay. If he wants to dominate you, the best way is to learn how to tease you! 'Teasing?' Incredulous but willing to believe you after the first 'trick' you taught him, Janaz tilts his head to the side, his cock waggling comically between his forepaws. 'What is teasing? There's nothing else to mating. I shove myself into you until I release, then report to father.'";
	WaitLineBreak;
	say "     Sighing, you shake your head, running your fingers through the fox's chin fur. His education's bare bones, and you're sure that Kal Ren purposefully only taught him how to be rough with you as an extra way to humiliate you- no doubt part of your punishment for defeating him. With that in mind, you approach it from a way that Janaz should understand, sinking to your knees as you explain yourself. It'll be faster if you show him what you mean by teasing. Trailing your hands down Janaz's stomach, you cradle those heavy fox balls, your words faltering as you explain that sex is much more than just the act of mating and seeding. He's so big that you start to rethink using your mouth, but if he managed to stuff himself into your ass, you doubt you'll have any trouble. At the very least, you can control the depth he thrusts.";
	say "     Janaz grunts, thrusting his shaft against your face as you massage those heavy nuts. It's so hot that you worry it'll burn your skin, but you know from experience that the scalding temperature can't hurt you, nuzzling into the pointed underside and rolling your tongue over it. You're careful to tease spots that set the fox's hips trembling, and by the time you reach his swollen knot, his shaft has ceased dripping, the tip bloating as long strings of pre rain down. 'Soft.' Janaz groans, his desperation sending him into a humping fit that bashes his cock against your face. He gets frustrated when his tip finds no hole, but an apologetic tonguing of his squirting tip seems to calm him, and those nuts churn needily in your palms, begging for more. 'This is also mating? It's strange.' He seems unsure but intrigued, though his eyes are fixated on your bare ass, as though he longs to mount you instead.";
	WaitLineBreak;
	say "     Barely able to talk around a mouthful of salty pre, you gulp it down, explaining that part of the act is to make someone want it. After all, your tongue got your demon spawn excited. It must feel much better than pumping your ass and finishing so quickly, despite the mild discomfort of waiting. Enamored with your mouth, Janaz grunts an affirmation, stuffing your open lips with a well-placed thrust. 'More. I wish to learn this technique.' He demands as he stands on all fours above you, his manhood hanging down and balls slapping your chin as their heavy sack sways with his efforts. It seems that licking won't satisfy him, and you'll have to suffer through your over-excited son fucking your throat. Left with no choice, you massage the twin orbs churning before you, rolling your mouth along his length until the pointed tip breaches your throat. The scent of a horny fox is so much stronger from this position. With your nose growing steadily closer to his sheath, you can feel your throat swelling out with that canine length as he tests your depth, frustrated growls breaking through his heavy panting.";
	say "     Even if you could talk, you doubt you could regain Janaz's attention. If you don't want him to attempt jamming his knot into your mouth and risk breaking your jaw, you'd better show him a positive alternative. Instead, you set to work, raising one hand from heavy breeder balls to grip the base of his knot, pulsing it in time with sloppy strokes that use the entire length of your throat to please him. 'Soft. Wet. So good.' Janaz grumbles as he uses your body as a fleshlight, his nose worming between your ass cheeks as he pulverizes your relaxed throat. His stance widens, and his thrusts become more insistent as his tongue demands entrance, and soon, he's working you back and forth between that dextrous appendage and his steel-hard length.";
	WaitLineBreak;
	say "     You're not sure how long Janaz uses your mouth, but when you feel his cumvein bloat, he's too far gone to let you go. Twin streams of cum shoot from your nose as he hoses your stomach into a pregnant bulge, and the tongue in your ass vibrates with a satisfied growl even as he slaps your chin with heavy nuts, threatening to knot your face. It's much more than his usual volume, and he only withdraws once you've gone limp, letting you fall to the ground amid a heated shower of leftover seed from his dangling dick. Your fluffy breeding machine contemplates your still-hard cock, licking his chops as he mulls over the sensations you introduced him to and pins you to the ground. Unprompted, he follows your lead, his long tongue rolling over your entire shaft. It's almost like he's trying to gauge your reactions as he tilts his head to the side, focusing on the spots that make you squirm the most.";
	say "     Janaz is more talented than you thought he'd be. That tongue would have you edged in minutes anyway, but his expression, so determined, relaxing once he sheathes you in his hot, suckling maw, reminds you that you're feeding your son your cock. The perverted thrill pushes you over the edge. Before you know it, you've painted that canine tongue, gritting your teeth as he laps your oversensitive dick until you soften. Your demonic son sticks around this time, laying his head on your stomach as you run your fingers through his fur. 'Father should have taught me these things... Why didn't he? Was I flawed?' He seems so lost that you can't help but feel bad for him, though for the longest time, Janaz felt more like a punishment to avoid. Since he's your son, maybe you should try to treat him that way.";
	WaitLineBreak;
	say "     Pondering the ethics of your situation passes the time, and at some point, while you doze, Janaz leaves, sparing you a strange glance backward as he wanders off. Was that regret on his face? You try to crush the guilt you feel for lying to him as you gather your gear, wiping the remnants of your fun from your body and wondering what your next meeting will bring.";

to say FreeingJanaz:
	say "     A familiar feeling creeps up your back, and sure enough, Janaz appears within moments, though his demeanor is very different. Rather than his usual pushy behavior, he pads over and sits before you, tilting his head. Greeting you with an ever-present erection, he stamps his foot with an oddly adorable, excited air. 'More. I demand you teach me more of this 'foreplay.' I can think of nothing else.' Telling the excited fox that waiting is part of the experience, you take time setting aside your things, shivering at the slutty thrill of bending over before the over-sexed brute. With anything breakable out of the way, you cross the distance between you, pondering what you should teach him this time. Your experiences prove how good he is with his tongue, but you wonder whether he'd catch on if you tried something less invasive.";
	say "     Shaking your head, you take the risk, wrapping your arms around Janaz's neck and leaning into one flicking, pointed ear. Murmuring in it, you explain to him that today's lesson will be very different. You're going to teach him what affection is. After all, there's no better way to dominate someone than to make them fall in love with you! 'Love?' Janaz scoffs, though he seems intrigued by the word, rolling it around his tongue and tilting his head to the side. 'Father said that love doesn't matter. There's only domination, breeding, standing atop a pile of your enemies after soundly fucking them into submission.' Shaking his head, he attempts to nose you over, no doubt returning to his old ways.";
	WaitLineBreak;
	say "     Seizing your secret weapon, you place both hands on pointed ears, rubbing their base until Janaz freezes, a whimper slipping out of his closed maw. His chin rests on your chest, and he looks up at you with unfocused eyes, his hulking posture suddenly less imposing. The more you watch him, the more pitiful he seems. It's not his fault he's warped. 'What- What is this?' Janaz murmurs as he tears himself away from your grip. Shaking his head, he fixes you with a baleful glare. 'What sort of magic are you attempting? Your punishment will be...' Trailing off, the confused fox seems at odds with his overly sexual programming. What started as an attempt to escape Kal Ren's warped punishment changes when you meet that unsure gaze. You're not sure if it's because you birthed Janaz or if those big, almost puppy-like eyes remind you of a rescue dog, but you can't keep up the charade anymore. Sighing, you admit that you've been lying to the gullible kit, blunting the news with fingers running through his soft, heated fur. However, you explain that you're not the only one lying to him. His father is nothing more than a sex-crazed beast that created him as a perverse sex toy to punish you for your independence.";
	say "     'I am- I am not.' Janaz shakes his head, attempting to deny you, but your soft touch lulls him, melting his face against your hands. 'Father lies? My purpose-' Disbelief flashes in his eyes, and Janaz looks lost. Soothing your wayward son, you press a kiss to his nose and sit in front of him, asking whether he'd prefer a new purpose. After all, he has more than one father! Running your fingers through his chest fur, you state that he could be more than a pawn for Kal Ren. If he promises to listen to you, he could be yours. Tails thrashing like a wagging dog's, the fox fixes you with a look of naive innocence that doesn't match the ferocity you experienced when he bred you. 'Father? You could be my father?' He repeats before shoving his face into your bare chest, an affectionate growl rumbling through his throat. 'Yes! I will do anything. What should I do, father?' As much as it ruins the moment, you become painfully aware of the still drooling cock between Janaz's legs and your erection pressing into his soft fur.";
	WaitLineBreak;
	say "     Despite your rising desire to take advantage of Janaz's eagerness and newfound trust for you, you pat his cheeks, remaining chaste for the moment. There will be plenty of time for exploring [italic type]that [roman type]type of relationship with him after things have had time to settle. More importantly, you think back to what Janaz said about reporting back to Kal Ren. It seems that you won't be able to keep the mutiny you coaxed him into secret for long, but for now, you embrace your overexcited vulpine son, telling him that he doesn't have to do anything. You'll let him decide what he wants from now on.";
	now Thirst of Janaz is 1;
	now Lust of Janaz is 4;
	say "<Content ends here for now. You will not encounter Janaz again until content has been added onto this path again. If you would like to revist scenes, please use the debug code 'ZJanazReset' to reset him to default. You will need to start over from his birth scene with Kal Ren.>";

JanazReset is an action applying to nothing.

understand "zJanazReset" as JanazReset.

check JanazReset:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out JanazReset:
	now Stamina of Kal Ren is 1;
	now Thirst of Janaz is 0;
	now Lust of Janaz is 0;
	TraitLoss "Hunting" for Janaz;
	say "<Janaz is now reset for your viewing pleasure. Please go to Kal Ren to reinitiate his birth.>";




Janaz ends here.
