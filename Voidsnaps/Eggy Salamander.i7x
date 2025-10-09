Eggy Salamander by Voidsnaps begins here.

Section 1 - Creature Declaration

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Fire Salamander"	"[PrepCombat_Fire Salamander]"

to say PrepCombat_Fire Salamander:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Fire Salamander";
	add "Fire Salamander" to infections of AmphibianList;
	add "Fire Salamander" to infections of FurryList;
	add "Fire Salamander" to infections of NatureList;
	add "Fire Salamander" to infections of MaleList;
	add "Fire Salamander" to infections of TaperedCockList;
	add "Fire Salamander" to infections of BipedalList;
	add "Fire Salamander" to infections of TailList;
	add "Fire Salamander" to infections of InternalBallsList;
	now Name entry is "Fire Salamander";
	now enemy title entry is "";
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "The Fire salamander [one of]turns around and uses his sizable tail to slap you, his loincloth flaring up and giving you a rather lewd view of what lies beneath[or]attempts to bite you with deceptively sharp teeth, huffing and panting in a way that suggests something more sexual than a fight[at random]!";
	now defeated entry is "[Fire Salamander loses]"; [player wins]
	now victory entry is "[Fire Salamander wins]"; [player loses]
	now desc entry is "[Fire Salamander Desc]"; [description of monster]
	now face entry is "wider than a normal human's, giving you a somewhat horrifyingly wide maw with sharp peg-like teeth spread out evenly through your mouth. Your eyes are more circular than most, giving you an amphibian flair";
	now body entry is "lithe and sinuous, all the better for navigating flooded areas and lurking in swampy, muddy areas";
	now skin entry is "rough-looking, slightly bumpy skin that shines with a slimy coat. The slimy coat protects your skin from the sun. A striking bright yellow pattern of random large splotches covers your otherwise pitch-black";
	now tail entry is "Your tail flares out above your buttcheeks, continuing down toward the ground and swaying from side to side with every step. It's clearly tailor-made for life in water, working as a rudder.";
	now cock entry is "hidden, tapered amphibian";
	now face change entry is "it expands into the unmistakable proportions of a salamander, with rounded eyes closer to the top of your head, nasal slits in place of a nose, and a wide mouth";
	now body change entry is "it grows lanky and ready to swim. Wiry, with no small amount of muscle, it is clearly crafted by a life in the water.";
	now skin change entry is "it darkens to an inky black, then springs to life with bright yellow patches like neon clouds";
	now ass change entry is "it becomes slightly bubbly, but still fairly athletic, with just the right amount of bounce";
	now cock change entry is "your dick slides into your body while shifting into a more tapered and smooth, almost tentacle-like appearance, hiding itself within a slit and leaving no trace of its existence, besides the slightest hint of a cleft between your thighs. You're sure it'll pop out again when you have need of it";
	now str entry is 18;
	now dex entry is 19;
	now sta entry is 29;
	now per entry is 14;
	now int entry is 15;
	now cha entry is 20;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 70;
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 40; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "Fire Salamander milk";
	now CumItem entry is "Fire Salamander cum";
	now TrophyFunction entry is "";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lithe"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]salamander[or]amphibian[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

to say Fire Salamander Desc:
	say "     Standing at barely five and a half feet, the fire salamander in front of you wouldn't be all that imposing, if it weren't for the laser focus of his rounded eyes on your crotch. There's little doubt as to what he wants, and the way his spare hand keeps meandering down his stomach to slip fingers into his genital slit, filling the air with the syrupy sounds of masturbation. Panting aggressively as he pleasures himself, he leans against a nearby tree to shudder through obvious desire, then lunges forward, his eyes unfocused and his spare arm outstretched.";

Section 2 - Items

Table of Game Objects (continued)
name	desc	weight	object
"Fire Salamander Man-Milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Fire Salamander Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	Fire Salamander milk

Fire Salamander milk is a grab object.
Fire Salamander milk is milky.
Fire Salamander milk is infectious.
Strain of Fire Salamander milk is "Fire Salamander".
Usedesc of Fire Salamander milk is "[Fire Salamander milk use]".

to say Fire Salamander milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing Fire Salamander milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Table of Game Objects (continued)
name	desc	weight	object
"Fire Salamander cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Fire Salamander Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	Fire Salamander cum

Fire Salamander cum is a grab object.
Fire Salamander cum is cum.
Fire Salamander cum is infectious.
Strain of Fire Salamander cum is "Fire Salamander".
Usedesc of Fire Salamander cum is "[Fire Salamander cum use]".

to say Fire Salamander cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing Fire Salamander cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just slightly fishy.";



Section 3 - After Battle scenes

to say Fire Salamander Loses:
	say "     Falling to his knees as you land the last blow, the fire salamander continues his frenzied masturbation, his eyes welling with frustrated tears. Between heavy huffs, he croaks out a few words, nearly drowned by the schlick of him fingering himself and rubbing his fingers over the tip of his pink member. 'Please. Fuck me. I need it.' You contemplate the wretched, exhausted creature, watching his pitiful display and wondering if you should help him. His blatant lustiness could be a trap, but you're not sure if the frenzied desire in those eyes could be fake.";
	say "     [bold type]Will you help the poor thing?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Sure, you've got some time to kill.";
	say "     ([link]N[as]n[end link]) - You're not interested.";
	if Player consents: [do it]
		if Player is male:
			say "[Fire Salamander Loss Scenes Male]";
			now Sweet Relief is active;
		else:
			say "[Fire Salamander Loss Scenes Female]";
	else: [declined]
		say "     You shake your head. You're not sure why you should be expected to fulfill the desires of everyone you meet, and given the choice here, you're not particularly interested. You shrug, pull your pack tighter, and leave the needy salamander on his knees, ignoring his attempts to recapture your attention.";

to say Fire Salamander Loss Scenes Male:
	say "     You're not one to leave such a needy creature alone without giving him something to remember you by, so you toss aside your gear and take hold of your cock, stroking it while you contemplate your options. While you haven't gotten the best look at the salamander's rear end, you doubt it'll disappoint, but there's something to be said for making him work for it rather than just sticking your cock in him. Of course, you could also forgo penetration and keep the pent-up creature's desperate search for a good fuck going strong while you get your rocks off.";
	say "     [bold type]What do you want to do to the amphibious slut?[roman type][line break]";
	LineBreak;
	let Salamander_Choices be a list of text;
	add "Fuck that slippery ass." to Salamander_Choices;
	add "Tease him a bit." to Salamander_Choices;
	add "Make him work for it." to Salamander_Choices;
	let Salamander_Choice be what the player chooses from Salamander_Choices;
	if Salamander_Choice is:
		-- "Fuck that slippery ass.": [doggystyle]
		LineBreak;
			say "     Clicking your tongue, you nudge the entranced salamander with your foot. If he wants you to satisfy his craving for dick, he'd better get on all fours because you're not planning to put your bare ass on the ground for someone you just met. Tapping your dick on his wide amphibious mouth and letting a drop of precum stretch between his outstretched tongue and your bouncing tip, you waggle it from side to side as though offering a dog a treat. 'Yes! Yes! Thank you!' Greedily slurping in that little gift, the salamander immediately turns around, hiking his tail in a practiced motion that tells you he's not shy. A bright yellow, winking hole the same shade as his patterning stares up at you from between slightly parted cheeks, flexing nervously as though it knows what comes next, and the salamander shudders, staring back at you over his shoulder with hunger in his eyes.";
			say "     Slowly sawing your dick between those inviting cheeks, you take a moment to savor the slippery sensation of salamander skin, lightly lubricated with a strangely pleasant slimy coating. How nice of this buttslut to come prepared! A slow hotdog is nice enough, but you can't help but zero in on that yellow bullseye, testing it with your tip and shuddering as it easily opens up to swallow your tip, clamping like a talented pair of lips. The slippery embrace is far too welcoming to resist, and before you know it, the base of your dick kisses the salamander's hole. 'More. More!' Unabashed in his begging for your dick, the salamander squirms beneath you, shoving backward into your hips and actively fucking himself on your dick. Any fatigue from your fight appears to drain away in the face of being bred while his cock slips free of its slit to waggle beneath him, swinging to and fro with each movement and slopping wetly against his thighs. A quick peek shows it dripping like a faucet, making a viscous puddle beneath him.";
			WaitLineBreak;
			say "     Thrusting with wild abandon, you give in to the slutty amphibian's demands, sending your cock deep into his guts with every resounding plap of your thighs against that pleasantly plump rump. He's so greedy for it that you can't help but match his energy, stirring his slippery hole into a frothy mixture of precum and amphibious secretions that only makes the ride all the smoother. You're not going to last long at this point, and you're not sure you want to! As if sensing your impending orgasm, the fire salamander groans his need, limiting your thrusts to shallow, innard-stirring jabs. Is he afraid that you'll pull out of him? You doubt you could leave that slippery warmth if you tried, and the intense tightness coiling around the base of your dick on each hilt all but ensures you'll finish inside. Sure enough, you lose the fight with the rising tide in your dick, giving one last titanic thrust that sends the salamander forward a few inches and forces him to scrabble in the mud to stay upright. You explode like a firehose deep in those needy depths, slumping over his back as you pump rope after rope of virility, arms grabbing a slightly plump stomach as a handhold. Was he always like this, or did you cum that much?";
			say "     Shivering so hard that you might mistake it for something more serious, the amphibian clamps his inner muscles to milk every last drop from your retreating cock. That yellow hole attempts to retreat to its once-tight status, but the generous helping of cream that bubbles from it appears to make that a losing battle, and it relaxes into a cum-drooling gape as he falls forward. His dick is almost as messy, weakly drooling a steady stream of cum to the ground below, and his mouth moves in post-orgasmic gibberish. You vaguely catch the words 'pregnant' and 'eggs' as you clean yourself off and gather your things but think nothing of it. After all, he's cum-brained at the moment.";
			CreatureSexAftermath "Fire Salamander" receives "AssFuck" from "Player";
		-- "Tease him a bit.": [hotdogging]
			say "     Deciding you'd rather tease the poor cock-drunk creature, you shove him over onto his back, hiking his already lifting tail further up and using it as a handhold to flop your cock between his generous cheeks. That warm, bright yellow hole calls to your dick, but you ignore its siren call, reveling in the slippery embrace of wobbly cheeks. You're not planning to give the buttslut exactly what he wants- at least not this time! Disappointed whimpers fade into a throaty groan as your cock follows that slippery furrow. With each thrust, the salamander seems to get a bit more frustrated, twisting and desperately wiggling to attempt to slip you inside. Unfortunately, even that valiant effort isn't enough, only encouraging you to press the struggling amphibian into the mud below. With that slime-coated body pinned, the salamander resorts to using words, though they're somewhat unintelligible. 'Please. Need it. Inside. Please!' Words spill out of his drooling mouth between deep, desperate pants, and his thighs press together as though he's afraid you'll pull away.";
			say "     Goaded by the tighter grip of those juicy cheeks on either side of your pistoning cock, you ram against the base of the salamander's tail with wild abandon, watching your cock, still shiny with the amphibian's natural lube, slip between ebony cheeks with a sense of satisfaction. There's something so empowering about getting your pleasure at the cost of the other man's, and you doubt you can hold out long despite your desire to paint those dark cheeks with a new pattern. Moments later, you grunt as you mash your cockhead against the base of the salamander's tail, greedy fingers grabbing his cheeks and mashing them together for a tighter grip along your shaft. Your stomach twists in knots as you paint the amphibian's hole with your cum, pistoning at top speed and threatening to penetrate him with every thrust. With titanic effort, you resist the call of that puckering hole, resting your softening cock in the puddle you've made between those slimy cheeks. It's been fun, but you've got other things to do, so you pat that upturned ass, ignoring the unfulfilled whimpers of its owner as you retrieve your things and leave him to collect himself, pausing for a moment to admire how desperately he's fingering your cum into himself. What a slut!";
			CreatureSexAftermath "Fire Salamander" receives "AssFuck" from "Player";
		-- "Make him work for it.": [riding]
			LineBreak;
			say "     You're feeling a bit lazy. It seems that the salamander is desperate for your dick anyway- why not let him do all the work? You draw his attention away from your dickhead, chuckling under your breath at the beads of drool dripping down the corner of his mouth, and take a seat on a handy nearby log, patting your lap and shooting him a grin that leaves little to the imagination. If he wants your dick, he'd better get to it! Still clearly dick-notized, the salamander scrambles to his feet, his tapered cock dribbling pitifully to the muddy ground below as he stumbles over on unsteady legs, still clearly reeling from your fight. He shows a surprisingly expert degree of dexterity in vaulting into your lap, though, landing with your cock squarely pressed against soft, strangely moist cheeks and the telltale clench of his pucker. Grunting in frustration, he reaches behind himself, grabbing your dick and aiming it for that greedy hole, his breath coming in a short hiss through sharp teeth as you feel your tip break through his defenses.";
			say "     Buttery soft warmth envelops your cock in one smooth thrust, sending your hips upward. Your balls slap against the salamander's ass as you run out of length to give, but the amphibian follows your movements back down, unwilling to unsheathe your cock at first and clamping down as though that juicy hole wants to rip your dick off. You give that greedy pair of black and yellow cheeks a warning slap, telling the needy slut he'd better get a move on if he doesn't want you to get bored. Panic crosses the salamander's face as his hole flutters around the base of your cock, protesting silently. Digging clawed fingers into your shoulders as though afraid you'll escape him before he gets what he wants, he lets his tongue hang out, his hips swiveling from side to side as he works his slimy hole up and down your shaft. 'No! I'll do it better! Just give me...'  Shivering, the amphibious slut seems to find the right spot to press your cock against, his ass involuntarily pistoning to ram you against that perfect spot.";
			WaitLineBreak;
			say "     Fed up with the amphibian's shallow thrusts, you return the urgency of his grip, grabbing his gently padded, slick waist and sending him on the ride of his life. From tip to base, you give his fuckhole everything you've got, taking advantage of the growing slickness that paves the way and pounding him like the whore he is. You're not sure how long you'll last with that silky ride, but you plan to get as much out of it as you can! Going slack in your arms, the amphibian holds on for dear life, his head thrown back and guttural groans ripping their way out of his open mouth. His dick, untouched and spraying like an unattended sprinkler, stiffens and points toward the sky, the thick, sticky precum it's been belching until this point growing even more profuse until it abruptly changes to something less translucent. Off-white ropes blast from his wildly twitching tip, raining down on both of you and covering the space between your stomachs with sticky webbing that stinks of masculine musk.";
			say "     The crushing tightness of that orgasm isn't lost on you, drawing out a greedy growl as you fight against his hole's attempts to keep you in place. It's far too stimulating, and before long, you feel the tide rising from deep within you, ready to paint the amphibian's innards. With no reason to hold back, you do just that, adding to the sticky mess dribbling down your balls from the amphibian's natural lubricant and filling him to the brim. You take a moment to collect your thoughts as the salamander collapses on you, breath coming in hot pants. The sated man's easy enough to roll off you, and he lies there on the ground, rubbing his stomach with one hand and fingering himself with the other, playing with the load you pumped into him and admiring the puffy mess you made of his once tight pucker. You're sure that he'll be ready for a second round in minutes, so you grab your things before the salamander can regain his wits, wiping yourself free of the sticky mess you both made and leaving him to revel in the aftermath.";
			CreatureSexAftermath "Fire Salamander" receives "AssFuck" from "Player";

to say Fire Salamander Loss Scenes Female:
	say "     You fall to your knees, only to be thrown to the ground and straddled by the huffing salamander. Clearly uninterested in any niceties, he shifts on top of you, placing his ass directly above your pelvis. Unfortunately for the horny salamander, it appears you don't have the proper equipment to please him. Dumbstruck by his mistake, he feels around behind him, fingers brushing your feminine sex as he grasps for something that's decidedly not there. A low whine vibrates through the amphibian's throat as he moves his scaly butt from your crotch. With an accusatory tone, he chastises you. 'Dammit! Where's your dick? Everyone these days has one!' Shaking his head, he scans the horizon, no doubt uninterested in you. Suddenly, he disappears into the brush without so much as an apology, leaving you dumbstruck on the muddy ground. It couldn't be any clearer: you'll have to come back packing something for the salamander to ride if you want anything more than repeated snubbing.";

to say Fire Salamander Wins:
	say "     Moments after you hit the ground, the salamander's on top of you, his sticky fingers, still coated with fluids from his frantic masturbation, grip your wrists, throwing them over your head and forcing you onto your back in the mud. Impatient and desperate, he removes all obstacles in the way of placing his quivering rump where he so desperately wants it.";
	if Player is male: [He wants to get pregnant.]
		say "     The salamander's eyes roll back in his head as he finally manages to fumble your cock between his cheeks, drawing you into slippery heat in one slam that reverberates through the clearing, leaving your thighs slightly stinging with the impact. A low, guttural groan vibrates through his throat as he refocuses on you, and drool drips down the corner of his mouth as he begins to ride, his fountaining cock slapping against your lower stomach with every sway of his hips. There's no denying his desperation, and you can't help but get even harder at the thought that you've drawn out this level of lust from someone you just met. It's certainly an ego boost. Slap after wet slap fills the space between amphibious moans, and your hips soon join the salamander's, sending him higher at the apex of his bounces when your cock hilts him and tries in vain to slide in length that simply doesn't exist. He's so slick and his inner muscles clutch you so tightly that you're not sure how long you're going to last, but judging by his rapturous expression, you doubt he cares, so you let yourself go with the flow, careening toward your finish with the increasingly desperate rhythm.";
		say "     Soon enough, you feel yourself tense, your hands raising to grab the salamander's bouncing body and force him down your length to the base. He struggles desperately, no doubt worried that you're trying to stop him, but instantly melts when the dam breaks, leaning back and grabbing his slightly swollen stomach. His dick throbs in time with yours, and moments after the last drops of your orgasm drain into his greedy depths, it unleashes a surprisingly high-arcing spray, painting a streak of white across the dusky amphibian's pattern. Lying back, you attempt to catch your breath, enjoying the afterglow even though your ass feels a bit cold from the moist ground below. The gentle stroke of the amphibian's insides maintains your erection, but you're too lazy to do anything about it, just letting the final dribbles of your orgasm join the rest of the sizable load. Eventually, your desire to move on overwhelms the fluffy feeling fluttering in your stomach, and you try your best to extricate yourself.";
		WaitLineBreak;
		say "     Shaken from his euphoria by your movement, the salamander shakes his head, his heavy tail slapping the ground behind him, and his thighs tightening their grip around your hips. With a grunt, he starts to slam his ass down your length, mumbling to himself. 'More. Not enough. Give me more!' His words trail off into unintelligible begging, but he pins your arms by your head with a surprising amount of strength, his expression equal parts desperate and not-quite-all-there. Still sensitive and unable to break free, you helplessly push your hips upward into the vice-like grip of the amphibian's ass, barely able to feel your legs but acutely aware of exactly how slick his inner walls are. Sloppy noises replace the sharper plap of his ass cheeks on your thighs, filling the air with undeniable evidence of your unwilling participation in the desperate bottom's cock hungry pursuits. Your cum leaks down your thighs from that sloppy, tight hole, and you can already feel the tide cresting again, but you try your best to hold it, worried that a quick finish will only urge the salamander on further.";
		say "     Soon enough, you lose the battle, releasing a weaker jet of cum into those clutching depths and setting off another of the salamander's fountaining orgasms. Still, it does nothing to slow the torturous pace he puts you through, his innards only milking you expertly the more you struggle. You're not sure how long you spend beneath him, but by the time he falls backward off of you, rubbing his stomach with a blissful expression and a half-hard cock, your dick is quite sore, and your last orgasm was little more than a watery dribble. Worried that you may set off more of that slutty behavior, you quietly grab your possessions while the salamander fingers himself and lies there, spread out and leaking with who-knows-how-many loads you've given him. Tiptoeing away, you shake your head, your legs wobbly, and your sore body unsure whether it wants more or desperately wants to escape. Shaking your head, you decide it's better to leave before you end up with a broken pelvis.";
		CreatureSexAftermath "Fire Salamander" receives "AssFuck" from "Player";
		now Sweet Relief is active;
	else: [Vagoo doesn't work.]
		say "     Unfortunately for the horny salamander, it appears you don't have the proper equipment to please him. Dumbstruck by his mistake, he feels around behind him, fingers brushing your feminine sex as he grasps for something that's decidedly not there. A low whine vibrates through the amphibian's throat as he moves his scaly butt from your crotch. With an accusatory tone, he chastises you. 'Dammit! Where's your dick? Everyone these days has one!' Shaking his head, he scans the horizon, no doubt uninterested in you. Suddenly, he disappears into the brush without so much as an apology, leaving you dumbstruck on the muddy ground. It couldn't be any clearer: you'll have to come back packing something for the salamander to ride if you want anything more than repeated snubbing.";



Section 4 - Egg Laying

Table of GameEventIDs (continued)
Object	Name
Sweet Relief	"Sweet Relief"

Sweet Relief is a situation.
Sweet Relief is inactive.
ResolveFunction of Sweet Relief is "[ResolveEvent Sweet Relief]".
Sarea of Sweet Relief is "Sinking Swamps";

when play begins:
	add Sweet Relief to BadSpots of MaleList;

to say ResolveEvent Sweet Relief:
	say "     Wandering through the swamps, you stop when you hear a familiar voice, tinged with exertion and a hint of desperation. Parting a nearby bush, you find the fire salamander you so recently fucked. He doesn't see you, and he's leaning over the water, his tail hiked and his legs bent. Holding his stomach with both hands, he lets out a strained groan, falling forward slightly and giving you an eyeful of his ass.";
	say "     Do you want to keep watching? This seems like a private moment, and judging by the salamander's clearly pregnant belly, you have an inkling what's about to happen.";
	say "     ([link]Y[as]y[end link]) - Watch and possibly more.";
	say "     ([link]N[as]n[end link]) - Walk away.";
	if Player consents:
		say "     Wandering through the swamps, you stop when you hear a familiar voice, tinged with exertion and a hint of desperation. Parting a nearby bush, you find the fire salamander you so recently fucked. He doesn't see you, and he's leaning over the water, his tail hiked and his legs bent. Holding his stomach with both hands, he lets out a strained groan, falling forward slightly and giving you an eyeful of his ass. It gapes angrily, trying desperately to clench shut, only to be spread wide by a gelatinous orb the size of your fist. In the center is an unmistakable embryo, and as it reaches its apex, it slips out with a wet sound, accompanied by a small flood of slippery natural lube. It plops to the ground, bouncing once before reaching the water and floating serenely, only to be followed by another, and another. Tongue hanging out and eyes unfocused, the salamander jerks his cock to the rhythm of his ass's contractions, his thighs shaking and his tail lifted to the sky. No doubt he's enjoying every second of this unorthodox birth, and you can't escape the fact that you were probably the one who knocked him up. The desperate thing must have been in heat! You can't help yourself as you watch the erotic display, setting aside your gear in a hidden spot in the nearby bush and crossing the distance between you and the straining amphibian[if Player is Male] with your erection leading the way[end if]. He barely reacts when you grab his tail to get a better view, and even when you graze your fingers over the sensitive underside, he only moans, his ass going further into the air, and his mouth hanging open.";
		say "     You're pretty sure he's in no state to deny you. What do you want to do to him?";
		LineBreak;
		let Salamander_Choices be a list of text;
		add "Watch him push out the rest of the eggs." to Salamander_Choices;
		add "Get him to blow you while he gives birth." to Salamander_Choices;
		let Salamander_Choice be what the player chooses from Salamander_Choices;
		if Salamander_Choice is:
			-- "Watch him push out the rest of the eggs.":
				if Player is male:
					say "     Admiring the stretch of that overworked hole, you get down on your knees for a closer look, watching as each of the eggs works free with wet plops and slimy lubricant. You can't deny how hot it is to watch the offspring you helped create work their way into the world. However, you're courteous enough to leave that overworked hole alone until the final one shoves itself free, plopping into the water below and leaving the salamander vulnerable, spread wide and still clenching around an invisible insertion. It almost looks lonely without something to clamp itself around. Stroking yourself, you line your cock up with the unresisting man's hole, pushing in before he can react. You'd think he would be sore after the impressive amount of eggs that shoved their way through that tight ring, but the only reaction is a weak, needy moan as you stuff yourself to the hilt, and the weakly throbbing pulse around your cock is anything but rejection. In fact, it appears to be milking you! Not one to disappoint such a soft, silky hole, you pump away with wild abandon, slapping those slippery cheeks against your lower stomach with a wild rhythm that takes advantage of his egg-prepped innards. He's loosened up, but it still wraps around you deliciously, and as you find his prostate, he clamps down for a moment, his exhausted hole coming back to life.";
					say "     Faced with such a pleasant fuck, you lose yourself in the act, using him like he's your personal hole until you feel your stomach coiling with an impending orgasm. There's no need to worry about where you're going to pump the load screaming its way up your shaft- there's only one choice, and that's deep inside this greedy slut! You slam yourself to the base right as the first string flies from your tip, but you fuck your way through the rest, churning the salamander's twitching insides until your cock softens, spent and long since sucked dry. Wiping your dick off on the salamander's tail base, you withdraw with a sigh, patting his ass and leaving him to deal with the aftermath of getting used at his most vulnerable. Judging by the dopey smile on his face, he enjoyed it as much as you did, and you do not doubt that he'll find you again when he's ready for another clutch.";
				else:
					say "     Giving that amphibious ass an encouraging slap, you get down on your knees for a closer look, watching as each of the eggs works free with wet plops and slimy lubricant. You can't deny how hot it is to watch the offspring you helped create work their way into the world. However, you're courteous enough to leave that overworked hole alone until the final one shoves itself free, plopping into the water below and leaving the salamander vulnerable, spread wide and still clenching around an invisible insertion. It almost looks lonely without something to clamp itself around. Unfortunately, you have nothing to fill it with, so you hastily decide to leave the salamander to his fate, gathering your things and continuing on your way.";
			-- "Get him to blow you while he gives birth.":
				say "     You're feeling a bit left out of the fun, so you squat down to the amphibian's open maw, guiding your cock into his open mouth and giving an experimental thrust. He's drooling so much that it feels like your cock's swimming in wetness, but he seems to instinctively know what's going on, his tongue searching out the underside of your dick and reverently stroking it. Still shuddering with each wet plop, he looks up at you with unfocused eyes, his only reaction to your movement the slightest vibrating groan that encourages you deeper. Taking that as consent, you brace yourself on the salamander's back with both hands, ramming forward until you feel slurping lips wrap around your base. Exploring the amphibian's throat, grunt with exertion, withdrawing only when you feel a slight wiggle and feel nostrils flaring against your lower stomach, desperate for breath. It's not long before you're plunging back to the root, though you're courteous enough to pull back before the poor thing runs out of air.";
				say "      Instinctively, the salamander bobs his head in time with your thrusts, growing more active the more of your precum reaches that questing tongue. Slurping away, he seems to enjoy the stretch at both ends, his unfocused eyes regaining some of their regular shine. The plopping of each egg has sped up as he grows more desperate to please you, and eventually, there's not even a single splash, heralding the end of his clutch. Still, though, he sucks your cock like it's the only thing in the world, willingly plunging to the base and letting drool drip down your length, rolling off his wide, soft tongue. It's not long before you feel yourself reaching the end, mercilessly pounding the exhausted amphibian's face as you keep him pinned in place. Your orgasm hits suddenly as his tongue darts out to circle your whole length in a surprising display of agility, and you empty yourself into his mouth, grunting with each swallow that massages your tip.";
				WaitLineBreak;
				say "      Not a drop leaves those suckling lips, and the only evidence of your involvement is a single pearl that drips from the tip onto his nostril as you yank yourself free of the suddenly overstimulating suction. You pat the salamander's cheek as he tries to reach his tongue up to lick up that wasted drop, telling him you might be back later to pump another clutch into him. A dopey expression is your only answer, and a weak attempt at swaying his hips that only sends his back half careening into the mud. You doubt he'll be getting up any time soon, so you leave him to the afterglow, lying in a puddle of his cum and egg lubricant, a small flotilla of your offspring floating into the depths of the swamp nearby.";
	else:
		say "     Shaking your head, you leave the salamander to deal with the aftermath of your sexual encounter alone. You're not interested in anything that may occur here.";
	now Sweet Relief is inactive;

Eggy Salamander ends here.