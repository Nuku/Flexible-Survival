Version 1 of Amaryllis by Song begins here.
[ Version 1.0 - Initial talk options and sex scenes - Song                      ]

Table of GameCharacterIDs (continued)
object	name
Amaryllis	"Amaryllis"

Amaryllis is a woman. Amaryllis is in Equinoid Camp.
The description of Amaryllis is "[AmaryllisDesc]".
The conversation of Amaryllis is { "I choose you, playerchu!" }.
The scent of Amaryllis is "     Amaryllis smells like clean fur and grassy fields with a hint of equine arousal.".

to say AmaryllisDesc:
	say "     Amaryllis is a tall and curvaceous equinoid herm, her muscular body almost Amazonian in proportions. Her long mane of dark, flowing hair frames a beautiful, feminine muzzle with soft green eyes the color of polished jade. Below, her heavy breasts and broad, child-bearing hips lend a lovely hourglass figure that is only disturbed by the tight tone of her torso. Well-muscled thighs taper to dark, smooth hooves, and her chiseled arms lead down to large hands that terminate in hoof-like fingers. Her entire figure is covered in a striking black coat of thin, oily hair which gleams under the light. What draws your eyes most, however, is the large, fuzzy sheath that scarcely contains her maleness and the heavy pair of orbs swaying just below it, her generous equipment sure to sire many strong foals.";
	say "     The herm's demeanor comes across as surprisingly playful for her stature, even naive, standing in stark contrast to the pride and stoicism that exudes from the other equinoid warriors. Were it not for her exquisitely toned body, you would never peg her as the type to patrol and fight off threats to the tribe. Whenever you pass, the equinoid glances jealously at your companion, Liliana, who was chosen to be your apprentice in her stead.";

Instead of conversing the Amaryllis:
	say "     You approach Amaryllis while she's [one of]folding some clothes[or]sharpening her spear[or]conversing with another equinoid warrior[or]brushing the feathering near her hooves[or]letting another equinoid brush her mane[or]staring up at the [if daytimer is day]clouds[else]stars[end if][or]doing some stretches[or]inspecting her hoof-like nails[or]sitting by herself[at random]. [one of]'Hmn? What do you need?' the equinoid asks.[or]'Hmn? What is it?' the equinoid asks.[or]'Is there something you wanted to talk about?' the equinoid asks.[or]'Welcome back[if player is not defaultnamed], [name of player][end if]. Is there anything on your mind?' the equine asks.[or]'Hey again,' the equine says in a friendly voice. 'Did you need anything?'[or]'Good to see you again[if player is not defaultnamed], [name of player][end if],' the equine says in a friendly voice. 'What would you like to talk about?'[at random]";
	say "[AmaryllisTalkMenu]";

to say AmaryllisTalkMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just talk";
	now sortorder entry is 1;
	now description entry is "Talk about anything that comes to mind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask how she met the tribe";
	now sortorder entry is 2;
	now description entry is "Ask Amaryllis about her past life and her initiation into the tribe";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask how she likes the tribe";
	now sortorder entry is 3;
	now description entry is "Ask Amaryllis about her daily life in the tribe and impressions";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if she has any errands to run";
	now sortorder entry is 4;
	now description entry is "Ask Amaryllis if there is anything you could do for her in exchange for goods";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Amaryllis about her relationship with Bryony";
	now sortorder entry is 5;
	now description entry is "Learn more about the two equinoids";
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
			if player consents:
				now sextablerun is 1;
				let nam be title entry;
				if (nam is "Just talk"):
					say "[AmaryllisTalk1]";
				if (nam is "Ask how she met the tribe"):
					say "[AmaryllisTalk2]";
				if (nam is "Ask how she likes the tribe"):
					say "[AmaryllisTalk3]";
				if (nam is "Ask if she has any errands to run"):
					say "[AmaryllisTalk4]";
				if (nam is "Ask Amaryllis about her relationship with Bryony"):
					say "[AmaryllisTalk5]";
				wait for any key;
				say "[AmaryllisTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself and step back from Amaryllis.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AmaryllisTalk1:
	say "     [one of]'Nakoma would have been wise to select me as your companion instead,' she remarks somewhat bitterly.[or]'Let me know about your experiences in your travels. I would love to know all about the outside world.'[or]'You should stay with us, warrior. I am eager to show you our ways,' the equinoid offers with a blush beneath her fur.[or]'Wouldn't you prefer staying here with me and enjoying yourself?' Amaryllis teases, giving you a seductive smile.[or]'Our tribe are a strong people, but that doesn't stop us from enjoying ourselves, either. Would you like a demonstration?' she teases.[or]'Have you ever wondered about how nice it would feel to have a mate to warm your bed every night?' Amaryllis asks slyly.[or]'You look like you could use some rest[if player is not defaultnamed], [name of player][end if]. How about get to know each other a little better?' she teases.[at random]";

to say AmaryllisTalk2:
	say "     Your question gives Amaryllis pause. The equinoid crosses her arms and takes a moment to think. 'To be honest, I do not remember much of my previous life. The earliest event I can recall is meeting Nakoma when the tribe was still young. She offered me shelter and safety in numbers, and I accepted her terms without much thought. Looking back on it, becoming part of her tribe was the best thing to ever happen to me.' Dwelling on the memory, Amaryllis reaches below to run her hands over her sumptuous curves, her eyes glazing over as all the sordid details dance through her mind. Barely able to restrain herself, the equinoid smiles dreamily as her gaze fixes on you again.";

to say AmaryllisTalk3:
	say "     'What, do I give the impression that I'm unhappy here?' Amaryllis asks, sounding worried. 'While I might not agree with everything our elders have to say,' she says somewhat quietly, looking aside at Bryony, 'I still wouldn't have it any other way. Our people are strong, kind, and best of all, incredibly sexy. Gods, what I'd give to be pinned to the ground beneath one of our powerful warriors and-' The equinoid stops herself short, giggling nervously and blushing bright beneath her fur. Glancing below, you notice that her length has grown fully erect at the fantasy, that impressive equine cock throbbing against her stomach. Amaryllis bites her lower lip and gives you a needful look, clearly in the mood for more than just talking.";

to say AmaryllisTalk4:
	say "     'Hmn. I can't really think of anything at the moment,' Amaryllis admits, looking somewhat sheepish. 'Normally there's some work I'd be thrilled to, mmh, unload on people, but I always get a little distracted when you're around,' she teases.";

to say AmaryllisTalk5:
	say "     'Oh, her?' Amaryllis asks, pointing to the other horse with a gentle laugh. 'She's just a stick in the mud. No real beef between us,' she explains. 'Not that I'd mind a piece of her meat,' the equinoid murmurs in a quiet aside. You pretend you didn't hear that and ask for more detail. 'Oh, Bryony's been around forever. She's one of camp's best warriors, though she thinks that I'm in over my head just because I want to explore and recruit some new life.' The smaller herm shakes her head. 'No sense of passion or adventure. It's a shame, too, [']cause she'd be incredibly hot if she wasn't so stuffy.' Amaryllis either doesn't realize what she just said or doesn't care, her eyes glazing over as she watches Bryony with obvious longing. You decide to drop the subject.";


Instead of fucking Amaryllis:
	if lastfuck of Amaryllis - turns < 4:
		say "     'I'd love to, but I'm still a little exhausted after a last session together. Maybe a little later?' Amaryllis offers suggestively.";
	else if player is blequinoidbodied:
		say "     Amaryllis perks up at your offer. 'You mean it?' she asks, flirtatiously. When you nod in affirmation, the equinoid presses her voluptuous body flush to your chest, her hands slipping around your rear for a firm, possessive squeeze. 'I just knew you'd want some more of me. What kind of fun did you have in mind?'";
		say "[AmaryllisSexMenu]";
	else:
		say "     Amaryllis looks away at your offer. 'I'd love to, but...' she trails off, going quiet for a moment before locking her gaze with yours again. 'Look, the elders told me not to have fun with non-equinoids anymore - their ruling, not my choice. If you want to be my playmate, why not let the herd help you become more like us again?' she offers helpfully. 'Or you could just boink Liliana instead,' she adds, glancing jealously at your companion.";

to say AmaryllisSexMenu:
	setmonster "Black Equinoid";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "Pin the herm to the ground and fuck her pussy";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal ride";
		now sortorder entry is 2;
		now description entry is "Slide that heavy cock into your folds and ride her";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Anal ride";
	now sortorder entry is 3;
	now description entry is "Stretch your ass around that massive log of meat";
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
			if player consents:
				now sextablerun is 1;
				let nam be title entry;
				if (nam is "Fuck her"):
					say "[AmaryllisSex1]";
				if (nam is "Vaginal ride"):
					say "[AmaryllisSex2]";
				if (nam is "Anal ride"):
					say "[AmaryllisSex3]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Amaryllis, shaking your head slightly as she gives a questioning look.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	wait for any key;
	clear the screen and hyperlink list;

to say AmaryllisSex1: [Fuck her]
	say "     You tell Amaryllis that you've been searching for a warm, wet sheath for your hard equine cock. The equinoid shudders lustfully at your words, her own length throbbing against your lustrous coat of hair. 'Mmh. Don't tease me with it, then. Make me yours,' she says. Turning around, the voluptuous equinoid brushes her tail across your sheath, then slyly sashays that broad, well-toned ass for your enjoyment. With a smoldering look over her shoulder, the once-proud warrior lowers herself to all fours on the grass and hikes her tail over her back, proudly presenting her dark, puffy asshole and the damp, thick-lipped folds resting just below it. The scent of her fertility wafts from her equine cunt, her clear nectar trickling down over her perineum and heavy sack. 'Well, what are you waiting for?' the equinoid teases, hiking up her generous ass to be claimed.";
	say "     Instinctual urges driving you forwards, you step closer and lean over the herm's proffered form, your hands snaking around her torso to grope her hanging breasts. She whickers with pleasure as your large, flared chance smears over her winking folds, her hips pushing back against the crown to goad you on. You nuzzle into the back of her nape before slowly pushing your hips forward, inch by inch of mottled, pulsing meat spreading her welcoming passage wide. 'Nnh. Just like that,' Amaryllis says with a soft, hazy moan, clearly enjoying the feeling of your bestial pillar parting her depths. Her arms begin to tremble as you sink all the way to the hilt within her snug, yet elastic inner walls, that sordid tunnel gripping and squeezing around your cock with satisfying squelches. You grope her heavy tits roughly, drawing a loud moan and clenching pressure around your steadily throbbing dick.";
	WaitLineBreak;
	say "     You begin to saw back and forth within the equinoid's deliciously squeezing cunt, your breath beating hot against the nape of your neck as you mate with her. Your lovemaking draws the attention of some of the other warriors, who pause their day-to-day activities to cheer or stroke themselves while watching the spectacle. The herd's encouragement only increases your arousal, and soon your initial steady thrusts give way to rough and wild rutting, pounding into your lover's exquisitely textured folds with grunts and moans of savage delight. In time, the equinoid is grinding back against you lustfully, her soaked channel splattering wetness over the earth as you claim her, each piston into her dark-fleshed folds driving you ever-closer to your inevitable peaks.";
	say "     Eventually you can hold back no longer and thrust deep into Amaryllis one last time, your flare swelling within her rippling passage. With a triumphant whinny, you release blast after blast of thick, equine seed into the herm's sweltering depths, filling her womb with your rich, virile cum. What isn't locked in place by the bulging crown of your member squirts out against your crotch in alabaster waves, tainting your fur with the deluge. Amaryllis cries out as she reaches a hard and messy climax, shuddering with pleasure as strained spurts of seed splatter across the ground beneath her. Spent and brutally satisfied, you relax against the curvy equinoid, basking in the pleasant warmth of the afterglow. Your lover continues to moan and nicker softly as you stroke over her breasts and stomach, delicately caressing her curves. Once the last few spurts taper to an end, you withdraw from the equinoid's dark-fleshed pussy, a rush of warm seed spilling down her thighs and across the ground below. Amaryllis sighs happily at the feeling before rolling over onto her back, simply relaxing under the [if daytimer is day]warmth of the sun[else]starry canopy of night[end if] while running a hand along her subtly distended belly.";
	infect "Black Equinoid";
	now lastfuck of Amaryllis is turns;

to say AmaryllisSex2: [Vaginal ride]
	setmonster "Black Equinoid";
	say "     You tell Amaryllis that you've been eyeing her lovely endowments, and you were wondering if she would be willing to indulge you. The herm creases a sultry smile at this and reaches below to tease a finger along her medial ring. Your gaze is drawn to her impressive endowments, and you unthinkingly reach out to wrap your hands around her cockflesh, squeezing and stroking that mesmerizing pillar. Your fingers brush over the equinoid's length as it pulses and drips onto the ground before you, the scent of her virility suffusing the air in a thick, heady miasma. 'Mmph. You really want this, don't you?' she teases, her hands slipping down to your rear for a lustful squeeze. 'You want to carry my strong, brave foals and spread our wonderful gift.' You give a rapid nod at the equinoid's words, too aroused by her scent and dominant tone to think of anything but the bliss of being bred.";
	say "     With an affectionate smile, the dual-sexed warrior instructs you to turn around for a moment. Made to face the rest of the camp, you realize with a start that you've already drawn some onlookers, the equines stroking themselves openly as they watch with lecherous intent. Distracted as you are by their enticing display, you fail to notice the movement behind you until you're hoisted into the air in one smooth motion, Amaryllis holding you aloft with almost alarming ease. Her breasts lend support as those large, soft hands roam over your body, teasing you sensually and skillfully while her warm breath beats across your nape. In this new, compromising position, her flare is free to brush along your slavering equine pussy, the tantalizing contact making you moan and beg for the powerful stallion to fuck you.";
	WaitLineBreak;
	say "     As if on cue, the equinoid's grip relents, letting gravity pull you down and spear you on her hard and throbbing cock. The sheer volume of equine meat stuffing your sable-fleshed folds makes you groan in absent ecstasy, distended cunt drooling around her deliciously twitching tool. You try to push down against the equinoid's crotch, but your angled approach makes hilting yourself nigh impossible. 'So eager,' Amaryllis teases slyly[if player is breasted] while you drool across your own breasts[else if player is male] while you drool across your own cock[smn][end if], debilitating pleasure spreading like wildfire. When her strong hands begin to lift you off her length again, it's as if a great chasm is opening within your quivering folds, a yawning divide that yearns to be filled again. In one harsh thrust, your mind goes blank again, losing yourself in the primal bliss of being spread around your partner.";
	say "     The sex that follows is acutely felt, yet hazy in details. Every buck into your sordid snatch erodes your thoughts and inhibitions further until you're whinnying like a mare in heat. At points, Amaryllis pounds into your hungry tunnel with such animalistic zeal that it feels like you're being ravaged by a feral horse, slickened squelches sounding out on every rugged impact. The herm pauses at just the right moments to edge and let your lusts simmer, keeping you constantly aroused, soon begging to be filled with her seed. The rough, bestial mating is almost overwhelming, reducing your already hazy thoughts to fantasies of being a slutty, well-fucked breeding mare for the herd's powerful warriors.";
	WaitLineBreak;
	say "     At last, Amaryllis can't hold back any longer. The horse-hung warrior cinches you firm to her curvaceous form, fingers splaying to grip into your hide. Her head cranes to the [if daytimer is day]sky[else]starry sky above[end if] as she unleashes thick, heavy ropes of seed into your waiting womb, filling you with powerful blasts of cum that swell your dark-furred stomach. Groaning with need, you clamp down hard around her cock as orgasm takes hold, squirting messily around that twitching, pulsing pillar[if player is male] while your own, neglected length[smn] spurt[smv] all over the ground before you[end if]. Your lucky voyeurs are pushed past their limits as well, adding to the pervasive scent of sex and arousal that permeates the area.";
	say "     With raspy breaths, you lean back into the warrior's sumptuous breasts, letting the afterglow wash over you in a blanket of mind-numbing tingles. The spreading warmth relaxes your racing mind, and you gradually come down from that satisfying high with a weary, wavering sigh. Once you return to some semblance of normal thought, Amaryllis loosens her grip and lowers you down onto the dry grass below. You are cushioned by its long, supple fibers, and you nicker in delight as the herm nestles in with you, a softly furred hand caressing your belly while the other tickles your cum-sullied slit. After basking in her arms for a while, you give the equinoid an appreciative kiss and stand up on wobbly footing, that nagging need slaked and mind free of worry.[impregchance]";
	infect "Black Equinoid";
	now lastfuck of equinoid warrior is turns;

to say AmaryllisSex3: [Anal ride]
	setmonster "Black Equinoid";
	say "     You tell Amaryllis that you've been craving a good ass-fucking. The equinoid's muzzle spreads in a wide, lustful grin at the offer. Her fully engorged length bobs and twitches, beads of pre leaking from the tip and running down the shafting in clear rivulets. 'That sounds like fun,' she teases with a giggle. The hermaphrodite horse slides her hands around your flanks, fingers splaying out to rub and dig into your yearning cheeks. You shudder at her domineering grip, and your eyes flutter closed as you're pulled taut against the buxom's warrior's fore. Trapped as you are between her hands and curvy body, any thought beyond giving yourself to your lover is pushed from your mind as her long, flat tongue parts your muzzle, her head tilting aside to better glide that spit-slick muscle along your cheeks, teeth and palate in amorous motions.";
	say "     Moaning into her maw, you pose no resistance when the lovely horse twirls you around to face the assembled crowd. You know you should be burning with shame at being so completely exposed and needy, yet the feeling of all these eyes upon you only enhances the pleasure you feel. The pre-soaked flesh of the warrior's ponderous cock rubs against your spine, leaking slick streaks across your back that mark you with her heady, mouthwatering scent. You give a horny groan as the equinoid's hands slide lower, gripping the back of your thighs and tugging them up. In one smooth motion, she lifts you up into her arms, legs held high and rear poised precariously atop her pulsing flare. The supple texture of that organ announced itself between the cleave of your rear, smearing her essence across your [if player is male]taint and [end if]reflexively clenching tailhole. That wandering pressure gives way to a more focused contact, spongy tip pressing insistently against your cock-hungry hole.";
	WaitLineBreak;
	say "     'Ready or not,' Amaryllis warns in a soft and sultry voice. Before your hazy mind has time to register the meaning of your words, you cry out for the rest of the herd to hear as her grip relents and gravity pulls you down on her sphincter-stretching maleness. Your dark, puffy ring is mercifully stretchy enough to take her, the flexible flesh of her flare bending back to push deeper into your sweltering depths. Once securely inside you, the equinoid gives several short, hard bucks into your bottom, her hands sliding around your hips to hold you steady on the descent. In time, she works that slightly more rigid band of her medial ring past your rim with a satisfying pluck, and soon your ass presses firm to the soft hairs of her crotch, fully hilted and stretched to its absolute limits. Amaryllis shudders and whinnies at the feeling of your snugly gripping tract around her, her hot breath cascading over your neck in raspy pulses. Her hands slide up to roam over the prominent bulge of her flare in your belly, softly furred fingers sliding up and down its length in a tender caress.";
	say "     Given time to relax in her arms, your overfilled hole gradually relaxes[if player is male] and your almost painfully hard erection[smn] flag[smv] a little[end if]. You sigh out - a dazed exultation that earns an affectionate lick from your horse-hung partner. [if player is male]Eager to please, Amaryllis reaches around to gently stroke your softly pulsing length[smn], making you tremble and moan with wanton need. [end if]Once sure that your insides have adapted to her dick, the equinoid stirs with gentle rocking, her mottled log of meat sliding back and forth within you. You squirm and grind back against the leathery skin of her sheath, lustfully meeting her every loving buck. The push and pull of her impressive lance within you, along with the texture her flare and medial ring stroking your lining, keep you constantly aroused and eager, soon releasing bestial sounds of pleasure in response to your brutally satisfying mating.";
	say "     In time, the equinoid's motions become more rigorous, transitioning from those first few cautionary thrusts to rough, rapid bucking over the course of several minutes. Your distended colon ripples from the overwhelming stimulation, struggling to squeeze around her cock, your battered tract growing more and more slack with every probe of that thick, throbbing pillar. Eventually, all you can do is accept the steady barrage of mind-numbing thrusts as she fucks you with the zeal of a feral, heedless beast, pillaging your sordid depths and milking you of your pleasure. [if player is male]The direct stimulation of your prostate drives you to orgasm several times as she breeds your slickened asshole, not even pausing to allow you to recover from your most recent high before driving you to another messy climax, chaining your peaks in a haze of undulating bliss. [end if]The miasma of sex increasingly clouds your mind, stripping away your humanity with each throb and thrust into your quivering, unresisting bowels.";
	WaitLineBreak;
	say "     Nearing orgasm, Amaryllis's thrusts slow in speed but gain in force, splitting you open upon her rock-hard horsecock. You groan and do your best to clench your weakened ring around her, focusing on the concerto of slick squelches that emanate from your passionate joining. Digging her fingers into your flanks, the stallion-mare cinches you tight against her groin and cranes her head to the sky, a hard, final throb heralding a maelstrom of hot and sticky horse cum. You pull your legs tight and try to wring as many of those sticky ropes of seed as you can from her, cherishing the billowing heat that slathers your bowels and flows into your [if player is mpreg_ok]hidden male womb[else]intestines[end if]. Your stomach distends a little from the sheer volume of semen within you, her hot spunk sealed by her fat, pulsing flare. What doesn't stuff you squirts out against her waist, dripping down to form a quickly cooling puddle on the grassy earth below. You're held like this for the better half of a minute, [if player is male]your cock twitching and spurting in time with your lover's heavy throbs[else]simply shuddering and savoring the bliss of being filled[end if]. In your lustful reverie, all that matters is her rippling rod within you and the warmth of her seed in your belly.";
	say "     Spent and satisfied, Amaryllis lowers you down into the seed-streaked grass below, her weight pressing atop you in a warm, comforting blanket[if player is male] as she frots your softening lengths together[end if]. You cherish your time with the herm, sharing adoring little kisses while basking in the compliments of the crowd that's formed around you. You find yourself tempted to just lie here forever as the equinoid fingers your cum-sullied hole, pushing her fingers to the knuckle past your loose, weary ring[if player is male] and rubbing your thrumming prostate[end if]. Nickering softly, you give Amaryllis one last deep, affectionate kiss before rising up on unsteady footing, thick rivers of seed still tricking down your thighs.[mimpregchance]";
	infect "Black Equinoid";
	now lastfuck of equinoid warrior is turns;

Amaryllis ends here.
