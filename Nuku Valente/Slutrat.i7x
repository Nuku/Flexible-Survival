Version 5 of Slutrat by Nuku Valente begins here.
[ Version 5.1 - Fights flagged as situations ]

Section 0 - Slut Rat Monster

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
"Slut Rat"	"[slutratattacks]"	"[defeattheslutrat]"	"[slut rat victory]"	"[slutratdesc]"	"furry and narrow snout, with quivering black nose set in the middle of a very female, but clearly rodent"	"bent to emphasize fertile signals, with wide hips and narrow waist. You feel like you're putting out a constant ready signal to anyone looking at you"	"[one of]black furred[or]rat furred[or]softly furred[at random]"	"You have a long, [skin of player] tail. It is segmented, like a rat tail should be, thin and whip like, moving about in long motions."	"[one of]sheathed[or]leaking[or]human like[at random]"	"your face draws forward into a long snout as hair spills to your shoulders"	"you can feel your entire body changing configuration to emphasize your fertile signals, ass and hips pushing outwards as waist slims. Short claws forming on your hands, which remain smooth. The rest of you [skin of player]"	"a wave of erotic satisfaction forces you to your knees, your genitals releasing their fluids across thighs as fur explodes out across your form"	"A long slithering sensation is felt in your pants. A quick check reveals it to be a naked pink rat tail"	"it swells and throbs and refuses to calm down. It is soon leaking prefluids all over the place in constant readiness"	10	16	10	10	12	10	"Both"	45	6	13	"Unknown"	1	12	10	2	10	0	1	12	7	100	"soda"	20	4	"[one of]sultry[or]alluring[or]curvaceous[at random]"	"[one of]murine[or]ratty[or]rodent[at random]"	false	false	false	--	"slutratalt"


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"slutratalt"	retaliation rule	--	--	rattymilk rule	15	--	--	--	--	--

this is the rattymilk rule:
	say "She draws you close with a loud rumble[if face mask is equipped], pushes your face mask aside[end if] and presses your lips to a breast, holding you still until you start drinking from her.  Intense warmth rushes through your body, making you lustful and less eager to resist the sexy rat";
	choose row monster from the table of random critters;
	let dam be ( ( ( wdam entry + square root of wdam entry - peppereyes ) times a random number from 80 to 120 ) / 100 );
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say ".  You end up getting a very large dose of her milk before you are able to push away - Critical Hit";
	say "!  You take [special-style-2][dam][roman type] damage";
	if "Female Preferred" is listed in feats of player:
		say ".  You can feel a tingling in your groin that starts to flare up, but is then resisted until it subsides.";
	otherwise if cock width of player is greater than 0 and cock width of player < 10:
		increase cock width of player by a random number from 1 to 3;
		if cock width of player > 10, now cock width of player is 10;
		say ".  Your balls sing with pleasure as they grow heavier as the milk sends them into overproduction and your balls feel like they have become [ball size]!";
	otherwise if cock width of player >= 10:
		say ".  Your balls throb with pleasure as their sperm production goes into overdrive and you start dribbling sperm-rich precum from your pulsing erection.";
		increase libido of player by 2;
	otherwise:
		say ".  You squirm in shock as you feel a new set of balls erupt from your body and a [cock of player] cock forming to go with them!";
		increase cock width of player by a random number from 1 to 3;
		if cocks of player is 0, now cocks of player is 1;
		if cock length of player is 0, now cock length of player is a random number from 2 to 4;
		increase cock width of player by a random number from 1 to 3;
		say "Your balls feel like they have become [ball size]!";
	increase libido of player by a random number between 3 and 8;
	if bodyname of player is "Slut Rat", increase libido of player by 2;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
	if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 1 and 3;
	decrease humanity of player by a random number between 1 and 4;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	decrease hp of the player by dam;
	follow the player injury rule;
	say "You are [descr].";


to say slutratdesc:
	choose row monster from table of random critters;
	let debit be 0;
	if rondafight is 3:
		if hardmode is true and level of player > 9, let debit be level of player - 9;
		now hp entry is 69 + ( debit * 5 );			[- How many HP has the monster got? -]
		now monsterhp is 69 + ( debit * 5 );
		now wdam entry is 15 + ( debit / 3 );		[-Amount of Damage monster Does when attacking.-]
		now lev entry is 9 + debit;
		say "     Despite your hopes of saving her, you find yourself facing off against the slut rat Ronda.  She is a tall and intimidating wall of fur and leather, appearing female at first glance.  But you know better, sporting a bulging package under her tight, leather outfit.  She has a lustful look in her eyes, having decided she'd rather repay you for the chocolates with sex than listening to what you have to say.  You try to calm her down and get her to focus, but that moment of remembrance is fading.  In her confusion, she seems to think you're just looking to scrap to see who's on top, as the slut rats sometimes do.  Being the first of the slut rats, she is a little bigger and tougher than the others.";
	otherwise:
		if hardmode is true and level of player > 6, let debit be level of player - 6;
		now hp entry is 45 + ( debit * 5 );			[- How many HP has the monster got? -]
		now monsterhp is 45 + ( debit * 5 );
		now wdam entry is 13 + ( debit / 3 );		[-Amount of Damage monster Does when attacking.-]
		now lev entry is 6 + debit;
		say "     Towering over most, a tall intimidating wall of fur and leather. It appears female at first glance. Piercing its large directed ears are one ring a piece, one a golden hue, and another silvery shade. It's covered from top to bottom in ebony black fur, that is, where clothing is not apparent. Her eyes are the same black shade as her hair, the left eye having a scar that runs an inch above downwards in a slicing motion to an inch or two below.";
		say "     She wears a rather large leather collar with a bell attached, the bell portion resting between the massive pillows of her chest, resting on top of them like some sort of sacred artifact. The bell makes no sound. Her breasts are restrained by her leather suit, the two upside down V's struggling mightily with small buckles between them just to keep them fastened and avoid falling apart. They might be seven or so inches in radius, and the leather doesn't do much to hide the details from the front, indents visible in the leather, revealing more than it ought to.";
		say "     Her arms are long and slender, with black fur, and bright pink shaded paws. The paws have clearly defined fingers, looking quite capable of grasping things, or clawing, with sharp black shaded tips to them. Her midsection is slim and trim, and also concealed fully by the leather bodice she wears, clinging tightly to her contours.";
		say "     Gazing at her from the back, it can be seen that the leather doesn't cover much back there beyond decency. Her furred buttocks and thighs are visible, though calves are again covered in the suit. From the front, an odd sight greets the eyes. The contours of the leather shape outwards from her thighs and along her belly, the shape is distinct and hard to miss, as if this bizarre furred female were in the possession of monstrously large male genitalia. She makes no move to be discreet or hide this abnormality, seeming perfectly at ease with its existence, probably having been the one to modify the suit in the first place to cope with such an unwieldy intruder.";
		say "     Glancing back down to her feet, they are garbed in simple shoes, looking dated and worn from far too much overuse and abuse.";


to say slutratattacks:
	say "[one of]She slices at your face with a sudden swipe of her claws.[or]The slut rat makes a grab for you and rubs her body against yours, pressing her throbbing cock and luscious breasts against you.[or]The slut rat stops her heel onto your foot, then knees you in the gut.[or]Her tail loops around and tickles at you between the legs even as she shoves you back against the ground.[or]She suddenly turns, and a flying furry breast crashes into you painfully, making your head spin.[at random]";


to say defeattheslutrat:
	if rondafight is 3:
		now rondafight is 1;
		say "     You manage to knock Ronda down long enough to jump on top of her.  It takes some effort to resist fucking her then and there, your ratty blood all worked up, but you rein it in.  You tell the sexy rat to open wide, which she does, thinking she's going to get a meaty treat.  You instead quickly dump the serum down her throat and put your hand over her mouth to keep her from spitting it up.";
	otherwise:
		say "     She gives a final hiss of defiance, then scurries away out of sight, leaving you with an image of her perfect rump and twitching tail to remind her by.";


to say slut rat victory:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	if rondafight is 3:
		now rondafight is 2;
		say "     Victorious, Ronda pushes you down onto one of the crates and climbs atop you roughly.  You moan as she grinds her cock against your backside.  'See!  Told you I was sexiest beast around.  And the only change going on around here is that I'm going to make you into my sexy bitch for the next half hour,' she rumbles, pressing her thick rod deep into you.  Your moans at being penetrated stifle any attempt to tell her about the potion and soon enough, with the large rat pumping her cock into your [if cunts of player > 0]pussy[otherwise]ass[end if], you forget about it as well.  As she starts pounding you harder, you drop it to get a better grip on the crate.  True to her word, Ronda pounds you long and hard for the next half hour, swapping positions a few times, making sure she's blasted thick rat cum into you from both end and splattering it all over your face[if cocks of player > 0 or cunts of player > 0], making you cum several times as well from her enthusiastic fucking[end if].  During the course of this wild session, any last vestiges of Ronda's previous life fade away completely, buried forever under her new slut rat persona.[impregchance]";
		decrease humanity of player by 10;
		increase libido of player by 20;
		if libido of player > 80, now libido of player is 80;
		infect "Slut Rat";
	otherwise:
		if the location of the player is slutrat den:
			say "     The rat grins as she pushes you towards the others, 'Let[']s remind this one how we treat bad people'. Of course, how they treat bad people and how they treat good people can be a bit foggy at times. At the call, the other rats stop their coupling and stroking and other diversions to instead gather around you with hungry expressions.";
		otherwise:
			say "     Defeated, she grabs you and hauls you rapidly back towards her den, grinning the whole way like she knows a joke she does not care yet to share. When you arrive, you find many large pillows strewn about comfortably, and almost half a dozen other slut rats, stroking themselves, or each other, or kissing and otherwise engaged.  They all pause when you are hauled in, and scramble to their feet, rushing up to enjoy and share the fresh meat.";
		if cocks of player is greater than 0:
			say "     One rat lowers before you and takes your [cock size desc of player] [cock of player] dick into her waiting snout, suckling firmly as her hands caress your [ball size] in eager rubs of her smooth hands";
			if cocks of player is greater than 1:
				say ".  Your extra endowment is not put to waste, as a rat girl reaches for each, and you are soon being stroked in increasingly fast motions. [if cocks of player > 2]Your extra cocks are[otherwise]Your extra cock is[end if] stroked with loving adoration as they nuzzle into your excited flesh and lap at it with warm soft tongues.";
			otherwise:
				say ".";
		if cunts of player is greater than 0:
			say "     The rat who [if location of player is slutrat den]beat you[otherwise]brought you in[end if] tips you forward, pressing her massive tool against your exposed snatch and rubbing along it in slow teasing motions, considering.";
			if cunt length of player is less than 12 or cunt width of player is less than 7:
				say "     She humphs, 'You will not fit, but we can fix that,' she assures in a needy whisper in your ear. Soon your head is being tipped back as something sickly sweet is poured down your throat, making your female organs tingle powerfully as they begin to expand";
				increase cunt length of player by 4;
				increase cunt width of player by 3;
				if cunt length of player is less than 12 or cunt width of player is less than 7:
					say ".  Despite the growth, you remain a bit too small, but the rat only has so much patience. She drives up, stuffing her huge organ into your now sopping wet cunt, the lubrication doing much to ease the passage as she begins to piston against you, slapping your bottom with her huge swaying balls and breeding you with a feral intensity.[impregchance]";
				otherwise:
					say ".  Now large enough, she smoothly pops her cock into your drenched hole, your needy fluids making it quite easy for her to pump lovingly against your wanton sex, grinding her hips against you when she isn't rocking with increasing intensity, her huge balls bumping you, promising a terrific load.[impregchance]";
			otherwise:
				say "     Your needy cunt is soon being stuffed and your body rocked as she crashes into you with practiced strokes, tickling at your most sensitive places with her rock hard member. You can feel the tool spurting thick gobs of fluid inside of you with every thrust, even though she hasn't even climaxed yet, your body tingling with pleasure.[impregchance]";
		otherwise:
			say "     The rat [if location of player is slutrat den]beat you[otherwise]brought you in[end if] leans you forward and presses her massive tool to your back door, easing up into your body with strange ease despite the size of the tool. As she rocks against you, new sensations explode and echo through your body. She pets over your [bodydesc of player] form and coos in your ear, pistoning against your ass with increasingly eager thumps, eventually filling your ass with her thick seed.[mimpregchance]";
		say "     A rat grabs your head and pulls you off towards a waiting nipple. The milk flows thick and sweet across your tongue as your groin throbs and tingles with new delights.  [slut rat growth]";
		say "     All at once, everyone is climaxing. In you, around you, shuddering squeals of rodent delight before you feel your own body shudder in powerful release. As darkness claims you, you can see the den getting smaller, the original rat dragging you away.";
		if a random chance of 1 in 2 succeeds and slutrat den is unknown:
			say "You remember the way back!";
			now the Slutrat Den is known;


To say slut rat growth:
	if "Female Preferred" is listed in feats of player:
		say "You resist the growth!";
	otherwise if cocks of player is 0:
		now cocks of player is 1;
		increase cock length of player by a random number from 2 to 4;
		increase cock width of player by a random number from 1 to 3;
		say "Your new balls feel like they have become [ball size] and you gain a small [cock of player] cock to go with them!";
	otherwise if cock width of player >= 10:
		say "Your balls throb with pleasure as their sperm production goes into overdrive and you start dribbling sperm-rich precum from your pulsing erection.";
		increase libido of player by 2;
	otherwise:
		increase cock width of player by a random number from 1 to 3;
		if cock width of player > 10, now cock width of player is 10;
		say "Your balls feel like they have become [ball size]!";


Section 1 - Slut Rat Den & Arrival

SlutRat Den is a room. "This little slice of [']heaven['] is a cleaned out section of the sewers. Despite its location, it smells of a soft incense, mixed with the heavy, musky odor of the rats that dwell within it.  Large pillows have been thrown around, many supporting the full rumps of their rodent owners as they watch your movements.  For entertainment, besides one another, small heaps of books have been scattered about wherever their owners last grew tired of them.  A dart board is also set up on the far wall with small metal darts poking in it at wildly varying points.[slutratdenscene]". Slutrat Den is private. Slutrat Den is fasttravel. It has a number called visittimes.  Slutrat Den has a number called pooltable.

SlutratSub is a number that varies.  SlutratSub is usually 5.		[0 to 10 range, 5=neutral, higher is more a rat sub]
Slutratcor is a number that varies.
lastratvisit is a number that varies.

the scent of the SlutRat Den is "The den is heavy with the musky scents of the lustful rats, which is only slightly masked by the soft incenses.".

To Say slutratdenscene:
	[puts Slut Rat as lead monster for easy use]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	if lastratvisit - turns is less than 8 and visittimes of slutrat den > 0:
		continue the action;
	now lastratvisit is turns;
	if visittimes of SlutRat Den is 0:
		say "     You follow your memory back through the sewers, pulling yourself along the, sometimes frighteningly narrow, pipes. At points you have to crawl on hands and knees for what feels like an hour. You wonder to yourself how the rat managed to haul you so effortlessly all this way, but you are determined. The scent of them hits you first, and you hasten your steps.[line break]     Heart pounding, you start to run down the tunnel, skidding on the slimy floor and almost falling as you turn sharply, and half dive into the den. The rats are there, and look up at you with clear surprise.";
		say "     'Fresh bitch just can[']t wait for more', says one of the rats as she smoothly slides to her feet. A hand dips between her shapely thighs to grab at the obscenely swollen package there as she eyes you with an intense desire burning in her eyes, 'Bitch doesn't know her place. I[']ll show her how things work around here...' She advances towards you with a leer.";
		now inasituation is true;
		Challenge "Slut Rat";
		now inasituation is false;
		If lost is 1:
			move player to Mall FoodCourt;
			continue the action;
		otherwise:
			increase visittimes of slutrat den by 1;
			say "     The defeated rat withdraws into the den, scurrying beneath one of the pillows with a sullen expression. Her sisters laugh at the sight, and one of them rises to her feet in a hop, breasts wobbling enticingly as she approaches you, 'What a good bitch you are,' she croons, 'You just want some love, not fighting, am I right?'";
			say "Agree?";
			if the player consents:
				increase slutratsub by 1;
				if slutratsub > 10, now slutratsub is 10;
				say "[ratslutwelcome]";
			otherwise:
				say "     She seems surprised when you refuse the offer. Despite it, she reaches to set her naked pink hands on your cheeks and draw you forward for a kiss, 'That will be fine then. Maybe you[']re not here to be our bitch after all.' Her tongue flicks over your face and she draws you to a pillow before flopping on it herself and leaving you standing. 'Fine then, tough guy, you can do what you want, welcome to our den.' The other rats give a brief round of applause before the celebration turns more intimate between a few pairs of them, coupling together in excited squeals that don't seem to include you for the moment.";
			continue the action;
	otherwise if pooltable of slutrat den is 2:
		increase visittimes of slutrat den by 1;
		say "[ratstopoolhall]";
	otherwise:
		increase visittimes of slutrat den by 1;
	if hp of Ronda is 9 and bodyname of player is "Slut Rat":
		say "[rondarescue]";


Section 2 - Slut Rat Welcome

To Say ratslutwelcome:
	if breasts of player is greater than 0 and breast size of player is greater than 0:
		say "     Her slender fingers brush up across your [skin of player] breasts, squeezing lightly even as the sharp claws at the end slowly trail across delicate flesh. 'We[']re not always sharing.' she whispers as she gazes into your eyes with her own vibrantly violet ones, 'Such a good little bitch.' she croons, trailing claws down over your nipples as she looks downwards.";
	[Male scene, 50% chance if herm]
	if (cocks of player is greater than 0 and cunts of player is 0) or ( cunts of player is greater than 0 and cocks of player is greater than 0 and a random chance of 1 in 2 succeeds):
		say "     She crouches down and reaches to cup your groin, fingers seeking out your [cock size desc of player] [cock of player] tool and give it a few soft pulls, stroking it ever so slowly to erection as she looks up at you, 'And just how big is our little man?' she coos, long tongue flicking out across it in a flicker";
		if cocks of player is greater than 1:
			say ".  Her fine whiskers tickle at your extra man meat. She leans back and brushes across all of your painfully erect shafts, tickling from the base to the tips and back down again in slow appraisal";
		if cock length of player > 9:
			say ".  Seemingly pleased with what she finds, she takes a moment to rub her snout alongside your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if]. With the barest flicker of her tongue, she continues her inspection.  Her paws roam over the rest of your body, stroking your [if cunts of player > 1]cunts, [otherwise if cunts of player is 1]cunt, [end if]thighs and ass, putting you on display for all the other rats as she does.  After your lustful introduction to the rat nest, she gives your ass a swat.  'Go have fun now, little bitch.'";
			infect "Slut Rat";
		otherwise:
			say ".  'This won[']t do,' she says with a frown on her pointed snout. Warm fingers squeeze at your shaft, 'This won[']t do at all.' On saying this, another rat hurries forward with a plastic bottle filled with some strange purple syrup that sloshes slowly with the vigorous movement. The first rat raises up and reaches for your mouth, 'Say [']ahhh[']' she beckons with a smile.";
			say "Allow her?";
			if player consents:
				say "     The new rat pops off the top and lifts it to your [facename of player] lips. 'Drink drink drink,' she says with a clear excitement. She isn[']t alone in this. All the rats have their eyes on you, glowing eyes in the dim light locked on you as the bottle is upturned for you to swig on.";
				now lost is 0;
				ratslutchug;
				if lost is 1: [ bad end]
					say "     Your thoughts seem a jumble as you stagger in place. You feel warm paws supporting you. You try to remember what you were just doing. Something about a drink? Why would you need a drink? Who are you? Who are they? One of the rats smiles at you, and the fog lifts. You remember. These rats are your kin. Wonderful, wonderful kin.";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					end the game saying "You succumb to the honeyed drink.";
					stop the action;
				otherwise:
					infect "Slut Rat";
			otherwise:
				say "     'Bad bitch!' she hisses, 'If you won[']t learn your place, we[']ll just have to do it the hard way.";
				now inasituation is true;
				Challenge "Slut Rat";
				now inasituation is false;
				if lost is 0:
					if slutratsub is greater than 5:
						say "     You feel more confident about your dealings with the rat after that little battle.";
						decrease slutratsub by 1;
	otherwise if cunts of player is greater than 0:		[Female scene, Herm if above did not run]
		say "     Her nimble paws drift down between your legs, slipping between your thighs and parting them easily.  Her fingers slide over your pussy, teasing your sensitive folds and getting you wet[if cunts of player > 1].  Finding more than one pussy tucked down there, she switches between them a few times before settling on one[end if].  She eases a finger into you, probing your pussy and stroking your inner walls.  'And just how accommodating is our new bitch,' she giggles as she slips second finger into you and then another.  She spreads her fingers and stretches you open, seeing how roomy your cunny is.  You moan and shiver at this sensual inspection, blushing a little as the other girls are clearly watching.";
		if cunt length of player is less than 10 or cunt width of player is less than 6:
			say "     She humphs, 'Still quite tight, but we can fix that,' she assures you with a nibble at your ear. Soon your head is being tipped back as a cup with something sickly sweet pressed to your lips.  The rat grinds her bulging crotch against you thigh as she continues fingering you.  'Drink it down,' she beckons with a smile.  Allow her?";
			if the player consents:
				say "     The rat smiles as the sweet liquid is poured down your throat, making your groin tingle powerfully.  Your female genitals begin to expand while her fingers continue to probe and stroke inside you, making you quiver in delight.  Soon enough, you're moaning and panting as she displays your growing cunt for the others, who snicker and giggle as they watch the arousing show.  Turned on by the display, you can see several of them groping themselves or one another.  Soon, it becomes too much and you cum, soaking the rat's paw in your female juices.  She grins and licks her paw clean, giving your rear a swat.  'Good little bitch,' she says with a chuckle.  'Go have fun, slut.'";
				increase cunt length of player by 4;
				increase cunt width of player by 3;
				infect "Slut Rat";
			otherwise:
				say "     'Bad bitch!' she hisses, 'If you won[']t learn your place, we[']ll just have to do it the hard way.";
				now inasituation is true;
				Challenge "Slut Rat";
				now inasituation is false;
				if lost is 0:
					if slutratsub is greater than 5:
						say "You feel more confident about your dealings with the rat after that little battle.";
						decrease slutratsub by 1;
		otherwise:
			say "     She smiles as she manages to stuff her whole paw into you and starts pumping it in and out, making you moan and quiver as she fists you.  'Mmm... nice and roomy,' she rumbles.  'Just like a nice bitch should be,' she adds while wiggling her fingertips to tease inside you before slipping her paw free.  She licks her dripping paw as her other one gives your ass a swat.  'Good little bitch,' she says with a chuckle.  'Go have a fun, slut.'";
			infect "Slut Rat";
	otherwise:
		if breasts of player is greater than 0 and breast size of player is greater than 0:
			say "     The rat arrives at the junction of your thighs and seems surprised at what she finds, or does not find. Her teeth are felt, nipping twice at your [skin of player] skin before she looks back up, 'How do you live like that?' she says in an almost accusing tone. She rises to her feet and kisses your cheek, 'Poor thing. We will just have to fix that.'";
		otherwise:
			say "     She brushes up alongside you, nose twitching lightly as she takes your scent, 'Mmm, something is wrong,' she murmurs, reaching for your flat chest, then grasping your featureless groin openly, 'You have nothing.' She moves around behind you and presses against your back, 'That won't work at all...'";
		if "Female Preferred" is not listed in feats of the player:
			say "     She draws out a bottle of strange purple fluid and holds it up to you, 'Drink, as quickly as you can.'";
			ratslutchug;
		otherwise:
			say "     Pink fingers curl at your hips as she leans in and nuzzles between your legs, 'You smell like you want to be a woman, but you're missing things.' A soft bite is felt where you should have something, then her warm tongue, slowly working her way back up along your front, 'We have just the thing.' The bite causes a light itching sensation, the demonically tainted rat's strain trying to work at your body.";
			follow the sex change rule;
			infect "Slut Rat";
			say "     Another rat hurries forward and seizes one of your hands, hauling you across the room and down a tunnel. Darkness closes in around you and she as you step quickly along the claustrophobic crawlways. Dim red light comes into view from around the corner. The rat guiding you, now that you she slows her steps and gives you a chance to look at her, is a bit more slender than the others. As she looks over her shoulders, you can see glasses balanced on her narrow snout, 'You have to go alone from here,' she says, 'Pay proper respect.'";
			slutratpatron;

To ratslutchug:
	say "Do you drink as hard as you can?";
	if player consents:
		say "     The purple stuff is cloyingly sweet and as thick as any milkshake you have ever sampled. You begin to suck as hard as you can, cheeks collapsing inwards as you try to drain the stuff from the bottle despite how slowly it wants to move. Your tongue is rewarded with a few dribs and drabs at first, lungs aching as you try harder. The bottle begins to crinkle as it bends inwards and you are suddenly rewarded with a gush of the sweet stuff. It[']s as much eaten as it is drunk, like especially thick jello with a taste that reminds lightly of honey.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     Desperate for breath, you break the seal of your lips for a gasp. The bottle snaps back to its usual dimensions and a solid object pops out of it, blocking your throat. You collapse to your knees, choking almost silently as you try to dislodge it. You can feel the rats as either side of you, rubbing their curvaceous forms along you and petting as they whisper soft enticements, telling you to swallow, not spit. With a painful gulp, the sphere descends into your belly heavily.";
		increase cock length of player by 8;
		increase cock width of player by 8;
		increase Slutratsub by 1;
		if slutratsub > 10, now slutratsub is 10;
		increase Slutratcor by 1;
		follow the cock descr rule;
		decrease humanity of the player by 20;
		say "     As the pain fades, a warmth rushes down between your thighs. Your [cock of player] [if cocks of player is greater than 1]cocks begin[otherwise]cock begins[end if] to grow rapidly. The sound of stretching flesh is barely heard as pleasure runs through your altering shaft in sharp, almost painful, spikes of delight. The rats are cheering on the growth while the two beside you reach to rub and caress encouragingly. You are all too soon long enough for both of them to pull, squeeze, and play with you without getting in the way of the other, lavishing attention on your now [cock size desc of player] equipment with agile fingers and slippery tongues.";
		say "     Their hands leave your sensitive bits to haul you to your feet. That[']s when you notice their scent has changed. Instead of smelling like dirty animals, they smell like a delicate floral perfume, subtle and bogglingly attractive. You reach for one of them and your hand is swatted away lightly, 'Easy there, bitch,' she says with a smile, 'Good bitch. But you only touch when told to,' she says as she leans in and plants a kiss. Her fur tickles lightly against your own [skin of player] flesh as she draws you in against her curvy form. Down below, her throbbing shaft nudges against you through the leather she wears[if slutratcor is 1], 'Welcome, bitch. We[']ll have lots of fun together[otherwise], 'That[']s a good boy, drink nice and hard[end if].' Greeting given, she pushes you back half a step, and moves back to her pillow.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		try looking;
		continue the action;
	otherwise:
		say "     You seal your lips on the bottle, but make no special effort to chug down that thick, powerfully sweet, stuff. At first, the gunk doesn't move at all, being so thick, but the rats are quite happy to give it a squeeze, forcing a great dollop of the honey like texture. You force yourself to swallow it and the rats pull the bottle back, looking at you expectantly. All the rats are staring at you at this point. Your potential nervousness at this fades as a new sensation distracts you from down below. Your [cock of player] [if cocks of player is greater than 1]cocks begin[otherwise]cock begins[end if] to grow, slowly, inching forward as little crawly feelings run up and down your altering equipment.";
		increase cock length of player by 4;
		increase cock width of player by 4;
		follow the cock descr rule;
		decrease humanity of the player by 10;
		say "     Those strange crawling sensations run from the tip of your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if] down to your swelling [ball size]. Your hips buck forward against your will, bits of prefluid splattering across the floor as arousal mounts in your sensitive flesh. You clench your hands, gasping for breath as the growth begins to ebb, with a light stream of pearly fluids running down the underside of your [cock of player] equipment to pool between your legs on the floor. One of the two rats leans forward and flicks her tongue, wet and so warm, across the mess at the end, cleaning you with soft slurps. The other rat presses against your side, 'That is looking much better.'";
		say "     As the excitement fades from you, the rats abandon you to your arousal, moving to retake their places and watch you, ever so curiously, as if to see what you might do next.";
	if humanity of the player is less than 1:
		now lost is 1;
	otherwise:
		say "     The slut rat wraps her paws around your swollen, oversized cock, stroking and pumping at it until you finally cum hard.  This drains your overgrown balls and cock somewhat, but you are still quite a bit larger than before.  She continues her inspection by letting her paws roam over the rest of your body, stroking your [if cunts of player > 1]cunts, [otherwise if cunts of player is 1]cunt, [end if]thighs and ass, putting you on display for all the other rats as she does.  After your lustful introduction to the rat nest, she gives your ass a swat.  'Go have fun now, little slut.'";


To slutratpatron:
	say "     You advance towards the ominous red light in the otherwise darkened sewers. The smell of sulfur grows thicker as the slick cement walls give way to rougher hewed stone that seems to reflect that malignant red light back like a man laughing at a cruel joke. Your feet can feel the increasingly rough terrain. Stalagmites become sharper and more frequent, slowing your progress, but you can see it now. Situated a few feet ahead is a raised pedestal of some dark stone. Perched on top is a heavy tome.";
	say "     Just looking at that book causes strange whispered to echo in your mind. You can hear the clicking skitter of claws on cement, but a quick glance around shows nothing to produce it. As you approach the pedestal, a hand settles on your shoulder and turns you to face a rat face. This creature looks to have been a rat first, before taking on obscene bits of human sexuality and posture, weaving itself into a strangely attractive visage of oozing overdone lust. Her red fur seemed to smolder in the dark, flickering even as she smiles. With a puff of smoke, she draws you closer to herself, pushing her abundant chest to yours. Her eyes seem to bore into your own. You can't make out the colour, you can't even make out the shape. Looking into them causes physical discomfort.";
	say "     'I can see that they sent you to me for help,' she says with a soft, sensual growl.  As she speaks, her paws roam over your body and you shiver in pleasure at her every touch.  She seems to exude sexual energy, wonderful and arousing.  You cannot help but long for her eager for anything she wishes of you or your body.  Her runs her paw along the edge of your ear then guides your head to her ample bosom, pressing your lips to her red nipples.  Her scent, even stronger now, almost commands you to start sucking and you obey that urge.  Her milk flows readily, thick, creamy and full of corrupting energies.";
	if cunts of player > 0:
		say "     As you nurse from her, her cock grows hard and starts bumping against your pussy.  Her throbbing meat feels so hot as it drives its way into your tight hole, spreading you open around it.  You moan and quiver, unwilling to stop this darkly beautiful creature from fucking you.  You know its great size should be painful for your small cunt, but you are overwhelmed by the lustful pleasure of giving yourself to her.  When she finally cums, you are released and you stagger back to join the others, who grin at your belly bloated with milk and cum.";
	otherwise:
		say "     As you nurse from her, her cock grows hard and starts grinding against your body.  You place your hands on it and start stroking, needing to please this darkly beautiful creature.  Her throbbing meat feels so hot as it grinds against you, leaking thick, sticky pre onto you.  You moan and quiver, unwilling to stop nursing from this lovely creature as you seek to please her.  When she finally cums, you are released and you stagger back to join the others, who grin at your belly bloated with milk and cum.";
	increase Slutratcor by 1;
	increase slutratsub by 2;
	if slutratsub > 10, now slutratsub is 10;
	infect "Slut Rat";
	follow the sex change rule;


Section 3 - Dart Board

There is a ratdartboard in SlutRat Den. "The dart board looks like anyone could [bold type][link]throw darts[end link][roman type] if they felt like it.".

ratdarts is an action applying to nothing.
understand "throw darts" as ratdarts.
understand "play darts" as ratdarts.
lastratdartthrow is a number that varies.  lastratdartthrow is usually 555.
ratdartcount is a number that varies.

check ratdarts:
	if the location of the player is not Slutrat Den, say "What darts?" instead;
	if visittimes of slutrat den is less than 1:
		say "The rats scowl at you when you approach the dart board. Perhaps you should reconsider.";
		say "Continue?";
		if the player consents:
			say "One of the rats hops to her feet and rushes at you angrily.";
			now inasituation is true;
			Challenge "Slut Rat";
			now inasituation is false;
			if lost is 1:
				move the player to Mall Foodcourt;
				stop the action;
		otherwise:
			say "Reconsidering your options, you back away from the dart board.";
			stop the action;

Carry out ratdarts:
	if lastratdartthrow - turns < 8:
		say "The other rats grumble about you hoggin['] the board all the time.  Maybe you should wait a while before playing again.";
	otherwise:
		increase ratdartcount by 1;
		if ratdartcount is 5:
			say "     As you get ready for another throw one of the rats sighs and rolls over, tired of watching.  'I'm sick of darts.  We should find another game to play down here.  New [if cunts of player > 0]girl[otherwise]guy[end if], you're still looking around upstairs, aintcha?  How [']bout you look for something cool for us to do down here?' she says, rolling upside down on the cushions.";
			say "     'Like skeeball!' a cheery rat beside her pipes up, reaching for her neighbour's cock.  'Nah!  Skeeball's lame,' the first says, stuffing the rat's muzzle over her throbbing cock to silence her.  'Maybe a pinball machine or a video game.  Have to run a damn long extension cord for that though,' she muses, thrusting into the cocksucking rat's mouth.";
			say "     'What about pool?' another offers, coming over to play with the rat's breasts.  'Yeah, pool wouldn't be bad at all.  One of those big, classy tables they got in those high-class clubs would be awesome!  Newbie, you get right on that,' she orders, giggling as her nipples are licked and she becomes preoccupied with her playmates.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			now Pool Hall is unresolved;
			now pooltable of slutrat den is 1;
		if remainder after dividing ratdartcount by 4 is 0 and pooltable of slutrat den is 1:
			say "     The same slut rat from earlier [one of]looks up from plowing another smaller rat as you approach the board again.  'Hey newbie, any luck finding us that pool table or somethin[']?' she asks, not breaking her pace.  You shake your head and she grumbles, 'Bummer!' and returns to nibbling on her current lover's ear.[or]scratches in itch on her chest, making her large breasts jiggle.  'Any luck with getting us something else to do?' she bitches.[or]yawns in boredom.  'We should really have something more than darts.  Go back topside and look for a classy pool table.  Try the High Rise District for a fancy pool hall,' she suggests.  'Yeah, get moving!' a few of the others pipe up.[or]presses another rat's face to her dripping pussy.  'You should really head topside and find us that pool table,' she complains.  'Yeah!  And look for a skeeb-' the second girl starts to say, but is cut off as the bigger rat stuffs her face back to her cunt.[in random order]";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: Taking a brief breath, you draw back the dart and eye the center circle. With a sudden thrust, the dart sails forward. ";
		let total be bonus + dice;
		now total is total / 5;
		if total is less than 0, now total is 0;
		if total is greater than 5, now total is 5;
		if total is:
			-- 0:
				say "Your dart goes drastically wide, almost hitting one of the lounging rats. With a loud annoyed sound, she moves to tackle you to the ground.  Do you let her?";
				if the player consents:
					increase slutratsub by 1;
					if slutratsub > 10, now slutratsub is 10;
					say "[slutratsubsex]";
				otherwise:
					now inasituation is true;
					Challenge "Slut Rat";
					now inasituation is false;
					if lost is 1:
						move player to Mall Foodcourt;
			-- 1:
				say "You missed entirely! The rat bounces lightly off the cement wall behind the board and falls to the ground with a soft clatter. The rats snicker softly at your performance";
				if a random chance of 1 in 3 succeeds:
					say ".  A naked pink tail swats across your back end, 'You can do better than that.'";
				otherwise:
					say ".";
			-- 2:
				say "Your dart lands on the outer rim of the board. The rats nod lightly, but none of them look terribly impressed at your skill. Perhaps with more practice...";
			-- 3:
				say "With pride, you land in the inner section of the board, shy of a bulls eye. One of the rats tosses a pack of chips towards you with a thumbs up.";
				increase carried of chips by 1;
			-- 4:
				say "Yes! Your dart lands in the central circle, a bulls eye! The rats give a polite cheer at your excellent shot. One of them reaches under herself and pulls out a can of soda and tosses it to you, still warmed from her rump.";
				increase carried of soda by 1;
			-- 5:
				say "Perfection. Your dart lands right in the middle of the central circle. A soft whistle of appreciation raises through the gathered rats. You can't help but feel more confident in yourself as a result.";
				decrease slutratsub by 1;
				if slutratsub < 0, now slutratsub is 0;
				increase score by 5;
				say "     One of the rats seems interested in you as a result of your athleticism. Do you wish to approach her?";
				if the player consents:
					say "[slutratdomsex]";
		if remainder after dividing ratdartcount by 3 is 0, now lastratdartthrow is turns - 1;	[max three darts before a delay is imposed]
		follow the turnpass rule;


Section 4 - Slut Rat Sex

To say slutratsubsex:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	say "     The horny rat pins you down, clearly intent on having her way with your body.  You moan softly and strip as you submit yourself to her needs.  Her paws run over your body";
	if cunts of player > 0:
		say ", drifting down your chest to your groin[if cocks of player > 0].  She wraps her paw around your cock and balls, then lifts them out of the way to expose your waiting pussy[otherwise].  She slides her fingers across your waiting pussy[end if].  You moan softly as the rat herm teases your pussy with a hungry, lustful grin.  She moves into position, lining her cock up with your slit and thrusts into you[if cunt length of player < 10 or cunt width of player < 6].  Your wet snatch is a tight fit for the well-hung rat, but she growls and thrusts all the harder, eventually stuffing your pussy full of rat cock[otherwise].  Your wet snatch spreads open for the well-hung rat, taking her cock fully into you, making you both moan in pleasure[end if].";
		if SlutratSub > 5:
			say "     'Mmm... you're a good little bitch, aren't you?' she moans in your ear as she fucks you.  You can't help but nod in agreement, loving the feel of this powerful, sexy rat dominating you.  Her big, thick cock throbs inside you so deliciously with each push it makes into your eager body.  You grip her balls and fondle them, longing for her to fill you with her seed[if cocks of player > 0].  She takes your cock in hand and starts stroking your meat, making you whimper in pleasure like the horny slut you are[otherwise].  She slides her paws to your breasts, groping and squeezing them, making you whimper in pleasure like the horny slut you are[end if].  Eventually the rat girl's penis drives into you one last time and unleashes a hot rush of seed deep inside you.  You can feel each blast of that powerful rat's cum and longing for more even after the heavy load you've received[if cocks of player > 0].  Your paint your chest with your own cum as the pleasure of this wild romp pushes you to orgasm hard for dominant rat pumping your shaft[end if].  Satisfied, she withdraws her softening shaft and gives your ass a swat while rat cum leaks from your gaping slit.[impregchance]";
		otherwise:
			say "     'Mmm... nice to be bottom for a change, isn't it?' she moans in your ear as she fucks you.  You can't help but nod in agreement, loving the feel of this powerful, sexy rat atop you.  Her big, thick cock throbs inside you so deliciously with each push it makes into your eager body.  You grip her balls and fondle them, eager to help her get off[if cocks of player > 0].  She takes your cock in hand and starts stroking your meat, spreading your leaking precum over it[otherwise].  She slides her paws to your breasts, groping and squeezing them, making your nipples painfully hard[end if].  Eventually the rat girl's penis drives into you one last time and unleashes a hot rush of seed deep inside you.  You can feel each blast of that beautiful rat's cum and watch your tummy swell a little from the output of her big balls[if cocks of player > 0].  Your paint your chest with your own cum as the pleasure of this wild romp pushes you to orgasm hard for sexy rat pumping your shaft[end if].  Satisfied, she withdraws her softening shaft and gives your ass a swat while rat cum leaks from your gaping slit.[impregchance]";
	otherwise:
		say ", moving up to grab your head and pulling it between her legs.  Finding your face pressed against the rat's large cock, you take in her strong, arousing scent.  Her strong scent is quite arousing and you find yourself submitting to her desires and begin to lick and kiss her throbbing meat.  She moans happily and rubs her paws over your head, scritching your ears.";
		if SlutratSub > 5:
			say "     'Mmmm... you're a good little bitch, aren't you?' she moans as you open wide and start sliding your lips over her musky meat.  You can't help but nod in agreement, bobbing your head over her cock as you love the taste of this powerful, sexy rat.  Her precum leaks into your mouth and down your throat, its delicious taste making you release a muffled moan.  Your cock throbs and dribbles pre onto the dirty floor as she rubs her rat foot down onto it.  Taking her heavy balls in your hands, you fondle and caress them, eager for the tasty treat they contain.  She forces your head forward, sliding her large, dripping glans down your throat as she starts thrusting, fucking your face.  Your tongue lavishes attention upon the sexy rat dominating you until she moans loudly when her pulsing cock shoots her hot seed down your throat.  Pulling back after a few spurts, she fills your mouth with the rest, letting you taste her seed before you swallow it down to join the rest warming your belly.  As you swallow her musky, virile seed, you cum hard under her footpaw, spraying your semen onto the floor.  Satisfied, she withdraws her softening shaft and gives your ass a swat to send you back to the group.";
		otherwise:
			say "     'Mmmm... I'm going to enjoy giving you a tasty treat,' she moans as you open wide and start sliding your lips over her musky meat.  You can't help but nod in agreement, bobbing your head over her cock as you love the taste of this powerful, sexy rat.  Her precum leaks into your mouth and down your throat, its delicious taste making you release a muffled moan.  Your cock throbs and dribbles pre onto the dirty floor as she rubs her rat foot down onto it.  Taking her heavy balls in your hands, you fondle and caress them, eager for the tasty treat they contain.  She guides your head forward, sliding her large, dripping glans down your throat as she starts thrusting as you deep throat her.  Your tongue lavishes attention upon the sexy rat before you until she moans loudly when her pulsing cock shoots her hot seed down your throat.  Pulling back after a few spurts, she fills your mouth with the rest, letting you taste her seed before you swallow it down to join the rest warming your belly.  As you swallow her musky, virile seed, you cum hard under her footpaw, spraying your semen onto the floor.  Satisfied, she withdraws her softening shaft and gives your ass a swat to send you back to the group.";
	infect "Slut Rat";

To say slutratdomsex:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	if cocks of player > 0:
		if a random chance of 1 in 2 succeeds:
			say "     Feeling in the mood for a little fun, you press the slutty rat towards a battered and stained loveseat someone managed to get down here.  The rats sitting there vacate it reluctantly as you both strip, but the prospect of watching a little fun clearly helps.  You push the rat face down onto the stained cushions and get your cock lined up with her wet slit.  She moans softly as you tease your cock against her wet slit a few times before sinking into her, listening to her give a [if cock length of player < 6 or cock width of player < 4]soft sigh of pleasure as you mount her[otherwise if cock length of player < 18 and cock width of player < 12]delicious moan of pleasure as you mount her[otherwise]muffled yelp of painful pleasure as your big cock is driven into her[end if].  As you start thrusting, she squirms and wriggles under you, her wet cunt gripping and squeezing your cock with need[if slutratsub < 4].  You press her rodent muzzle against a musky stain on the cushions as you take her cock in your other hand and start pumping at it[otherwise].  You wrap your hand around her cock and start pumping at it[end if].  You pound into her again and again, loving her lustful cries as the others watch you have your way with the horny rat beneath you.  After a good, long fucking, you drive hard into her and blast your thick seed into her[if cock width of player > 12], making her belly swell with your ample load[otherwise], emptying your balls into her dripping slit[end if].  With you stroking her throbbing meat, she blasts her load onto the loveseat, adding another big, sticky stain to it[if slutratsub < 4], which you leave her lying in.  The rats who left the loveseat scramble back onto it, sharing other rat between them to deal with their own lusts now[otherwise].  Satisfied, you pull out and pull her up into a kiss while the loveseat's previous occupants reclaim it to satisfy their own excited lusts now[end if].";
		otherwise:
			say "     Feeling in the mood for a little fun, you push the slutty rat to one of the walls and move in behind her.  Stripping off your clothes, you lift her rat tail up and grind your hard cock against her ass.  She moans and wiggles back against your throbbing meat.  Grabbing her bottom firmly, you sink your hard cock into her, making her [if cock length of player < 6 or cock width of player < 4]give a soft sigh of pleasure as you mount her[otherwise if cock length of player < 18 and cock width of player < 12]moan in satisfaction as you mount her[otherwise]release a muffled yelp of painful pleasure as your big cock is driven into her[end if][if slutratsub < 4].  She braces herself against the wall as you pound into her hard and fast, [otherwise].  She rubs back against you as you thrust into her steadily, [end if]making her wet cunt quiver and squeeze around you wonderfully.  Putting a free hand around her throbbing meat, you pump and stroke her cock as you fuck her until she blasts her thick seed across the wall, painting it with her semen.  As she orgasms, her cunt squeezes and milks at your shaft, getting you to cum hard and pump your load into her[if cock width of player > 12].  Your ample load makes her belly swell as you drain your big balls into her lustful body[end if][if slutratsub < 4].  Finished with her, you pull your cock free and leave her lying against the wall in a post-orgasmic daze, her cum running down the wall onto fur[otherwise].  Finished, you slide your cock free and pull her into a lustful kiss and an ass squeeze before parting[end if].";
	otherwise:
		if a random chance of 1 in 2 succeeds:
			say "     Feeling in the mood for a little fun, you press the slutty rat towards a battered and stained loveseat someone managed to get down here.  The rats sitting there vacate it reluctantly as you both strip, but the prospect of watching a little fun clearly helps.  You push the rat to lay down on the stained cushions and straddle her throbbing cock.  You stroke and pump it, making sure it's fully hard before moving to ease yourself down onto it, eager to take what you want from this sexy rat.  She moans as your wet pussy kisses her glans, then starts to spread open for it[if cunt width of player < 9 or cunt width of player < 6].  Her large cock is difficult for your small pussy to take, but you take your time and are persistent, forcing the rat below you to let you set the pace until you are stuffed full of her throbbing meat[otherwise if cunt length of player < 16 and cunt width of player < 12].  Her large cock is a wonderful fit for your large pussy, wonderfully long and filling.  You do take your time sinking down onto it, wanting to savour the sensation, forcing the rat below you to let you set the pace[otherwise].  Your cavernous pussy takes her large cock in easily, letting you drive the full length of it into you in one quick push.  The sexy rat moans deliciously as your hot, slick cunt swallows up her big penis in one go[end if].  You give the rat's cock a good, long ride, switching from fast pounding to slow creeping, drawing it out until the slut rat is moaning and begging you to let her finish.  As you feel your own orgasm approaching, you push towards it until you cum hard and allow the rat to finally get off and pump her ample load into you with a moan of satisfaction[if slutratsub < 4].  Finished with her, you get up and leave her on the loveseat in a daze for its previous occupants to use to sate their lusts[otherwise].  Finished, you get up and pull her into you arms for a lustful kiss and an ass squeeze before parting[end if].[impregchance]";
		otherwise:
			say "     Feeling in the mood for a little fun, you push the slutty rat to her knees and [if slutratsub < 4]press[otherwise]guide[end if] her muzzle between your legs to your dripping cunt.  Obediently, she sets to licking and kissing your sensitive folds, then slides her slick tongue into your hot tunnel, making you sigh in pleasure.  You run your fingers through her rough hair and over her round ears.  She works hard to please you, working her tongue up inside you and flicking it against your inner walls to excite any sensitive spot she finds.  Between licking, she kisses and sucks at your clit, making you moan all the more.  She keeps this up diligently until you cum hard, soaking her face and muzzle in your hot juices, which she eagerly laps up.  As the rush of your orgasm starts to fade, you press her to lay back on the floor and take her cock firmly in hand.  As a reward for her hard work and attentive tongue-work, you pump her meat until she cums hard and sprays her seed over herself.  Finished with her, you leave her like that, stick with a mix of your juices and her semen.";
	infect "Slut Rat";


Section 5 - Pool Hall

Pool Hall is a situation.  Pool Hall is resolved.
The sarea of Pool Hall is "High".

Instead of resolving a Pool Hall:
	if pooltable of slutrat den is 1:
		say "     Passing down a side street between the high rises, you spot a pool hall.  Recalling the request from the rats, you head on over to check the place out.  It is a rather upscale looking place, probably used by business managers, bankers and lawyers working in the area.  A place to go and have [']meetings['] while charging their clients.  Looking inside, you find that it's been taken over by a group of pumas.  They seem to have polished off most of the contents of the bar and are now playing pool or fucking on the tables.  A pair of the herm cougars are even trying to do both a once, lining up a shot on the side pocket while her competitor gets ready to drive her cock into her back hole to make her scratch.  Even with this kind of enthusiastic playing going on, some of the tables appear to still be in good condition.  Surely the rats could find one to make off with down the subway tunnels to add to the den.  The cats are too numerous for you to take on alone.  You should go back to the rats and let them know about your find.";
	now lastratvisit is turns + 8;
	now pooltable of slutrat den is 2;
	now Pool Hall is resolved.

to say ratstopoolhall:
	if bodyname of player is "Slut Rat":
		say "[line break]";
		say "     Returning to the slutrat den, you locate try to mobilize the troops against the cougars of the pool hall.  The large rat who started this plan is all on board, as is the skeeball nut.  Most of them are reluctant to leave their life of lustful indolence to go, so you try your best to convince them.";
		let the bonus be (( the charisma of the player minus 10 ) divided by 2);
		if slutratsub < 5, increase bonus by ( 5 - slutratsub );	[increase for being a dominant rat]
		if slutratsub > 5, increase bonus by ( slutratsub + 5 );	[increase for being a popular slut]
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: vs 16.";
		if dice plus bonus < 16:
			say "     Despite your attempts to get them moving, the rats as a whole are too complacent.  The prospect of getting into a big fight with those felines doesn't appeal to them.  When a distracted pair at the back start making out, their attention wanes.  Soon there's a little small orgy in that corner of the room and the opportunity is lost.  You'll have to come back and try again another day.";
		otherwise if dice plus bonus >= 16:
			say "     You manage to get the rats worked up, a growing enthusiasm running through the group.  One voice complains about the prospect of fighting those felines, but you manage to curtail the spreading discord by emphasizing that they're sexy, herm kitties.  You go on about how big and sexy the slut rats are and you girl will be able to out-sexy those stupid cats until they don't know what hit them.  The crowd starts to roar and pours out of the den, dragging you along, off to set your plan into motion right away.  You'd better be ready for it, because there's no turning back now.";
			say "[poolhallattack]";
	otherwise:
		say "     Returning to the den, you try to get the rats interested in going after the pool hall, but they don't really listen to you much.  You'll need a more ratty body to excite their attention long enough to listen to you.";

to say poolhallattack:
	now inasituation is true;
	say "     Travelling through the sewers and subways, the you and a band of the strongest rats emerge near the pool hall.  With such a large force, you encounter no trouble along the way, everything fleeing from the rat patrol.  You take a moment to coordinate with the other rats and then charge in en mass, taking the pumas by surprise.  The rats spread out, fights breaking out everywhere as one of the cougars charges to take you down.";
	now cougarfight is 3;
	challenge "Cougar";
	if cougarfight is 1:
		say "     With the first cougar down behind you, you look around the room and move to intercept on moving to double-team one of your rat sisters.";
		now cougarfight is 3;
		challenge "Cougar";
		if cougarfight is 1:
			say "     With another feline down, you have a moment to look around the room.  Things are starting to go in the rats['] favour, but there are more to deal with.  Picking another kitty, you charge in.";
			now cougarfight is 3;
			challenge "Cougar";
			if cougarfight is 1:
				say "     After another successful fight, you look up just in time to see another group of the kitties, drawn by the noise, emerging from the back.  They growl loudly and charge, turning the tide of battle for a moment.  You leap over a pool table and charge at the one leading the counter-attack.";
				now cougarfight is 3;
				challenge "Cougar";
				if cougarfight is 1:
					say "[poolhallvictoryorgy]";
	if cougarfight is 2:
		say "[poolhalldefeat]";
	if cougarfight is 3:
		say "[poolhallflee]";
	now inasituation is false;


to say poolhallvictoryorgy:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	say "     Adding another cougar to your pile of defeated foes, you look around to see the puma counterattack faltering and then breaking entirely.  There are calls for retreat and the feline herms try to make a break for it, but several are unable to get away, piled on by horny, victorious slut rats.  Other, lost in the lusts of their own victory and fucking their prey, don't hear the call and soon have the tables turned on them by a few other rats joining in.  Finding yourself quite aroused by the orgy of sex and transformation around you, you rush over to join the rat duo of the one who got you looking for a table and her skeeball-loving friend.";
	say "     They have one of the pumas bent over a pool table and are about to have some fun with her.  Taking an eight ball in her paw, the lead rat stuffs it in the puma's muzzle to silence her while the other starts licking at her pussy and asshole.  Deciding that, since they don't remember their old names, you'll just have to give them nicknames.  'Nice move, Eight-ball,' you say, patting the larger rat's shoulder.  'Be sure to lick her nice and deep, Skeeball.  I want her good and slick,' you chuckle as you [if cocks of player > 0]stroke your throbbing cock[smn][otherwise]swat the kitty's ass[end if].";
	if cocks of player > 0:
		say "     After Skeeball's licked the kitty until she's mewling with need around her stuffed muzzle and grey fur's starting to spread across her muff, you move atop the feline and sink your [if cocks of player > 0]cocks into her pussy and tailhole[otherwise]cock into her pussy[end if].  Leaning over her, you nibble and licks at her ears, tugging at them lightly until they take on a rounder, rat-like shape.  While you merrily fuck your victim, Eight-ball moves in behind you and rubs her own throbbing cock against your ass.  Wiggling your bottom, you steady yourself for the rat and she drive her throbbing rathood into your [if cunts of player > 0]dripping snatch[otherwise]tight hole[end if].  With the added rat behind you, you drive all the harder into the puma.  As her short muzzle elongates into a lovely, rat-like muzzle, Skeeball is there to pull out the pool ball and replace it with her cock.  Getting stuffed from both ends, the cougar changes faster and faster, well on her way to becoming a lovely and lustful new rat sister.  With a final thrust, you push deep into her and unleash your hot load into her, filling her womb[if cocks of player > 1], and ass[end if] with your semen.[impregchance]";
	otherwise:
		say "     After Skeeball's licked the kitty until she's mewling with need around her stuffed muzzle and grey fur's starting to spread across her muff, you pat the slutty rat and tell her it's time to fuck that hole.  Skeeball, normally the bitch, jumps at the opportunity and sinks her cock slowly into the herm's cunt.  Eight-ball, not to be left out, moves in around behind the other rat.  'Here, let me help you with that,' she says, sinking her cock into her partner's cunt.  With the stronger rat behind her, Skeeball pounds hard and fast into the cougar.  You climb up onto the table and, removing the pool ball from her changing muzzle, guide her rat-like face to your snatch, having her lick your pussy while the rats take her.  You rub her changing ears, stroking and rubbing them into a lovely rat ears while her tongue dives into you again and again.  With such an exciting set of partners, you end up cumming hard, soaking her muzzle and leaving a wet patch on the green felt of the table.";
	say "     The rat orgy goes on for quite a while, with a celebration that finishes off the liquor at the bar during the orgy of sex.  You swap around with lots of the rats, taking turns enjoying the transforming felines, helping them to become lovely, slutty rats.  This new bitches are made to carry one of the large pool tables down into the sewers and bring it all the way back to the rat den.  Space is made and the new table is set up, much to the delight of the other rats.  After another bout of celebratory sex, you are left sexually satisfied and covered in rat cum and juices after having been filled every which way possible.";
	infect "Slut Rat";
	infect "Slut Rat";
	move Pool Table to slutrat den;
	now pooltable of slutrat den is 3;
	decrease humanity of player by 15;
	increase morale of player by 5;
	increase score by 25;
	decrease slutratsub by 3;
	if slutratsub < 0, now slutratsub is 0;

to say poolhalldefeat:
	say "     After being defeated and pounced by the lustful kitty, several of the rats start screaming to retreat and scramble out of the pool hall.  You manage to make it out, but several of your rat sisters are not so lucky.  As you ran out, you could see them pinned under the felines and becoming more like the pumas by the moment.  There's little you can do for them now and you all rush back to the subway entrance and take cover back underground.  You and the rats return to the den, arguing all the way.  They're disappointed with how your plan turned out, with the girl who harassed you into getting a pool table in the first place bitching you out rather hard.  The skeeball fan grabs her muzzle from behind to silence her, pressing the slut rat against the wall, telling her angrily to shut up as she drives her cock into the vocal rat.  'You're. The. One. Who. Ran. FIRST!' she growls, punctuating each word with a hard thrust into the slut rat's cunt.  It seems like there roles have been reversed and she'll be the bitch from now on.  Another couple of rats grab you, deciding to sate their frustrated lusts on you for your bad leadership as well.";
	say "[slut rat victory]";
	now pooltable of slutrat den is 100;
	decrease humanity of player by 5;
	decrease morale of player by 5;
	decrease score by 10;
	increase slutratsub by 2;
	if slutratsub > 10, now slutratsub is 10;
	wait for any key;


to say poolhallflee:
	say "     Having had enough, you make a break for it, calling for the other rats to retreat.  While most of the manage to make it out, some of them are captured and trapped inside with the horny felines.  Quite certain they'll be made into more pumas, you and the others sadly return back to the den, arguing all the way.  They're disappointed with your decision to turn tail and run, with the girl who harassed you into looking for a pool table in the first place bitching you out rather hard.  She grabs you roughly, deciding to sate her frustrated lusts on you for your bad leadership and planning, with her skeeball loving friend moving in to share in the fun.";
	say "[slut rat victory]";
	now pooltable of slutrat den is 100;
	decrease humanity of player by 5;
	decrease morale of player by 10;
	decrease score by 20;
	increase slutratsub by 3;
	if slutratsub > 10, now slutratsub is 10;
	wait for any key;


Section 6 - Pool Table

Pool Table is a person. "There is the pool table you helped retrieve at one end of the spacious rat den, available for play when not in use by the others.  Despite being new, it's already picked up a few stains from rather [']enthusiastic['] play.  To see if anyone wants a game, simply [bold type]talk pool[roman type]."
The description of Pool Table is "     This is the pool table that you, Eight-ball, Skeeball and the others were able to retrieve for the rat's den.  It's picked up a few stains from some [']enthusiastic['] play, but is still in good shape.  It's very popular with the girls and makes for another welcome diversion[if lastpoolgame - turns < 8].  The table is currently in use by some of the others[otherwise].  The table is free if you'd like a game, just [bold type]talk pool[roman type] of see if you can convince someone to have a game with you[end if].".
The conversation of Pool Table is { "Scratch!" }.
lastpoolgame is a number that varies.  lastpoolgame is normally 555.

the scent of the Pool Table is "The pool table smalls of the rats that have been playing it and of the stains they've left on it.".

instead of fucking the Pool Table:
	say "I know it's got holes, but those aren't the kind of balls you're supposed to put into them.";

instead of conversing the Pool Table:
	if lastpoolgame - turns < 8:
		say "     The table currently has some rats playing it.  You should probably wait until it's free before playing again.";
		stop the action;
	let T be 1;
	if lastpoolgame is 555:
		say "     You ask around for someone to play pool again and Eight-ball pipes up.  'I'd love a game against you to celebrate getting this sweet, big ass pool table for us.  And I can't wait to win so I can celebrate by taking that sweet, big ass of yours as well,' she says with a grin.  It seems you're up against the best player in the den.  Shall you play to win (Y) or play to lose (N)?";
	otherwise:
		let T be a random number between 1 and 4;
		say "     You ask around for someone to play pool against and [if T is 1]Eight-ball offers to play against you.  She's clearly one of the best in the rat den at the game[otherwise if T is 2]Skeeball offers to play against you.  She's arguably the worst player among the rats, but still loves a good game[otherwise]one of the other rats offers to play against you[end if].  You rack up the balls and get ready to play.  Shall you play to win (Y) or play to lose (N)?";
	let targetnum be 0;
	if T is 1, now targetnum is 16 + ( level of player / 6 );
	if T is 2, now targetnum is 6;
	if T is 3, now targetnum is 10 + a random number between 1 and 3 + ( level of player / 10 );
	if T is 4, now targetnum is 12 + a random number between 1 and 3 + ( level of player / 10 );
	if the player consents:
		let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: vs [targetnum].";
		if dice plus bonus < targetnum:
			say "     You try your best, but end up losing to [if T is 1]Eight-ball[otherwise if T is 2]Skeeball, who is amazed at her luck[otherwise]the rat[end if].  With a grin, the rat pats your ass.  'To the winner goes the spoils,' the busty rat says with a chuckle, rubbing her crotch.";
			now lastpoolgame is turns;
			decrease morale of player by 1;
			increase slutratsub by 1;
			if slutratsub > 10, now slutratsub is 10;
			say "[slutratsubsex]";
			infect "Slut Rat";
		otherwise:
			say "     You play a good game and manage to beat [if T is 1]Eight-ball, who compliments your skills[otherwise if T is 2]Skeeball, who takes her loss with a grin and a wave of her booty in anticipation[otherwise]the sexy rat[end if].  Giving her a grope, you start manhandling her, looking forward to claiming your prize for winning.";
			now lastpoolgame is turns;
			increase morale of player by 1;
			decrease slutratsub by 1;
			if slutratsub < 0, now slutratsub is 10;
			say "[slutratdomsex]";
	otherwise:
		let the bonus be -4;
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: vs [targetnum].";
		if dice plus bonus < targetnum:
			say "     You play a poor game while trying to be discrete about it.  You flub a couple of simple shots, letting the other rat beat you in the end[if T is 1].  Eight-ball chuckles at your bad game and[otherwise if T is 2].  Skeeball is elated she was able to beat you and[otherwise].  The sexy rat[end if] pats your ass.  'And now it's time for me to claim my prize,' the busty rat says with a chuckle, rubbing her crotch.  As she moves in on you, you can't help but smile, getting exactly what you wanted.";
			now lastpoolgame is turns;
			increase morale of player by 1;
			increase slutratsub by 1;
			if slutratsub > 10, now slutratsub is 10;
			say "[slutratsubsex]";
			infect "Slut Rat";
			if T is 2:
				say "     After you're done fucking, Skeeball leans over and kisses the side of your muzzle.  'Thanks for going easy on me,' she whispers.  'Losing's fun too, isn't it?' she adds, making you wonder just how bad of a player she really is.  She grinds her sexy body against yours, making you strongly consider losing to her again.";
				decrease humanity of player by 5;
				increase morale of player by 1;
				increase slutratsub by 1;
				if slutratsub > 10, now slutratsub is 10;
		otherwise:
			say "     Despite making an effort to flub a simple shots, you do have to look like you're trying to win.  You play normally, but mess up every now and again.  But in the end, [one of]your opponent ends up sinking the eight ball in the wrong pocket[or]you manage a fluke shot[cycling], winning you the game.  Although you won, the rats weren't really excited by the lackluster game and so aren't impressed.  But you still are the winner though, and that means the prize is yours, grabbing [if T is 1]Eight-ball[otherwise if T is 2]Skeeball, who giggles eagerly[otherwise]the rat[end if] for a little fun.";
			now lastpoolgame is turns;
			say "[slutratdomsex]";

Section 9 - Endings

When play ends:
	if humanity of the player is less than 10 and hp of the player is greater than 0:
		if bodyname of player is "Slut Rat":
			say "     You can no longer deny your new basic needs. You flee to the mall and its comforting sewers. Following your instincts, you are soon in the welcoming embrace of your rodent sisters, who take turns fucking and being fucked by you for what feels like days in a celebration of your coming around. Your family remains there, hiding from the rescue, and living out your days together.";
			if slutratcor is greater than 4:
				say "     Your [skin of player] hide slowly tints to a deep angry red shade, turning towards black at your hands and feet. Those feet harden into cloven like hooves as the months go by and strange images assault you in your fevered lust dreams. It all comes to a crest when you awaken to a rat sister mounted on top of you, riding you for all your worth. As you climax together, you realize that this is Rod's girl. She leans in and licks her tongue over your nose, gazing into your eyes, 'It's time,' she whispers. You rise with her, each smelling of the other, and leave the other rats behind. Your dark lords have need of you both.";
				continue the action;
			otherwise if visittimes of slutrat den is greater than 0:
				if slutratsub is 5:
					say "     You are neither dominant nor submissive of your rat sisters, living as equals. This is not without its frictions, as you do not all have the same ideas, but you always managed to reach an accord, eventually. Sometimes this involves taking or being taken until someone realizes the error of their ways in a pile of sweat and other fluids, but you don't find that to be a disagreeable way to work things out.";
				if slutratsub > 6:
					say "     The others call you [']little sister['] when they are very happy with you, and [']bitch['] the rest of the time. You are the omega of the group, made to do the more menial of tasks. Still, their love for you is unquestionable, and they protect you from any and all threats to your sewer lair.";
	otherwise:
		if bodyname of player is "Slut Rat":
			say "     Despite your sanity, you find your thoughts drifting back to your rodent sisters. When the rescue comes, you point them out. They put out a terrific struggle, but, with your help, they are rounded up successfully and brought out of the city. They slowly come around to sentience again, and you all live together, working a massage parlor as a strangely loving family. No customer leaves unhappy.";


Slutrat ends here.
