Version 1 of Inflatable Otter Suit by Song begins here.
[ Version 1.0 - Initial content as commissioned by Barados on Patreon - Song ]

"Adds an inflatable otter suit with a bound state to the Bouncy Castle."

Section 1 - Documentation and Setup

[ Table of Values and Meanings                                 ]

[ InflatableOtterSuitMode                                      ]
[ Determines whether the suit is vacant or occupied when found ]
[ Set in Bouncy Castle - Upper Tower                           ]
[ 0 - Unset                                                    ]
[ 1 - Vacant (male/herm)                                       ]
[ 2 - Occupied (female/neuter)                                 ]

[ InflatableOtterSuitBindStage                                 ]
[ Determines the intensity of the bound state                  ]
[ 1 - First level of bondage                                   ]
[ 2 - Second level of bondage                                  ]
[ 3 - Third and final level of bondage (no escape)             ]

[ HP of Inflatable Otter Suit                                  ]
[ Tracks suit interactions                                     ]
[ 0 - No interactions                                          ]
[ 1 - Knows name, never bound                                  ]
[ 2 - Knows name, failed to provoke sex as non-male            ]
[ 3 - Knows name, bound before                                 ]

[ Lust of Inflatable Otter Suit                                ]
[ Spamming the fuck command chips away at player resistance    ]
[ 0 - No interactions                                          ]
[ 1 - One interaction                                          ]
[ 2 - Two interactions                                         ]
[ 3 - Three interactions                                       ]
[ 4 - Four interactions (choice of resisting or accepting)     ]

[ Lust of Inflatable Otter Suit                                ]
[ Prints custom text for successive abiding/obliging           ]
[ Unique ranges for each stage of the bound state              ]

[ Players can find the either version of the suit while any sex due to either transforming before entering the room it or re-encountering it after first contact. The code checks for this in both the vacant and occupied versions and displays alternate content accordingly ]

Table of GameCharacterIDs (continued)
object	name
Inflatable Otter Suit	"Inflatable Otter Suit"

Inflatable Otter Suit is a person. [mostly male/herm oriented]
The description of Inflatable Otter Suit is "[InflatableOtterSuitDesc]".
The HP of Inflatable Otter Suit is 0.
The Lust of Inflatable Otter Suit is 0.
The Libido of Inflatable Otter Suit is 0.
InflatableOtterSuitMode is a number that varies. InflatableOtterSuitMode is usually 0.
InflatableOtterSuitBindStage is a number that varies. InflatableOtterSuitBindStage is usually 0.


Section 2 - Suspicious Pile

Instead of sniffing Inflatable Otter Suit:
	if HP of Inflatable Otter Suit is 0:
		say "     The pile of plastic smells of saltwater and fresh synthetics, along with a seedier undercurrent of sex.";
	else if HP of Inflatable Otter Suit < 3:
		say "     The inflatable otter suit smells of saltwater and fresh synthetics, along with a seedier undercurrent of sex.";
	else:
		say "     The inflatable otter suit smells of saltwater and fresh synthetics, along with a seedier undercurrent of sex. After experiencing its attempts to molest you earlier, you can detect some of your own scent commingling with the heady aroma.";

Instead of conversing Inflatable Otter Suit:
	if HP of Inflatable Otter Suit is 0:
		say "     [one of]Try as you might, you fail to coax a response from the inanimate object[or]You are met with the sound of moans and giggles in the distance, but nothing from your prospective conversation partner[or]You are unable to make heads or tails of the vinyl's stubborn silence[or]Unless you suddenly develop superpowers, you doubt you can converse with an inanimate object[or]Surprise! The inanimate vinyl doesn't respond[or]'Ott! Sex! Squeaky!' rings an excited voice in your mind. You shake your head of these alien thoughts and resolve not to let this place get under your skin[stopping].";
	else if HP of Inflatable Otter Suit < 3:
		say "     Given your earlier investigation, you fail to see how attempting to provoke a reaction from it would serve any purpose.";
	else:
		say "     Given your earlier experience with the suit, you doubt attempting to converse with it would be a good idea.";

to say InflatableOtterSuitDesc:
	if HP of Inflatable Otter Suit is 0:
		say "     A suspicious pile of seemingly inert plastic in the otherwise very much animate castle. The material lies discarded and crumpled in a corner, its deflated frame scarcely distinguishable as any one creature. You feel a strange compulsion to approach and investigate it more closely. Do you oblige your curiosity?";
		if player consents:
			if player is male:
				say "     You step closer to the pile of plastic, treading lightly so as not to slip on the undulating floor of the castle. At first blush, it seems harmless enough. The shiny vinyl appears to be shaped like an otter, complete with a short, cute muzzle and two black lines on each paw to signify simple digits. In lieu of an air valve, it features a single metal zipper that runs from midway down its belly to its neck. You surmise that it's meant to serve as a suit rather than a standalone inflatable, and your suspicion is confirmed when the vinyl springs to life, latching onto you in an instant. It quickly divests you of your clothes and gear, strewing any and all garments aside to leave you bare against its surface. Alarmed by the suit's aggressive behavior, you try to shake it off, but it's no use; the vinyl construct engulfs you rapidly, sparing no time in swallowing you whole within its latex-like confines.";
				say "     Your arms slide into snug vinyl sleeves which terminate in paw-like mittens, while the suit's legs feature thick, puffy thighs and flat, featureless soles. You reach for the zipper, only to feel it actively pull up against your clumsy attempts to grip the small metal tag. A rush of air through the dual-layered material makes it squeeze against your body, constricting harshly and forcing you to stumble onto your knees, the unsteady floor of the castle shifting beneath your weight. In the confusion, [if cocks of player > 1]one of your lengths[else]your length[end if] slips into a sheath of lubricated vinyl, the slippery plastic squeezing slickly around your [cock of player] cock in debilitating, mind-melting motions. Looking down, you find that the sheath hugging your dick is in fact a tapered lutrine member, the well-lubed sleeve expanding to perfectly house your [cock size desc of player] dick";
				if player is female:
					say ". While you're distracted with your vinyl-covered cock, the smooth material of the suit begins to brush against your labia, its subtly shifting interior pulling taut against your lips and sending erotic sensations through your achingly needy cunt[sfn]";
				say ".";
				say "     The material continues its advance on your body, a hood of vinyl flowing up and over your head before obstructing your face in a muzzle-shaped seal. Now fully enclosed, your lungs are filled with a steady supply of oxygen from within the suit itself, and you can barely see through the translucent, cloudy plastic that forms the suit's eyes. You shudder when a large, round gag is pressed into your mouth, stretching your jaw around the hardened plastic, its synthetic flavor oddly pleasant as your twisted captor stimulates you without stop.";
				say "     Do you relax and accept the suit's embrace (Y), or do you try to fight its tainted will (N)?";
				if player consents:
					InflatableOtterSuitSubmit;
				else:
					InflatableOtterSuitBind;
					now HP of Inflatable Otter Suit is 3;
			else:
				say "     You step closer to the pile of plastic, treading lightly so as not to slip on the undulating floor of the castle. Poring it over, the shiny vinyl appears to be shaped like an otter, complete with a short, cute muzzle and two black lines on each paw to signify simple digits. In lieu of an air valve, it features a single metal zipper that runs from midway down its belly to its neck. You surmise that it's meant to serve as a suit rather than a standalone inflatable.";
				say "     After your investigation, you step back from the inanimate suit, now confident that it doesn't pose any form of threat.";
				now HP of Inflatable Otter Suit is 1;
		else:
			say "     You decide to not tempt fate and keep your distance from the pile.";
	else if HP of Inflatable Otter Suit is 1:
		say "     The otter suit still lies in its corner, empty and deflated. Looking it over from a distance, the inflatable's features almost seem like a caricature of lutrine cuteness. The plastic curves broadly in a way that mimics chubby, cushiony thickness, broad in hip and thick in thigh. Its paw-like mittens are marked with lines to resemble digits in lieu of true articulation, and a fun-loving smile stretches across the thing's face. It's hard to gauge whether that cheeky grin belies a darker purpose given that you handled and looked it over earlier without coming to harm.";
	else:
		say "     The otter suit still lies in its corner, empty and deflated. Looking it over from a safe distance, the inflatable's features almost seem like a caricature of lutrine cuteness. The plastic curves broadly in a way that mimics chubby, cushiony thickness, broad in hip and thick in thigh. Its paw-like mittens are marked with lines to resemble digits in lieu of true articulation. A fun-loving smile stretches across the thing's face, though its saccharine sweetness is deeply unnerving after experiencing its attempts to ensnare you.";
		say "     The longer you stare at it, the more your mind is filled with lurid thoughts that aren't quite your own. You tear your gaze away before these alien urges subsume you.";

Instead of fucking Inflatable Otter Suit:
	if HP of Inflatable Otter Suit < 2:
		if Lust of Inflatable Otter Suit is:
			-- 0:
				say "     You see no reason to single out this [if HP of Inflatable Otter Suit is 1]suit[else]pile[end if] in particular when there's plenty of other smooth, fluid-slicked surfaces to rub up against and slake your need with.";
				now Lust of Inflatable Otter Suit is 1;
			-- 1:
				say "     Despite the perverse nagging in the back of your mind, you have enough semblance of dignity to refuse to fuck the [if HP of Inflatable Otter Suit is 1]vinyl inflatable[else]pile of plastic[end if].";
				now Lust of Inflatable Otter Suit is 2;
			-- 2:
				say "     'Ott! Squeaky!' drills into your mind as your gaze wanders to the vinyl again, a part of you longing to pounce on the inanimate [if HP of Inflatable Otter Suit is 1]suit[else]pile[end if] and hump against its perfectly smooth exterior. You shake your head before those filthy thoughts subsume you.";
				now Lust of Inflatable Otter Suit is 3;
			-- 3:
				say "     'Ott! Fuck! Squeaky! Bliss~' comes the voice again. Like a cruel mantra, the words wither away at your will to resist, and you idly rub at your body as you imagine doing unspeakable things to the [if HP of Inflatable Otter Suit is 1]innocuous inflatable[else]object of your desires[end if].";
				now Lust of Inflatable Otter Suit is 4;
			-- 4:
				if player is male:
					say "     'Play with me! Squeak! Ott! Cum!' Again and again, the words assail you, chipping away at any lingering will to resist. At last, you can't hold back any longer and give in to the perverse impulse, removing any gear or equipment in your hurry to fuck it. You approach the [if HP of Inflatable Otter Suit is 1]otter suit[else]heap[end if] and bundle it up in your arms, grinding your [if player is female]rigid cock[smn] and dripping folds[else]rigid cock[smn][end if] against it, reveling the sensations of that immaculate vinyl brushing against and stimulating your flesh.";
					say "     All of a sudden, the [if HP of Inflatable Otter Suit is 1]suit springs to life, rapidly inflating from within. The[else]heap springs to life, rapidly inflating from within until it expands into the passable facsimile of an otter. The suit's[end if] smooth material rubs up against you, working in tandem with your rolling hips to milk you of your pleasure. Your naked body proves an easy vessel for the now-animate suit to wrap around and encase, drawing a pleasured moan from you as the cool, malleable plastic clings to your curves. Your arms slide into snug vinyl sleeves which terminate in paw-like mittens, while the suit's legs feature thick, puffy thighs and flat, featureless soles. Two black lines on each paw create the crude impression of independently maneuverable digits. You marvel at the suit's patterns, simultaneously amused, afraid, and greatly aroused by your predicament.";
					say "     You are drawn from your reverie when you hear the otter suit's zipper drawing up, trapping you within its supple confines. A rush of air through the dual-layered material makes it squeeze against your body, constricting harshly and forcing you to stumble onto your knees, the unsteady floor of the castle shifting beneath your weight. In the confusion, [if cocks of player > 1]one of your lengths[else]your length[end if] slips into a sheath of lubricated vinyl, the slippery plastic squeezing slickly around your [cock of player] cock in debilitating, mind-melting motions. Looking down, you find that the sheath hugging your dick is in fact a tapered lutrine member, the well-lubed sleeve expanding to perfectly house your [cock size desc of player] dick";
					if player is female:
						say ". While you're distracted with your vinyl-covered cock, the smooth material of the suit begins to brush against your labia, its subtly shifting interior pulling taut against your lips and sending erotic sensations through your achingly needy cunt[sfn]";
					say ".";
					WaitLineBreak;
					say "     The material continues its advance on your body, a hood of vinyl flowing up and over your head before obstructing your face in a muzzle-shaped seal. Now fully enclosed, your lungs are filled with a steady supply of oxygen from within the suit itself, and you can barely see through the translucent, cloudy plastic that forms the suit's eyes. You shudder when a large, round gag is pressed into your mouth, stretching your jaw around the hardened plastic, its synthetic flavor oddly pleasant as your twisted captor stimulates you without stop.";
					say "     Do you relax and accept the suit's embrace (Y), or do you try to fight its tainted will (N)?";
					if player consents:
						InflatableOtterSuitSubmit;
					else:
						InflatableOtterSuitBind;
						now HP of Inflatable Otter Suit is 3;
				else:
					say "     'Play with me! Squeak! Ott! Cum!' Again and again, the words assail you, chipping away at any lingering will to resist. At last, you can't hold back any longer and give in to the perverse impulse, removing any gear or equipment in your hurry to fuck it. You approach the [if HP of Inflatable Otter Suit is 1]otter suit[else]heap[end if] and straddle it, rocking your hips against its deflated form in an effort to entice any form of response[if HP of Inflatable Otter Suit is 0]. Looking down over its features while you ride, you realize dimly through the haze that it's actually modeled after an otter, complete with a cheeky, painted smile on its muzzle and a thick rudder of a tail[end if].";
					say "     Much to your chagrin, the vinyl remains stubbornly still, giving you little to work with beyond the blemish-free plastic of its exterior. [if player is female]You do eventually orgasm by grinding your folds against its pelvis, though the forced release does little to abate your need. Frustrated, you rise up on shaky legs[else]Frustrated, you rise up[end if] and try to pull yourself together again.";
					now HP of Inflatable Otter Suit is 2;
					if player is female:
						LibidoLoss 20;
	else if HP of Inflatable Otter Suit is 2:
		if player is male:
			say "     Having changed your form since the last time you approached the suit, you stride closer and lift it up into your arms, expecting the same lack of response as your first failed attempts. To your surprise, the suit almost instantly springs to life, rapidly inflating from within and pushing away any clothes or gear in the process. Your naked form proves an easy vessel for the now-animate suit to wrap around and encase, drawing a pleasured moan from you as the cool, malleable plastic clings to your curves. Your arms slide into snug vinyl sleeves which terminate in paw-like mittens, while the suit's legs feature thick, puffy thighs and flat, featureless soles. Two black lines on each paw create the crude impression of independently maneuverable digits. You marvel at the suit's patterns, simultaneously amused, afraid, and greatly aroused by your predicament.";
			say "     You are drawn from your reverie when you hear the otter suit's zipper drawing up, trapping you within its supple confines. A rush of air through the dual-layered material makes it squeeze against your body, constricting harshly and forcing you to stumble onto your knees, the unsteady floor of the castle shifting beneath your weight. In the confusion, [if cocks of player > 1]one of your lengths[else]your length[end if] slips into a sheath of lubricated vinyl, the slippery plastic squeezing slickly around your [cock of player] cock in debilitating, mind-melting motions. Looking down, you find that the sheath hugging your dick is in fact a tapered lutrine member, the well-lubed sleeve expanding to perfectly house your [cock size desc of player] dick";
			if player is female:
				say ". While you're distracted with your vinyl-covered cock, the smooth material of the suit begins to brush against your labia, its subtly shifting interior pulling taut against your lips and sending erotic sensations through your achingly needy cunt[sfn]";
			say ".";
			WaitLineBreak;
			say "     The material continues its advance on your body, a hood of vinyl flowing up and over your head before obstructing your face in a muzzle-shaped seal. Now fully enclosed, your lungs are filled with a steady supply of oxygen from within the suit itself, and you can barely see through the translucent, cloudy plastic that forms the suit's eyes. You shudder when a large, round gag is pressed into your mouth, stretching your jaw around the hardened plastic, its synthetic flavor oddly pleasant as your twisted captor stimulates you without stop.";
			say "     Do you relax and accept the suit's embrace (Y), or do you try to fight its tainted will (N)?";
			if player consents:
				InflatableOtterSuitSubmit;
			else:
				InflatableOtterSuitBind;
				now HP of Inflatable Otter Suit is 3;
		else:
			say "     You have your doubts that any attempt to yield a reaction from the suit would bear fruit - at least in your current state. Maybe you should try coming back as a different form or sex?";
	else:
		say "     For whatever reason, you feel a strong compulsion to return to the suit and accept its arousing embrace. Do you really want to give in to temptation?";
		if player consents:
			if player is male:
				say "     You walk closer on the undulating floor and lift the suit up by its shoulders, stretching it out to take a closer look at its features. At first, you wonder if its previous attempt to encase you has tired it out, but your train of thought is interrupted when the suit springs to life and latches onto you abruptly.";
				say "     The animate vinyl pushes away any gear or clothes, disrobing you with alarming haste. You reign in the impulse to try and tear it off before it can go any further, determined to enjoy its wonderful embrace for just a couple minutes before breaking free again. Something about the way that cool plastic wraps around your bare-naked body is profoundly disturbing, and the rational voice in the back of your mind screams at you to reconsider this foolhardy hedonism. Any such thoughts are moved to the backburner the moment your length slides into that familiar, tapering sheath, the tainted material already reforming to better hug your [cock size desc of player], [cock of player] cock.";
				say "     Do you relax and let the suit do as it pleases this time (Y), or do you try to struggle (N)?";
				if player consents:
					InflatableOtterSuitSubmit;
				else:
					InflatableOtterSuitBind;
			else:
				say "     You walk closer on the undulating floor and lift the suit up by its shoulders, stretching it out to take a closer look at its features. Try as you might to inspire any kind of reaction from the vinyl otter, it doesn't seem quite as ready to shed the veil of inanimateness, remaining stubbornly silent and motionless. Frustrated by its lack of compliance, you brush a hand along the smooth plastic of the exterior, even stroking across its sheath, only to be met with the same impudent dormancy.";
				say "     After a couple more failed attempts, you cast the suit back into the corner and step away, feeling slightly dejected. Perhaps something about your body is no longer to its liking?";
		else:
			say "     You shake your head of the thought and try to reign in your libido again.";

to InflatableOtterSuitSubmit:
	say "     Against more prudent judgment, you decide to throw caution to the wind and relax in the shifting suit's embrace. You convince yourself that it'll release you once its had its fill, so why not let it have its way with you? You draw a deep, lustful breath of the tainted air, the heady aroma of vinyl and sex commingling with the salty scent of the sea. You release a shuddering, muffled sigh and let your eyes flutter close as the strange suit lavishes you with attention. Reaching below, you take hold of the suit's synthetic cock and run the mitten of your hand along it, pumping it gently while scintillating ripples course through your flesh.";
	say "     Seeming to realize your acceptance, the dual-layered material expands from within, forcing you down onto your hands and knees as it stimulates you from every angle. Your head swims with arousal at the vinyl's continuous assault, quickly wearing down any thoughts of resistance, wiping your mind of anything but the intense pleasure of submitting to the otter-shaped suit and its blissful ministrations. You moan softly as it squeezes around your cock, pulsing plastic forming a perfectly-shaped vise that pumps and sucks at your increasingly needy spire. The otter-suit's tapered rod seems to adapt perfectly to the size and contours of your cock, sparing no expense in stimulating you until you're drooling around your gag. You readily give yourself over to every exotic stimulus, your whole world narrowing to the hard, steady throbbing of your length in its exquisitely massaging grasp.";
	WaitLineBreak;
	say "     After several minutes of being stroked and caressed by the living inflatable, you can't hold back any longer. Your length spurts messily into the gripping sheath around it, your [cum load size of player] load washing back over your twitching member and coating your crotch in sticky wetness. Your squeals of pleasure are muffled by the thick bulb in your mouth, your teeth digging into the hardened vinyl as your lungs are filled with its synthetic aroma. You writhe and buck helplessly as the suit works to prolong your orgasm, each blast of seed seeming to empower it further. Shuddering weakly, you feel the suit inflate again, elastic material compressing against you from all sides as your cum is absorbed by the tainted material.";
	say "     Even as you're coming down from your first devastating high, the suit continues to pleasure you without pause. Your cock throbs almost painfully hard within its snug, tapering vise, pumping and kneading at your manhood. The bliss of being milked quiets the panicked voice in the back of your mind, so distant and unimportant now, and you moan for more around your gag, already looking forward to your next crashing high. The suit rewards your increasingly submissive thoughts by squeezing tight around your length, drawing a strained spurt of pre into its grip.";
	say "     You don't resist as it rolls you over onto your back, pulling your knees up against your stomach and arms close like a dog begging for a treat. From where you lie, you can see the mirrored reflection of the otter suit on the ceiling above, though the details are blurry through its plastic eyes. The material grows alarmingly tight around your limbs, now almost flush to the [skin of player] flesh. Despite the constriction, your body feels like it's levitating off the ground, a thin layer of air beneath your back relieving any tension in your muscles and allowing you to focus solely on the euphoria of being used.";
	WaitLineBreak;
	say "     Eager for even more stimulation, you reach below to stroke along your swollen cock, back gently arching with each crashing wave of pleasure. Drooling around the gag, your spit trails down your neck, and your breath catches every time you near another sapping orgasm. Rather than just drain you, the suit keeps you on the crest of release just long enough to make you whine, begging it to let you cum, before finally pushing past, driving you to a hard and satisfying peak that has you sagging weakly within the vinyl prison as it inflates ever-tighter. Before long, you completely forget about the zipper that presents your only avenue of escape, your rational mind withering away as the suit's twisted influence invades your thoughts and replaces them with plastic and sex.";
	say "     Eventually, even stroking yourself off becomes too much of a challenge, the air in the suit's arms pulling them tight against your chest. Your ass is spread by a large, smooth plug that begins to subtly vibrate, stimulating your prostate directly. You are taken by surprise when a viscous liquid begins to secrete from your gag. It's warm, thick, and pleasantly sweet, putting your mind at ease and soothing your throat as it flows down your gullet. After a moment, you come to the dim realization that the fluid is a potent aphrodisiac, your length twitching turgidly through one long, almost constant climax that destroys the final remnants of your sanity. The zipper seems to melt away into the plastic until there's nothing there to suggest that it ever existed, leaving you trapped within the suit's smooth, dark vinyl.";
	say "     You moan, whine and squeal through one crashing orgasm after another, your sore length remaining stiff throughout, any form of refractory period negated by the arousing, nourishing fluid it sustains you with and the unearthly pleasure pulsing through every nerve and pore. Your neck is forced stiff by the dense air around it until you're unable to do anything but stare at the ceiling. The reflection of your trapped form slowly fades away as the eyes of the suit become fully opaque, leaving you alone in the claustrophobic darkness - but you don't mind. All that matters to you now is the ecstasy of serving the vinyl suit, thinking of nothing more than your next squealing climax.";
	wait for any key;
	now bodyname of player is "InflatableOtterSuitSexSlave";
	now humanity of player is 0;
	end the story saying "Willfully submitting to the inflatable otter suit, its endless stimulation has become your whole word.";


Section 3 - Bound State

to InflatableOtterSuitBind:
	psycheeval;
	libidoeval;
	now lustatt is libido of player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		now boundstate is true;
		if HP of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if InflatableOtterSuitBindStage < 1: [Sets player to first stage of being bound.]
			now InflatableOtterSuitBindStage is 1;
		if lustatt > 99: [lustatt is short for 'lust attribute'. When reaching 100, the player orgasms. This check uses > 99 to force orgasm even if lustatt is somehow above 100]
			InflatableOtterSuitOrgasm; [Calls the function defined later on]
			if libido of player > 25, decrease libido of player by (libido of player / 5) + 1;
			if InflatableOtterSuitBindStage < 4, increase InflatableOtterSuitBindStage by 1; [Increases bound state intensity after every orgasm. At 6, instant game over.]
			if InflatableOtterSuitBindStage is 4: [Last stage. Game over. Placed above in top bind code to display orgasm, then complete submission.]
				say "     No longer even considering escape, you allow the suit to pleasure you as it sees fit. The shifting vinyl has become attuned to your every need, knowing exactly how to excite you and lead you to one crashing orgasm after another. The searing bliss of giving yourself over so completely keeps you equal parts aroused and obsequious, more and more of your former self melting away with each debilitating climax, the cyclical nature of your imprisonment only abetting your captor's efforts. You breathe deeply of the scent of sex and sterile synthetics, the thick musk filling your lungs and numbing your mind, leaving you unable to think of anything but your deliciously satisfying torment.";
				say "     The suit rewards your submission by pressing a large, smooth probe into your yearning backside, the plug inflating once within to stimulate your silky inner walls. The added pressure against your prostate keeps your turgid cock drooling between peaks, a slurry of seed trickling down your length to add to the squelching coat of cum that slickens your enslavement. You relish the feeling of the plug swelling deeper when you climax, the smooth vinyl massaging your colon with rhythmic ripples and pulses. As you clench your ass around that delightful protrusion, the suit's eyes gradually go opaque, your meager vision of the outside world fading until you're shrouded in a soothing darkness.";
				say "     Awash in such constant, overwhelming pleasure, it's only a matter of hours before your shaken identity shatters, reducing you to nothing more than another source of power for the tainted castle and its lustful inhabitants.";
				WaitLineBreak;
				now bodyname of player is "InflatableOtterSuitSexSlave";
				now humanity of player is 0;
				end the story saying "Trapped by the inflatable otter suit, its endless stimulation has become your whole word.";
				now Trixieexit is 1;
			if InflatableOtterSuitBindStage < 4: [Hides content to prevent endings colliding]
				now lustatt is libido of player;
				InflatableOtterSuitSanityOrgasm; [Calls the function defined later on]
				InflatableOtterSuitProgress; [Calls the function defined later on]
		now enduring is false;
		if InflatableOtterSuitBindStage < 4: [Hides content to prevent endings colliding]
			CheckInflatableOtterSuitSegment;
			say "[InflatableOtterSuitBindDesc]";
			say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
			say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
			say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
			say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [InflatableOtterSuitStruggleBar][line break][run paragraph on]";
			if humanity of player < 1: [Lost all sanity. Instant game over.]
				if InflatableOtterSuitBindStage is 1:
					say "     Despite the suit's relatively weak hold on you, your already fragile mind snaps from its insistent stimulation. You orgasm powerfully, spraying your cum across the supple vinyl that squeezes and pumps at your cock. The suit absorbs your spent seed, the fluids merging with the tainted plastic and empowering it further. Freshly fed, it's quick to take advantage of your submission, inflating rapidly while you moan and squeal in delight. Its soft inner layer rubs against your [skin of player] flesh, holding you in a tight embrace that caresses every inch of your body and seeks to restrict your mobility further.";
					say "     Still weak from your recent climax, you can do nothing but moan and whimper softly as the suit rolls you over onto your back. The air-filled material guides your arms up against your chest and lifts your legs until they form a right angle. Below, you can feel a thin buffer of air forming beneath your back, lending a strange feeling of weightlessness that sloughs away any discomfort or tension. While you bask in the soothing sensations, the suit begins to stroke and squeeze you again, working to guide you to your next draining peak.";
					WaitLineBreak;
					say "     Posing no resistance, you relish the feeling of the suit caressing your pulsing cock, your cum-slick length still completely stiff in spite of your recent exertions. The lustful, shifting plastic all around you drives your arousal to new heights, and it quickly pushing you to the point of no return. You squeal helplessly as another, more draining orgasm ripples through your body, washing away any semblance of your former self in a sea of aching bliss. As before, the suit absorbs most of your cum, leaving the rest to soak your cock and crotch in sticky lubricant for its continued abuse.";
				else if InflatableOtterSuitBindStage is 2:
					say "     Unable to focus on escape, your mind eventually snaps from the overwhelming pleasure coursing through you. The suit senses your submission and squeezes tightly around your length, pumping and milking you until you reach a second powerful orgasm. You spray your cum across the supple vinyl, bucking and thrashing helplessly as you squeal in absent ecstasy. The suit absorbs your seed, the fluids merging with the tainted plastic and empowering it further. What isn't consumed washes back over your cock and crotch to serve as sticky lubricant for your continued abuse.";
				else if InflatableOtterSuitBindStage is 3:
					say "     Unable to move, much less focus on resistance, your mind eventually snaps from the overwhelming pleasure coursing through you. The suit senses your submission and squeezes tightly around your length, pumping and milking you until you reach a third powerful orgasm. You spray your cum across the supple vinyl, whimpering with desperate need and trembling within the rigid hold of your captor. The suit absorbs your seed, the fluids merging with the tainted plastic and empowering it further. What isn't consumed washes back over your cock and crotch to serve as sticky lubricant for your continued abuse.";
				say "     Your cyclic milking continues for hours on end, the suit utilizing those brief moments of respite to seal more tightly around you. Its translucent eyes eventually go completely opaque, leaving you shrouded in the soothing miasma of darkness. An anal stimulator is pressed into your rear, spreading your neglected hole and inflating once within. The rounded plug vibrates softly and swells larger whenever you climax to massage your thrumming prostate. As your thoughts drift to the growing pit in your stomach, your gag begins to leak a nourishing aphrodisiac, sustaining you and keeping you perpetually aroused. The suit never permits you a moment's reprieve, keeping your feral mind focused on your blissful new existence.";
				WaitLineBreak;
				now bodyname of player is "InflatableOtterSuitSexSlave";
				now humanity of player is 0;
				end the story saying "Trapped by the inflatable otter suit, its endless stimulation has become your whole word.";
				now Trixieexit is 1;
			else: [Section of actions possible during the bind.]
				let k be 0;
				now keychar is "INVALID";
				change the text of the player's command to "";
				while keychar is "INVALID":
					now k is the chosen letter;
					translate k;
					if the player's command matches "[number]":
						now keychar is "[number understood]";
				if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle": [player picked struggle]
					LineBreak;
					increase struggleatt by 1;
					if InflatableOtterSuitBindStage is 3 or struggleatt < boundsegment: [Determines if the cumulative "struggle attribute" < or equal to bound stage. If equal to, the player escapes. Each orgasm will remove struggleatt.]
						if InflatableOtterSuitBindStage is 1:
							say "     Alarmed by the strange suit's embrace, you reach for the zipper in an effort to pull it down. Your clumsy mittens struggle to grasp the fly, and the suit attempts to zip back up whenever your grip falters. The supple vise around your length makes it difficult to focus, stroking and squeezing distractingly as you struggle to escape.";
						else if InflatableOtterSuitBindStage is 2:
							say "     The air filling the suit makes it difficult to reach the zipper, its fly laying flush to the suit's smooth exterior. Finding no success in your efforts to grasp it, you instead push down into the malleable plastic, trying to force the air out of its dual-layered construction.";
						else if InflatableOtterSuitBindStage is 3:
							say "     The suit's tight embrace makes it almost impossible to move your limbs, the constricting pressure of the air hugging your form leaving your hazy thoughts to drift. The pleasure radiating from your groin melts away your will to resist, making you shiver and moan softly as you try to wiggle free. Despite your best efforts, the suit's hold remains firm, denying you even the faintest hope of escape.";
						else: [Debug failsafe]
							say "     ERROR <OtterSuitStruggleMessage>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
					else if lustatt > 79: [player would escape the bind, but lust is too high]
						if InflatableOtterSuitBindStage is 1:
							say "     With some difficulty, you manage to secure a hold on the suit's finnicky zipper and overpower its resistance, pulling it down enough to start squirming free. The suit clings to your arms as you tug them out of the puffy sleeves, reaching up to tear away the hood covering your face with one while fending off its continued efforts to ensnare you with the other. Just as you're about to pry it off, your rising arousal gets the better of you and you squeal into the gag, spraying your [cum load size of player] load into the suit's rippling cocksheath.";
							say "     Unable to ignore your forced orgasm, your focus falters until you finally cease trying to struggle altogether, simply enjoying the bliss that radiates from your cum-soaked crotch. The suit utilizes this window of weakness to resume its climb, helpfully zipping back up again and sliding the vinyl sleeves of its arms over your own. Your still-twitching cock is massaged by the shifting plastic to soothe and distract you, and you can do nothing but pant into your gag as pleasure overwhelms your senses.";
							say "     You sink into the comforting miasma of the afterglow, breathing deeply of the musky air within the suit itself. You can tell that it's learned more about pleasuring you, its supple material brushing sensually over every part of your body. Your sullied shaft in particular is treated to near-constant undulating pressure, the immaculate vinyl pumping and stroking you steadily. It'll be much more difficult to resist its incredibly arousing motions now.";
						else if InflatableOtterSuitBindStage is 2:
							say "     After a considerable amount of effort, you finally force enough air out of the suit to regain some semblance of control over your limbs. Uncomfortable in your current, quite vulnerable position, you rock back and forth in an effort to gain enough momentum to roll back on your fore. The motions cause your length to ache with need as it's jostled in the suit's squeezing vise, and your captor exploits this by lavishing you with several rippling pulses, the powerful vibrations sending you right over the edge.";
							say "     Your entire form goes rigid in the throes of a mind-melting orgasm. You blast your sticky seed into the constricting plastic, your body thrashing wildly as you squeal and cry out into your gag. The overwhelming pleasure shatters any thoughts of escape and fills the void with shuddering ecstasy, leaving you to lay back and whimper as you feed your captor with countless strained spurts. By the time your climax tapers to an end, your mind is left awash in hazy fantasies of being fucked forever, only dimly holding on to your will to resist. Its stimulation has grown more cloying now, empowered by your fluids and adapting to slake your every need.";
						else: [3+: Impossible to trigger]
							say "     ERROR <OtterSuitStruggleFail>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
						now Libido of Inflatable Otter Suit is 0;
						now boundsegment is 0;
					else: [player escapes the bind]
						if InflatableOtterSuitBindStage is 1: [Ends bound state]
							say "     With some difficulty, you manage to secure a hold on the suit's finnicky zipper and overpower its resistance, pulling it down enough to start squirming free. The suit clings to your arms as you tug them out of the puffy sleeves, reaching up to tear away the hood covering your face with one while fending off its continued efforts to ensnare you with the other. You seize its lapse in control to dart up and kick it away, stumbling back on the unsteady flooring as the malevolent suit falls inert once more.";
							say "     Naked as the day you were born, you take a moment to recover after your recent exertions. The suit's persistent stimulation has left you feeling much more sensitive and vulnerable than before. The ease with which it transitioned from a benign material to an active threat has you on edge, and you cautiously move closer to gather your clothes and equipment. Once redressed, you give the suit a wide berth and resolve to be more careful in the future.";
							now Libido of Inflatable Otter Suit is 0;
							LineBreak;
							cleanboundmemory;
							now Trixieexit is 1;
							now InflatableOtterSuitBindStage is 0;
						else if InflatableOtterSuitBindStage is 2: [Lowers stage to 1]
							say "     After a considerable amount of effort, you finally force enough air out of the suit to regain some semblance of control over your limbs. Uncomfortable in your current, quite vulnerable position, you rock back and forth until you gain enough momentum to roll onto your fore, then push yourself up to your knees. The suit attempts to reinflate, but it's been weakened too much by your tenacious resistance to flip you back over. Disaster averted, you reach up to seek out its zipper again, determined not to let the inflatable overpower you.";
							now Libido of Inflatable Otter Suit is 0;
							now InflatableOtterSuitBindStage is 1;
							now boundsegment is 0;
						else: [3+: Impossible to trigger]
							say "     ERROR <OtterSuitStruggleSuccess>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
							now Libido of Inflatable Otter Suit is 0;
							LineBreak;
							cleanboundmemory;
							now Trixieexit is 1;
							now InflatableOtterSuitBindStage is 0;
				else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2": [player picked oblige/abide - currently no custom text for each!]
					LineBreak;
					if InflatableOtterSuitBindStage is 1:
						if Libido of Inflatable Otter Suit is 0:
							say "     Relaxing in the suit's soft embrace, you reach down with one of your clumsy mittens to caress its supple, cock-shaped sheath. You brush along the side from base to tapered tip, then all the way back down again in a single, continuous motion. You shudder and moan at the intense pleasure radiating through your length, sagging comfortably into the pliant plastic encasing you from all sides.";
						else if Libido of Inflatable Otter Suit is 1:
							say "     You continue to absentmindedly pleasure yourself, paying no heed to the world around you as you lapse into a lustful haze. Your fingers curl against the slight resistance of the mitten, wrapping around your vinyl-covered cock to squeeze and pump yourself with steady motions. You rock your hips to meet your needful stroking while moaning and panting hotly into your gag.";
						else if Libido of Inflatable Otter Suit is 2:
							say "     Pleasure surges through you as you stroke and pump yourself, your breath growing ragged with lust. Your nanite-riddled mind struggles to find a reason to resist, and you start to jerk your length more rapidly to show it just how much you appreciate its wonderful embrace. Spurred by your submission, the living material squeezes more tightly around your achingly needy cock, making it throb almost painfully hard within that smooth, synthetic vise.";
						else: [if 3+]
							say "     You pump yourself roughly, moaning and squealing into your gag as you give yourself over to your baser needs. The blissful sensations seem to radiate from your crotch, each wave crashing against the cliffside of your sanity and eroding your rational mind further. Your rigid length makes it difficult to think of anything but the euphoria coursing through every nerve in your body, and a part of you wants to just lie back and bask in it forever.";
					else if InflatableOtterSuitBindStage is 2:
						if Libido of Inflatable Otter Suit is 0:
							say "     Still exhausted from your powerful climax, the lingering pleasure compels you to reach down with both mittens and wrap them around your length. Having inflated tighter at this point, they have much less articulation, but a shudder of arousal radiates from even the simplest touch. Sighing out shakily, you begin to pump yourself anew, readily indulging the suit's perverse desires.";
						else if Libido of Inflatable Otter Suit is 1:
							say "     You continue to pleasure yourself with both mittens, overcome by the intense lust burning away at your better judgment. The suit rewards your willingness by constricting tighter against your form, the pressure focusing on your groin in an effort to more actively stimulate its captive";
						else: [if 2+]
							say "     Pre spills down your cum-slick cock as you lose yourself to the overwhelming pleasure of the suit's continued abuse. Your hips thrust up into the vise-like grip formed by those wonderful mittens, aching for even more stimulation in your lust-addled haze. You moan and squeal into your gag as you give in to every temptation, ignoring the fleeting window of escape to savor your blissful captivity just a little while longer.";
					else if InflatableOtterSuitBindStage is 3:
						if Libido of Inflatable Otter Suit is 0:
							say "     Unable and unwilling to resist, you moan in absent ecstasy while drooling around your gag. Your hips give weak little thrusts into the vise of its vinyl cock, inflated plastic squeezing tightly around your cum-slathered length. The thought of becoming the suit's eternal plaything only excites you further, and you happily oblige its squelching suction, your turgid dick spurting pre with every twitch and pulse.";
						else if Libido of Inflatable Otter Suit is 1:
							say "     The euphoria of your unrelenting stimulation plateaus in what feels like one constant, soothing orgasm. Your arms and legs tremble with tension before falling limp inside the tightly inflated vinyl. You hump weakly into the suit's supple sheath, your mind awash in pleasure, and you plead for that building climax with what muffled moans you can muster.";
						else: [if 2+]
							say "     You readily give yourself over to the suit's perverted purpose, thrusting up into its squeezing cock-sheath with what little movement your constricting captor permits. You tense with wild need as the suit worships you from every angle, coaxing moans and squeals of pleasure from you that grow more bestial by the moment. Your thoughts fade away under the constant assault on your senses, but you struggle to care anymore. All that matters is bringing yourself to another mind-shattering orgasm, chasing after that drug-like release over and over again in a ceaseless pursuit of bound and gagged bliss.";
				else: [player picked endure/recover]
					now enduring is true;
					LineBreak;
					if boundrecover is true: [recover]
						if InflatableOtterSuitBindStage is 1:
							increase humanity of player by 1;
						else if InflatableOtterSuitBindStage is 2:
							increase humanity of player by 2;
						else: [3+]
							increase humanity of player by 3;
						if humanity of player > 100, now humanity of player is 100;
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity, recovering a small portion of your lost humanity.";
					else: [endure]
						if InflatableOtterSuitBindStage is 1:
							let randomnumber be a random number from 1 to 3;
							if randomnumber is:
								-- 1:
									say "     Despite the suit's arousing motions, you do your best to ignore its attempts to seduce you. You take several deep, measured breaths and close your eyes, resisting the temptation to reach below and masturbate your vinyl-coated cock. Try as you might, you struggle to block the idea from your mind, only barely catching your mitten-covered hand from straying to your crotch.";
								-- 2:
									say "     You suck a sharp breath past the gag stuffing your mouth, the potent aroma of tainted vinyl drawn into your lungs. Despite temptation, you try to resist the suit's encouraging contact, keeping your hands at your sides to refrain from touching yourself in any way that might exacerbate your arousal.";
								-- 3:
									say "     Quieting the urge the moan, you try to stay still as the suit's cock-shaped sheath ripples around your meat. The sensation becomes increasingly pleasurable and distracting over time, making it difficult to focus on enduring - or escape.";
						else if InflatableOtterSuitBindStage is 2:
							let randomnumber be a random number from 1 to 3;
							if randomnumber is:
								-- 1:
									say "     With the suit constricting tighter, you're finding it increasingly difficult to resist the temptation to just give in to its arousing embrace. Your mind's eye is filled with a bevy of disturbing fantasies, and you bite hard around the gag in your mouth to distract yourself from the nagging urge to submit.";
								-- 2:
									say "     You can't help but moan softly as the suit's supple sheath squeezes and pumps your length, your breath growing troubled as you squirm in its slickened confines. Try as you might to find reprieve from the distracting sensations, you're having a lot of trouble staying focused now, still achingly sensitive after your first draining climax.";
								-- 3:
									say "     Pleasure lancing through your crotch, you dig your fingers into the castle floor through the suit's puffy mittens, trying to steady yourself and normalize your breathing. Unfortunately, your attempts to resist only last for so long, and you find yourself moaning needily into your gag as your length throbs and twitches in its gripping, squeezing, constantly shifting vise.";
						else:
							let randomnumber be a random number from 1 to 3;
							if randomnumber is:
								-- 1:
									say "     Bound so tight that you can barely move at this point - if at all - you try your best to salvage any kind of hope in spite of the dire circumstances. Your wishful thinking is interrupted by another tight squeeze around your hypersensitized cockflesh, forcefully milking a thick spurt of pre from you. Awash in carnal bliss, your mind begins to wander again, daydreaming of being fucked forever by your wonderful new host.";
								-- 2:
									say "     You continue to try and resist, to find any semblance of mental clarity. Your efforts are made null when the shifting suit squeezes tightly around your length, your achingly needy cock forced to twitch and throb as it's caressed by the slickly squelching material. You give a soft, lustful sigh and let your eyes flutter closed, feeling your mind give more and more as the lovely suit stimulates every part of you without stop.";
								-- 3:
									say "     You can scarcely move inside the suit, much less hold on to your mental faculties. The material's smooth inner layer pulls flush to your [skin of player] flesh, and the tainted vinyl clenches rhythmically around your pre-spurting cock. You try to resist the suit's teasing, writhing and bucking helplessly, but your thoughts grow muddier as it pleasures you into a drooling stupor.";
				if Trixieexit is 0:
					if boundrecover is false, InflatableOtterSuitSanityPassive;
					InflatableOtterSuitLust;
					if obliging is true:
						increase Libido of Inflatable Otter Suit by 1;
						now obliging is false;
					else:
						now Libido of Inflatable Otter Suit is 0;
					if boundrecover is true, now boundrecover is false;
				WaitLineBreak;
				next;


to CheckInflatableOtterSuitSegment: [Boundsegment is used above to compare to the player's struggle attribute. If lower, continue struggling. If equal to, escape.]
	if InflatableOtterSuitBindStage is 1:
		now boundsegment is 3;
	else if InflatableOtterSuitBindStage is 2:
		now boundsegment is 4;
	else: [stage 3+: not possible to escape, but set very high as a failsafe]
		now boundsegment is 10000;

[
The following section is included in order of appearance in-game.
- InflatableOtterSuitBindOrgasm appears at the top on a new turn if the player cums.
- InflatableOtterSuitProgress prints below orgasm if progressing to next bound level.
	- Occurs after every orgasm in this particular bind state.
	- May require multiple orgasms in other binds (e.g. a state spanning multiple intensity levels).
- InflatableOtterSuitBindDesc always prints below these but above the options list.
]

to InflatableOtterSuitOrgasm: [Orgasm description. Progresses to next bound segment.]
	if InflatableOtterSuitBindStage is 1:
		say "     Unable to hold back anymore, you squeal into your gag and spray your cum into the suit's tapered length. You climax powerfully and buck into the shifting vinyl's grasp with helpless abandon, your mind blank of anything but the searing pleasure flowing through you. While most of your [cum load size of player] load is absorbed by the suit, some of it flows back over your shaft and crotch, coating your [cock of player] cock and lubricating it further.";
	else if InflatableOtterSuitBindStage is 2:
		say "     You buck and writhe in helpless ecstasy as a powerful orgasm washes over you, cumming hard into the suit's squeezing hold. The tainted suit helps prolong your orgasm, each sticky blast of seed met with waves of pressure around your throbbing maleness, a sleeve of shifting vinyl that constricts from hilt to flaring tip. The unnaturally protracted climax takes its toll on your body, your muted cries of bliss fading into long, hazy moans as fatigue slowly sets in. By the time the exhaustive peak comes to an end, you can do little but slump back and breathe slowly around your gag, letting your eyes shutter closed as the sweet warmth of the afterglow suffuses your weary body.";
	else if InflatableOtterSuitBindStage is 3:
		say "     You squeal in orgasm, your entire body going stiff as you spray your [cum load size of player] load into the suit's unyielding grasp. The animate plastic works to prolong your climax, its iron grip squeezing and kneading your twitching cockflesh, forcibly milking every last rope of cum your weary body can offer. The intense pressure has you thrashing and bucking wildly, though your movements are heavily restricted by the fully inflated suit. What isn't consumed by the ravenous material spreads slickly over your already sordid crotch, leaking between your thighs and tickling your [if player is female]neglected puss[yfn][else]smooth taint[end if]. Over time, your muffled cries of rapture taper into long, low moans as the unfathomable pleasure saps the last of your energy, leaving your hazy mind as malleable as the squeezing plastic all around you.";
	else: [Debug failsafe]
		say "     ERROR <OtterSuitBindOrgasm>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";

to InflatableOtterSuitProgress: [Displays once when entering the next bound segment. 1 does not need to be checked since the bind starts at that value.]
	if InflatableOtterSuitBindStage is 1:
		say "     ERROR <OtterSuitBindStageProgressTooLow>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
	else if InflatableOtterSuitBindStage is 2:
		say "     By the time you come to, your thoughts are still hazy and unfocused. The encouraging warmth of the afterglow envelops you as much as the living suit, which seems to have been empowered by your tribute, the shifting vinyl guiding your weakened body down onto its back. Once resting in your new, more vulnerable position, the inflatable suit constricts tighter, pulling your arms up against your chest like a dog begging for a treat and lifting your legs until they form a right angle. It's a somewhat unnatural position, but the squeezing air around your limbs helps stabilize them.";
		say "     You realize somewhat sluggishly that your back is no longer in direct contact with the floor of the castle. A soft buffer of air in the dual-layered construction holds you aloft, lending a strange feeling of weightlessness that sloughs away any discomfort or tension. You feel almost like you're being suspended in a cloud, its smooth embrace helping your thoughts drift towards all the pleasures the suit provides.";
	else if InflatableOtterSuitBindStage is 3:
		say "     Lulled into a stupor, your relaxed muscles allow the suit to inflate further, the material expanding from within until you're scarcely able to move. Its rigid hold proves all the more intoxicating in your half-lucid state, urging you to just lie back and accept its eternal embrace. The vinyl lavishes you with constant stimulation, pressing and rubbing against your [skin of player] skin from every angle, its tantalizing motions coaxing soft, needful moans as your loins start to stir with renewed excitement.";
	else: [stage 3+]
		say "     ERROR <OtterSuitBindStageProgressTooHigh>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";

to say InflatableOtterSuitBindDesc: [Displays at the top of the bound screen after every action. Modified by current bound stage.]
	if InflatableOtterSuitBindStage is 1:
		say "     You are trapped inside the zipped-up vinyl suit. Your hands are stuck in clumsy, inflated mittens that make it difficult to get a good grip on the fly, lacking any kind of texture or articulation. The task of freeing yourself is complicated further by the muzzle-shaped hood shrouding your head in darkness, your vision funneled through two cloudy, translucent eyes. Your breath is limited to the tainted air within the suit itself, and any attempts to call for help are muffled by the inflatable gag stuffed into your mouth.";
		say "     The suit is still quite loose, but you feel it gradually tighten as the dual-layered plastic inflates from within, brushing across your [skin of player] skin from every available angle. The snug sheath around your cock becomes increasingly distracting as it pumps and squeezes at your erection, stimulating your shaft relentlessly.";
		say "     Your could try to [bold type]S[roman type]truggle to grip the zipper, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] the wanton suit, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its arousing motions.";
	else if InflatableOtterSuitBindStage is 2:
		say "     You are currently pinned on your back by the pressure of the air squeezing against you from all sides. You're having trouble moving your limbs by now, and your neck is forced straight as the material inflates further, leaving you unable to do anything but stare at your reflection on the ceiling. Even reaching for the zipper on the suit's front seems like an insurmountable task. It's clear that you'll need to push some air out of your inflatable prison before you can make any headway towards escape.";
		say "     Slickened by your seed, the suit's grip around your shaft makes for an almost irresistible vise, squelching softly as it glides across sensitive flesh and constricts in all the right places. Your breath catches every now and then as it milks you for your pleasure, clearly quite adept at its ill-intentioned task. Your lust-addled mind struggles to stay focused on escape amidst the potent stimulation, some small part of you just wanting to lie back and bask in its tantalizing abuse.";
		say "     Your could try to [bold type]S[roman type]truggle to reduce its hold on you, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] the wanton suit, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its arousing motions.";
	else if InflatableOtterSuitBindStage is 3:
		say "     Still exhausted from your second orgasm, your obstructed vision swims as arousal courses through you. The ceaseless procession of gripping, rippling, undulating vinyl stimulates every nerve and makes you squirm and moan weakly around your jaw-stretching gag. Your cock remains perpetually hard within the exquisitely gripping vise of the suit's synthetic sleeve, massaging your length with mind-melting expertise. Quite slick with your juices, the constricting pressure only enhances the pleasure you feel, any discomfort washed away in crashing waves of bliss.";
		say "     You're only dimly aware of your surroundings, the shifting suit's embrace leaving your thoughts murky and unfocused. The material around you is rigidly tight, pinning you to the floor by the sheer volume of densely packed air between its dual-layered construction. You have trouble seeing any avenue of escape by this point, and you're having an increasingly difficult time remembering why you'd ever want to, the powerful stimulation withering away at any remaining inhibitions.";
		say "     Your could try to [bold type]S[roman type]truggle in vain, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] the wanton suit, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its incredibly arousing motions.";
	else: [Debug failsafe]
		say "     ERROR <OtterSuitInvalidBindStage>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";

to InflatableOtterSuitLust: [Passively increases the player's lust attribute. Higher bound segments increase the per-turn lust gain.]
	let obladj be 1;
	if obliging is true:
		now obladj is 2; [Value to multiply lust gain by if obliging.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide lust gain by if enduring.]
	if InflatableOtterSuitBindStage is 1:
		increase lustatt by ((8 + (lustadjust * 2)) * obladj) / endureadj;
	else if InflatableOtterSuitBindStage is 2:
		increase lustatt by ((10 + (lustadjust * 2)) * obladj) / endureadj;
	else: [stage 3+]
		increase lustatt by ((12 + (lustadjust * 3)) * obladj) / endureadj;

to InflatableOtterSuitSanityPassive: [Passively decreases the player's sanity attribute. Higher bound segments increase the per-turn sanity loss.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if InflatableOtterSuitBindStage is 1:
		if (enduring is false and a random chance of 1 in 2 succeeds) or (enduring is true and a random chance of 1 in 4 succeeds):
			decrease humanity of player by 2;
	else if InflatableOtterSuitBindStage is 2:
		if enduring is false or (enduring is true and a random chance of 1 in 2 succeeds):
			decrease humanity of player by 4;
	else: [stage 3+]
		decrease humanity of player by (6 + psycheadjust) / endureadj;

to InflatableOtterSuitSanityOrgasm: [Causes sanity to sharply plummet upon orgasm.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if struggleatt > 0, decrease struggleatt by 1;
	if InflatableOtterSuitBindStage is 1:
		decrease humanity of player by (3 + psycheadjust) / endureadj;
	else if InflatableOtterSuitBindStage is 2:
		decrease humanity of player by (4 + psycheadjust) / endureadj;
	else if InflatableOtterSuitBindStage is 3:
		decrease humanity of player by (4 + psycheadjust * 2) / endureadj;

to say InflatableOtterSuitStruggleBar: [Displays struggle bar. The amount of struggle turns necessary to escape is always equal to the bound segment.]
	if InflatableOtterSuitBindStage is 1:
		say "[close bracket]-[if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";
	if InflatableOtterSuitBindStage is 2:
		say "[close bracket]-[if struggleatt > 2]X[else]-[end if][if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";
	if InflatableOtterSuitBindStage is 3: [Not escapable]
		say " :ᘌꇤ⁐ꃳ ";


Section 4 - No Cock

Table of GameCharacterIDs (continued)
object	name
Stuffed Otter Suit	"Stuffed Otter Suit"

Stuffed Otter Suit is a person. [mostly female/neuter oriented]
The description of Stuffed Otter Suit is "[StuffedOtterSuitDesc]".

Instead of sniffing Stuffed Otter Suit:
	say "     The inflatable otter suit smells of saltwater and fresh synthetics. The heady scent of sex emanates from its undoubtedly sordid interior.";

Instead of conversing Stuffed Otter Suit:
	say "     In lieu of freeing the victim by hand, you [one of]do your best to talk to them[or]try to talk to them again[stopping] through the suit without touching it. You speak loud enough to be heard through their PVC prison, but you refrain from yelling to avoid drawing unwanted attention from the other denizens of the castle. [one of]Unfortunately[or]As before[stopping], the only response to your questions is continued moaning and squealing, any semblance of humanity seeming to have been long fucked out of their system. You sigh somewhat dejectedly and move away from the suit.";

to say StuffedOtterSuitDesc:
	say "     An inflated vinyl suit rests on its back in the corner of the upper hall. The suit is styled after a somewhat cartoonishly shaped, semi-feral otter, complete with wide curves, broad calves, and a thick rudder of a tail. A friendly smile has been painted across its muzzle, and large eyes stare vacantly at its mirrored reflection on the ceiling. Thin black lines on each paw-shaped mitten give the impression of separate, stubby digits. [one of]After braving the chaos of the city, you almost fail to notice the large, tapered prong of vinyl protruding from its crotch and standing[or]A large, tapered vinyl cock protrudes from its crotch and stands[stopping] turgidly at attention.";
	say "     The material bulges slightly around the figure of someone who is clearly trapped within. From where you stand, the suit appears fully opaque, and you see no means of freeing the victim without tearing it open and risking harm to the creature within. Instead, you watch somewhat sheepishly as the suit's captured subject squirms and writhes, moaning softly during their unrelenting abuse. They visibly strain against the pressurized air keeping them pinned, and that tension soon culminates in blissful, muffled squealing as the suit's arms and legs shake around their thrashing. You decide to direct your attention elsewhere as their prolonged cries of orgasmic release fill the air, disturbed by some of the less savory ideas filling your mind.";

Instead of fucking Stuffed Otter Suit:
	say "     You take a moment to consider having fun with the suit and its perpetually pleasured prisoner. While your rational mind has some serious reservations, your libido is starting to get the better of you. Do you follow through on your urges as use the suit to get yourself off?";
	if player consents:
		if (player is purefemale) or (player is herm and a random chance of 1 in 2 succeeds): [female (100%) and herm (50%)]
			say "[StuffedOtterSuitSexVaginalRide]";
		else if player is male: [male (100%) and herm (50%)]
			if anallevel > 1 and a random chance of 1 in 2 succeeds:
				say "[StuffedOtterSuitSexAnalRide]";
			else:
				say "[StuffedOtterSuitSexFrotting]";
		else if anallevel > 1 and a random chance of 1 in 2 succeeds: [neuter (50%)]
			say "[StuffedOtterSuitSexAnalRide]";
		else: [neuter (50%)]
			say "[StuffedOtterSuitSexFellatio]";
	else:
		say "     You shake your head in shame, discarding the idea as quickly as it entered your mind.";

to say StuffedOtterSuitSexVaginalRide:
	say "     You take off any clothes or gear, then lower yourself down to straddle the otter suit's waist. Squeezing into the pliant vinyl reassuringly, you begin to grind the damp petals of your cunt[sfn] against the curve of its shaft, shuddering with perverse delight as its slickened surface kisses your folds. The heat of its victim's cock and cum permeates the pliant plastic, spurring your arousal and laying to rest any remaining inhibitions. Your hips start to roll on their own accord, slathering the otter suit's meat in feminine honeys, and you take hold of the base of that nectar-slick dick to massage it in your grasp.";
	say "     Eager for more, you raise your hips and align the crown of that delicious vinyl cock with [if cunts of player > 1]one of your slits, tapered length poised to drive deep into that[else]your entrance, tapered length poised to drive deep into your[end if] dripping passage. In one smooth, needful motion, you sink down on its bestial spire, moaning in rapture as its turgid mass spreads your sensitive walls. You clench and tremble around the meaty dick inside you, knees drawing together as the perfectly smooth plastic twitches and throbs inside you.";
	WaitLineBreak;
	say "     Its captive no concern to your pleasure-addled mind, you begin to ride that polished pole with slow, languid rocking[if player is male and player is breasted], a hand reaching back to pump your rigid length[smn] while you palm one of your breasts with the other[else if player is male], a hand reaching back to pump your rigid length[smn][else if player is breasted], a hand reaching up to palm one of your breasts while you keep it pinned with the other[else], a hand reaching back to play with your sensitive clit[sfn][end if]. The suit's moaning prisoner tries to buck into your slit, but their efforts go to waste in the captor's taut embrace. You're too preoccupied to care much about their suffering either way, stuffing your cunt and grinding against the suit's slick crotch, your mind focused entirely on the bliss of riding the toy.";
	say "     After several minutes of riding the lutrine toy, you're finally pushed over the edge and cum hard, soaking its crotch in your juices[if player is male] while your cock[smn] spray[smv] thick ropes of seed across its belly[end if]. Your clenching vaginal walls must prove too much for its prisoner, as they writhe and buck from within, their frantic thrashing only serving to prolong your climax. Spent and brutally satisfied, you lean down to peck a kiss to the suit's sealed muzzle, the affectionate gesture met with the loud beating of its tail against the shifting castle floor. You rise on shaky legs, a small waterfall of sticky wetness spilling out from your ravaged cunt[if cunts of player > 2] while the rest drip and clench with unsated need[else if cunts of player > 1] while the other clenches and drips with unsated need[end if], then move away from the twisted inflatable to redress.";

to say StuffedOtterSuitSexAnalRide:
	say "     You take off any clothes or gear, then lower yourself down to straddle the otter suit's waist. You raise your hips and reach below you to take hold of the base of that twitching dick, aligning its tapered tip with the cleave of your rear. Teasing yourself, you drag the slickened crown across your taint, then smear it along your asshole with needful, panting breaths. [if player is male]Your length[smn] throb[smv] and twitch[esmv] in time with your reflexively clenching entrance, already anticipating its smooth vinyl bulk rubbing against your prostate. [end if]You take a moment to savor the feeling of teasing your sensitive star, stroking softly over the pulsing pillar beneath you, before sucking in a salty breath and sinking down atop its lance, coaxing a low, shaky moan from the suit's mindless victim.";
	say "     That rigid, synthetic cock slips into and spreads your silky inner walls, feeling wonderful to your sex-addled mind. You push yourself down with some effort until you're hilted on that bestial length, keenly aware of every pulse, twitch and throb along your nerve-packed lining. A subtle seam along its underside sends separate, more acute sensations through your bowels, the contrast in texture only enhancing the pleasure of being split around that exotically tapered dick. You all but melt around that lutrine pillar as the warmth of its captive's ensconced cock permeates the material, filling your rear with scintillating heat and helping your ass relax further for the ride yet to come.";
	WaitLineBreak;
	say "     With your suit-restrained bottom unable to reciprocate, you take the reigns and begin to rise and fall on that deliciously filling cockflesh. You reach back between your cheeks to stroke your stretched-thin ring, fingers following the taper to gauge just how much your ass is made to distend. [if player is male]The plastic shaft tickles your prostate as you drag yourself along it, teasing you. At times you sink all the way to the otter suit's crotch to angle and grind against that sensitive gland directly, eager for more targeted stimulation from the tainted vinyl dick. [end if]As your lust builds, your breath starts grows raspy with need, and you [if player is male]grip your own stiff length[smn] to pump and stroke yourself rapidly as release quickly approaches[else]begin to bounce in its lap energetically in your sexless pursuit of pleasure[end if].";
	if player is male:
		say "     Soon you can't hold back any longer, and you cry out in bliss as you cum messily across the toy's belly, squirming and grinding down roughly against its crotch to stuff as much of that plastic dick into your bowels as you can. Your [cum load size of player] load is quickly absorbed by the twisted material, soaking into its exterior and empowering it further. The captive cums hard as you clench around their cock, spilling their seed into the toy to join your recent tribute. Spent and brutally satisfied, you slide free of the otter suit's groin with a wet, squelching pop, your asshole awash in warm tingles. You wipe your cum-drooling length[smn] clean on the otter suit's thigh before gathering your bearings and belongings again, feeling much more relaxed after indulging your baser needs.";
	else:
		say "     You ride the toy for several long minutes, unfocused sensations coursing through every fiber of your body. The hazy bliss of spearing your ass eventually becomes too much for you, and you experience what could be best described as a full-body orgasm, letting out a soft, wavering moan as tingling euphoria riddles your nerves. Your rear clenches firm around the vinyl pole inside you, the rippling pressure milking its captive of their seed. Their muffled cry is music to your ears, and you grind yourself down roughly to savor the creature's thrashing inside you, pulsing dick only prolonging your climax. After coming down from your peak, you slide free of the otter suit's groin with a wet, squelching pop, your asshole still awash in warm tingles. You give the otter suit's hips a lustful squeeze before gathering your bearings and belongings again, feeling much more relaxed after indulging your stranger urges.";

to say StuffedOtterSuitSexFrotting:
	say "     You take off any clothes or gear, then lower yourself down to straddle the otter suit's waist. Squeezing into the pliant vinyl reassuringly, you reach below to take hold of your cock[smn], pressing [if cocks of player > 1]that bundle of [cock size desc of player] dicks[else]that [cock size desc of player] dick[end if] against the tainted suit's own. Its captive groans softly as you set to rocking your hips against it, drawing pleasure from frotting your [cock of player] shaft[smn] against the underside of that immaculate plastic, your rolling motions sandwiching their vinyl-covered cock against the suit's belly. You take perverse delight in the prisoner's squirming and moaning while you grind your forms together, your breath growing shallow as your length[smn] twitch[esmv] and throb[smv] with need.";
	say "     Lust getting the better of you, you wrap both hands around your meeting flesh and start to pump yourself together, giving short, soft humps against the tainted suit throughout. While not quite the same as filling a nice, warm hole, the stimulation is enough to eventually get you off, spraying your [cum load size of player] load across the otter suit's belly and chest. You marvel through panting breath as your seed is absorbed by the vinyl, only seeming to empower it further by the way its captive seems to thrash and cry out from within. You feel the phantom sensations of their spurting length through the dual-layered plastic, and you brush a hand along the suit's cheek to soothe their almost anguished groans of ecstasy.";
	say "     Spent and reasonably satisfied, you wipe your cum-dripping length[smn] clean on the suit's thighs and stand up again, feeling much more calm after taking the edge off. You take a moment to admire the pleasure-slave's continued ecstasy from within their tainted confines before stepping away to gather your bearings and belongings. A part of you wonders how it would feel to be milked of your cum for all eternity, but you shake your head of the thought before it gets you excited again.";

to say StuffedOtterSuitSexFellatio:
	say "     You lower yourself down to your knees between the suit's legs, setting your hands on its hips to still its captive's squirming. Squeezing into the pliant vinyl reassuringly, you lean down to breathe in the pungent aroma of sex that clings to its tapered cocksheath, reveling in the heady fragrance of lust and freshly milked seed. Your mouth starts to water, a pit of hunger swelling in your stomach, and you bury your face in the otter suit's crotch to sample the source of your sudden intoxication.";
	say "     You kiss and lick between the suit's thighs before attacking the shaft in earnest, rubbing it against your cheek and brushing your nose against the perfectly formed PVC. You drag the flat of your tongue along the subtle seam on its underside, enjoying the turgid twitching of the rigid length within. Feeling mischievous, you nibble on the pliant plastic, making your unfortunate subject squirm and moan as phantom pleasure surges through their cock. A hand slides up to wrap around their length, squeezing and pumping slowly while you polish it with warm spit.";
	WaitLineBreak;
	say "     Eager for more, you press a sultry kiss to its crown before parting your lips to suckle on that delicious vinyl dick. The creature tries to buck into your maw, but their efforts scarcely lift them off the ground in the suit's taut embrace. Your tongue sweeps and curls around the smooth, synthetic material, exploring every inch from head to hilt. Your languid moans vibrate through both plastic and cockflesh, a steady rippling that only enhances the pleasure they feel.";
	say "     In time, your shared victim squeals as a particularly potent orgasm washes over them, thrashing and bucking in the throes of climax. You prolong their peak for nearly half a minute, by which point the last of their energy (and reserves) seem to be depleted, the otter's sex-slave slumping to the floor with hazy, breathless moans. You peel away from the suit as its thick tail thumps against the castle's floor, clearly galvanized by its captive's release. Feeling satisfied after indulging your more perverse impulses, you step away from the suit to gather your bearings again.";


Section 5 - Endings

when play ends: [Bad end to display after complete sanity loss or encasement.]
	if bodyname of player is "InflatableOtterSuitSexSlave":
		say "     You have been reduced to a living power source for the inflatable otter suit. The sensory overload of its slick vinyl brushing and squeezing against your from all sides has erased the final remnants of your sanity. Alone in its dark confines, you think and dream of nothing but the desperate need to cum over and over again, each orgasm only briefly slaking your corrupted libido. Whenever the denizens of the castle come up to play with you, you find yourself squealing with joy as they stroke, suck, and ride the suit's tapered length, deriving immense pleasure from the added stimulation.";
		say "     From outside, your relentless abuse appears far more subtle. Your muffled moans of rapture and a faint bulge in the malleable plastic are the only tells that the suit is even occupied. Anyone could mistake you for an innocuous toy, and the passing fantasy of being used as one only excites you further. The thought is pushed aside when you're brought to another squealing climax, bathing your form in waves of numbing pleasure as you feed your lustful host. Nothing could compare to the bliss of the suit's embrace, and you allow it to use you as it sees fit for the rest of your simple existence.";


Inflatable Otter Suit ends here.
