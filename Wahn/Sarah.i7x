Sarah by Wahn begins here.
[ - Originally Authored By: Sarokcat&Hellerhound - ]
[ Expanded by Stripes                              ]
[ Re-write and expansion by Wahn                   ]
[ Expansion by Glitch                              ]
[ Added Evil DB support - Gherod]

[ SarahCured                                                                         ]
[ 8: player told Sarah he wants to fuck, she doesn't want to be knocked up, anal OK  ]
[ 7: Sarah squashed the player's hopes for vaginal sex, and is about to offer anal   ]
[ 6: Sarah is okay with player dominant oral sex                                     ]
[ 5: Sarah is okay with oral sex (centered on her) with the player                   ]
[ 4: Sarah is now managing her libido pretty well                                    ]
[ 3: Sarah hold the player she needs more suppressant                                ]
[ 2: Sarah got a first dose of libido suppressant - still not out of the woods yet   ]
[ 1: Sarah told the player to go looking in the hospital for a cure                  ]

[ SarahSlut - variable for her sluttyness/sex progress                               ]
[  0: base state, barely holding on                                                  ]
[  1: fucked Sarah once, she's naked from this point on                              ]
[  2: fucked Sarah twice                                                             ]
[  3: Sarah got her SLUT collar from the player                                      ]
[  4: Sarah is fully made into a fuckpet                                             ]

[ SarahShower - shower tracking variable                                             ]
[  0: never talked to the player about it                                            ]
[  1: Sarah thanked the player for the showers                                       ]

[ SarahPups - number of offspring                                                    ]

[ TODO: Move Sarah out of the bunker ]

SarahTalk is a number that varies.
SarahSlut is a number that varies.
SarahCured is a number that varies.
SarahShower is a number that varies.
CarlSarahSex is a number that varies.

ColleenSarahInteraction is a number that varies.
lastColleenSarahInteraction is a number that varies. lastColleenSarahInteraction is usually 10000.

CarlSarahInteraction is a number that varies.
lastCarlSarahInteraction is a number that varies. lastCarlSarahInteraction is usually 10000.

AlexandraSarahInteraction is a number that varies.
lastAlexandraSarahInteraction is a number that varies. lastAlexandraSarahInteraction is usually 10000.

EricSarahInteraction is a number that varies.
cboyEricSarahInteraction is a number that varies.
lastEricSarahInteraction is a number that varies. lastEricSarahInteraction is usually 10000.

FangSarahInteraction is a number that varies.
lastFangSarahInteraction is a number that varies. lastFangSarahInteraction is usually 10000.

DavidSarahInteraction is a number that varies.
lastDavidSarahInteraction is a number that varies. lastDavidSarahInteraction is usually 10000.

Section 1 - Sarah and the Husky pack

Table of GameEventIDs (continued)
Object	Name
Husky Pack	"Husky Pack"

Husky Pack is a situation.
ResolveFunction of Husky Pack is "[ResolveEvent Husky Pack]".
The level of Husky Pack is 8.
Sarea of Husky Pack is "Outside".
when play begins:
	add Husky Pack to BadSpots of FemaleList;
	add Husky Pack to BadSpots of FurryList;

to say ResolveEvent Husky Pack:
	say "     Rounding a corner in one of the inner-city blocks, you run right into the leader of a small husky pack, his fur cushioning the impact. As you jump back from the imposing anthro canine, he snarls in your face, drawing back his lips from a muzzle full of white and sharp teeth. 'Fuck off,' the alpha husky growls in annoyance and is immediately supported by the group of husky bitches following behind him. 'You better run, [if Player is female]skank[else]asshole[end if]!' one of them barks and gives you a quite rude gesture, then a second laughs in a shrill tone and adds, 'That's right. Our man will fuck you up otherwise.' Between the group of naked anthro females, you catch a glimpse of a thin human woman with a rope leash tied around her neck. She is shoeless, dressed in partly torn jeans and a ragged t-shirt, both clear indications that she's gone through some stuff. From her expression, the young woman is quite uncomfortable with the coarse rope against her throat. And not only that - the leash is stretched taut between her and the male, with him apparently dragging her along by force. This little gang appears to be busy dragging their newest unwilling recruit to his harem of bitches.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Apologize and leave as quickly as you can.";
	say "     ([link]N[as]n[end link]) - Demand an explanation what he's doing with the human woman.";
	if Player consents: [apologize]
		say "     You bow low and apologize for bothering them, saying that you will do your best to avoid their territory from now on. Then you turn and start to walk away, hearing one of the huskies call after you, 'You better run, you dumb [if Player is female]bitch[else]jackass[end if].' The sound of ripping fabric and a frightened gasp follows and you can't help but look over your shoulder to see what is going on. Looks like the alpha husky decided that he wants to break in his newest pet right here and now - the woman is pressed against the wall of a building now, with him leaning over her and just having ripped her top half off. The red canine shaft standing proudly erect between his legs leaves little to the imagination of what will happen next.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Attempt to rescue the woman from her fate.";
		say "     ([link]N[as]n[end link]) - Accept the situation for what it is and just walk away.";
		if Player consents: [rescue Sarah]
			LineBreak;
			say "[SarahRescue]";
		else: [leave her to them]
			LineBreak;
			say "     Your continued hesitation while looking at the alpha husky and his victim gives him the time to rip at the crotch of her jeans, scattering buttons over the sidewalk and shoving the pants down. He is quick to hook a clawed finger under her panties after that and thrusts into her pussy right away, with little more finesse than a wild beast. As he takes her as his new bitch, the woman quickly starts to transform more and more - hands becoming paws, white fur sprouting all over her body and her face drawing forward into a canine muzzle. The further details of their coupling are hidden from your view as the other female huskies close in around the two of them, stroking and touching their new sister and alpha male. With a shiver going down your back, you begin to turn away and run.";
			if Player is submissive: [submissive trait]
				LineBreak;
				say "[SarahLeftSubmissive]";
			else if Player is not dominant and MaleList is not banned: [Possible willing submission, not for Dominants]
				say "     Being taken so viscerally could potentially be fun, especially with such a virile figure as that lead husky. Maybe you should join them?";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Submit to the pack.";
				say "     ([link]N[as]n[end link]) - Just keep going.";
				if Player consents: [Submit]
					LineBreak;
					say "     Turning back, you move in closer towards the pack. Your gaze falls on the powerful form of the Alpha Husky with his virile root gleaming and ready, and you manage to quaver, 'Take me, too.' His eyes land on you, and their presence is like a weight, locking you in place. Drawing the lips of his muzzle back to show a toothy grin, the male husky adds, 'That one, too,' motioning to the pack.";
				else:
					LineBreak;
					say "     Your pace quickens as you leave behind the sounds of debauchery to come. Their barks and yips fade off into the distance.";
			else:
				LineBreak;
				say "     Your pace quickens as you leave behind the sounds of debauchery to come. Their barks and yips fade off into the distance.";
	else: [demand an explanation]
		LineBreak;
		say "     The tall husky lets out a growl from the depth of his throat, then says under his breath, 'You dumb [if Player is female]bitch[else]prick[end if].' Giving a yank on the leash, the captive is forced to stumble forward while letting out a half-choked gasp - right into the alpha husky's arms. She whimpers but clearly is too afraid to speak as the furry male gives her breasts a lewd squeeze. 'What do you think? Of course she's my newest slut! Gonna be a fine bitch when I breed her again and again.' With that said, the anthro dog licks the side of his captive's neck, making her tremble at the touch. While the husky is leaning over her, the young woman meets your eyes for a second, giving a silent plea for help.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Attempt to rescue the woman from her fate.";
		say "     ([link]N[as]n[end link]) - Accept the situation for what it is and just walk away.";
		if Player consents: [rescue Sarah]
			LineBreak;
			say "[SarahRescue]";
		else: [leave her to them]
			LineBreak;
			say "     Looking at the alpha husky and his gang of obedient bitches, you decide against intervening in this matter. As you shrug and give a little shake of your head to the human captive, she swallows visibly and whimpers as her last fleeting hope is dashed. Mumbling an apology for having bothered the dogs, you quickly hurry away.";
			if Player is submissive: [submissive trait]
				LineBreak;
				say "[SarahLeftSubmissive]";
	now Husky Pack is resolved;

to say SarahLeftSubmissive:
	say "     The lead husky's eyes catch on yours, and a predatory gleam shines in those canid irises. The flame of avarice flares bright, and something inside of you quakes, a shudder of something hot, tugging at you to submit towards that greater will. His lips peel back into a wolfish smile, 'And, that one, too,' nodding his head towards you. So much for leaving the situation be.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Fight to keep both you and Sarah from this fate.";
	say "     ([link]N[as]n[end link]) - Submit to the desires of the Alpha Husky.";
	if Player consents: [Rescue Sarah]
		LineBreak;
		say "[SarahRescue]";
	else: [Total Submission]
		LineBreak;
		say "[HuskyGangbang]";

to say SarahRescue:
	now Resolution of Husky Pack is 1; [fought to rescue Sarah]
	say "     Determined to stop what's going on, you jump forward slamming your shoulder into the alpha husky. He stumbles and falls with a grunt at having the air driven out of his lungs through the sudden lunge, pulling his captive down with him. You make use of the chance at having him out of the way and quickly pick the woman off the ground (grabbing her arm and not the leash). Time seems to slow down as she smiles in gratitude, then both of you turn to start running away from the pack of huskies. You make the first step towards escape, but then suddenly something swats sideways against your lower ankle - it is the alpha husky, intent on sweeping your legs out from under you from his position on the ground.";
	say "     Sent stumbling by his blow, you smack your head into the stone wall of the building and are momentarily dazed, giving the muscular canine enough time to stand up. Since you are pretty out of it as he steps up afterwards, the husky pays you little notice, instead dragging his claws along Sarah's side. Blood wells up from the harsh scratches he leaves on her pale skin, showing that he didn't hold back at all and really wanted to hurt her. The casual violence and cruelty serves to focus your mind again - you'll have to fight to get out of this!";
	increase Morale of Player by 10;
	say "     You are about to jump forward to challenge the husky, but a member of his pack acts first and pounces on you.";
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 4: [runs for 4 times (for example) or until the player loses or flees]
		now inasituation is true;
		if GroupFightCounter < 3:
			challenge "Husky Bitch";
		else if MaleList is not banned:
			challenge "Husky Alpha";
		else:
			challenge "Husky Bitch";
		increase GroupFightCounter by 1;
	if fightoutcome < 20: [player won]
		say "     Standing victorious over a pile of groaning huskies as they gingerly touch their bruises and try to get up again, you quickly step over a sprawled out bitch and grab Sarah, lifting her up in your arms and running away from the scene of the fight as quickly as you can. You do stop once or twice to look back and see if you are being followed by the huskies - or attracted any other creature's attention - but thankfully, it looks like you're in the clear. Carrying the wounded woman back to the library, you gently lay her on the reception desk and ";
		if "Expert Medic" is listed in feats of Player:
			say "expertly bandage her wound, using the remains of her ripped t-shirt to tie around her torso. ";
		else:
			say "do your best to treat her wound, tying her ripped t-shirt around her torso in an improvised bandage. ";
		say "Given the depth and ragged edges of the claw-slashes, you can tell that this usually would never have sufficed... but in this case, the trouble-making nanites in this city actually work a positive effect. Within just a few minutes, the bleeding stops completely as the tiny machines knit Sarah's flesh together again - though not without the usual side effects, as a small patch of short white fur peeks out from under the bandage soon after. The fur keeps up a slow progression over her skin, making it clear that Sarah has been exposed to the husky strain of nanites.";
		say "     Helpless to do anything about the spreading infection, you can do little but watch as her hands and feet become more paw-like than human as the fur reaches them and her pussy conforms to a new shape too, just right for a strong canine to sink his bone into. Distracted by the sight of her shifting crotch, only the crunch of re-forming bone draws your attention back to her head - which rapidly forms a slender muzzle and pointy dog's ears, completing her external transformation. You carry Sarah downstairs to put her into a bed to rest, then walk back up into the library and watch the empty streets outside for a moment. Thinking back to what you went through earlier, you don't feel sorry for the huskies you left lying in the street. Getting caught by some of the more dangerous beasts out there would be a fit punishment for what they tried to do.";
		now inasituation is false;
		now Sarah is in the bunker;
		now Player is in Grey Abbey Library;
		now Resolution of Husky Pack is 6; [player rescued Sarah]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Even as your strength gives out and you succumb to the fatigue from combat, furry bodies pile onto you, pinning you down. The heat from their bodies envelops you, and the air is rich with the scents of exertion and heat.";
		if GroupFightCounter < 1: [Total Loss]
			LineBreak;
			say "[HuskyGangbang]";
		else if GroupFightCounter < 3: [Defeated 1 or 2]
			LineBreak;
			say "[HuskyThreesome]";
		else: [Lost to Alpha/Fourth Husky]
			LineBreak;
			say "     During the confusion of the conflict, Sarah had managed to break free with the female huskies subdued, but you're not that lucky.";
			if MaleList is not banned:
				say "[HuskyAlphaWin]";
	else if fightoutcome is 30: [fled]
		LineBreak;
		say "     You cry out, pointing off in the distance to try and distract the dogged foes. The candid look that the pack gives you lets you know it's not going to work, but, with them all looking at you within the pause, you kick up dirt, spraying it into their eyes before you make a mad dash. The angry howls and barks begin to fall behind you as you keep running until the noises are well and gone.";
		now Resolution of Husky Pack is 5; [player fled the huskies]
	now inasituation is false;

to say HuskyGangbang:
	now Resolution of Husky Pack is 2; [got gangbanged by huskies]
	say "     Several of the husky girls approach, and soon their soft pads slide over your body, caressing. One of them [StripCrotch] while another [StripChest]. Wet tongues glide across your bared flesh, joining the stroking digits, and a titter of giggles emit from some of the female huskies. Sarah is getting much of the same treatment, gasps and moans elicited from her as you see one of the girls capturing a nipple between her dark lips, suckling over the pert areola. The wet slide of that slick pink nip dances across the canine's tongue, and the hot breath of one of your companions floods across your own [if Breast Size of Player > 0]breasts[else]chest[end if] before the wet heat of a dog tongue grooms along your nipple. The fragrant perfume of bitch heat wafts up, an erotic miasma of need.";
	say "     The swell pillows of voluptuous husky breasts nestle the back of your neck into their cleft while slender digits caress from the center of your sternum upwards, gliding over your collar and up to your jawline in soothing pets. One of your wrists is captured between another of the bitch's thighs, and damp lips drag over your palm and fingers, achingly hot and seeking your touch. Sarah's plaintive gasps riddle the air, melting into high-pitched whines and groans, and you can see the woman's folds being spread over the wedge of a canine muzzle. Each moist lap draws a fresh squeal from her as the husky bitch licks her out. Sarah's eyes land on you, and her mouth spreads in a panting O, her taut nipples collected into tight, lick-dampened nubs while her hips roll, riding the face of the cunnilinguist.";
	WaitLineBreak;
	if Player is female:
		say "     Distracted by the tableau of feminine pleasure, a teasing finger sliding up from beneath to drag over your own cleft gives you a start. Your hot, perfumed lips are spread, and the blunt-clawed finger probes, working its way into your nethers to explore. Looking down, you can see one of the bitches has knelt between your thighs, her curled tail wagging happily behind her while she ogles your spreading pussy and how it grips her finger. She looks up briefly, bright blue eyes flashing with mischief before her face descends, and her muzzle noses in, huffing in your perfume before exhaling passionate warmth. The silken lash of her flat tongue grooms over your split slit, and her finger works to the knuckle, curling inside to stroke behind the curve of your pelvis and drag over your folds.";
		if Player is male:
			say "     One of her sisters leans over, and their noses brush when the other snuffles against your nuts, inhaling your mingled aromas and begins to lap up over the orbs. One husky sister nosing your cunny and the other slathering your balls with damp tongue kisses. Your cock twitches, veins throbbing with the beat of your heart, and the pink flat of the husky's tongue sloooowly glides up your length, cleaning the belly to leave it glistening wet. With her finger still inside of you, the other sister lifts her muzzle, and she slides her dark lips over one of the hanging nuts, sealing around it to give it a gentle nursing tug. Both girls work at polishing your balls with wet, slippery suckles, each pulling the opposite direction to spread your sac even as that finger tweedles and toys with your folds. Almost at the same time, your balls pop form their lips, damply bouncing, and the sisters kiss, sharing the succulent flavor of your sac between them.";
		WaitLineBreak;
		say "     The single finger is joined by another, and the two spread, stretching at your folds, and the husky nudges her nose into the spread, breathing in your perfume before her tongue laps at your nectar-glistened pink. Burrowing with her muzzle, the husky bitch wedges her nose in more, spreading your petals even more so while she laps within. The husky who'd been stroking your jawline and supporting the back of your neck with her cushy breasts turns a little, arm sliding to support your head as she drags the swell warmth of her tits across your face. The firm prod of her nipple drags across your cheek and over your lips, teasing until you give it a kiss. A keening cry erupts from Sarah, and you can spy her amongst the other bitches, nails clutching against a scalp as her sweet nectar floods over an eager muzzle. As if in sympathy, your folds shudder, and the seeping dampness of your own juices grows the more copious, flooding over the insistent lapping and snuffling.";
		say "     [if anal is not banned and anallevel > 1]The fingers, still damp with your own juices, slide down and pet over your puffy star and begin to push, spreading the muscle with soft insistence, sinking a single finger up into your ass to stroke the wall shared by both sexual pockets. [end if]Needy whines ride through the husky's muzzle while she nibbles and licks, and her tail wags incessantly with delight. A pair of the bitch sisters grinds their ample breasts across your bicep and face, stroking you with their naughty pillows while panting headily. The air is hot with pheromones and dank, rich female musk. Nails comb over your sides, and probing fingers work faster, playing to your quivering nethers, following each reaction with more stimulation until your back arches, and your walls constrict, locking over the invaders. A flood of your juices spills out, gushing over the teasing muzzle and coating the husky's face in your nectar, your cries joining Sarah's own.";
		WaitLineBreak;
	if Player is male:
		say "     Eager paws capture the girth of your member, sister bitches sharing the grip as several muzzles lean in to lap over your tip and sac, shaft and base. The joint efforts readily slather you in hot husky drool, polishing over your pole and nuts until they fairly gleam. [if anal is not banned and anallevel > 1]A moist finger slides between your ass cheeks with the pad of it pressing and massaging into your snug bud, rolling it in little circles. With careful but firm pressure, that damp digit sinks in, spreading your star. [end if]Panting breathes wash across your polished cock, and more lapping still moistens your belly and thighs, too. One of the husky girls seals her dark lips over the crown of your prick, and she audibly nurses, slurping noisily while the silky stroke of her tongue drags against your cum slit and shines your tip. Several soft-padded hands grip and begin to paw up your length in rapid strokes.";
		say "     The girl's pack sister pushes down on her head, forcing her to take you deeper suddenly and roughly. With a snort and glurk, she sputters around your girth, eyes crossing briefly. [if anal is not banned and anallevel > 1]The exploring finger burrows within your anal depths, curling past the snug cuff and petting in against the meaty lining to find your sweet lily and massage it, milking that prostate. [end if]The husky girl's nostrils flare as she pants nasally, head bobbing, lips tugging and nursing from your prick, despite her sister's mean push. The same sister shimmies down and slides one of your nuts into her mouth, rubbing her nose against her pack sister's chin and your cock's belly. Within the warm, wet confines of her mouth, her tongue slathers and bathes, suckling the salts that cling to your sac. When your nuts tug up tight, you can feel the heat welling up your length. The girls pull off as you start to cum, and your jizz spatters against your own belly messily.";
		WaitLineBreak;
	if MaleList is banned:
		say "     Even in the afterglow of your passions, Sarah crawls through the tumult of gorgeous female bodies. Panting headily, she croons, 'Thank you. For trying to help,' a bit breathlessly. The other woman's face draws close, and it's glistened with the fragrance of husky nectar while she steals a kiss, pressing her breasts to you in the shared moment. Those molten petals linger only briefly before sliding free. She stands, sliding a leg over your shoulder to mash her perfumed lower lips up against your nose, grinding in to paint you with her juices. 'Mmmn, here, you earned it.' Her fingers clutch against the back of your scalp, and she holds you in against the radiant heat, lithely grinding her pussy against you.";
		say "     From behind, one of the bitches pushes her mound against the back of your head, helping sandwich you against Sarah's damp flower.. the air is all the more bogged in the fragrant miasma of girl sex, and damp paws and cushy breasts press in from all around, smothering you in the press of the bodies. You can't help but start to nuzzle and lick into those insistent lips. Sarah's cunny splits with the press of your nose and tongue, washing you more with her heat and juices, filling your senses with her special perfume as nails comb over your scalp. She gasps and groans, one of the husky girls reaching up from behind her and cups the undercurves of her breasts, lifting and rolling the mounds while Sarah rides your face. Everything begins to blur together, breathing becoming more and more difficult in the hot press, drowning in pussy and exotic pheromones. There's an electric current that steals along your spine, scintillating as a joint orgasm strikes the gang, and nectar flows. So hard to breath, but so delicious. Your consciousness swims in that hot pool, lost in the waters of climax.";
	else:
		say "     Sweet, feminine perfumes waft up from your captors, and the heat of their arousal bathes across your own thighs. The fresh spill of Sarah's juices brings with it its own aroma, joining with the others' while they hold you, watching. One of the combat-wearied husky girls reaches over and [StripCrotch], and your own loins air into the mix. Another of the huskies [StripChest], and you're born in full view. With a lascivious flame burning in his eyes, the alpha husky looks over at you, taking in the sight while his fingers purposely spreads and smear Sarah's juice lips against each other with audibly damp sounds. The teeming juices spill, running rivulets across her thighs, and an exceptionally loud squelch emits when two, thick fingers sink to the knuckle accompanied by Sarah's shrill cry.";
		say "     The soft pads of husky hands glide over your bared skin, stroking over your [if Breast Size of Player > 0]breasts[else]pecs[end if] and abdomen, thighs and crotch. Though fatigued from the conflict, the husky harem's pets and warm aromas flood over you. All the while, Sarah is sullied, the powerful form of the alpha silhouetting her relatively smaller form. The moist seam of his sheath splits as his potent taper fills out, rising up to cradle the woman's damp cleft down against its veiny top. Your own loins begin to burn with need while smooth strokes pet against you, and the sight of that pulsing erection, so virile and turgid, saws in your view, smearing the cupped cunny's leaking juices all along its length, mingling with its glistening musk.";
		WaitLineBreak;
		if Player is male:
			say "     Your own cock quivers, unsure whether to be erect or to just plump up in docile arousal. The sight of that powerful erection runs electric through yours, and a deep-seeded need runs hot along your length and settles down into the pit of your pucker.";
		if Player is female:
			say "     So potent-looking, that cock fills your view, sawing against those lovely, nectar-leaking lips that your own petals can't help but follow suit. Heat masses in your lining, and the hot drizzle of your own juices begins to spill from your lips.";
		say "     The alpha husky crooks a finger, a beckoning motion for you to come closer, and the build of salivation in your mouth suddenly dries up rapidly. [bold type]Do you heed his call?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Crawl up to him as beckoned.";
		say "     ([link]N[as]n[end link]) - Deny the beckons and stay back.";
		if Player consents:
			LineBreak;
			say "     Crawling forwards at the behest of the beckoning, husky paws help coax you along, pushing at your buttocks and petting you as your face draws closer and closer to that aromatic pillar of pulsing cockflesh. Sarah bites her lower lip, looking down at you with that huge cock throbbing between her legs, her juicy lips split against its top, and the angle makes it look like she's got a big, canine dick. Reaching past her, the male husky cups your scalp and pulls your face in against the heady scent of his pillar. His hips roll, grinding that fuck meat against your nose and over your face, its flavor accented by Sarah's dribbling juices. 'Now, give it a good polish,' the Alpha's voice demands.";
			say "     Its flavor is as rich as its aroma, and the mixture of perspired salt, tart nectar and rich, savory male musk mingle together as an erotic cocktail across your tongue as you groom up the tapered length. With the husky's hip motions rolling and sawing that immense erection into the press with Sarah sandwiched between, it almost looks like she's rubbing a big doggy dick all over your face as you lap and polish it with your saliva. 'Good, good, that's it,' commends the dog before he pivots his hips and sinks the narrow point of his taper between Sarah's glistening lips. With an audible squelch and a shrill cry from Sarah, it spears upwards, burying to the hilt with enough force to make her nectar splurt and spatter against your face.";
		else:
			LineBreak;
			say "     A displeased rumble rolls from the masculine dog's chest, and he grasps Sarah by the hips to forcefully lift her up, lining her quivering lips over the gleaming taper of his musk-rich member. The woman cries out as she's speared down onto the pulsing monolith of dog dick, hilted with her juicy cunt spilling fresh nectar down over the husky's nuts.";
		WaitLineBreak;
		say "     The fervent thrusts upwards wrack Sarah's body, her tits jouncing and jostling while she squeals and moans. The sopping swat of the husky's balls impacting up against her spread lips join in with the damp pounding of her cunny. The vivid contrast of his red length plunging again and again into her pale pink grows faster and more erratic until the base of his cock bulges, knot inflating. Hot cream teems from her lips, his spunk so full within that the jizz spurts down over his knot. The swollen bloat of his knot is buried within her, but the husky tugs firmly. Sarah's lips spread obscenely over the huge bulb of his knot until it's drawn free, and there is a flood of cum that drains form her stretched cunny. Letting Sarah slide to the ground where several of the female husky begin to lap and pet the sullied, pleasured woman, the male husky approaches you, still-erect cock wagging as he walks.";
		say "     [bold type]What will you do??[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Open your mouth and offer it to him.";
		say "     ([link]N[as]n[end link]) - Don't offer anything to him.";
		if Player consents:
			LineBreak;
			say "     As you spread your mouth, offering the dampness within for his cleaning and pleasure, the Alpha husky's lips peel back into a pleased smile, 'Good, good. You'll do well,' while leveling his prick and pointing its taper towards the welcoming O. Gripping against your scalp with his other hand, he guides your eager lips over the cummy tip, a playful roll of his hips smearing it across your petals like lipstick. The rich flavor of cum, cock, cunny juice and sweat slides across your tongue as the male husky takes your mouth. You can feel every flavorful inch sinking past your lips, and your tongue slathers its belly. Your gurgled moans run vibrantly over that hot canine cock as its knot bumps and smacks against your nose and lips. The husky's hefty sac sways and swats against your chin as his taper punches against the back of your throat, eager to feel your sucking maw.";
			say "     A deep, abiding rumble rolls through the dog's chest, and his taut abs roll before your eyes as he bucks into your mouth. His potent aroma fills your nostrils, and his flavor permeates every bit of your mouth. You can feel each pulsing vein along that hot, thrusting manflesh even as it bloats, and the knot quakes. The Alpha husky's balls tighten as he howls out in pleasure, and fresh, thick seed gushes into your mouth. Your head is held there as the husky forces you to swallow the bulk of his load. Its heat seers down your throat, and only then does he pull out. Several thick ropes eject form his tip, landing hot ribbons across your face of the gooey canine spunk. The bridge of saliva connecting your lips to his prick snaps as he says, 'Mmmn, good. I should make you one of my own.' The husky pack coalesces, collecting up the spent Sarah as they prepare to leave.";
		else if NonconList is not banned:
			LineBreak;
			say "     It seems like no is not an answer the Alpha wants as he brusquely closes the distance between himself and you. The dog's grip clamps down on your scalp, drawing you in close. Beneath the heavy tone of his abdomen, the gleaming pillar of the alpha husky's tapered prick is laced with throbbing veins, livid with his ire. Its pungent scent spreads, rich with the male's virile musk and the salts of exertion, and that cock's heat is radiant, bathing your backside with its intensity. Stooping over your forcefully knelt figure, the alpha husky's breath steals across your neck, and his whisper is ragged with anger, 'This will be for my pleasure, not for yours. I will take each ill you've done unto mine out on your hide,' before his jaws close, gripping on your shoulder like a vice.";
			say "     The hot slather of the canine's erect fuckflesh drags across your taint, smearing its perspirations into your valley and dribbling mercurial heat over your puckered bud. The hot drizzle of pre spills beneath, rivulets of slick, hot juice parting over your [if Player is female]lips[else]sac[end if] and glistening down over your thighs. The searing taper of that angry spear buts against your star, spreading it insistently before an angry thrust spits your quivering ring, force-fitting around the throbbing girth. Pain shoots in scintillating waves, piercing your groin and permeating into your bowels as the fresh, burning ache of your anal cuff being stretched is joined by the insistent pulse of the invader. The husky's blunt, canid claws rake down your sides, pulling back on your hips, meeting his thrust so that his muscled thighs clap against your ass, and his full sac slaps against you heftily.";
			WaitLineBreak;
			say "     The bestial potency of his ferocious mounting has you helplessly skewered on his spearing meat, and the husky's powerful body moves atop your own, keeping you knelt in place, bottom to his pervasive top. The musk-gloved prickmeat tugs and pistons, pulling through your painfully stretched channel, bucking into your anal passage roughly as he takes of your flesh. The quivering grip of your resisting anus milks around the dog's girth, and every inch of veined, turgid dogdick can be felt while it possesses your depths.";
			if Player is male:
				say "     The delicately pliant shape of your fleshy lily deep inside is slammed into again and again, and the alpha husky's prick mortars your prostate with the angry erection as the pestle. Unbidden, pre drizzles from your own flesh, spitting pearls of moisture to sink into the ground.";
			if Player is female:
				say "     That steely erection stretches your anal lining, burgeoning your colon so that the joined walls between it and your cunny are stretched thin. Each angry thrust of the pulsing member can be felt through your folds and bulging out your abdomen with the obscene penetration. Your hot nectar teems, spilling out beneath his cock and dribbling over his sac with each solid impact of them against your juicy lips.";
			WaitLineBreak;
			say "     The male husky's knot starts to swell, its bloated presence punching into your ass and popping free with each drive and each pull, plucking at your abused ring. Pulling out abruptly, he snarls against your shoulder, 'Not yet. You still have more to pay for,' as his gleaming scepter ticks, juicy with musk. Gripping against your scalp again, he tugs your around, mashing your nose into his nutsack while that polished pole throbs, aromatic with the scents of recent conquest. 'Lick, and maybe I'll go easy on your throat,' the alpha growls huskily.";
		else:
			LineBreak;
			say "     A sour frown touches the husky's lips when he sees how reticent you are to clean him off. With a soft sigh, the canine says, 'Well, I had my fun. Let's collect our prize and move on.' His pack comes together, picking up Sarah as they prepare to head off.";

to say HuskyThreesome:
	now Resolution of Husky Pack is 3; [husky threesome]
	say "     Subdued by the persistence of the girl huskies, you finally succumb to your fatigue from the struggle. The remaining huskies quickly slip arms around you and grip you close with arm bars with cushy, furry breasts smooshing up against your form. A leering smirk plays over the male husky's lips, and he chuckles, 'There we go. Less fighting and more fun, now,' while turning Sarah about to face you. 'All this violence, and for what? Can't you see she wants it?' he continues, his voice deep with a naturally seductive croon to it. With Sarah facing you, her eyes plead, but the male husky lifts one of her knee, displaying her crotch more so to you, and he dips a single blunt clawtip to trace the seam of her cleft. Hot nectar drools form her slit, copious and flowing down her thigh with the light split of her lips from that insistent digit.";
	say "     Sweet, feminine perfumes waft up from your captors, and the heat of their arousal bathes across your own thighs. The fresh spill of Sarah's juices brings with it its own aroma, joining with the others' while they hold you, watching. One of the combat-wearied husky girls reaches over and [StripCrotch], and your own loins air into the mix. Another of the huskies [StripChest], and you're born in full view. With a lascivious flame burning in his eyes, the alpha husky looks over at you, taking in the sight while his fingers purposely spreads and smear Sarah's juice lips against each other with audibly damp sounds. The teeming juices spill, running rivulets across her thighs, and an exceptionally loud squelch emits when two, thick fingers sink to the knuckle accompanied by Sarah's shrill cry.";
	WaitLineBreak;
	say "     The soft pads of husky hands glide over your bared skin, stroking over your [if Breast Size of Player > 0]breasts[else]pecs[end if] and abdomen, thighs and crotch. Though fatigued from the conflict, the husky harem's pets and warm aromas flood over you. All the while, Sarah is sullied, the powerful form of the alpha silhouetting her relatively smaller form. The moist seam of his sheath splits as his potent taper fills out, rising up to cradle the woman's damp cleft down against its veiny top. Your own loins begin to burn with need while smooth strokes pet against you, and the sight of that pulsing erection, so virile and turgid, saws in your view, smearing the cupped cunny's leaking juices all along its length, mingling with its glistening musk.";
	if Player is male:
		say "     Your own cock quivers, unsure whether to be erect or to just plump up in docile arousal. The sight of that powerful erection runs electric through yours, and a deep-seeded need runs hot along your length and settles down into the pit of your pucker.";
	if Player is female:
		say "     So potent-looking, that cock fills your view, sawing against those lovely, nectar-leaking lips that your own petals can't help but follow suit. Heat masses in your lining, and the hot drizzle of your own juices begins to spill from your lips.";
	say "     The alpha husky crooks a finger, a beckoning motion for you to come closer, and the build of salivation in your mouth suddenly dries up rapidly. [bold type]Do you heed his call?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Crawl up to him as beckoned.";
	say "     ([link]N[as]n[end link]) - Deny the beckons and stay back.";
	if Player consents:
		LineBreak;
		say "     Crawling forwards at the behest of the beckoning, husky paws help coax you along, pushing at your buttocks and petting you as your face draws closer and closer to that aromatic pillar of pulsing cockflesh. Sarah bites her lower lip, looking down at you with that huge cock throbbing between her legs, her juicy lips split against its top, and the angle makes it look like she's got a big, canine dick. Reaching past her, the male husky cups your scalp and pulls your face in against the heady scent of his pillar. His hips roll, grinding that fuck meat against your nose and over your face, its flavor accented by Sarah's dribbling juices. 'Now, give it a good polish,' the Alpha's voice demands.";
		say "     Its flavor is as rich as its aroma, and the mixture of perspired salt, tart nectar and rich, savory male musk mingle together as an erotic cocktail across your tongue as you groom up the tapered length. With the husky's hip motions rolling and sawing that immense erection into the press with Sarah sandwiched between, it almost looks like she's rubbing a big doggy dick all over your face as you lap and polish it with your saliva. 'Good, good, that's it,' commends the dog before he pivots his hips and sinks the narrow point of his taper between Sarah's glistening lips. With an audible squelch and a shrill cry from Sarah, it spears upwards, burying to the hilt with enough force to make her nectar splurt and spatter against your face.";
	else:
		LineBreak;
		say "     A displeased rumble rolls from the masculine dog's chest, and he grasps Sarah by the hips to forcefully lift her up, lining her quivering lips over the gleaming taper of his musk-rich member. The woman cries out as she's speared down onto the pulsing monolith of dog dick, hilted with her juicy cunt spilling fresh nectar down over the husky's nuts.";
	WaitLineBreak;
	say "     The fervent thrusts upwards wrack Sarah's body, her tits jouncing and jostling while she squeals and moans. The sopping swat of the husky's balls impacting up against her spread lips join in with the damp pounding of her cunny. The vivid contrast of his red length plunging again and again into her pale pink grows faster and more erratic until the base of his cock bulges, knot inflating. Hot cream teems from her lips, his spunk so full within that the jizz spurts down over his knot. The swollen bloat of his knot is buried within her, but the husky tugs firmly. Sarah's lips spread obscenely over the huge bulb of his knot until it's drawn free, and there is a flood of cum that drains form her stretched cunny. Letting Sarah slide to the ground where several of the female husky begin to lap and pet the sullied, pleasured woman, the male husky approaches you, still-erect cock wagging as he walks.";
	say "     [bold type]What will you do??[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Open your mouth and offer it to him.";
	say "     ([link]N[as]n[end link]) - Don't offer anything to him.";
	if Player consents:
		LineBreak;
		say "     As you spread your mouth, offering the dampness within for his cleaning and pleasure, the Alpha husky's lips peel back into a pleased smile, 'Good, good. You'll do well,' while leveling his prick and pointing its taper towards the welcoming O. Gripping against your scalp with his other hand, he guides your eager lips over the cummy tip, a playful roll of his hips smearing it across your petals like lipstick. The rich flavor of cum, cock, cunny juice and sweat slides across your tongue as the male husky takes your mouth. You can feel every flavorful inch sinking past your lips, and your tongue slathers its belly. Your gurgled moans run vibrantly over that hot canine cock as its knot bumps and smacks against your nose and lips. The husky's hefty sac sways and swats against your chin as his taper punches against the back of your throat, eager to feel your sucking maw.";
		say "     A deep, abiding rumble rolls through the dog's chest, and his taut abs roll before your eyes as he bucks into your mouth. His potent aroma fills your nostrils, and his flavor permeates every bit of your mouth. You can feel each pulsing vein along that hot, thrusting manflesh even as it bloats, and the knot quakes. The Alpha husky's balls tighten as he howls out in pleasure, and fresh, thick seed gushes into your mouth. Your head is held there as the husky forces you to swallow the bulk of his load. Its heat seers down your throat, and only then does he pull out. Several thick ropes eject form his tip, landing hot ribbons across your face of the gooey canine spunk. The bridge of saliva connecting your lips to his prick snaps as he says, 'Mmmn, good. I should make you one of my own.' The husky pack coalesces, collecting up the spent Sarah as they prepare to leave.";
	else if NonconList is not banned:
		LineBreak;
		say "     It seems like no is not an answer the Alpha wants as he brusquely closes the distance between himself and you. The dog's grip clamps down on your scalp, drawing you in close. Beneath the heavy tone of his abdomen, the gleaming pillar of the alpha husky's tapered prick is laced with throbbing veins, livid with his ire. Its pungent scent spreads, rich with the male's virile musk and the salts of exertion, and that cock's heat is radiant, bathing your backside with its intensity. Stooping over your forcefully knelt figure, the alpha husky's breath steals across your neck, and his whisper is ragged with anger, 'This will be for my pleasure, not for yours. I will take each ill you've done unto mine out on your hide,' before his jaws close, gripping on your shoulder like a vice.";
		say "     The hot slather of the canine's erect fuckflesh drags across your taint, smearing its perspirations into your valley and dribbling mercurial heat over your puckered bud. The hot drizzle of pre spills beneath, rivulets of slick, hot juice parting over your [if Player is female]lips[else]sac[end if] and glistening down over your thighs. The searing taper of that angry spear buts against your star, spreading it insistently before an angry thrust spits your quivering ring, force-fitting around the throbbing girth. Pain shoots in scintillating waves, piercing your groin and permeating into your bowels as the fresh, burning ache of your anal cuff being stretched is joined by the insistent pulse of the invader. The husky's blunt, canid claws rake down your sides, pulling back on your hips, meeting his thrust so that his muscled thighs clap against your ass, and his full sac slaps against you heftily.";
		WaitLineBreak;
		say "     The bestial potency of his ferocious mounting has you helplessly skewered on his spearing meat, and the husky's powerful body moves atop your own, keeping you knelt in place, bottom to his pervasive top. The musk-gloved prickmeat tugs and pistons, pulling through your painfully stretched channel, bucking into your anal passage roughly as he takes of your flesh. The quivering grip of your resisting anus milks around the dog's girth, and every inch of veined, turgid dogdick can be felt while it possesses your depths.";
		if Player is male:
			say "     The delicately pliant shape of your fleshy lily deep inside is slammed into again and again, and the alpha husky's prick mortars your prostate with the angry erection as the pestle. Unbidden, pre drizzles from your own flesh, spitting pearls of moisture to sink into the ground.";
		if Player is female:
			say "     That steely erection stretches your anal lining, burgeoning your colon so that the joined walls between it and your cunny are stretched thin. Each angry thrust of the pulsing member can be felt through your folds and bulging out your abdomen with the obscene penetration. Your hot nectar teems, spilling out beneath his cock and dribbling over his sac with each solid impact of them against your juicy lips.";
		WaitLineBreak;
		say "     The male husky's knot starts to swell, its bloated presence punching into your ass and popping free with each drive and each pull, plucking at your abused ring. Pulling out abruptly, he snarls against your shoulder, 'Not yet. You still have more to pay for,' as his gleaming scepter ticks, juicy with musk. Gripping against your scalp again, he tugs your around, mashing your nose into his nutsack while that polished pole throbs, aromatic with the scents of recent conquest. 'Lick, and maybe I'll go easy on your throat,' the alpha growls huskily.";
	else:
		LineBreak;
		say "     A sour frown touches the husky's lips when he sees how reticent you are to clean him off. With a soft sigh, the canine says, 'Well, I had my fun. Let's collect our prize and move on.' His pack comes together, picking up Sarah as they prepare to head off.";

to say HuskyAlphaWin:
	now Resolution of Husky Pack is 4; [player lost to alpha husky after beating the others]
	if NonconList is not banned:
		if Player is male and "Artemis's Disciple" is listed in feats of Player: [bad end]
			say "[BrokenHuskySlutBadend]";
		else: [regular fucking]
			if anal is not banned and anallevel > 1:
				say "     The powerful physique of the male husky ripples as he seethes forwards towards you. A snarl peels back his lips, and he barks out, 'You hurt my pack, my mates, and for that, you're going to get it.' Lashing out, he grips your scalp and pulls you down onto your knee roughly, the brusque motion slamming your knees against the ground harshly. The husky's muscles are firm, and his movements are adamant as he [StripCrotch]. Beneath the heavy tone of his abdomen, the gleaming pillar of the alpha husky's tapered prick is laced with throbbing veins, livid with his ire. Its pungent scent spreads, rich with the male's virile musk and the salts of exertion, and that cock's heat is radiant, bathing your backside with its intensity. Stooping over your forcefully knelt figure, the alpha husky's breath steals across your neck, and his whisper is ragged with anger, 'This will be for my pleasure, not for yours. I will take each ill you've done unto mine out on your hide,' before his jaws close, gripping on your shoulder like a vice.";
				say "     The hot slather of the canine's erect fuckflesh drags across your taint, smearing its perspirations into your valley and dribbling mercurial heat over your puckered bud. The hot drizzle of pre spills beneath, rivulets of slick, hot juice parting over your [if Player is female]lips[else]sac[end if] and glistening down over your thighs. The searing taper of that angry spear buts against your star, spreading it insistently before an angry thrust spits your quivering ring, force-fitting around the throbbing girth. Pain shoots in scintillating waves, piercing your groin and permeating into your bowels as the fresh, burning ache of your anal cuff being stretched is joined by the insistent pulse of the invader. The husky's blunt, canid claws rake down your sides, pulling back on your hips, meeting his thrust so that his muscled thighs clap against your ass, and his full sac slaps against you heftily.";
				WaitLineBreak;
				say "     The bestial potency of his ferocious mounting has you helplessly skewered on his spearing meat, and the husky's powerful body moves atop your own, keeping you knelt in place, bottom to his pervasive top. The musk-gloved prickmeat tugs and pistons, pulling through your painfully stretched channel, bucking into your anal passage roughly as he takes of your flesh. The quivering grip of your resisting anus milks around the dog's girth, and every inch of veined, turgid dogdick can be felt while it possesses your depths.";
				if Player is male:
					say "     The delicately pliant shape of your fleshy lily deep inside is slammed into again and again, and the alpha husky's prick mortars your prostate with the angry erection as the pestle. Unbidden, pre drizzles from your own flesh, spitting pearls of moisture to sink into the ground.";
				if Player is female:
					say "     That steely erection stretches your anal lining, burgeoning your colon so that the joined walls between it and your cunny are stretched thin. Each angry thrust of the pulsing member can be felt through your folds and bulging out your abdomen with the obscene penetration. Your hot nectar teems, spilling out beneath his cock and dribbling over his sac with each solid impact of them against your juicy lips.";
				WaitLineBreak;
				say "     The male husky's knot starts to swell, its bloated presence punching into your ass and popping free with each drive and each pull, plucking at your abused ring. Pulling out abruptly, he snarls against your shoulder, 'Not yet. You still have more to pay for,' as his gleaming scepter ticks, juicy with musk. Gripping against your scalp again, he tugs your around, mashing your nose into his nutsack while that polished pole throbs, aromatic with the scents of recent conquest. 'Lick, and maybe I'll go easy on your throat,' the alpha growls huskily.";
			else:
				LineBreak;
				say "     The male husky sinks his grip close to your scalp, and he roughly tugs your face in close to his crotch. The swollen orbs of his fur-clad nuts bulge, rich and virile, and the dog's sheath is split with the towering monolith of his angry erection. Livid veins throb against the bloated swell of cockmeat, and the canid taper's narrow point dribbles beads of fresh pre. 'Lick, and maybe I'll go easy on your throat, bitch,' comes the husky's acidic words, his ire up from the treatment to his pack.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Lick that flavorful cock.";
			say "     ([link]N[as]n[end link]) - No, you will not lick it.";
			if Player consents:
				LineBreak;
				say "     Even as you extend your tongue to lap across the desire-glistened rod, the husky's hips meet your motion, and the belly of his prick saws over your features, smearing tongue and face alike with his potent scent. The fresh polish of your saliva coats, mingling with the perspirations and clinging flavors with a fresh shine.";
			else:
				LineBreak;
				say "     Despite your resistance, the husky arches his hips and slathers his prick's belly across your features. The potent scent of his fuckmeat's coating coats across your nose and face so you cannot escape the aroma. Twitching, fresh beads of pre dribble down, spattering hot pearls over your face.";
			say "     The alpha husky's free paw dips down, cupping your jaw before his thumb and opposing digit dig in, forcing it to spread, willing or not. The heat of that canine cock pulls away only briefly before its musky taper is thrust between your lips. The crude flavor of hot, male flesh and heady pre slide across your tongue as the girthy member plows past your lips. You're given a close view of the husky's powerful abs, quivering and taut, while his root sinks into the slick depths of your mouth and punches back into the resisting confines of your throat. The furred heat of his sac grinds up against your chin while he hilts in, the swell base where the husky's knot is partially swollen butts against your tightly-spread lips.";
			say "     The slickness of your saliva is sloshed around within your mouth and spilt from your spread lips as that throbbing organ drives into the split, forcing the spittle free. One of the husky's paws reaches down, gripping around your throat, and the second follows sui. You can feel his grip over your windpipe even while his dick drills down through its depths, obscenely bulging your throat out into his own grip. Barely able to draw in nasal breaths between thrusts, you are getting light-headed, and your senses swim. Your nostrils are continually filled with the potent musk of the canine's fuckmeat while the husky plunges your gagging, quivering depths, spittle drizzling down over his balls. Your eyes begin to roll, but the fierce thrusts keep you from slipping into unconsciousness, each slap of hefty nuts and taut thighs jarring you briefly into sharp reality.";
			WaitLineBreak;
			say "     Your jaw quakes, strained by the continued piston of the canine's flesh pounding into you again and again, and your throat's slick, tight passage is reamed through juicily. His grip squeezes tighter around your neck, and the husky intensifies his pace while using you like a living fleshlight. The hot 'slsh' and juicy 'shlup' of the oral fucking mingles with a rolling growl from the alpha before he brusquely pulls out, still coated in your throat juices. The domineering dog grips his twitching root before your swimming gaze, a haze of lust and breathlessness fogging your brain, and a raucous cough rattles through your hoarse throat. You can make out the turgid, gleaming knot at the base and see his nuts tugging tight before a hot wad of spunk shoots right into your eye. The sting of the salty surprise is joined by gooey ropes of stinking, hot semen spattering searing hot ropes across your face and puffy, abused lips. Soon, you're utterly coated facially in the alpha husky's musk-rich jizz.";
			say "     'Nngh, that was actually pretty good, slut. I might make you one of my bitches, yet,' his words come in a post-climax rumble, his powerful chest heaving as he casually wipes his dick off against your scalp.";
			LineBreak; [Spot for future decision to go be a part of his pack, but with negatives to rep]
	else:
		say "     With a snarl, the male husky looks to his pack, anger teeming from his every motion, and a livid erection throbs against his toned abdomen. The furious eyes glare over you, and he spits, 'You ruined our fun, you ass. You're not worth my time.' Turning his back to you, he kicks at the dirt, digging it back to spatter across your form before he collects his pack and leaves.";

Section 2 - Medkit Parts

Table of GameEventIDs (continued)
Object	Name
Medkit Parts	"Medkit Parts"

Medkit Parts is a situation.
ResolveFunction of Medkit Parts is "[ResolveEvent Medkit Parts]".
HasParts is a number that varies.

to say ResolveEvent Medkit Parts:
	say "     Scavenging [one of]in the rubble of a collapsed building[or]in the crumpled remains of a car[or]in the half-melted wreck of a car[or]and looking through the contents of an abandoned backpack[or]and digging through a dumpster[or]and checking out some scattered items on the streets[at random], you find some items that seem to belong in a medkit. Given the source, you're not sure if the stuff is even usable anymore - might be past the expiration date, broken or somehow tainted by nanites. Still, it looks like something that could be useful, so you take it along.";
	if Sarah is not in the bunker:
		say "     Maybe you could find some medical professional to sort the good from the bad and put together a usable medkit?";
	else if Sarah is in the bunker and SarahCured > 0: [Sarah in the bunker and sane]
		say "     [bold type]Sarah[roman type] should be able to help you sort the good from the bad and put together a usable medkit if you got enough of this stuff.";
	increase HasParts by 1;

Section 3 - Sarah

Table of GameCharacterIDs (continued)
object	name
Sarah	"Sarah"

Sarah is a woman.
ScaleValue of Sarah is 3. [human sized]
Body Weight of Sarah is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Sarah is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Sarah is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Sarah is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Sarah is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Sarah is 5. [length in inches]
Breast Size of Sarah is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Sarah is 2. [count of nipples]
Asshole Depth of Sarah is 8. [inches deep for anal fucking]
Asshole Tightness of Sarah is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Sarah is 0. [number of cocks]
Cock Girth of Sarah is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Sarah is 0. [length in inches]
Ball Count of Sarah is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Sarah is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Sarah is 1. [number of cunts]
Cunt Depth of Sarah is 10. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Sarah is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Sarah is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Sarah is false.
PlayerRomanced of Sarah is false.
PlayerFriended of Sarah is false.
PlayerControlled of Sarah is false.
PlayerFucked of Sarah is false.
OralVirgin of Sarah is false.
Virgin of Sarah is false.
AnalVirgin of Sarah is true.
PenileVirgin of Sarah is true.
SexuallyExperienced of Sarah is true.
TwistedCapacity of Sarah is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Sarah is false. [steriles can't knock people up]
MainInfection of Sarah is "Husky Bitch".
Description of Sarah is "[SarahDesc]";

to say SarahDesc:
	if debugactive is 1:
		say "     DEBUG -> SarahSlut: [SarahSlut], SarahTalk: [SarahTalk], SarahCured: [SarahCured], CarlSarahInteraction: [CarlSarahInteraction], lastCarlSarahInteraction: [lastCarlSarahInteraction], CarlSarahSex: [CarlSarahSex], ColleenSarahInteraction: [ColleenSarahInteraction], lastColleenSarahInteraction: [lastColleenSarahInteraction], EricSarahInteraction: [EricSarahInteraction], cboyEricSarahInteraction: [cboyEricSarahInteraction], lastEricSarahInteraction: [lastEricSarahInteraction], FangSarahInteraction: [FangSarahInteraction], lastFangSarahInteraction: [lastFangSarahInteraction]  <- DEBUG[line break]";
	if SarahSlut < 1:
		project the figure of Sarah_clothed_icon;
	else:
		project the figure of Sarah_naked_icon;
	say "     Sarah is a lithe and thin woman with gray-white husky fur, plus anthro paw-hands and feet. A canine head and bushy tail complete her look of an anthro dog. There are white scar lines down her side where the alpha husky that you rescued her from slashed her during your fight. [SarahSlutState][SarahPupstate]";

Conversation of Sarah is { "Woof!" }.

instead of sniffing Sarah:
	say "She smells like a [if SarahPregnant is not 0]pregnant, [end if]horny husky[if SarahSlut > 2]. The scent of her arousal is quite strong from your lustful pet bitch[end if].";

to say SarahSlutState:
	if SarahCured > 3:
		say "Sarah is wearing a red shirt and a pair of jeans. Her delicate paw-feet are bare, no longer fitting into - or needing - shoes thanks to her tough paw-pads. She looks at you and smiles as she notices your attention, safe in the knowledge that she can beat the husky instincts thanks to your help. Getting to this state of newfound confidence clearly wasn't easy for her - as you know from watching her transform, she has the slit of a feral husky bitch, which brings with it almost constant 'heat' and the urge to be filled. ";
		if "Collared" is listed in Traits of Sarah:
			say "Her stylish yellow leather collar stands out, with a nameplate reading 'Sarah' attached to its front.";
		else:
			LineBreak;
	else if SarahCured is 3 or SarahCured is 2:
		say "She seems to have calmed her husky instincts for now and is wearing a red shirt and a pair of jeans. Her delicate paw-feet are bare, no longer fitting into - or needing - shoes thanks to her tough paw-pads. Still, it clearly isn't easy for her - as you know from watching her transform, she has the slit of a feral husky bitch, which brings with it almost constant 'heat' and the urge to be filled. ";
		if "Collared" is listed in Traits of Sarah:
			say "Her stylish yellow leather collar stands out, with a nameplate reading 'Sarah' attached to its front.";
		else:
			LineBreak;
	else if SarahCured is 1 or SarahSlut is 0:
		say "She is having trouble with the husky instincts, but looks dominant for now, even wearing a red shirt and a pair of jeans. Still, it clearly isn't easy for her - as you know from watching her transform, she has the slit of a feral husky bitch, just waiting to be filled.";
	else if SarahSlut is 1 or SarahSlut is 2:
		say "She has submitted to most of her bestial needs, wearing nothing and giving you a free show of her sex - shaped like the slit of a feral husky bitch. It is dripping a little bit of femcum on the floor from time to time, but she keeps her hands at her sides as some human side of her is still struggling for control.";
	else if SarahSlut is 3:
		say "She keeps sliding her collar back and forth, and lubricating it from the slime that has formed on the floor where her dripping husky cunt has been. Looks like all she needs now to complete the look is the leash.";
	else if SarahSlut > 3:
		say "She whines at you, spreading her legs to show her aching husky slit, and pulls against the leash you pegged her to the wall with, desperate for satisfaction.";
	if SarahSlut > 2:
		if SarahPregnant > 0:
			say "She smiles faintly, all dreams of humanity gone from her mind, rubbing her bloated belly. Her fur is matted from many sex acts without cleaning, and her collar, reading 'SLUT' on either side, is a testament to her state.";
		else:
			say "She smiles faintly, all pretensions of humanity gone from her mind, as she rubs her needy slit and large breasts. Her fur is matted from the many sex acts without cleaning, and her leash, reading 'SLUT' on either side, is a testament to her state of mind.";

instead of conversing the Sarah:
	if SarahSlut > 0 and SarahSlut < 4: [Slut Path]
		say "[one of]'Please fuck me, I need - Oh sorry. Lost control of myself there.'[or]'Mmmm huskies.'[or]'I guess you are the alpha here.'[or]'I can make some medkits if you had parts.'[or]'Have you seen any spare medkit parts out there?'[or]'This place is wonderful. Why didn't I come here?'[or]'Thanks for saving me!'[or]Sarah moans, rubbing her dripping slit.[at random]"; [todo]
	else if SarahSlut > 3: [End of Slut Path]
		say "[one of]'Fuck me again master!'[or]'Please take me now!'[or]Sarah moans, rubbing her slit and dripping everywhere.[or]'Fill me!'[or]'Use me like the bitch I am.'[or]'Master, please use your slut!'[or]'I just love being your bitch.'[at random]";
	else if SarahTalk is 0: [Sane]
		project the figure of Sarah_face_icon;
		say "     'Hello. My name is Sarah, and thanks for rescuing me from those darn huskies back there. I really do appreciate the help. After running into that pack of bitches and their alpha male, I had almost given up hope and thought I'd be another dumb slut soon. Not that I don't look the part already now.' Looking down over herself, she runs a hand over the curve of her breasts, moaning loudly before yanking the hand away and letting out some swear words as she regains control of herself. 'Damn those huskies,' the young husky hybrid says, then turns her train of thought back to you. Looking up and smiling, she adds, 'I'm a medical student and used to work at the hospital, in the ER general ward. You know, where they treated those who hadn't hurt themselves so badly they needed a specialist,' she says as she runs her new paw-like hands down her body, 'so I'm sure I can be of great help to you as well.'";
		increase SarahTalk by 1;
	else: [after the initial talk]
		say "[SarahTalkMenu]";

to say SarahTalkMenu:
	project the figure of Sarah_face_icon;
	LineBreak;
	say "What do you want to talk with Sarah about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	if HasParts > 0:
		choose a blank row in table of fucking options;
		now title entry is "Medical Supplies";
		now sortorder entry is 2;
		now description entry is "Show Sarah the stuff you've found while out scavenging";
	[]
	if SarahSlut < 1:
		choose a blank row in table of fucking options;
		now title entry is "Managing her urges";
		now sortorder entry is 3;
		now description entry is "Talk about finding a way to suppress those slutty husky impulses";
	[]
	if SarahCured > 3:
		choose a blank row in table of fucking options;
		now title entry is "Theories on the outbreak";
		now sortorder entry is 4;
		now description entry is "Talk about what she thinks caused the infection";
	[]
	if resolution of Demonic Redemption is 2 and demon brute is listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "Ask her for help regarding your Demon Brute";
		now sortorder entry is 5;
		now description entry is "Ask Sarah if she can do something for the Demon Brute.";
	[]
	if "Collar ready" is listed in Traits of Sarah:
		choose a blank row in table of fucking options;
		now title entry is "Offer the collar you got her for Sarah to wear";
		now sortorder entry is 6;
		now description entry is "Try to talk the young woman into wearing it";
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
				if (nam is "Just chat a bit"):
					say "[SarahTalk1]";
				else if (nam is "Medical Supplies"):
					say "[SarahTalk2]";
				else if (nam is "Managing her urges"):
					say "[SarahTalk3]";
				else if (nam is "Theories on the outbreak"):
					say "[SarahTalk4]";
				else if (nam is "Ask her for help regarding your Demon Brute"):
					say "[SarahTalk_DB]";
				else if (nam is "Offer the collar you got her for Sarah to wear"):
					say "[SarahCollar_Talk]";
				wait for any key;
				say "[SarahTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young woman, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SarahTalk1:
	if SarahCured > 3: [fully cured - or at least in treatment]
		say "     As you approach and talk to Sarah, she says [one of]'This is quite a place. Wish I had known to come here when all this chaos started.'[or]'Thank you for saving me again! Without you I'd be lost out on the streets, just another slut of that bastard!'[or]'Sometimes, I can't help but wonder what it would be like... you know, to be a member of a husky pack. Serve the alpha. Been feeling the pull to just surrender to someone who takes care of me since I got infected - but now I see that that's just the nanites talking. I'm my own woman, not some bimbo trophy slut!'[or]'I'm so glad you're helping me deal with this damned infection. I swear, once or twice before I was almost ready to throw myself at you... you know, as the alpha in this place, and be your bitch.'[or]'I still keep having flashes of lust suddenly coming over me. Still, that medicine you found really helped.'[or]'You wouldn't believe how hot I feel under this fur. Just so very... hot.' She rubs her legs against one another subconsciously as she says this. 'Hell, even with the lust no longer threatening to overwhelm my will, this body is still constantly 'in heat'. I can control myself now, but I've got to admit I'm still horny all the time.'[at random]";
	else if SarahCured is 3 or SarahCured is 2: [talked about her needing more medicine or just having given her a single syringe of libido suppressant]
		say "     As you approach and talk to Sarah, she says [one of]'This is quite a place. Wish I had known to come here when all this chaos started.'[or]'Thank you for saving me again! Without you I'd be lost out on the streets, just another slut of that bastard!'[or]'Sometimes, I can't help but wonder what it would be like... you know, to be a member of a husky pack. Serve the alpha.'[or]'I'm so glad you're helping me deal with this damned infection. I swear, once or twice before I was almost ready to throw myself at you... you know, as the alpha in this place, and be your bitch.'[or]'I still keep having flashes of lust suddenly coming over me. Still, that medicine you found really helped.'[or]'You wouldn't believe how hot I feel under this fur. Just so very... hot.' She rubs her legs against one another subconsciously as she says this. Looks like this isn't just being hot, but her being 'in heat' - like a feral bitch.[at random]";
	else if SarahCured is 1 or SarahSlut is 0 or SarahSlut is 1: [talked about a treatment, basic Sarah, or on the way to become a fuckpet]
		say "     As you approach and talk to Sarah, she says [one of]'This is quite a place. Wish I had known to come here when all this chaos started.'[or]'Thank you for saving me again! Without you I'd be lost out on the streets, just another slut of that bastard!'[or]'Sometimes, I can't help but wonder what it would be like... you know, to be a member of a husky pack. Serve the alpha.'[or]'Guess you're the alpha here... oh god, what am I saying. The nanites are getting to me.'[or]'Please... I need someone to fu- Oh, sorry. Lost control of myself there for a second.'[or]'You wouldn't believe how hot I feel under this fur. Just so very... hot.' She rubs her legs against one another subconsciously as she says this. Looks like this isn't just being hot, but her being 'in heat' - like a feral bitch.[at random]";
	else if SarahSlut > 2: [collared fuckpet]
		say "     As you approach her, Sarah [one of]cups her own breasts and rubs their nipples[or]rubs her slit and drips female juices everywhere[or]strokes her hands down the sides of her body[or]bends over to show you her eagerly wagging tail and the needy slit between her legs[at random], then sighs in a lusty tone, [one of]'Fuck me again master!'[or]'Please take me now!'[or]'Breed your bitch master![or]'Pound my like the bitch I am.'[or]'I need you to use me master!'[or]'I just love being your bitch.'[or]'Maser, please use your slut!'[at random]";

to say SarahTalk2:
	if SarahSlut > 2:
		say "     The sight of your gathered medical supplies holds little interest for Sarah. She sniffs at them a little as you hold this or that up to her and ask if it is still usable, but all that gets you us happy licks at your fingers. The young woman has well and truly accepted her fate as your devoted fuckpet by now, so she more or less ignores the items and just keeps rubbing her dripping slit.";
	else:
		if HasParts is 1:
			say "     Sarah happily agrees to check out the small bag of random medical supplies that you've gathered, inspecting foil packages with a knowing eye. A few small pieces are discarded by her right away, then another package after a little closer inspection and her holding it up to sniff at. 'I never thought I'd say something like this, but becoming a husky hybrid actually does have an upside. My nose is so sensitive right now that I can smell everything,' the medical student remarks, then drops the last packet on the trash pile. 'I think someone messed with that one on purpose. Smells [one of]strangely of latex[or]a bit like milk powder[or]sickly sweet[or]a little rancid[or]like motor oil or something[at random] and I'm fairly sure it is infected.'";
			say "     After getting rid of the unusable items, you're left with a small pile of remaining supplies. The young half-husky looks at them one last time, then remarks, 'Okay this here should be fine... but it isn't enough to put together a full medkit, I'm afraid. Trust me, you don't want to be in a critical situation with a half-stocked box. Nothing is worse than wasting time digging around for something that you never had along in the first place. Maybe scavenge a little more and you'll find the missing pieces.'";
		else if HasParts > 1 and HasParts < 4:
			say "     Sarah happily agrees to check out the bag of random medical supplies that you've gathered, giving you a thumbs up at the large selection of scavenged items and inspecting foil packages with a knowing eye. A few small pieces are discarded by her right away, then another package after a little closer inspection and her holding it up to sniff at. 'I never thought I'd say something like this, but becoming a husky hybrid actually does have an upside. My nose is so sensitive right now that I can smell everything,' the medical student remarks, then drops the last packet on the trash pile. 'I think someone messed with that one on purpose. Smells [one of]strangely of latex[or]a bit like milk powder[or]sickly sweet[or]a little rancid[or]a bit like cheese[or]like motor oil or something[at random] and I'm fairly sure it is infected.'";
			say "     After getting rid of the unusable items, you're left with a pile of remaining supplies. The young half-husky looks at them one last time, then remarks, 'Okay this here should be fine. Good job gathering it all up.' Then she strolls over to some dusty boxes you never even noticed standing in the corner until now. Digging around a little, she eventually finds an abandoned lunch-box in what must be years worth of unclaimed lost and found items. With sure movements, Sarah packs the little box with a full set of medical supplies, creating a brand new medkit for you.";
		else if HasParts > 3 and HasParts < 8:
			say "     Sarah happily agrees to check out the large bag of random medical supplies that you've gathered, giving you a thumbs up at the extensive selection of scavenged items and inspecting foil packages with a knowing eye. A few small pieces are discarded by her right away, then another package or three after a little closer inspection and her holding it up to sniff at. 'I never thought I'd say something like this, but becoming a husky hybrid actually does have an upside. My nose is so sensitive right now that I can smell everything,' the medical student remarks, dropping the last packet on the trash pile. 'I think someone messed with these ones on purpose. Smells [one of]strangely of latex[or]a bit like milk powder[or]sickly sweet[or]a little rancid[or]a bit like cheese[or]like motor oil or something[at random] and I'm fairly sure a few are infected.'";
			say "     After getting rid of the unusable items, you're left with a big pile of remaining supplies. The young half-husky looks at them one last time, then remarks, 'Okay these here should be fine. Good job gathering all that stuff.' Then she strolls over to some dusty boxes you never even noticed standing in the corner until now. Digging around a little, she eventually finds several abandoned lunch-boxes in what must be years worth of unclaimed lost and found items. With sure movements, Sarah packs them with full sets of medical supplies, creating brand new medkits.";
		else if HasParts > 7:
			say "     Sarah happily agrees to check out the huge bag of random medical supplies that you've gathered, her eyes going wide as she takes in the massive amount of stuff you have gathered. 'Where did you get all this?!' she asks in amazement, not really waiting for a reply before she starts inspecting foil packages with a knowing eye. Numerous small pieces are discarded by her right away, then another package or five after a little closer inspection and her holding it up to sniff at. 'I never thought I'd say something like this, but becoming a husky hybrid actually does have an upside. My nose is so sensitive right now that I can smell everything,' the medical student remarks, dropping the last packet on the trash pile. 'I think someone messed with these ones on purpose. Smells [one of]strangely of latex[or]a bit like milk powder[or]sickly sweet[or]a little rancid[or]a bit like cheese[or]like motor oil or something[at random] and I'm fairly sure a few are infected.'";
			say "     After getting rid of the unusable items, you're left with a big pile of remaining supplies. The young half-husky looks at them one last time, then remarks, 'Okay these here should be fine. Very good job gathering all that stuff.' Then she strolls over to some dusty boxes you never even noticed standing in the corner until now. Digging around a little, she eventually finds several abandoned lunch-boxes in what must be years worth of unclaimed lost and found items. With sure movements, Sarah packs them with full sets of medical supplies, creating brand new medkits.";
		let madekits be HasParts / 2;
		ItemGain medkit by madekits;
		decrease HasParts by madekits * 2;

to say SarahTalk3:
	if SarahCured is 0:
		say "     As you bring up that you want to help Sarah manage her... urges, Sarah's tail starts wagging wildly and she closes up to you in a light-footed step. 'Thank you, I really don't know what I would do without you,' she says as her arms slide around you for a tight hug. Closing her eyes and rubbing a lightly furred cheek against yours, she sighs in a low tone and adds, 'No - that's not correct. I know exactly where I would be... spreading my legs for that fucker of a - hey, what are you doing?!' The young woman's tone switches over to bewilderment as you gently push her away and it takes a few seconds until she realizes that she had started to grind her crotch against the side of your leg halfway through the hug. 'I - I... I'm sorry,' she wails, tail drooping in despair. Gently setting a hand on the hybrid woman's shoulder, you give her a soft squeeze and tell her she'll get through it somehow.";
		say "     Still sniffling, she nods and replies, 'You're right. I can't just give up. That's what he would have wanted. And is what these fucking machines in me want. But - I can't trust myself, not like this. Feels like I am an addict and just react without thinking when something triggers me and... wait a minute! That's it! Sex addicts!' Nonplussed at the sudden outburst of the husky girl, you raise an eyebrow at the excitedly pacing Sarah. 'Oh sorry, I just remembered that a little while ago a new doctor joined the staff at the hospital. M-something... Malcolm? No, that wasn't it. Anyways, he wanted to run medical experiments study on volunteer addicts. Researching how he could influence them. He... um, even asked me if I didn't want to be the nurse for the test group of sex addicts. Called me the 'perfect test trigger' for his cure - in a really creepy tone. I kept my distance after that, but if there's any way to deal with my condition, I think you might find it in the [bold type]hospital[roman type].'";
		now SarahCured is 1; [she told the player what she needs]
		if carried of libido suppressant > 0:
			LineBreak;
			say "     Aware that you actually have a syringe of libido suppressant in your pack right now, you:[line break]";
			say "     ([link]Y[as]y[end link]) - Give it to Sarah right away.";
			say "     ([link]N[as]n[end link]) - Stay silent about it.";
			if Player consents: [give it to her]
				LineBreak;
				say "     Pulling out the syringe with its cloudy, orange filling from your pack, you hand it to the medical student turned husky hybrid. Sarah turns it over and reads the handwritten scrawl on its plastic casing - 'Libido Suppressant'. She gasps in surprise, tears of joy starting to form in the corners of her eyes. 'You - you already got some?! Oh wow, are you psychic or something? This is just what I need! Thank you so much!' Throwing her arm around you in a quick hug, she then hurries off right afterwards, murmuring to herself about finding the right dosage and having to do careful experiments with the small amount she has.";
				now SarahCured is 2; [gave her a syringe of libido suppressant]
				ItemLoss libido suppressant by 1;
			else: [don't give it to her]
				LineBreak;
				say "     Keeping your stash of libido suppressant a secret, you just give her a friendly pat on the arm and watch as Sarah walks away a little afterwards.";
	else if SarahCured is 1: [she told the player what she needs before]
		say "     As you approach Sarah about the topic of managing her urges, the husky hybrid's tail wags excitedly and Sarah bounces over to you on her slender paws - then she stops herself, visibly flinching back a little from her instinct to give you a hug. 'I - um, I think I should keep my distance, now that I think of it. Have you had a chance to check out the hospital? There might be something there that the doctor used in his experiments and with luck, it'll help me...'";
		if carried of libido suppressant > 0:
			LineBreak;
			say "     Aware that you actually have a syringe of libido suppressant in your pack right now, you:[line break]";
			say "     ([link]Y[as]y[end link]) - Give it to Sarah right away.";
			say "     ([link]N[as]n[end link]) - Stay silent about it.";
			if Player consents: [give it to her]
				LineBreak;
				say "     Pulling out the syringe with its cloudy, orange filling from your pack, you hand it to the medical student turned husky hybrid. Sarah turns it over and reads the handwritten scrawl on its plastic casing - 'Libido Suppressant'. She gasps in surprise, tears of joy starting to form in the corners of her eyes. 'This is just what I need! Thank you so much!' Throwing her arm around you in a quick hug, she then hurries off right afterwards, murmuring to herself about finding the right dosage and having to do careful experiments with the small amount she has.";
				now SarahCured is 2; [gave her a syringe of libido suppressant]
				ItemLoss libido suppressant by 1;
			else: [don't give it to her]
				LineBreak;
				say "     Keeping your stash of libido suppressant a secret, you just give her a friendly pat on the arm and watch as Sarah walks away a little afterwards.";
	else if SarahCured is 2: [player gave her a syringe of libido suppressant before]
		say "     As you approach Sarah about the topic of managing her urges, the husky hybrid's tail wags excitedly and Sarah bounces over to you on her slender paws. 'It works! That treatment you brought really took off some pressure.' Hugging you happily, she takes care to quickly step an arm's length away afterwards. 'I - don't think I can trust myself not to... do stuff, you know, if I get excited somehow - but the daydreams about submitting to a strong alpha and just being his bitch are less common now.' Smiling at you, she adds, 'You've done so much for me, I can't thank you enough... so I feel a bit guilty about asking you to maybe bring me more of the medicine. I've been splitting the syringe you brought before into small doses to make it last longer, but... I really need a greater supply. It's medicine, not magic, so dealing with my problem will take quite a while of careful treatment.' (Note: You guess that five more syringes should do the trick.)";
		now SarahCured is 3; [told the player she needs more]
		if carried of libido suppressant > 4:
			LineBreak;
			say "     Aware that you actually have fair amount of libido suppressant in your pack right now, you:[line break]";
			say "     ([link]Y[as]y[end link]) - Give the syringes to Sarah right away.";
			say "     ([link]N[as]n[end link]) - Stay silent about it.";
			if Player consents: [give it to her]
				LineBreak;
				say "     Sarah's eyes go wide and she can't help but give a happy little bark as you explain that you do have a stash of libido suppressant to give her. Trembling in excitement as she stands before you on her slender paws, the husky hybrid's tail wags up a storm as you pull five syringes out of your pack, handing the handful of them to her. 'I - I don't even know what to say,' she replies, tears of joy in her eyes. Leaning in to plant a peck on your cheek, she then hurries away to her bed to pack away the medicine you so laboriously gathered for her. Moments later, she is back by your side, a huge happy grin on her face. 'Thank you so much, I can't believe you went through so much trouble for me.' She licks your cheek affectionately, then smiles and walks back to her bed, murmuring about trying out a new dosage next.";
				now SarahCured is 4; [the player gave her enough for a full treatment]
				say "     For your efforts in saving Sarah from her progressing husky infection, you have earned the [']Dog Whisperer['] feat. Having proved your dedication in doing the right thing, your [bold type]charisma[roman type] has gone up by two, allowing you to empathize with others even more.";
				FeatGain "Dog Whisperer";
				StatChange "Charisma" by 2;
				ItemLoss libido suppressant by 5;
			else: [don't give it to her]
				LineBreak;
				say "     Keeping your stash of libido suppressant a secret, you just give her a friendly pat on the arm and watch as Sarah walks away a little afterwards.";
	else if SarahCured is 3: [she told the player about needing more]
		say "     As you approach Sarah about the topic of managing her urges, the husky hybrid's tail wags excitedly and Sarah bounces over to you on her slender paws. 'It works! That treatment you brought really took off some pressure.' Hugging you happily, she takes care to quickly step an arm's length away afterwards. 'I - don't think I can trust myself not to... do stuff, you know, if I get excited somehow - but the daydreams about submitting to a strong alpha and just being his bitch are less common now.' Smiling at you, she adds, 'Have you maybe... looked around in the hospital a bit to find more? That really would make my day...' (Note: You guess that five more syringes should do the trick.)";
		if carried of libido suppressant > 4:
			LineBreak;
			say "     Aware that you actually have fair amount of libido suppressant in your pack right now, you:[line break]";
			say "     ([link]Y[as]y[end link]) - Give it to Sarah right away.";
			say "     ([link]N[as]n[end link]) - Stay silent about it.";
			if Player consents: [give it to her]
				LineBreak;
				say "     Sarah's eyes go wide and she can't help but give a happy little bark as you explain that you do have a stash of libido suppressant to give her. Trembling in excitement as she stands before you on her slender paws, the husky hybrid's tail wags up a storm as you pull five syringes out of your pack, handing the handful of them to her. 'I - I don't even know what to say,' she replies, tears of joy in her eyes. Leaning in to plant a peck on your cheek, she then hurries away to her bed to pack away the medicine you so laboriously gathered for her. Moments later, she is back by your side, a huge happy grin on her face. 'Thank you so much, I can't believe you went through so much trouble for me.' She licks your cheek affectionately, then smiles and walks back to her bed, murmuring about trying out a new dosage next.";
				now SarahCured is 4; [the player gave her enough for a full treatment]
				say "     For your efforts in saving Sarah from her progressing husky infection, you have earned the [']Dog Whisperer['] feat. Having proved your dedication in doing the right thing, your [bold type]charisma[roman type] has gone up by two, allowing you to empathize with others even more.";
				FeatGain "Dog Whisperer";
				StatChange "Charisma" by 2;
				ItemLoss libido suppressant by 5;
			else: [don't give it to her]
				LineBreak;
				say "     'Ah,' the young woman says with a little bit of a sigh, having gotten her hopes up. Then she catches herself and gives you a friendly smile, 'Here I am - starting to mope because my hero doesn't bring me everything I need right away. Silly, hm? Especially since I have so much to be thankful about already.' Leaning in to plant a peck on your cheek, she wags her tail happily as she adds, 'Still... if you got the time to scavenge in the hospital sometime, I'd be forever in your debt.'";
	else if SarahCured > 3: [Sarah is "cured" - or in treatment at least]
		say "     As you approach Sarah about the topic of managing her urges, the husky hybrid's tail wags excitedly and Sarah bounces over to you on her slender paws. 'It works! With the bigger stash I have now thanks to you, I experimented a little and found just the right dosage. Thank you, thank you, thank you!' Without any hesitation, she wraps her arms around your chest and even gives you a kiss on the cheek. Staying up close to you and with her fluffy tail still wagging up a storm, she gives you a confident smile. 'I feel like a real woman again - not a feral slut that will spread her legs for anyone who asks. You've been an amazing friend through all this.' With that said, she rubs the side of her lightly furred cheek against yours, then steps away and gets back to what she was doing before.";

to say SarahTalk4:
	say "     As you bring up the infection as a topic and the fact that you think it is nanites that are responsible, Sarah gives a nod in agreement. 'Yeah, that certainly fits the bill. I mean, I read in some current papers in medical science papers that people were working on medical use for such things. Nothing this drastic of course, but who knows what gets developed in secret labs and never reported to the world. Whoever might have cooked them up is one mystery, and the next one is why and how they got spread. I mean, they're certainly doing a bang-up job of healing wounds for some people, but others melted into puddles of goo. And the sudden species shifting makes no sense at all.' Running her fingers through her hair, Sarah glances down at her own muzzle and makes a grimace in frustration. 'All of this can't have been the intended purpose, can it? There are easier ways of bringing civilization to its knees, besides this total chaos. No, I think it must have been a mistake. Some sort of accidental spread of untested tech.'";

to say SarahCollar_Talk:
	say "     As you approach Sarah, she smiles at you warmly - but as you pull out the collar you've gotten for her, an expression of apprehension crosses her face. 'What are you planning to do with that? I'm not a pet - and not your pet, you know.' She looks down on the leather strap, seeing the tag with her name embossed on it. 'Hah, went all out, didn't you? How much did that cost extra?' She's taking things with some humor at least it seems, but she still seems rather down on the very idea of being collared.";
	say "     ([link]Y[as]y[end link]) - Let your charm play and convince Sarah that the collar is something she wants to wear.";
	say "     ([link]N[as]n[end link]) - Accept her reluctance and keep your distance.";
	if Player consents:
		let bonus be (( charisma of Player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]:[line break]";
		if dice + bonus >= 15: [win the charisma check]
			say "     Doing your best to underline each word with sincerity and trust, you try to explain that it's not that you're trying to say that she's a pet dog or anything. A collar is just... a fashion accessoire that matches her new body. The collar would look nice against her fur, you went through all the trouble of getting her name stamped on it too, and... yeah, it'll even be something that might help her get out of the city eventually. It'd make her stand out among the roaming husky sex addicts that are out on the streets in nothing but their fur. She'd be a well-put-together young woman, calm, with a bit of gear on her that marks her as more than just the street trash. You can't exactly tell which argument landed in the end, but finally Sarah lets out a sigh and holds out her hand, allowing you to lay the collar across her palm. She moves to the bathroom, holding it up against her throat to look at herself in the mirror, then tightens the leather band around her neck. 'I gotta admit, it doesn't look half bad,' she says to you, accompanied by a smile and a small wag of her tail. 'Thanks for thinking of me.'";
			TraitGain "Collared" for Sarah;
			Remove "Collar ready" from Traits of Sarah;
		else: [fail the charisma check]
			LineBreak;
			say "     Doing your best to be convincing, you try to talk Sarah into wearint the collar you got for her, but even arguments that you tried to do something nice and even customized it specially for her don't quite land right. 'Yeah, no - not wearing that,' she replies with a shrug.";
	else: [give up]
		LineBreak;
		say "     Doing your best to keep the disappointment out of your voice, you tell Sarah that it is okay and you don't want to pressure her into anything she isn't ready for. 'Thank you for understanding,' she replies. You're left to put the collar back with your things, deciding that you'll hang onto it in case you manage to convince her in the future.";

instead of fucking Sarah:
	say "[SarahFucking]";

to say SarahFucking:
	if SarahTalk is 0:
		say "     Horny as you may be, at least talk to the young woman first before just bending her over for a fuck. You're not feral like those beasts out on the streets after all. Not yet, that is...";
		stop the action;
	else if lastfuck of Sarah - turns < 4:
		if SarahCured > 1:
			say "     'Sorry stud,' Sarah pants and looks at you with an impish grin on her muzzle. 'I just can't keep up with your stamina. Can't just fuck the day away either. Give me a moment to catch my breath, okay?'";
		else:
			say "     'Sorry master,' Sarah moans as she looks at you with her lust-filled eyes, the husky bitch moaning as she slowly rubs herself. 'But even I can't manage to recover this fast, I wouldn't be able to do our time together justice,' she pants out even as she rubs herself. 'I should be ready for you soon though, so please don't leave me here alone for long,' your new bitch says as she tries to relax some so she can be ready to please you sooner.";
		stop the action;
	else if SarahCured > 4:
		say "     As you approach Sarah, she smiles at you warmly and wags her tail. 'Hah, don't I know that look in your eye,' the female husky tells you with a bit of a teasing wink, stepping close to stroke her hand down your side. Putting on a coy, playful expression, she asks, 'So... what did you have in mind this time?'";
		wait for any key;
		say "[SarahSexMenu]";
	else if SarahCured is 4: [gave her lots of libido suppressant]
		say "     As you approach Sarah, she smiles at you warmly - but there is a noticeable air of apprehension too. 'Hah, don't I know that expression,' the female husky tells you with a bit of a teasing wink, yet she also raises her paw-hands to keep you at a distance. 'No matter how I may act right now... I'm not a blushing virgin, you know. A woman has needs - and there were fun nights to be had in my college dorm. Still, I... I don't know if I am ready for getting intimate with anyone again. My whole body is different and I'm not sure if I can trust it.'";
		say "     Clearly, the young woman is rather intimidated about her situation and the possibility of having a relapse, although she seems to be not averse to possibly enjoying some time with her hero. If you do want to get it on with the pretty husky, you'll have to do this gently and slowly... (maybe go down on her for intimate oral first, then build up to actual sex over time)[line break][line break]";
		say "     ([link]Y[as]y[end link]) - Let your charm play over her and convince Sarah she can trust you with this.";
		say "     ([link]N[as]n[end link]) - Accept her reluctance and keep your distance.";
		if Player consents:
			let bonus be (( charisma of Player minus 10 ) divided by 2);
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]:[line break]";
			if dice + bonus >= 15: [win the charisma check]
				say "     Doing your best to underline each word with sincerity and trust, you try to explain that she doesn't have to fear this part of herself. Sex is natural, and swearing off it entirely surely can't be the way to go. You keep arguing that her inner husky lust doesn't control her anymore and she can go on living like she wants to. Sarah looks to the ground, deep in thought for a moment, then shyly glances over to you and asks, 'You really think so?' Suppressing the urge to grin, you keep talking to the young woman and manage to convince her that she can last through a 'trial' run at least. She'll have all the power and you promise to stop if she says so.";
				say "     As the female husky finally nods and puts a brave expression on, you take her by the hand-paw and guide Sarah over to her bed. Letting her sit down on it, you lean in to kiss her, then brush your hand against the fabric of her shirt. The curve of her breasts stretches the thin top quite nicely and you can literally feel the nubs of her nipples under your fingers. The gentle touch doesn't stay without a reaction from the young woman either - Sarah moans deeply, trembling a little as her hands grip the side of the bed. 'That feels nice,' she sighs and you pause for a second, just keeping your fingers cupping her curves until Sarah says, 'More please.'";
				WaitLineBreak;
				say "     A gentle tug, then another, slowly slide the tight shirt up over the husky woman's torso, baring her slender midriff with its thin coating of white fur. Soon, all the fabric is bunched up under her protruding breasts and you start pulling the shirt even higher, drawing pants of arousal from Sarah as soft cloth rubs over her sensitive nipples. The naked curve of her perky boobs being slowly revealed turns you on quite a bit too - showing that sometimes, a slow and steady buildup is better than just rushing to the finish line. A heartbeat after you pull the stretched hem of the shirt past Sarah's erect nipples, the piece of cloth slips up over their curve, giving you a full view of the young woman's generously sized titties.";
				say "     Stretching your head forwards almost without thinking, you open your mouth to take a nipple between your lips - then stop yourself, looking up at Sarah for permission while your breath already washes hotly over her sensitive skin. 'Yes - go on,' she sighs in pleasure, sliding a hand behind your head to pull you against her chest. Switching back and forth between suckling on one of Sarah's breasts, then the other, you tease the young woman with gentle strokes and your tongue-tip licking over sensitive spots, then eventually move your hands down to her crotch. While sucking hard on one nipple, making her throw her head back and moan out loud, you pop the button of her pants, then slowly slide the zipper down too.";
				WaitLineBreak;
				say "     Fingers trembling in anticipation, you do pull the flaps of Sarah's pants open and reveal a pair of simple black panties, their fabric already damp with her rising arousal. There is no slow undressing for her jeans - not after the sensual torture you put your canine companion just through - Sarah herself pushes them down while raising her hips, then uses her foot-paws to shove the pants down and shake them off to land in a heap beside the bed. You can hear the thump of her tail wagging against the mattress of the bed, as well as the pant of a quite wound-up husky - and yet, this isn't the almost-feral bitch you saw her turn into when the nanites transformed Sarah. No, this anthro canine is still the bright medical student she worked so hard to be - and that woman now pulls you up for a not at all shy kiss.";
				say "     'You were right,' Sarah moans into your mouth, 'I feel good... sooo good. And my mind is clear. No desire at all to be just a brainless, submissive bitch, hah! Though I do feel like having your talented tongue between my legs, you know.' Saying those last few words in a lusty tone, Sarah pushes you down to crouch between her spread legs, exposing you to the musky aroma of her canine sex. Playing your fingers over the slim strip of fabric still covering her crotch, you press in against it in the middle, causing it to soak through with pussy juices as it touches Sarah's nether lips.";
				WaitLineBreak;
				say "     Playfully teasing the husky girl some more, you rub against the panties, then slip the tip of a finger under their edges and run it along in a slow back and forth movement. By the time you hook your finger over the top and pull the fabric down, Sarah is literally dripping in arousal. She lets out a very satisfied bark - almost a howl - as your lips brush against her clit, then take it between them as you start suckling on it. With one hand holding down her panties and the other stroking the outside of her nether lips, the desperately aroused husky girl doesn't last very long before a breathtaking orgasm crashes in over her. Both paw-hands flying forward to grip your head tightly, she grinds your face into her furry muff, getting you wet and sticky with femcum.";
				say "     Holding on to you and trembling in lust that only slowly ebbs off, Sarah keeps panting rapidly for some time, then eventually releases you to pull back from between her legs. Letting go of the black panties, you watch them flick back up to cover her crotch again (apparently quite good elastic in this brand) - which of course gets them even more soaked through with the husky's femcum. Then your viewpoint shifts as Sarah gently pulls up on your jaw, guiding you to look at her, then raise a bit to meet her for another sensual kiss. 'That was amazing,' she tells you with a smile, then strokes your cheek affectionately. 'Thank you for... going slow. I know you'd like to do other things, but I think I need this. Slowly trying things out before going too far. Sex as a husky is still so new for me.' After another quick peck on your lips, she slides her legs to the side and gets up, grabbing a towel to rub herself down with and clean up.";
				NPCSexAftermath Player receives "OralPussy" from Sarah;
				now SarahCured is 5;
			else: [fail the charisma check]
				LineBreak;
				say "     Doing your best to underline each word with sincerity and trust, you try to explain that she doesn't have to fear this part of herself. Sex is natural, and swearing off it entirely surely can't be the way to go. You keep arguing that her inner husky lust doesn't control her anymore and she can go on living like she wants to. And yet... sadly do not manage to convince Sarah to believe it. 'I - I can't. I'm so sorry,' she replies with a whine and wanders some distance away from you, giving a sad wave.";
		else: [give up]
			LineBreak;
			say "     Doing your best to keep the disappointment out of your voice, you tell Sarah that it is okay and you don't want to pressure her into anything she isn't ready for. 'Thank you for understanding,' she replies and leans in, rubbing her furry cheek against yours before walking off afterwards.";
	else if SarahCured is 3 or SarahCured is 2: [gave her a dose of libido suppressant]
		say "     You approach Sarah, her needy husky scent filling the bunker and ensuring you have sex on your mind. She looks rather concerned at your expression as you approach her, nervously fingering her clothes with paw-like hands. 'I - I don't think it would be a good idea to... you know, do stuff. Sorry if the scent drives you up the walls, it isn't easy for me either. Despite that medicine you got, I'm barely holding on sometimes. So... um, n-no thanks. Not now. I'm really thankful for your help and don't wanna risk it.'";
		say "     As you hear those words, you shake your head to clear it a little from your own lust. You realize just how close the intelligent woman still is to giving in to the desires of the needy husky bitch she has partly become. While she is reluctant right now, you know from watching her that with only a few soft touches, you could have her writhing underneath you willingly, her needy body's new instincts overriding her brain and reducing her to little more than your pet as you play with her sexy body. So why would you do such a thing after going through the trouble of finding a libido suppressant in the first place?!";
		LineBreak;
		say "     Still, it can't be denied that the lust in you is there, and somehow the thought of her submitting to you is extremely arousing to your already sex-filled mind...[line break]";
		say "     ([link]Y[as]y[end link]) - Fuck her, you're not holding back any longer!";
		say "     ([link]N[as]n[end link]) - Don't do it.";
		if Player consents:
			LineBreak;
			say "[SarahFirstSlutFuck]";
		else:
			LineBreak;
			say "     Squashing those thoughts hard and putting a lid on your lust, you tell yourself that it is better to have a companion instead of just a slutty husky to sate yourself on. Backing off from the distressed young woman, you apologize for your moment of weakness, which she accepts with great relief. 'Thank you, I don't know what I would do without your continued help and restraint,' she tells you as you walk away, working hard to calm your arousal. Despite this, a little voice in the back of your head insists that you could always change your mind and give the fine-looking husky bitch a little 'training' later on...";
	else if SarahCured is 1 or SarahSlut is 0: [basic Sarah state, barely holding on]
		say "     You approach Sarah, her needy husky scent filling the bunker and ensuring you have sex on the mind. She looks rather concerned at your expression as you approach her, nervously fingering her clothes with paw-like hands. 'I - um, w-what do you want...' she says shyly, trying to hold things together. She seems to be aware of the fact that once she has taken her clothes off this time, she most likely won't have any desire to put them back on again. Her slight reluctance makes you pause for a minute as you realize just how close the intelligent woman is to giving in to the desires of the needy husky bitch she has become.";
		say "     While Sarah is reluctant right now, you know from watching her that with only a few soft touches, you could have her writhing underneath you willingly, her needy body's new instincts overriding her brain and reducing her to little more than your pet as you play with her sexy body. A little voice in your head (a conscience, perhaps?) tells you that Sarah would be better off if you left her to try to manage her instincts alone or even helped her suppress them somehow, but the thought of her submitting to you is extremely arousing to your already sex-filled mind...[line break]";
		say "     ([link]Y[as]y[end link]) - Fuck her, you're not holding back any longer!";
		say "     ([link]N[as]n[end link]) - Don't do it.";
		if Player consents:
			LineBreak;
			say "[SarahFirstSlutFuck]";
		else:
			LineBreak;
			say "     Deciding it might be better to have a companion instead of just a slutty husky to keep you company, you decide to leave it at just friends, backing off and letting her regain her composure. The fine-looking husky bitch can definitely be your best friend at least, and who knows, you might change your mind and give her a little 'training' later on anyways...";
	else if SarahSlut is 1: [fucked once]
		say "     Taking a look at the fine husky bitch you brought back from the city, you notice she has stopped any pretense of wearing clothing. Also she seems to be spending more and more time masturbating, filling the air with her needy scent and probably thinking of the wonderful time you gave her recently. You suddenly find yourself realizing what a fine pet she would make with a little 'training'. With her natural tendencies and her needy, new body, you could probably shape her into a wonderfully submissive little sexpet. The thought of an eager little husky bitch, happily submitting to your every whim and need, makes your body even more excited as you stare at her with a new interest.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take the bitch again and make her yours!";
		say "     ([link]N[as]n[end link]) - Don't do it (right now).";
		if Player consents:
			LineBreak;
			say "     Sarah looks up in surprise as you approach her, your intent clear in your eyes. The husky shudders, knowing what is coming, but doesn't protest in the least. Her body trembles in need as you move up next to her. The instincts that came with her new form make her crave your touch even as her mind tries to hold on to some last remnants of its former self. You quickly suppress any possible resistance she might offer by running your hands along her soft sides, causing her to pant in need as your hand slowly reaches her crotch and traces along the outside of her damp passage. Grinning, you bring your mouth up close to her ear and whisper into it in a soft sensual voice.";
			say "     'You want this, don't you?' you say in a coaxing tone, making her moan as you tease her heat-flushed folds with your hand. 'You want to give in to what your body wants and let me fuck you like you deserve, don't you?' you tease as she moans in need, her head nodding almost automatically. 'More than that though, you want to me to take you and make you my pet, don't you? To be a slutty little pet for me to fuck as often as I want. Isn't that right?' you ask in a low voice even as your hands continue to tease her body, keeping her highly aroused. 'Yes, please! Make me your pet! Just please fuck me!' Sarah cries out, her eyes crossed with lust as she pants under your hands. Her admission pleases you as you begin to get to the matter at hand.";
			WaitLineBreak;
			now lastfuck of Sarah is turns;
			increase SarahSlut by 1;
			if Player is male:
				say "     Moving even closer with a broad grin on your face, you enjoy her moans of submission as your hands continue to roam across her body. You decide to rub her new position in even more as you slowly push her down onto all fours. Sarah moans as she realizes your intent, looking back at you over her shoulder as you stroke your cock several times before running its tip over her soaked entry, grinning at how wet your new pet is for you already. Deciding not to waste any time enforcing the new status quo, you grip her thighs with your hands, lifting her up slightly until she is perfectly positioned. Pressing your cock-tip to the lips of her vagina, you swiftly bury yourself inside her with one sure thrust, your throbbing meat filling her up to the brim and causing her to cry out in pleasure.";
				say "     Sarah's depths are warm and welcoming, and you can't help but enjoy the glorious sensation of being buried to the hilt in her soft body. Gripping her hips, you begin to thrust forward into the lovely bitch. Your every stroke makes her yip and pant in pleasure, her body rocking forward in time to your thrusts. You can feel your peak growing ever closer as you thrust into her eager form, but you still need to do one more thing before you fill her body with your seed, one last bit of icing on top of the cake. Leaning down, you nibble softly on her ear. 'Moan for me,' you whisper, knowing she will hear you easily. 'Beg me to fill you up and make you my pet. You know you want it. Just say yes and I'll make sure you get what you need,' you tease, slowing down your thrusts leaving her right at the peak of orgasm.";
				WaitLineBreak;
				say "     You aren't disappointed and with almost no hesitation Sarah is crying out and begging for your seed, begging and whining for you to take her like the animal she now admits she is. Unable to hold back any longer, you thrust into her forcefully a few more times, before crying out as you spill your load into her eager body, making her shudder in orgasm underneath you. Completely spent, you pull yourself out of her exhausted body, letting her slump to the floor as she moans out your name over and over again like a good little pet. You know you still have a ways to go to train her up just right, but you definitely feel like this was a good start.";
				NPCSexAftermath Sarah receives "PussyFuck" from Player;
			else:
				say "     Moving even closer with a broad grin on your face, you enjoy her moans of submission as your hands continue to roam across her body. You decide to rub her new position in even more as you slowly push her down onto all fours, moving her tail aside to expose her dripping wet cunt. She glances back at you over her shoulder, unsure of your intent, and you find yourself smiling at the fun to come. You slowly run your fingers over her cunt a few more times, making her shudder, before slowly pushing the tip of one digit inside her body. Sarah shudders and lowers her head down as her tight passage grips you like a glove. You push more of your finger into her, then slowly draw it back out.";
				say "     Continuing to explore her damp passage, first with one finger and then with two, you revel in the almost total power her libido gives you over this transformed woman. Sarah's wet juices soon coat your whole hand as you stroke her soft insides and the moaning bitch gets wetter and wetter. She gasps and whines in pleasure as you use your free hand to slowly begin stroking the fur along her back, teasing and stroking her just like you would a dog, even as you bring her body ever closer to orgasm. Deciding to make this moment even more complete, you lower your head down close to her ears, and whisper into them in a low sexy voice, 'Look at you on all fours like this, just like a proper bitch. You enjoy getting petted, don't you bitch? You want to be just a lovely little pet for your master, don't you?'";
				WaitLineBreak;
				say "     You moan into the anthro husky's pointy ear, the situation getting you almost as worked up as she is. To prolong the moment, you slow down your teasing of her pussy and increase your stroking of her back, occasionally pausing to give her a soft scratch in several sensitive locations while she tries to pant out an answer. 'Yes, please!' she finally manages to respond, panting incoherently, 'I want to be your pet. Please, [if Player is female]Mistress[else]Master[end if], make me yours!' she cries out, finally beginning to accept her role as the animal she now is.";
				say "     You shudder in pleasure at her eager response, and reward your new bitch by gripping the scruff of her neck with the hand you had stroking her, even as you plunge your fingers in and out of her even more vigorously. She stiffens under your renewed assault on her body, before howling out in pleasure as a powerful orgasm shakes her body to the core. You groan in pleasure as well, nearly orgasming yourself from the intense sexual situation. When done, you slowly release her body, letting Sarah slump bonelessly to the floor. You smile at her as she lies there on the floor of the bunker, moaning out for you over and over again like a good little pet. You know you still have a ways to go to train her up just right, but you definitely feel like this was a good start.";
				NPCSexAftermath Sarah receives "PussyDildoFuck" from Player;
		else:
			LineBreak;
			say "     You grin at her new attitude and decide to let her stew in her own juices for a while longer, and maybe enjoy her once she has managed to calm down and regain a bit of her humanity... if she ever does.";
	else if SarahSlut is 2: [fucked twice]
		say "     Deciding to see if your new bitch is ready for another session, you look at her speculatively and note with amusement that some small human part of her is still fighting for control, even as she rubs herself in need. You decide it is time to teach Sarah another lesson about the proper role of a pet, and begin to stalk towards her slowly, making your intent obvious. Her eyes quickly go large as they latch on to you, but she no longer puts up any pretense of not wanting or needing what you plan to give her, indeed her body begins to quiver eagerly as she anticipates the fun to come.";
		say "     Grinning at how easily her mind begins to slip back into the proper submissive role of a slutty pet, you slowly stroke Sarah's soft fur as you move right in front of her. As you pull her muzzle close for a deep kiss, her tongue twines with yours as you enjoy the feel of her body pressing up against your own. Breaking the kiss, you slowly place your hands on her shoulders and begin to push her down slightly. Sarah looks at you in puzzlement as you slowly guide her down on her knees in front of you, only to have her eyes go wide as she realizes she is now staring right up into your crotch.";
		WaitLineBreak;
		now lastfuck of Sarah is turns;
		if Player is male:
			if Player is female: [herms]
				say "     You grin as you reach down to stroke your erect member a few times, Sarah's eyes locked on your stiff rod only inches from her face. Deciding to tease her even further, you lean forward slightly and slowly rub the tip of your cock over her nose, filling her husky senses with the scent of a strong erect male. Sarah moans, her eyes half closing as your musky scent works its way through her body, and you grin as the sight of her on her knees before you in such a submissive manner makes your own pussy clench eagerly in response. You continue to slowly stroke your member, teasing her with its nearness even as you enjoy her response, her bodies desires quickly overcoming any possible mental objections as she slowly moves forward and stretches her tongue out to taste your shaft.";
				say "     The husky girl's wonderfully soft tongue makes you groan as it licks over the tip of your member several times, before she leans forward to take your shaft into her eager muzzle. The feel of her mouth wrapping around your member is heavenly, made all the sweeter by having your pet submit and worship your cock with hardly any encouragement from you at all. You reward the sexy little husky by beginning to stroke her soft head-fur with your hands, rubbing and scratching her head in encouragement even as she focuses on licking and sucking at your cock. You can't help but groan in pleasure as she brings her front paws up, one of her hand-like paws slowly fondling your full sac, teasing your balls with her soft touches.";
				WaitLineBreak;
				say "     You find yourself throwing your head back, eyes rolling up in pleasure as Sarah's other paw finds its way to your own wet needy slit underneath your balls. You pant and grip her head tightly as she begins to tease your female passage with her paw, even as she suckles wantonly on your thick cock. The combined pleasure is too much for you to stand for long, and before you know it, your body is shuddering as you flood her eager mouth with your seed, your pussy clenching around her paw-fingers as your juices coat them thoroughly as well. You pant in the aftershock of the powerful orgasm, even as the talented bitch tries to lick up and swallow as much of your glorious seed as possible. Coming down from the intense pleasure, you realize that even though that experience was absolutely amazing, it still shows a bit of defiance in your new pet that you might need to deal with properly.";
				say "     You realize that something is missing to complete this next step of her training, a more visible show of your ownership might be needed, a collar perhaps? The one she is still wearing was put around her neck by the husky pack you found her with - but since she's all yours now, something new and befitting so her role as your slutty pet seems in order. Maybe you can find that [bold type]pet shop[roman type] again where the other collar came from. It shouldn't be that far from the library, if you recall correctly...";
				NPCSexAftermath Sarah receives "OralCock" from Player;
			else:
				say "     You grin as you reach down to stroke your erect member a few times, her eyes locked on your stiff rod only inches from her face. Deciding to tease her even further, you lean forward slightly and slowly rub the tip of your cock over her nose, filling her husky senses with the scent of a strong erect male. Sarah moans, her eyes half closing as your musky scent works its way through her body, and you take advantage of her half open mouth to slowly rub your cock alongside her muzzle. Her body needs no further prompting to get the hint, even if her mind is still a few steps behind, and before you know it she has wrapped her eager muzzle around your thick shaft, making you moan in pleasure as she begins to suck and lick on your strong maleness.";
				say "     You find yourself groaning as the husky quickly gives herself over to pleasuring you, your hands reaching down to stroke and pet her furry head even as she focuses her attentions on your shaft. You can feel her need building as she gets more and more of a taste of your [Cock of Player] cock. She groans and brings her hands up even as she leans forward, bracing herself on your hip with one hand, as her other hand comes up to work and tease your balls, rubbing her soft paws over your thick sac as if begging you to shoot all that seed into her waiting mouth. Feeling the pressure rising, you know you won't be able to hold back much longer under the assault of her talented mouth, and use your hands to pull her off of you at the last minute, the husky almost begging to have your cock in her mouth again.";
				WaitLineBreak;
				say "     Groaning you lower one of your hands down to your cock again, the other still holding your new pet in place, pumping your cock a couple of time, you cry out as you orgasm, shooting your thick seed all over the husky girl's face, pumping strand after strand of your white gold all over her body, marking her as your pet. Sarah seems to get the message, panting eagerly and acting like a good little pet even as she tries to lick up every drop of your wonderful seed that she can reach.";
				say "     Despite all the fun you just had and Sarah's obedient temper, you realize that something is missing to complete this next step of her training. A more visible show of your ownership might be needed, a collar perhaps? The one she is still wearing was put around her neck by the husky pack you found her with - but since she's all yours now, something new and befitting so her role as your slutty pet seems in order. Maybe you can find that [bold type]pet shop[roman type] again where the other collar came from. It shouldn't be that far from the library, if you recall correctly...";
				NPCSexAftermath Sarah receives "OralCock" from Player;
		else:
			say "     You find a smile crossing your face as you reach down to stroke your damp sex a few times, Sarah's fascinated gaze following your every movement as you slowly slide your fingers into your pussy and rub your inner walls. Drawing them out slowly so she can see your needy juices coating your fingers, you then slowly bring your fingers forward and rub them across her muzzle and nose. Almost automatically Sarah licks her lips, tasting your juices even as your aroused scent explodes through her heightened senses. The look on her husky face makes you grin as she pants in need, her muzzle drawing ever closer to your crotch as she begins to lean even closer.";
			say "     Deciding to help speed up this lesson in how to properly please her mistress, you reach down and push softly on the back of her furred head, guiding her muzzle right up to your damp pussy. 'Now pleasure me, you little bitch,' You whisper down to your needy pet, 'It's time for you to learn how to put that longer tongue of yours to work properly,' you continue, your words seeming to excite the husky even further, as she begins to lick at your wet snatch eagerly. A groan in pleasure escapes your lips as she laps at your female sex, her tongue pressing into you again and again as she begins to truly give in to her desires. You find yourself burying your hands in Sarah's soft head-fur, pressing her muzzle up against your crotch as she licks and nibbles at you, causing you to begin to buck and moan softly in pleasure.";
			WaitLineBreak;
			say "     Your bitch truly is getting into the act, as she brings her paws up to stroke and tease your sensitive thighs and clit even as she applies herself to your pussy. Soon you can't restrain your pleasure any longer, and you cry out as you orgasm under the touch of her eager tongue and paws, your juices exploding over the husky's muzzle even as she gasps out in orgasm underneath you, spilling her own juices onto her thighs and the floor. 'Good little pet, did you enjoy your treat?' you ask her even as you come down from your own amazing orgasm, Sarah nods eagerly, even as she licks her muzzle to capture every last drop of your wonderful flavor.";
			say "     Despite all the fun you just had and Sarah's obedient temper, you realize that something is missing to complete this next step of her training. A more visible show of your ownership might be needed, a collar perhaps? The one she is still wearing was put around her neck by the husky pack you found her with - but since she's all yours now, something new and befitting so her role as your slutty pet seems in order. Maybe you can find that [bold type]pet shop[roman type] again where the other collar came from. It shouldn't be that far from the library, if you recall correctly...";
			NPCSexAftermath Sarah receives "OralPussy" from Player;
	else if SarahSlut is 3: [grabbed a new collar for her in the pet shop event]
		say "     Sarah's eyes brighten in anticipation of another 'training' session as she sees you coming towards her, and you can tell her body is already beginning to grow hot with need. You grin as you slowly move up to her, reaching back and pulling the collar you found at the pet store out slowly, making sure it catches her eyes. Sarah's gaze latches onto the collar almost immediately, her body stilling as she watches the silver clip flashing and glinting in the light, and realizes that this time things will be different. 'What do you say?' you ask her as you hold the collar up for her inspection, the word 'SLUT' glinting off the side of the collar as you hold it up in front of her.";
		say "     'Will you let me put this collar on you? Mark you as a proper pet and husky like you know you want me to?' you say as you dangle the collar in front of her fascinated gaze. 'If you put this collar on, you show everyone what a good little husky slut you are, now and forever, you give up your old life for a new one full of fun and fucking, doesn't that sound wonderful?' you say in a low tone, grinning as she nods slightly, her mouth open and panting, while her paws drop to her leaking pussy in need. 'What do you say? Should I put it on you?' you ask her teasingly as you bring the collar up close to her neck. You grin in triumph as the husky bitch nods eagerly, lowering her neck down so you can undo the red leather strap she had been wearing till then.";
		WaitLineBreak;
		say "     Simply letting the old collar tumble down to the ground, you glimpse her name stamped on the nameplate for a second, then look back up to your own present for the needy bitch - bearing a far more fitting title for your fuckpet. With a grin on your face, you slip the collar around her neck with ease and latch your pet's new fashion accessory around her neck tightly aligning the band so the stamped metal tag reading 'SLUT' hangs right above her bare breasts - displayed there for all to see. 'There now,' you say proudly as you rub her head-fur lightly, 'That's a good little pet, and now I think you have earned a little reward...' The praise and promise of a treat make Sarah's eyes light up with rising lust.";
		increase SarahSlut by 1;
		now lastfuck of Sarah is turns;
		if Player is male:
			if Player is female:
				say "     Deciding to make sure your pet's complete surrender is a memorable occasion, you slowly push her down to the ground, her eyes flashing eagerly as she moves to obey her new master. You grin as you move your body around, her head positioned directly underneath you as she stares up at you curiously. Your pet quickly gets the idea as you begin to lower yourself down towards her muzzle, soon straddling the young woman's face. She moans and licks at your pussy and cock eagerly as they come down within range of her muzzle, making you shudder in pleasure. Just enjoying the eager bitch's efforts for a minute, you then start to lean forward, getting on top of her stretched out form in a typical 69 fashion. You and your new pet both moan in pleasure as your [Skin of Player] skin brushes up against her soft chest fur, your breasts rubbing up against her stomach softly even as you lower your mouth down to her swollen pussy.";
				say "     Your nose filled with her strong, heat-filled scent, you slowly trace your tongue over her sensitive lips, making her cry out underneath you. The newly collared slut swiftly reapplies herself to your own sensitive parts, alternatively licking your damp pussy, then sucking and licking your stiff member. The feel of both your sexes being pleasured makes you moan in joy, experiencing the pleasure only a truly dominant herm can feel as you begin to lick and nibble on your furry pet's own female sex. You both moan in pleasure as your bodies writhe together in pleasure, each of you attempting to make the other one orgasm. Sarah has the slight advantage in that she has twice as many sensitive regions to play with, but you prove your dominance and experience as you wring a powerful orgasm out of your new pet.";
				WaitLineBreak;
				say "     The feel of her body spasming underneath you as proof of her complete submission to your dominance sets off your own orgasm as well, your cock and your pussy both spilling their liquid all over your new pets face. Spent and still shuddering from the aftershocks of your orgasm, you pull yourself off your new slut and take a look down at her prone form. Sarah just lies there, happily spent on the bunker floor, her face and chest covered in your sticky fluids, and her eyes nearly vacant from pleasure. Looking her over you feel a bit of pride to see that she seems to have finally completely accepted her role as a pet and your own private slut.";
				NPCSexAftermath Sarah receives "OralPussy" from Player;
				NPCSexAftermath Sarah receives "OralCock" from Player;
			else:
				say "     Deciding to make sure your pet's complete surrender is a memorable occasion, you slowly push her down onto her back, eager to introduce her to her new position as a proper pet by filling her womb with your strong fertile seed. You grin as she spreads herself before you, her new collar shining brightly around her neck as she finally gives into her animalistic need to be owned and used by a strong alpha. Your new pet eagerly spreads her legs for you without any prompting, seeming to fully embrace her new role instead of fighting it now that she is properly collared. You spare a moment to admire her fine husky body, soft and sweet and so very sexy, before you move up between her legs, your stiff [Cock of Player] cock rubbing up against her heat-filled passage and making her whine softly with need. Not one to leave a horny bitch unattended, you pull her hips towards you even as you nudge apart those sexy folds and push into her waiting pussy.";
				say "     Your new pet gasps and inner muscles clutch your shaft tightly as you fill her up in one sure stroke. Lowering your head to her shoulder you begin to rock your hips against hers, your cock moving within her soft body and making her pant and gasp with every rough movement. Her soft fur rubbing up against you is sheer pleasure, even as her every pleading noise begs for you to fill her body up with your fertile cum. Her arms wrap around your shoulders as she holds onto you tightly, completely giving herself up to the carnal pleasure of the act of mating, your orgasm drawing ever closer as you prepare to give her body the life giving seed it so desires. Finally unable to hold back any longer, you shout out your pleasure to the stone walls of the bunker as you fill your new pet's needy womb with your sperm, triggering her own powerful orgasm. And thus Sarah's fate is forever sealed to be nothing more than a happily fucked little husky pet, her only purpose now to bring you pleasure and bear your pups...";
				NPCSexAftermath Sarah receives "PussyFuck" from Player;
				if Player is not Sterile:
					increase SarahPregnant by 24;
		else:
			say "     Deciding to make sure your pet's complete surrender is a memorable occasion, you slowly push her down to the ground, her eyes flashing eagerly as she moves to obey her new master. Grinning you slowly move between her legs, your hand rubbing across her damp pussy for a minute to ensure she is well and truly excited. You slowly crawl over her body, giving your new pet a good look at your female attributes, then turn around and slowly position your damp pussy above her face. Your new bitch licks her lips, which makes that sloppy husky tongue brush against your skin while you take in her stretched-out form, so naked and ready for you. 'Good little bitches get to taste their mistresses,' you say to the excited husky underneath you, then you slowly lower your pussy down to her muzzle, moaning as she begins to lick eagerly at your already damp lips. 'And the very best little pets get to have their mistresses lick them as well,' you murmur as you carefully get into classical 69 position on top of her soft furred form, your face coming to rest just above Sarah's pussy as you brace yourself on all fours.";
			say "     Your pet's body tenses in anticipation and joy as she realizes what a lovely reward she is about to get for her submission, then she shudders as you slowly run your tongue over her heat-swollen mound. You tease Sarah's clit with your teeth lightly, nibbling at the edges and making her gasp in pleasure. Her soft cries of pleasure are muffled by your own pussy, as she intensifies her licking of your own soft walls. Groaning at the touch of your pet's talented tongue, you begin to lap and suck at her own passage, teasing her insides with your tongue even as your bodies begin to rub together in pleasure. You lose track of time as you play with and tease your pet, the mutual pleasure washing away all other petty concerns as the two of you celebrate your pet's new status together.";
			WaitLineBreak;
			say "     Eventually, the building feelings of lust and arousal can't be contained any longer and your whole body is rocked by pleasure as your pet's tongue finally brings you to a screaming orgasm. Your juices wash over her muzzle and face even as she continues to lap happily at you, drinking her mistress's femcum with devoted intent. You reward your pet with several strong licks, finally bringing the teased bitch to an orgasm of her own. Sarah shudders and gasps happily underneath you as you enjoy her unique flavor - not quite canine, but not human either. Spent afterwards, you pull yourself off your new pet, who just lies there happily worn out on the bunker floor. Looking the husky bitch over you feel a bit of pride to see that she seems to have finally completely accepted her role as a pet and your own private slut.";
			NPCSexAftermath Sarah receives "OralPussy" from Player;
	else if SarahSlut > 3: [completed her transformation before, repeat scenes]
		now lastfuck of Sarah is turns;
		if SarahPregnant > 0: [pregnant bitch]
			if Player is male: [male/herm player]
				if Player is female: [herm player]
					say "     Approaching your pet, you smile as you see her rubbing her belly, its visibly swelling bulge proof of your earlier prowess and mastery of her body. Sarah seems happy and eager to please - leaning back as she props herself up on her elbows, presenting her rather full body for your inspection. Your eyes resting on her protruding belly full of your pups, you smile and stroke its soft-furred curve for a minute or two, making her moan and lean into your touch. After a little while, you switch your attention to her very nice and shapely breasts, even larger now as they fill with milk for the pups.";
					say "     Deciding you like what you see, you slowly move yourself over her soft body, until you are situated just above the swell of her belly, your erect [Cock of Player] cock nestled perfectly between the swell of her breasts and your pussy rubbing up deliciously against the soft fur of your pet's chest. You moan in pleasure and anticipation as you begin to slowly rub your [Cock of Player] member up against the furry crevice between Sarah's breasts. The feel of her chest fur against your pussy as well as your cock is amazing, and your pet moves eagerly underneath you, rubbing herself against her master. The way she stretches her neck to lick the very tip of your cock fills you with pride at what a good little pet she has become.";
					WaitLineBreak;
					say "     Sarah moans as you press her breasts together around your cock, lying back and enjoying the feel of your hands massaging her milk-filled orbs as you thrust up against her. Proving what an excellent pet she is, before long one of her slender paw-hands finds its way to your own pussy where it rubs up against her body, your juices leaving a damp trail through her fur as you continue to hump her tits. You groan in pleasure as her fingers brush over your ass, touching your pussy every couple of thrusts as they rub your rear. The additional sensation as she slips one of her digits inside and strokes a very sensitive spot is all you need to tip you over the edge. With a lustful cry, you have a massive orgasm, your own breasts bouncing on your chest as you spill your cum all over your pet's face and breasts.";
					say "     You pant helplessly for several minutes while as your cock continues to send soft spurts of seed onto Sarah's body, and your pussy continues to drip its juices onto her chest. Finally you roll off your pet, propping yourself up off to the side as you recover from your exertions, and you find your mouth pulling back into a grin as you take in the sight of your pregnant pet. Her face and breasts are covered in your seed, the chest drenched in the juices from your pussy - and all that while her belly is so clearly swollen with proof if your virility. You slowly pull yourself up to your feet, the image of your well-used pet staying with you as you prepare to explore the city some more.";
					NPCSexAftermath Sarah receives "OralPussy" from Player;
					NPCSexAftermath Sarah receives "OralCock" from Player;
				else: [male player]
					say "     Approaching your pet, you smile as you see her rubbing her belly, its visibly swelling bulge proof of your earlier prowess and mastery of her body. Sarah seems happy and eager to please - leaning back as she props herself up on her elbows, presenting her rather full body for your inspection. Your eyes resting on her protruding belly full of your pups, you smile and stroke its soft-furred curve for a minute or two, making her moan and lean into your touch. After a little while, you switch your attention to her very nice and shapely breasts, even larger now as they fill with milk for the pups.";
					say "     Deciding you like what you see, you slowly move yourself over her soft body, until you are situated just above the swell of her belly, your erect [Cock of Player] cock nestled perfectly between the swell of her breasts. Her muzzle drops open in anticipation as you begin to thrust your cock forward slightly. The soft feel of her furred breasts against your rubbing cock is amazing and your well-trained and eager pet only makes matters better by lowering her muzzle down as far as she can and stretching her tongue out to lick lightly at the tip of your stiff penis as it comes in range. She moans as you press her breasts closer together, making a better sheath for your cock out of her soft fur, and you begin to press forward in earnest.";
					WaitLineBreak;
					say "     The aroused husky girl moans underneath you as you massage her breasts with every stroke, your breaths coming out as harsh pants as your pleasure increases with every thrust. Finally you reach your peak and you groan in lust as your cock starts to shoot its seed all over the adoring husky's breasts and face, coating her fur with your sticky treasure. You pant in satisfaction at having coated this fine slut in your seed - and bred her with a load of puppies of course. Tired from the exertion you carefully rise off of your pet, even as she devours your seed happily. Leaving her lying there on the floor of the bunker, you have a last look at the naked beauty and her swollen belly, then turn back to matters of survival in this chaos-ridden city.";
					NPCSexAftermath Sarah receives "PussyFuck" from Player;
			else: [female player]
				say "     Approaching your pet, you smile as you see her rubbing her belly, its visibly swelling bulge proof of your earlier prowess and mastery of her body. Sarah seems happy and eager to please as she lies back on the floor, though she does seem somewhat disappointed at the disappearance of your lovely life-giving cock. Still, she is always willing to please her mistress - as a good pet should. With a smile on your face, you decide to take some time out to play with your pregnant pet, making her groan as you rub your hands over Sarah's softly furred belly before bringing them up to play with her shapely breasts. The husky bitch moans as you rub and tease her, especially when you give those swelling boobs a squeeze or two. They're even firmer than before, getting ready to supply milk to her puppies.";
				say "     'Does my little pet want her mistress to get her off?' You whisper to her teasingly, grinning as the husky nods desperately even as she melts into your soft touches. Deciding your little breeding bitch has probably earned a reward or two, you lower one of your hands down to her sopping slit, even as the other continues to massage her breasts. She pants in pleasure at your touch, her well-trained body shuddering slightly as you run your hands over her pregnant form. Deciding to take advantage of her open mouth, you lower your mouth to her muzzle, licking and teasing it until your pet is eagerly twining her tongue with yours in a deep, passionate kiss.";
				WaitLineBreak;
				say "     You find yourself growing excited as you play with your pet, happy at the thought of your seed growing deep in her body, and wondering if you will end up siring any more pups on her after this batch. Shouldn't be too hard to grow a cock again, not in this place and time - though maybe you will end up making her carry someone else's pups in her womb instead. The erotic thought makes you moan into her muzzle as she shudders underneath you in orgasm, your own orgasm not far behind as you rub yourself up against her soft fur. Panting you carefully lift yourself off your pet, her thighs soaked with her juices even as she lies there on the floor, the very picture of a happily bred husky slut.";
				NPCSexAftermath Sarah receives "PussyDildoFuck" from Player;
		else: [non-preg Sarah]
			if Player is male: [male + herm player]
				if Player is female: [herm player]
					say "     Your pet looks up in anticipation as you approach, her pussy leaking wetly onto the floor even as she lies back to give you a better view of her eager body. The sight of this once intelligent young woman now reduced to such a needy canine bitch causes your cock to stiffen even as your own pussy grows damp as well. Deciding to enjoy this time with your eager little pet to its fullest, you slowly begin stroking and petting her as you work your way up her body, starting out with soft stroking of her feet-paws and moving up as your hands massage and stroke the soft fur of her inner thighs. Sarah throws her head back and lets loose a desperate moan as you ever so slowly work your way up to her needy pussy.";
					say "     Sarah groans as you tease her sensitive folds with your fingers for a minute, rubbing and stroking before continuing to brush against her curvy form on the way up her chest and sides. She quickly becomes quite excited and lost in the pleasure of your touch - so much so that she bucks in a sudden orgasm almost as soon as you begin to massage her soft breasts. The husky girl's antics make you chuckle slightly as she pants and shudders underneath your touch while you continue to rub and caress her breasts. Once Sarah's orgasm has faded somewhat, you slowly allow the tip of your cock to begin to trace the edges of her swollen lips, making the husky bitch gasp and look up at you, her eyes widening as she realizes you haven't even begun to truly play with her body yet.";
					WaitLineBreak;
					say "     A smile tugs at the corners of your mouth as you slowly sink yourself into Sarah's well-lubricated passage, groaning at the feel of her vaginal muscles quivering around your [Cock of Player] rod as you sheathe yourself in her body. The young woman moans and throws her head back as she cries out in pleasure at finally being filled by your erect member. Writhing helplessly underneath you as you continue to rub yourself up against her soft furred body, Sarah pants like a bitch in heat as your hips begin to move purposefully up against her.";
					say "     You grin as she curls her legs up against your body, her hind-paws rubbing up against the backs of your legs, even as her thighs grip you to her tightly, encouraging you to go faster. Sarah's hips rock in tandem with your own as your pussy leaks its own juice out over the area where your cock joins the two of you together. You moan in pleasure as you lower your chest down against your pet's, breasts rubbing together in an amazing sensation as you run your hands through her soft fur. It doesn't take much longer before you can feel your balls churning and your rod stiffening even further.";
					WaitLineBreak;
					say "     Groaning loudly, you feel your cock pressing up against the entrance to Sarah's fertile womb - just in time for a powerful orgasm to rock you to your very core. You start to pump your seed into the fertile husky's eager and receptive body, spurt after spurt of cum ensuring her belly will soon be swelling with your pups. The feel of her womb being invaded by your strong blasts of sperm triggers another orgasm in your fine husky bitch, causing her to shudder and gasp underneath you, her eyes rolling back in her head as you bring her to her second earth shattering orgasm in mere minutes.";
					say "     Slowly pulling out of her semi-conscious form, you find yourself grinning in amusement at how much fun your lovely little pet is. Standing up to prepare to head back out into the city, you spare a minute to pat your little husky's soft belly, now nice and full of your seed, you just can't wait to see it when you return, all nice and rounded - only then it will be full of your little husky pups instead.";
					NPCSexAftermath Sarah receives "PussyFuck" from Player;
					if Player is not Sterile:
						increase SarahPregnant by 24; [knocked her up]
				else: [male player]
					say "     Your pet grins as you approach, quickly positioning herself on all fours before you like a good little bitch. Her rear is pointed towards you even as she lifts her tail up in an unspoken invitation, swollen sex and thighs damp with evidence of her excitement and need. 'Well aren't you the eager little slut,' You tease Sarah with a smug little grin as you slowly trace your hand along her back, making her shudder in anticipation. In response to your teasing taunt, your pet only moans slightly as she lifts her tail up even higher, raising her hips while she lowers the front part of her body closer to the ground.";
					say "     Sarah's collar seems to gleam around her soft throat as she does her best to live up to her new title of slut, presenting herself to you and whining softly in need. Her quickly wagging tail brushes up against your chest in swish after swish as you position yourself behind your well-trained bitch, her body responding with pleasure to your touch and at the first brush of your shaft against her nether region. You don't waste any time with foreplay since you know that your pet is more than ready to be used like the submissive animal you have trained her to be. Taking a tight grip of the panting bitch's furry hips, you thrust your erect rod deep into her wet cunt.";
					WaitLineBreak;
					say "     The feel of Sarah's well-trained walls gripping your cock is indescribable and you groan in pleasure, stroking her back as you tell her what a good pet she is to you. Her inner muscles practically massage your member as you begin to pound into her, your hands clenching in her fur to keep a hold through even the most vigorous thrusts. Switching up the action after a little while, you decide to slow down for a more gentle grind against her crotch again, stroking and touching Sarah's naked body as you take the eager little bitch. While you massage and fuck your pet, she moans and rubs her cheek against the floor. This formerly bright and intelligent medical student really has taken well to her new role in life - as servant to your lusts and receptacle of the hard shaft balls-deep inside her right now!";
					say "     You thrust into Sarah faster and faster, grunting lustfully as this bestial mating with your bitch turns hotter and hotter. Taking a husky bitch in doggy style - no other position could be better to enjoy breeding such a fine piece of ass! And that is exactly what you do, hammering into her dripping snatch and getting ready to spill your seed deep into her eager and willing body. Sarah's vagina clutches at your rod as you increase your pace, her walls teasing your cock and trying to hold you within her body even as the pleasure builds up to a fevered pitch inside you. Unable to contain yourself any longer, you find yourself growling instinctively as you pump your load into the soft folds of the bitch underneath you, clutching her tightly to you as she shudders with pleasure at the feeling of your hot sperm finding its way into her heat-filled womb.";
					WaitLineBreak;
					say "     As your orgasm fades, you find yourself panting in victory as your submissive little bitch moans underneath you. She lets out happy whining as you pet her a few times, then slowly pull out of the eager little slut, letting her collapse into a puddle of her own juices. You grin at the dreamy look on Sarah's face as she revels in the joy of being just another pet and animal for you to use, a slave to her own needs and your desires. You leave her there in the bunker like that, rubbing her pussy and stroking her now slightly swollen belly with her soft husky paws. Well fucked and well seeded with your virile sperm, you can't wait to see how the puppies turn out...";
					NPCSexAftermath Sarah receives "PussyFuck" from Player;
					if Player is not Sterile:
						increase SarahPregnant by 24; [knocked her up]
			else: [female player]
				say "     Approaching your pet, you smile as she eagerly lies back on the floor at your approach, spreading her legs eagerly even as she massages her breasts with her soft paws. Seeing her spread eagerly before you like that, you decide to take advantage of her position and slowly move so you are kneeling between her thighs. One of your hands slides down to tease her pussy for a minute, making Sarah moan as your other hand guides her to lie back on the floor of the bunker. Realizing what is about to happen she eagerly lies back and lifts her ass off the ground slightly as you position yourself between her legs, lifting your leg over hers as you stretch out on the floor as well.";
				say "     Sarah gasps and whines in need and pleasure as your pussy rubs up against hers, and you moan as well at the feel of her damp passage rubbing up against your own. Enjoying the sensations you begin to rub and grind against her crotch, your eyes closing to fully concentrate on scissoring with Sarah. Your little husky pet eagerly begins to return the favor, making the feel of your pussies rubbing against each other even better as your juices mingle together. You find yourself stroking and petting her legs as you move your bodies together, your hands occasionally reaching down to stroke the area where your clits are rubbing against each other, even as your pet does the same.";
				WaitLineBreak;
				say "     Soon you are both grinding into each other's crotches desperately, the scent feminine need filling the room and mingling with the aroma of a husky in heat. You both move ever closer to the mind-blowing orgasm you know is coming. When you finally reach the climax of your building arousal, you cry out, the exclamation joined by that of your bitch as you both writhe helplessly against each other on the floor. You manage to recover from your exertions before your pet does, and as you untangle yourself from her slutty body, you find yourself grinning at the happily fucked look on Sarah's face.";

to say SarahFirstSlutFuck:
	say "     Deciding that the opportunity she presents is just too tempting to not take advantage of, you stalk towards the tempting little husky, enjoying the lust-filled look in her eyes even as she tries to resist the strong urges of her newly-changed body. She puts up little resistance as you slowly tug her shirt up and off her body, your hands running through her fur and teasing her soft breasts even as she pants in increasing need. You find the entire situation increasingly erotic as you continue to tease the increasingly horny bitch, her hands starting to stroke your strong body in return.";
	say "     Capturing one of her hands, you guide it down to the latch of her jeans, letting it go there and leaving her to take that final irrevocable step of baring herself purposefully to you. Sarah whines in need as you tease her body, before finally giving in to the need that her body is telling her is so right, and unlatching her jeans for you. You grin in triumph as you reach down and slowly tug them all the way off of her body, enjoying the sight of her wet, needy husky pussy revealed for you to play with.";
	WaitLineBreak;
	now SarahSlut is 1;
	now SarahCured is 0;
	now lastfuck of Sarah is turns;
	if Player is male:
		say "     Reveling in the newfound power over this young woman, you slowly push her down onto her back, stroking your cock several times so she can watch. You enjoy the way her eyes stay fixed on your [Cock of Player] member even as you slowly move over her prone form. Your hands and tongue trace over her body as you tease her until she begs for you to fill her up with your wonderful rod. Taking your time to enjoy the situation to the fullest, you continue to tease her with your hands and mouth for several seconds. Your cock rubs up against the inside of her softly furred thighs and only lightly touches her crotch as you play with your hot little bitch. Soon, she is panting and whining like an animal in heat, unable to even form proper words anymore, and you find that somehow this excites you even more as you reduce her to little more than a submissive slut underneath you.";
		say "     Finally, you decide to give her the lovely dog treat she has been begging for, and groan in pleasure as you sink your cock into her damp folds. She moans and yips in pleasure as your cock fills her, and you grip her tightly as you begin to thrust into her roughly, unable to hold out much longer after the long foreplay. Your mind is fogged with need and lust as you pump your cock into her, finally crying out as you spill your seed into her all-too-willing womb, leaving your mark of ownership deep inside her body. Panting you slowly gather your wits about you and you grin to realize that Sarah is practically delirious underneath you, her tongue lolling out of her open mouth as her eyes stare up dreamily at the ceiling. You feel somewhat smug as you pull yourself off the well-fucked husky bitch, somehow sure this will change her outlook on being a lovely little husky dog for good.";
		NPCSexAftermath Sarah receives "PussyFuck" from Player;
	else:
		say "     Enjoying the look of her soft pussy, you decide to give her new husky passage the proper attention it deserves. You slowly push her down so she is lying on her back on the ground, looking up at you apprehensively. You grin at the new bitch's uncertain look and decide to teach her how to properly enjoy her pussy, since she has obviously been neglecting her needs since her change. Grinning, you lower your head down between her legs, rubbing your cheeks along the soft fur of her thighs and making her pant as you tease her even further. Your tongue darts out and you slowly trace it along the outside of her lips, making her shudder as her delicious needy flavor fills your mouth. You enjoy her reactions as you slowly begin to lick her soft pussy, your tongue probing further and further inside her with every slow sensual stroke. Sarah begins to moan and whine in need, obviously unable to form proper speech anymore as you tease and excite her body.";
		say "     The thought of reducing her to the role of a proper animal excites you almost as much as her lusty scent and delicious taste, and you find yourself licking even faster, occasionally teasing her clit with your teeth as she shudders in pleasure. Soon enough, the new bitch gives in as you help her embrace the slutty animal she has become, and she cries out in orgasm, her fluids rushing across your tongue in a burst of pleasure as she spasms underneath you. Sarah then collapses limply on the ground, her tongue lolling out of her open mouth as her eyes stare up dreamily at the ceiling. You feel somewhat smug as you pull yourself away from the exhausted husky bitch, somehow sure this will change her outlook on being a lovely little husky dog, and glad you were able to help her get in touch with the slutty little bitch she really is now.";
		NPCSexAftermath Player receives "OralPussy" from Sarah;

to say SarahSexMenu:
	LineBreak;
	project the figure of Sarah_naked_icon;
	say "What do you want to do with Sarah?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go down on her again";
	now sortorder entry is 1;
	now description entry is "Get your husky friend off through touching and licking her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Sarah go down on you";
	now sortorder entry is 2;
	now description entry is "Lie back and let the husky please you";
	[]
	if SarahCured is 5 and Player is male: [only had Sarah-centered oral with her before]
		choose a blank row in table of fucking options;
		now title entry is "Suggest a tit-fuck";
		now sortorder entry is 3;
		now description entry is "Ask your husky friend to let you grind your cock between her breasts";
	[]
	if SarahCured > 5 and Player is male: [player-dominant oral is okay]
		choose a blank row in table of fucking options;
		now title entry is "Tit-fuck the sexy husky";
		now sortorder entry is 4;
		now description entry is "Grind your cock between her breasts";
	[]
	if SarahCured is 5 and Player is male: [only had Sarah-centered oral with her before]
		choose a blank row in table of fucking options;
		now title entry is "Suggest face-fucking her";
		now sortorder entry is 5;
		now description entry is "Ask your husky friend to let you fuck her muzzle";
	[]
	if SarahCured > 5 and Player is male: [player-dominant oral is okay]
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck Sarah";
		now sortorder entry is 6;
		now description entry is "Grind your cock against that talented tongue in her muzzle";
	[]
	if SarahCured is 5 and Player is female: [only had Sarah-centered oral with her before]
		choose a blank row in table of fucking options;
		now title entry is "Suggest grinding your pussy against her muzzle";
		now sortorder entry is 7;
		now description entry is "Ask your husky friend to let you use her muzzle";
	[]
	if SarahCured > 5 and Player is female: [player-dominant oral is okay]
		choose a blank row in table of fucking options;
		now title entry is "Pussy-grind Sarah's muzzle";
		now sortorder entry is 8;
		now description entry is "Grind your pussy against Sarah's muzzle";
	[]
	if SarahCured is 6 and Player is male: [never talked about sex before]
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck her";
		now sortorder entry is 9;
		now description entry is "Try to get into Sarah's pussy (for her first time as a husky)";
	[]
	if SarahCured > 7 and Player is male: [at least had the "I want to fuck you" talk with Sarah]
		choose a blank row in table of fucking options;
		now title entry is "Let Sarah ride your dick (anal)";
		now sortorder entry is 10;
		now description entry is "Allow the husky to ride you - with your dick in her ass";
	[]
	if SarahCured > 7 and Player is male: [Sarah is okay with doggy style (anal)]
		choose a blank row in table of fucking options;
		now title entry is "Pound Sarah doggy style (anal)";
		now sortorder entry is 11;
		now description entry is "Take the sexy husky from behind - with your dick in her ass";
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
				if (nam is "Go down on her again"):
					say "[SarahSex1]";
				if (nam is "Let Sarah go down on you"):
					say "[SarahSex2]";
				if (nam is "Suggest a tit-fuck"):
					say "[SarahSex3]";
				if (nam is "Tit-fuck the sexy husky"):
					say "[SarahSex4]";
				if (nam is "Suggest face-fucking her"):
					say "[SarahSex5]";
				if (nam is "Face-fuck Sarah"):
					say "[SarahSex6]";
				if (nam is "Suggest grinding your pussy against her muzzle"):
					say "[SarahSex7]";
				if (nam is "Pussy-grind Sarah's muzzle"):
					say "[SarahSex8]";
				if (nam is "Ask to fuck her"):
					say "[SarahSex9]";
				if (nam is "Let Sarah ride your dick (anal)"):
					say "[SarahSex10]";
				if (nam is "Pound Sarah doggy style (anal)"):
					say "[SarahSex11]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young woman, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

[
Sex Menu Intro:
say "     As you approach Sarah, she smiles at you warmly and wags her tail. 'Hah, don't I know that look in your eye,' the female husky tells you with a bit of a teasing wink, stepping close to stroke her hand down your side. Putting on a coy, playful expression, she asks, 'So... what did you have in mind this time?'";
]

to say SarahSex1: [go down on her]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear just what you want to do. Being reminded of your first time together, the anthro canine's tail starts wagging wildly and Sarah gives you a very happy smile before replying with a giggle, 'I'm all yours.' Taking her paw-hand, you lead your friend over to her bed, gently pushing against her chest to make her sit down.";
	say "     You stroke a finger along the jawline of Sarah's slender muzzle, pulling her head up a little to look at you, then lean forward and kiss her again. After the quick but still steaming hot peck, you whisper for her to sit back and relax for you - which the grinning husky does right away, panting slightly as you stretch out your arm to brush a hand against the fabric of her shirt. The curve of her breasts stretches the thin top quite nicely and you can literally feel the nubs of her nipples under your fingers. The gentle touch doesn't stay without a reaction from the young woman either - Sarah moans deeply, trembling a little as her hands grip the side of the bed. 'That feels nice,' she sighs and you pause for a second, just keeping your fingers cupping her curves until Sarah says, 'More please.'";
	WaitLineBreak;
	say "     A gentle tug, then another, slowly slide the tight shirt up over the husky woman's torso, baring her slender midriff with its thin coating of white fur. Soon, all the fabric is bunched up under her protruding breasts and you start pulling the shirt even higher, drawing pants of arousal from Sarah as soft cloth rubs over her sensitive nipples. The naked curve of her perky boobs being slowly revealed turns you on quite a bit too - showing that sometimes, a slow and steady buildup is better than just rushing to the finish line. A heartbeat after you pull the stretched hem of the shirt past Sarah's erect nipples, the piece of cloth slips up over their curve, giving you a full view of the young woman's generously sized titties.";
	say "     Stretching your head forwards almost without thinking, you open your mouth to take a nipple between your lips - then stop yourself, looking up at Sarah to see her reaction as you gently blow your breath over her sensitive skin. 'Nnnnghh - you little tease! Go on,' she sighs in pleasure, sliding a hand behind your head to pull you against her chest. Switching back and forth between suckling on one of Sarah's breasts, then the other, you keep teasing the young woman with gentle strokes and your tongue-tip licking over sensitive spots, then eventually move your hands down to her crotch. While sucking hard on one nipple, making her throw her head back and moan out loud, you pop the button of her pants, then slowly slide the zipper down too.";
	WaitLineBreak;
	say "     Fingers trembling in anticipation, you do pull the flaps of Sarah's pants open and reveal a pair of simple black panties, their fabric already damp with her rising arousal. There is no slow undressing for her jeans - not after the sensual torture you put your canine companion just through - Sarah herself pushes them down while raising her hips, then uses her foot-paws to shove the pants down and shake them off to land in a heap beside the bed. You can hear the thump of her tail wagging against the mattress of the bed, as well as the pant of a quite wound-up husky - and yet, this isn't the almost-feral bitch you saw her turn into when the nanites transformed Sarah. No, this anthro canine is still the bright medical student she worked so hard to be - and that woman now pulls you up for a not at all shy kiss.";
	say "     'I'm so glad to be here with you,' Sarah moans into your mouth, 'Enjoying these feelings with my mind clear. No desire at all to be just a brainless, submissive bitch, hah! Though I do feel like having your talented tongue between my legs, you know.' Saying those last few words in a lusty tone, Sarah pushes you down to crouch between her spread legs, exposing you to the musky aroma of her canine sex. Playing your fingers over the slim strip of fabric still covering her crotch, you press in against it in the middle, causing it to soak through with pussy juices as it touches Sarah's nether lips.";
	WaitLineBreak;
	say "     Playfully teasing the husky girl some more, you rub against the panties, then slip the tip of a finger under their edges and run it along in a slow back and forth movement. By the time you hook your finger over the top and pull the fabric down, Sarah is literally dripping in arousal. She lets out a very satisfied bark - almost a howl - as your lips brush against her clit, then take it between them as you start suckling on it. With one hand holding down her panties and the other stroking the outside of her nether lips, the desperately aroused husky girl doesn't last very long before a breathtaking orgasm crashes in over her. Both paw-hands flying forward to grip your head tightly, she grinds your face into her furry muff, getting you wet and sticky with femcum.";
	say "     Holding on to you and trembling in lust that only slowly ebbs off, Sarah keeps panting rapidly for some time, then eventually releases you to pull back from between her legs. Letting go of the black panties, you watch them flick back up to cover her crotch again (apparently quite good elastic in this brand) - which of course gets them even more soaked through with the husky's femcum. Then your viewpoint shifts as Sarah gently pulls up on your jaw, guiding you to look at her, then raise a bit to meet her for another sensual kiss. 'That was amazing,' she tells you with a smile, then strokes your cheek affectionately. 'Thank you for your understanding of going slow. I do need this - and it feels so right.' After another quick peck on your lips, she slides her legs to the side and gets up, grabbing a towel to rub herself down with and clean up.";
	NPCSexAftermath Player receives "OralPussy" from Sarah;

to say SarahSex2: [let her go down on you]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear just what you want to do. Eager to show what she can do, the anthro canine's tail starts wagging wildly and Sarah gives you a very happy smile before replying with a giggle, 'Come on then, [if Player is female]girlfriend[else]stud[end if].' Sliding her hand-paw into yours, your husky friend guides you over to the next bed, then gestures for you to lay down.";
	if Player is male:
		say "     After quickly slipping out of your clothes, you climb on the mattress and stretch out on it, waiting for Sarah to join. A moment or two later, you feel her next to you, kneeling on the bed and reaching out for your crotch. Slender fingers take hold of your manhood, stroking and touching you to tease it to full hardness. Then the pretty canine leans over and runs her floppy tongue up the shaft of your cock, making you grunt in arousal and lightly buck up your hips. 'Easy there tiger, I'm calling the shots right now,' Sarah tells you, licking over your cockhead with exquisite slowness and making you groan. The young woman laughs merrily at your antics, then proceeds to stroke your shaft with a little more energy, pumping her paw up and down on the stiff rod.";
		WaitLineBreak;
		say "     Enjoying for a little while how easily she can control you with your 'joy-stick', Sarah eventually moves on to lowering her muzzle to your crotch again and taking a good long huff of your scent. 'This husky nose of mine is something else... you wouldn't believe how wet it makes me to just smell a horny male,' your canine companion tells you in a teasing tone, then envelops your shaft with her open maw and starts giving you a blowjob. Bobbing up and down on the erect pole, she wraps her long and broad tongue around your manhood in a warm and wet caress. And not only that feels great - the top of her mouth gives a quite pleasurable sensation as it rubs against your erection, thanks to its ribbed surface.";
		say "     All in all, Sarah gives an amazing blowjob - teasing you with her muzzle and tongue, as well as her paw-hands working to caress the rest of your body. With the skillful care the young woman gives her rescuing hero, it holds little surprise that you soon feel a familiar tingling sensation rising in your balls. Telling her this in an urgent grunt to give Sarah time to pull off has the opposite effect - she just pushes her muzzle further down on your shaft, pressing her nose into your pubes and even using the tip of her tongue to lap at your balls. A few rapid heartbeats later, you grunt in need and start blasting away with your load - pumping the creamy treat right down her throat. Your fingers grasp the sheets of the bed tightly as a breathtaking orgasm rocks your body and more and more cum coats the back of Sarah's maw and is eagerly swallowed. It feels amazing to be in her muzzle like this, fill your furry friend's stomach with a fresh load and have her tongue milking you for even more...";
		WaitLineBreak;
		say "     Eventually, when the intense orgasm ebbs off and your cum shots run out, you're left exhausted on the bed, trying to catch your breath. Sarah meanwhile still has your manhood in her muzzle, happy to suckle on it to get even the smallest bit of cum still there to get. When your dick soon gets rather sensitive for further touching as it starts to soften, you plead with her to let up on the sucking - and Sarah finally relents, allowing your manhood to slip from her muzzle. She sits up straight and says with a grin, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for cum, eh?'";
		say "     Leaning in over you, the beautiful husky gives you a happy smile, followed by a deep kiss. Tongue-wrestling and making out with Sarah, you have a great time with the anthro husky - though rolling around on a bed with her doesn't exactly allow you the rest you need after the exertion of the orgasm earlier. In the end, she gives you a last peck on the lips, then stands up and saunters away - leaving you with the image of her perky behind and wagging tail, as well as the faint taste of your own cum on your lips.";
		NPCSexAftermath Sarah receives "OralCock" from Player;
	else:
		say "     After quickly slipping out of your clothes, you climb on the mattress and stretch out on it, waiting for Sarah to join. A moment or two later, you feel her next to you, kneeling on the bed and reaching out for your crotch. Slender fingers brush over your nether lips, stroking along their outer curves and seeking out the clit at the top. Then the pretty canine leans over and runs her floppy tongue over your sex in a warm and wet caress, making you sigh in arousal and lightly buck up your hips. 'Easy there, I'm calling the shots right now,' Sarah tells you, licking over your clit with exquisite slowness and making you groan. The young woman laughs merrily at your antics, then proceeds to push a finger in between your nether lips, pumping it in and out of your body.";
		WaitLineBreak;
		say "     Enjoying for a little while how easily she can control you with the right stroke of your inner walls, Sarah eventually moves on to lowering her muzzle to your crotch again and taking a good long huff of your scent. 'This husky nose of mine is something else... you wouldn't believe how wet it makes me to just smell a horny woman,' your canine companion tells you in a teasing tone, then starts licking you once more. Going slow at first, she rubs your crotch and keeps up her steady lapping. You enjoy the feeling of that soft wet nose and even wetter tongue as it touches your folds, brushing over them in teasing strokes.";
		say "     All in all, Sarah gives amazing oral - teasing you with her muzzle and tongue, as well as her paw-hands working to caress the rest of your body. With the skillful care the young woman gives her rescuing hero, it holds little surprise that you soon feel a familiar tingling sensation run up your back in a shiver. Telling her that you are close makes her intensify her efforts even more, really going all-out with her lapping and fingering. The single-minded focus of your eager husky friend is enough to push you over the edge for a breathtaking orgasm in mere moments, making you flop weakly on the bed as it crashes over you. You shiver and tremble as she licks your pussy, slurping up femcum and keeping the good feelings coming for a long, long time.";
		WaitLineBreak;
		say "     You don't know how long the young woman keeps you in that blissful state, but when the intense orgasm eventually ebbs off, you're left panting and weak as a kitten - lying stretched out and gasping for breath. The husky sits up straight and says with a grin, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for femcum, eh?' Leaning in over you, the beautiful young woman gives you a happy smile, followed by a deep kiss. Tongue-wrestling and making out with Sarah, you have a great time with the anthro husky - though rolling around on a bed with her doesn't exactly allow you the rest you need after the exertion of the orgasm earlier. In the end, she gives you a last peck on the lips, then stands up and saunters away - leaving you with the image of her perky behind and wagging tail, as well as the faint taste of your own femcum on your lips.";
		NPCSexAftermath Sarah receives "OralPussy" from Player;

to say SarahSex3: [suggest tit-fuck]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to grind your hard dick in between her breasts. Sarah is somewhat hesitant at first, unsure if she should really just submit and let you satisfy yourself on her - but as you keep whispering suggestive things and slide a hand up to cup her breasts, her tail starts a slow wag and she replies, 'Okay, I'm game. Just... promise me that you'll stop if, if things get too intense for me.' Taking her paw-hand, you kiss it gently and nod to Sarah, then lead your friend over to her bed, gently pushing against her chest to make her sit down.";
	say "     You stroke a finger along the jawline of Sarah's slender muzzle, pulling her head up a little to look at you, then lean forward and kiss her again. After the quick but still steaming hot peck, you whisper for her to sit back and relax for you - which the grinning husky does right away, panting slightly as you stretch out your arm to brush a hand against the fabric of her shirt. The curve of her breasts stretches the thin top quite nicely and you can literally feel the nubs of her nipples under your fingers. The gentle touch doesn't stay without a reaction from the young woman either - Sarah moans deeply, trembling a little as her hands grip the side of the bed. 'That feels nice,' she sighs and you pause for a second, just keeping your fingers cupping her curves until Sarah says, 'More please.'";
	WaitLineBreak;
	say "     A gentle tug, then another, slowly slide the tight shirt up over the husky woman's torso, baring her slender midriff with its thin coating of white fur. Soon, all the fabric is bunched up under her protruding breasts and you start pulling the shirt even higher, drawing pants of arousal from Sarah as soft cloth rubs over her sensitive nipples. The naked curve of her perky boobs being slowly revealed turns you on quite a bit too - showing that sometimes, a slow and steady buildup is better than just rushing to the finish line. A heartbeat after you pull the stretched hem of the shirt past Sarah's erect nipples, the piece of cloth slips up over their curve, giving you a full view of the young woman's generously sized titties.";
	say "     With her breasts exposed, Sarah puts on an impish expression and gives her upper body a little shake - making the soft-furred orbs bounce for you. 'You like that?' she asks with a smile - and in reply, you capture the well-sized breasts and hold them both in your hands, squeezing one after the other in appreciation. You bend your head to bring your lips to female husky's nipples, taking one between your lips and sucking on it before switching to the other and just teasing it with the tip of your tongue, circling the hard little nub of her hard nipple. Becoming intensely aware just how hard your cock is getting after a little while of the fun foreplay with Sarah, you eventually decide to move things along, pushing your furry partner to lay back on the bed and climbing on to straddle her chest.";
	WaitLineBreak;
	say "     With your legs left and right of the half-naked husky, your erect [Cock of Player] shaft is now resting against the warm fur covering Sarah's body. She is panting from all the built-up arousal as she looks up at you, then gives a smile and a little nod to go on. Eager to play with the sexy and willing young woman, you put your hands on her breasts again, caressing them with your fingers. Gently pressing the perky boobs together, you create a fur-lined crack between them - just perfect to rub the underside of your cock against. Sarah's warm and soft fur feels amazing on your manhood - and even more so when you angle a bit lower and your cockhead actually slides in between the smooshed-together orbs.";
	say "     Having your rock-hard prick surrounded on all sides by Sarah's glorious boobs is great and you can't help but let out a lusty grunt as you slide yourself deeper into that furry crack on top of her chest. Squishy and warm, it is a little bit like a pussy - but with fur, so incredibly soft and gentle against your sensitive member. Closing your eyes, you thrust forwards to go deeper into the amazing 'hairy pussy', then find yourself surprised as your dickhead pushes through into the open air, cool in comparison to Sarah's fur. Of course - the realization that you pushed out the other end of the boob-crack hits you after a few seconds, closely followed by something wet and warm sliding over the mushroom head of your erection!";
	WaitLineBreak;
	say "     Looking down to the attractive husky woman, you see that Sarah is licking you - smiling broadly as she runs that broad doggie tongue of hers over the head of your erection. The two of you share a moment of intense eye-contact and lust flares up between you. Almost on auto-pilot, this prompts you to pull your cock back out of the warm embrace of her pressed-together breasts, then to thrust forward again hard, creating quite nice sensations for the both of you. And by the time you're hilted against her breasts, balls rubbing the underside of those furry orbs, Sarah is already slurping at your cockhead again...";
	say "     The thrusting, rubbing and licking between you turns into quite a fun session of tit-fucking - for both of you. At some point, the young husky even undoes the button of her jeans and pushes the zipper down a little, allowing her to slide a hand into her panties and rub herself. Looks like Sarah's fears and doubts were unfounded after all, making you feel great at having talked her into this and seeing how much she enjoys herself. And it isn't just her having fun - fucking her breasts feels really great, especially combined with the eager lapping your canine partner is happy to keep doing.";
	WaitLineBreak;
	say "     It doesn't take all that much longer before you can feel a familiar tingling sensation building in your balls. Grunting out that you're getting really close, you see Sarah react quickly - by opening her muzzle wide and pushing out that long tongue of hers. She is just in time, as your lust barrels past the point of no return a heartbeat or two later and a first long spurt of creamy cum blasts out of your cum-slit to hit the roof of her muzzle. Pumping out your load makes your cock throb against its warm and soft surroundings with every new cumshot, heightening your arousal even more. Meanwhile, Sarah eagerly catches every spurt, even chomping into the air in a lightning-quick move for a stray shot once or twice.";
	say "     By the time your intense orgasm ebbs off and the cum shots run out, you're left leaning forward, bracing yourself on the bed as you catch your breath. Sarah meanwhile is still licking her muzzle, happy to slurp up all the little bits of cum that got splashed on it and swallow it down too, like the rest of your load. She grins up at you and says, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for cum, eh? And - um... these breasts are really sensitive.' Her breathing comes a bit quickly as Sarah talks and as you look behind you, it becomes obvious why. The young woman is frigging her clit with a paw in an intense manner, really going at it until she bucks under you a moment later, moaning loudly as she reaches her climax.";
	WaitLineBreak;
	say "     Looks like this try at new fun was a full success - both of you have had quite a blast, including breathtaking orgasms, and Sarah has the relief that this sort of thing won't push her over the edge to succumbing to her infection after all. As you climb off the bed and lean in for a final kiss, Sarah caresses you with a paw and sighs happily, 'I wouldn't mind doing this sometime again...'";
	if SarahCured < 6:
		now SarahCured is 6;
	NPCSexAftermath Sarah receives "OralCock" from Player;

to say SarahSex4: [tit-fuck]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to tit-fuck her. Sarah's lips draw into a smile as she hears your words and the anthro husky licks the side of your neck happily before she says, 'Sure - this'll be fun!' Her paw-hand slides into yours and with an eager tug, she pulls you along to her bed. Sitting down on it, the young woman runs both hands up to her chest and kneads the curves of her breasts through the thin fabric of her top - then takes the lower edge of it and pulls the piece of cloth up over her head, dropping it on the bed next to her.";
	say "     Now completely topless (not having bothered with a bra for her impressively perky boobs), Sarah grins widely as she lets you have your fill of looking at her. She even runs a finger playfully up the side of her body and onto the right breast, circling a nipple slowly. Then she puts on an impish expression and gives her upper body a little shake - making the soft-furred orbs bounce for you. 'You like that?' she asks in a teasing tone - and in reply, you capture the well-sized breasts and hold them both in your hands, squeezing one after the other in appreciation. You bend your head to bring your lips to female husky's nipples, taking one between your lips and sucking on it before switching to the other and just teasing it with the tip of your tongue, circling the hard little nub of her hard nipple.";
	WaitLineBreak;
	say "     Becoming intensely aware just how hard your cock is getting after a little while of the fun foreplay with Sarah, you eventually decide to move things along, pushing your furry partner to lay back on the bed and climbing on to straddle her chest. With your legs left and right of the half-naked husky, your erect [Cock of Player] shaft is now resting against the warm fur covering Sarah's body. She is panting from all the built-up arousal as she looks up at you, then licks the side of her muzzle in anticipation. Eager to play with the sexy and willing young woman, you put your hands on her breasts again, caressing them with your fingers. Gently pressing the perky boobs together, you create a fur-lined crack between them - just perfect to rub the underside of your cock against. Sarah's warm and soft fur feels amazing on your manhood - and even more so when you angle a bit lower and your cockhead actually slides in between the smooshed-together orbs.";
	say "     Having your rock-hard prick surrounded on all sides by Sarah's glorious boobs is great and you can't help but let out a lusty grunt as you slide yourself deeper into that furry crack on top of her chest. Squishy and warm, it is a little bit like a pussy - but with fur, so incredibly soft and gentle against your sensitive member. Closing your eyes, you thrust forwards to go deeper into the amazing 'hairy pussy', then find yourself surprised as your dickhead pushes through into the open air, cool in comparison to Sarah's fur. Of course - the realization that you pushed out the other end of the boob-crack hits you after a second, closely followed by something wet and warm sliding over the mushroom head of your erection!";
	WaitLineBreak;
	say "     Looking down to the attractive husky woman, you see that Sarah is licking you - smiling broadly as she runs that broad doggie tongue of hers over the head of your erection. The two of you share a moment of intense eye-contact and lust flares up between you. Almost on auto-Polo, this prompts you to pull your cock back out of the warm embrace of her pressed-together breasts, then to thrust forward again hard, creating quite nice sensations for the both of you as your body parts rub against each other. By the time you're hilted against her breasts, balls pressing against the underside of those furry orbs, Sarah is already slurping at your cockhead again...";
	say "     The thrusting, rubbing and licking between you turns into quite a fun session of tit-fucking - for both of you. At some point, the young husky even undoes the button of her jeans and pushes the zipper down a little, allowing her to slide a hand into her panties and rub herself. Looks like Sarah's fears and doubts were unfounded after all, making you feel great at having talked her into this and seeing how much she enjoys herself. And it isn't just her having fun - fucking her breasts feels really great, especially combined with the eager lapping your canine partner is happy to keep doing.";
	WaitLineBreak;
	say "     It doesn't take all that much longer before you can feel a familiar tingling sensation building in your balls. Grunting out that you're getting really close, you see Sarah react quickly - by opening her muzzle wide and pushing out that long tongue of hers. She is just in time, as your lust barrels past the point of no return a heartbeat or two later and a first long spurt of creamy cum blasts out of your cum-slit to hit the roof of her muzzle. Pumping out your load makes your cock throb against its warm and soft surroundings with every new cumshot, heightening your arousal even more. Meanwhile, Sarah eagerly catches every spurt, even chomping into the air in a lightning-quick move for a stray shot once or twice.";
	say "     By the time your intense orgasm ebbs off and the cum shots run out, you're left leaning forward, bracing yourself on the bed as you catch your breath. Sarah meanwhile is still licking her muzzle, happy to slurp up all the little bits of cum that got splashed on it and swallow it down too, like the rest of your load. She grins up at you and says, 'Mmmmh, the sweet-tooth for cum I now have makes this even more fun! And I can't believe how sensitive these breasts are for being touched, and rubbed...' Her breathing comes a bit quickly as Sarah talks and as you look behind you, it becomes obvious why. The young woman is frigging her clit with a paw in an intense manner, really going at it until she bucks under you a moment later, moaning loudly as she reaches her climax.";
	WaitLineBreak;
	say "     This new bit of great fun with your husky companion makes you all the more glad that you helped Sarah - first rescuing her from her captors, then with the problematic urges she developed. She really is a nice person to be with, both because her friendly personality and of course the sexy fun to be had. As you climb off the bed and lean in for a final kiss, Sarah caresses you with a paw and sighs happily, 'I wouldn't mind doing this sometime again...'";
	NPCSexAftermath Sarah receives "OralCock" from Player;

to say SarahSex5: [suggest face-fuck]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to fuck her muzzle. Sarah is somewhat hesitant at first, unsure if she should really just submit and let you satisfy yourself on her - but as you keep whispering suggestive things and slide a hand up to cup her breasts, her tail starts a slow wag and she replies, 'Okay, I'm game. Just... promise me that you'll stop if, if things get too intense for me.' Taking her paw-hand, you kiss it gently and nod to Sarah, then lead your friend over to her bed, gently pushing against her chest to make her sit down.";
	say "     You stroke a finger along the jawline of Sarah's slender muzzle, pulling her head up a little to look at you, then lean forward and kiss her again. After the quick but still steaming hot peck, you whisper for her to lean forward a bit - which the sexy husky does right away, panting slightly as stroke her body a little. Caressing her cheek, you slip a finger into her muzzle, rubbing it back and forth over the warm and wet surface of her broad tongue while imagining how great it will feel on your manhood. Quickly pulling out your already quite hard cock after that, you hold it up for Sarah, grinning as you see her nostrils widen, taking a good huff of your scent.";
	WaitLineBreak;
	say "     Sarah laps at your erection on her own accord, drawing a satisfied grunt from you at the nice feeling. She readily accepts it when you press your thumb against the side of her muzzle after a few moments of just letting her pleasure you, pushing open her maw and letting her floppy tongue hang out to cover her teeth. The husky's tongue is like a warm, wet landing strip for your manhood as you slide it into Sarah's muzzle, the hard shaft rubbing quite nicely against its squishy length. Her long muzzle can't really envelop your man-meat quite as well as a human could, but you don't mind one bit - not with just how flexible that tongue is, wrapping around your cock and even Sarah playfully teasing this or that spot in a very pleasurable fashion.";
	say "     Going slow at first, you bottom out in Sarah's muzzle and just enjoy the feeling of your whole length resting on her tongue and brushing against the ribbed roof of her maw. It feels quite nice and you start sliding back and forth a little, then lean forward to catch the husky woman's eyes and ask if that's okay with her. Sarah wags her tail and slurps at your dick while giving a happy murmur of, 'Tashtes grreat. Mmmmhh!' Encouraged by this, you stroke her head, running your fingers through the husky's fur until you feel the gloriously thick coat on the back of her neck and get a good grip - then you start thrusting in earnest, keeping a tight hold of the aroused young woman.";
	WaitLineBreak;
	say "     Pumping in and out of your canine friend's maw, you face-fuck her in a rapid tempo, really enjoying the warm wet place to thrust into and getting little tingles of arousal from the loud slurps and grunts you hear from Sarah as you push into her throat too. Another advantage of having a husky as a partner is that you can easily see that she enjoys herself - even as you keep both hands on her head and neck and hammer her with ball-slapping intensity - the tail sticking out of Sarah's jeans at the back is an easy indicator of her mood, never wavering in its rapid and happy wagging.";
	say "     Your face-fuck of Sarah quickly builds to greater and greater intensity, really going all-out with the hard thrusts into her throat, your balls slapping regularly against the husky's chin. Once or twice, she gags a little bit at a sudden push forward of your cock, but even then Sarah gives you a squeeze of the buttocks, indicating that you should go on. With all the hot muzzle action, it is no wonder that you soon get really close to blowing your load - something you tell Sarah in an urgent grunt, loosening your grip on her fur to allow her to pull off. But instead of doing that, the young woman just pushes her muzzle further against your crotch and slides that amazing tongue of hers out a little bit more - enough to lap at your balls with the tip.";
	WaitLineBreak;
	say "     Suddenly having your throbbing cum-factories licked by an eager husky is enough to push you over the edge for good and with a loud groan, you start blasting away with your load - pumping the creamy treat right down her throat. Your fingers dig into the thick fur of her neck again, holding tight as the orgasm rocks through your body and more and more cum coats the back of Sarah's maw and is eagerly swallowed. It feels amazing to be in her muzzle like this, fill your furry friend's stomach with a fresh load and have her tongue milking you for even more...";
	say "     Eventually, when the intense orgasm ebbs off and your cum shots run out, you're left leaning forward, bracing yourself on the bed as you catch your breath. Sarah meanwhile still has your manhood in her muzzle, happy to suckle on it to get even the smallest bit of cum still there to get. When your dick soon gets rather sensitive for further touching as it starts to soften, you plead with her to let up on the sucking - and Sarah finally relents, allowing your manhood to slip from her muzzle. She lets herself fall back on the bed and says with a grin, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for cum, eh?' Her breathing comes a bit quickly as Sarah talks and as you look behind you, it becomes obvious why. The young woman is frigging her clit with a paw in an intense manner, really going at it until she bucks under you a moment later, moaning loudly as she reaches her climax.";
	WaitLineBreak;
	say "     Looks like this try at new fun was a full success - both of you have had quite a blast, including breathtaking orgasms, and Sarah has the relief that this sort of thing won't push her over the edge to succumbing to her infection after all. As you climb off the bed and lean in for a final kiss, Sarah caresses you with a paw and sighs happily, 'I wouldn't mind doing this sometime again...'";
	if SarahCured < 6:
		now SarahCured is 6;
	NPCSexAftermath Sarah receives "OralCock" from Player;

to say SarahSex6: [face fuck]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to fuck her muzzle. Sarah's lips draw into a smile as she hears your words and the anthro husky licks the side of your neck happily before she says, 'Sure - this'll be fun!' And with that, she sinks to her knees right where you are, quickly pulling out your quickly hardening manhood. You grin in satisfaction as you her nostrils widen, taking a good huff of your scent.";
	say "     Sarah laps at your erection on her own accord, drawing a satisfied grunt from you at the nice feeling. She readily accepts it when you press your thumb against the side of her muzzle after a few moments of just letting her pleasure you, pushing open her maw and letting her floppy tongue hang out to cover her teeth. The husky's tongue is like a warm, wet landing strip for your manhood as you slide it into Sarah's muzzle, the hard shaft rubbing quite nicely against its squishy length. Her long muzzle can't really envelop your man-meat quite as well as a human could, but you don't mind one bit - not with just how flexible that tongue is, wrapping around your cock and even Sarah playfully teasing this or that spot in a very pleasurable fashion.";
	WaitLineBreak;
	say "     Going slow at first, you bottom out in Sarah's muzzle and just enjoy the feeling of your whole length resting on her tongue and brushing against the ribbed roof of her maw. It feels quite nice and you start sliding back and forth a little, then lean forward to catch the husky woman's eye and wink at her. Sarah wags her tail and slurps at your dick while giving a happy murmur of, 'Tashtes grreat. Mmmmhh!' In turn, you stroke her head, running your fingers through the husky's fur until you feel the gloriously thick coat on the back of her neck and get a good grip - then you start thrusting in earnest, keeping a tight hold of the aroused young woman.";
	say "     Pumping in and out of your canine friend's maw, you face-fuck her in a rapid tempo, really enjoying the warm wet place to thrust into and getting little tingles of arousal from the loud slurps and grunts you hear from Sarah as you push into her throat too. Another advantage of having a husky as a partner is that you can easily see that she enjoys herself - even as you keep both hands on her head and neck and hammer her with ball-slapping intensity - the tail sticking out of Sarah's jeans at the back is an easy indicator of her mood, never wavering in its rapid and happy wagging.";
	WaitLineBreak;
	say "     Your face-fuck of Sarah quickly builds to greater and greater intensity, really going all-out with the hard thrusts into her throat, your balls slapping regularly against the husky's chin. Once or twice, she gags a little bit at a sudden push forward of your cock, but even then Sarah gives you a squeeze of the buttocks, indicating that you should go on. With all the hot muzzle action, it is no wonder that you soon get really close to blowing your load - something you tell Sarah in an urgent grunt, loosening your grip on her fur to allow her to pull off. But instead of doing that, the young woman just pushes her muzzle further against your crotch and slides that amazing tongue of hers out a little bit more - enough to lap at your balls with the tip.";
	say "     Suddenly having your throbbing cum-factories licked by an eager husky is enough to push you over the edge for good and with a loud groan, you start blasting away with your load - pumping the creamy treat right down her throat. Your fingers dig into the thick fur of her neck again, holding tight as the orgasm rocks through your body and more and more cum coats the back of Sarah's maw and is eagerly swallowed. It feels amazing to be in her muzzle like this, fill your furry friend's stomach with a fresh load and have her tongue milking you for even more...";
	WaitLineBreak;
	say "     Eventually, when the intense orgasm ebbs off and your cum shots run out, you're left swaying a little, holding on to the shoulders of the kneeling husky while you catch your breath. Sarah meanwhile still has your manhood in her muzzle, happy to suckle on it to get even the smallest bit of cum still there to get. When your dick soon gets rather sensitive for further touching as it starts to soften, you plead with her to let up on the sucking - and Sarah finally relents, allowing your manhood to slip from her muzzle. She leans back and lowers herself to stretch out on the floor afterwards and you can see that she has had a paw-hand in her pants the whole time, stroking herself. Panting and grinning, she says, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for cum, eh?' Her breathing comes even faster as she proceeds to frig her clit with ever increasing intensity until finally bucking on the floor a few moments later, moaning loudly as she reaches her climax.";
	WaitLineBreak;
	say "     This new bit of great fun with your husky companion makes you all the more glad that you helped Sarah - first rescuing her from her captors, then with the problematic urges she developed. She really is a nice person to be with, both because her friendly personality and of course the sexy fun to be had. As you lean down to help her to her feet-paws again, Sarah caresses you and sighs happily, 'I wouldn't mind doing this sometime again...'";
	NPCSexAftermath Sarah receives "OralCock" from Player;

to say SarahSex7: [suggest pussy grind]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to grind your pussy against her muzzle. Sarah is somewhat hesitant at first, unsure if she should really just submit and let you satisfy yourself on her - but as you keep whispering suggestive things and slide a hand up to cup her breasts, her tail starts a slow wag and she replies, 'Okay, I'm game. Just... promise me that you'll stop if, if things get too intense for me.' Taking her paw-hand, you kiss it gently and nod to Sarah, then lead your friend over to her bed, gently pushing against her chest to make her sit down.";
	say "     You stroke a finger along the jawline of Sarah's slender muzzle, pulling her head up a little to look at you, then lean forward and kiss her again. After the quick but still steaming hot peck, you whisper for her to lean forward a bit - which the sexy husky does right away, panting slightly as stroke her body a little. Caressing her cheek, you slip a finger into her muzzle, rubbing it back and forth over the warm and wet surface of her broad tongue while imagining how great it will feel against your sex. Quickly stripping down yourself, you climb on the bed with Sarah, grinning as you see her nostrils widen at the suddenly quite close pussy, taking a good huff of your scent.";
	WaitLineBreak;
	say "     Sarah laps at your crotch on her own accord, drawing a satisfied moan from you at the very nice feeling. She readily accepts it when you put your hand on her muzzle and pull it a little but further up, making her tongue brush over your clit. The husky's tongue is like a warm, wet caress against one of your most sensitive spots and being a woman herself, she knows to keep on licking it while you slide your hands around to the back of her head, taking hold to pull her closer and grind your crotch against her muzzle. Going slow at first, you rub your crotch against her and just enjoy the feeling of that soft wet nose and even wetter tongue as it touches your folds. It feels quite nice and you start sliding her muzzle up and down a little, then remember to be mindful of Sarah's fears and pause for a moment.";
	say "     Catching the husky woman's eyes, you lean forward and ask if this is alright with her - Sarah just wags her tail and slurps at your pussy while giving a happy murmur of, 'Tashtes grreat. Mmmmhh!' Encouraged by this, you stroke her head, running your fingers through the husky's fur until you feel the gloriously thick coat on the back of her neck and get a good grip - then you start grinding against her in earnest, keeping a tight hold of the aroused young woman. Rubbing up against your canine friend's maw and pushing her nose into your pubes, you face-fuck her in a rapid tempo, really enjoying the soft brush of her tongue against your female parts and the little tingles of arousal from the loud slurps and grunts you hear from Sarah. Another advantage of having a husky as a partner is that you can easily see that she enjoys herself - even as you keep both hands on her head and neck and use her muzzle - the tail sticking out of Sarah's jeans at the back is an easy indicator of her mood, never wavering in its rapid and happy wagging.";
	WaitLineBreak;
	say "     Your pussy-grind against Sarah quickly builds to greater and greater intensity, really going all-out with you rubbing ever harder and faster. Once or twice, she snorts for air as you hold her too tight, but even then Sarah gives you a squeeze of the buttocks, indicating that you should go on. With all the hot muzzle action, it is no wonder that you soon get really close to reaching an orgasm - something you call out to Sarah in an urgent gasp, loosening your grip on her fur to allow her to pull away. But instead of doing that, the young woman just pushes her muzzle right against your sex, nudging your nether lips apart with her nose, then licking up to your clit and concentrating on that.";
	say "     The single-minded focus of your eager husky friend is enough to push you over the edge for a breathtaking orgasm in mere moments, making your knees go weak as it crashes over you. Having to brace yourself against the bed leaning over Sarah, you shiver and tremble as she licks your pussy, slurping up femcum and keeping the good feelings coming for a long, long time. You don't know how long the young woman keeps you in that blissful state, but when the intense orgasm eventually ebbs off, you're left panting and weak as a kitten - sliding sideways off Sarah to fall on the bed and gasp for breath. The husky lets herself fall back on the bed too and turns her head to look at you, saying with a grin, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for femcum, eh?' Sarah's breathing comes a bit quickly as she talks and as you look down, it becomes obvious why. The young woman is frigging her clit with a paw in an intense manner, really going at it until she bucks on the bed a moment later, moaning loudly as she joins you in climax.";
	WaitLineBreak;
	say "     Looks like this try at new fun was a full success - both of you have had quite a blast, including breathtaking orgasms, and Sarah has the relief that this sort of thing won't push her over the edge to succumbing to her infection after all. As you lean in for a final kiss before climbing off the bed, Sarah caresses you with a paw and sighs happily, 'I wouldn't mind doing this sometime again...'";
	if SarahCured < 6:
		now SarahCured is 6;
	now lastfuck of Sarah is turns;

to say SarahSex8: [pussy grind]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to grind your pussy against her muzzle. Sarah's lips draw into a smile as she hears your words and the anthro husky licks the side of your neck happily before she says, 'Sure - this'll be fun!' And with that, she sinks to her knees right where you are, quickly pulling aside your clothes and revealing your crotch. You can't help but grin as you see her nostrils widen at the suddenly quite close pussy, taking a good huff of your scent.";
	say "     Sarah laps at your crotch on her own accord, drawing a satisfied moan from you at the very nice feeling. She readily accepts it when you put your hand on her muzzle and pull it a little but further up, making her tongue brush over your clit. The husky's tongue is like a warm, wet caress against one of your most sensitive spots and being a woman herself, she knows to keep on licking it while you slide your hands around to the back of her head, taking hold to pull her closer and grind your crotch against her muzzle. Going slow at first, you rub your crotch against her and just enjoy the feeling of that soft wet nose and even wetter tongue as it touches your folds. It feels quite nice and you start sliding her muzzle up and down a little, then remember to be mindful of Sarah and pause for a moment.";
	WaitLineBreak;
	say "     Catching the husky woman's eyes, you lean forward and ask if she enjoys herself - to which Sarah just wags her tail and slurps at your pussy while giving a happy murmur of, 'Tashtes grreat. Mmmmhh!' Encouraged by this, you stroke her head, running your fingers through the husky's fur until you feel the gloriously thick coat on the back of her neck and get a good grip - then you start grinding against her in earnest, keeping a tight hold of the aroused young woman. Rubbing up against your canine friend's maw and pushing her nose into your pubes, you face-fuck her in a rapid tempo, really enjoying the soft brush of her tongue against your female parts and the little tingles of arousal from the loud slurps and grunts you hear from Sarah. Another advantage of having a husky as a partner is that you can easily see that she enjoys herself - even as you keep both hands on her head and neck and use her muzzle - the tail sticking out of Sarah's jeans at the back is an easy indicator of her mood, never wavering in its rapid and happy wagging.";
	say "     Your pussy-grind against Sarah quickly builds to greater and greater intensity, really going all-out with you rubbing ever harder and faster. Once or twice, she snorts for air as you hold her too tight, but even then Sarah gives you a squeeze of the buttocks, indicating that you should go on. With all the hot muzzle action, it is no wonder that you soon get really close to reaching an orgasm - something you call out to Sarah in an urgent gasp, loosening your grip on her fur to allow her to pull away. But instead of doing that, the young woman just pushes her muzzle right against your sex, nudging your nether lips apart with her nose, then licking up to your clit and concentrating on that.";
	WaitLineBreak;
	say "     The single-minded focus of your eager husky friend is enough to push you over the edge for a breathtaking orgasm in mere moments, making your knees go weak as it crashes over you. Having to brace yourself against the bed leaning over Sarah, you shiver and tremble as she licks your pussy, slurping up femcum and keeping the good feelings coming for a long, long time. You don't know how long the young woman keeps you in that blissful state, but when the intense orgasm eventually ebbs off, you're left panting and weak as a kitten - sliding sideways off Sarah to fall on the bed and gasp for breath. The husky lets herself fall back on the bed too and turns her head to look at you, saying with a grin, 'That was a really neat treat. Guess it shouldn't come as a surprise that as a husky I got a sweet-tooth for femcum, eh?' Sarah's breathing comes a bit quickly as she talks and as you look down, it becomes obvious why. The young woman is frigging her clit with a paw in an intense manner, really going at it until she bucks on the bed a moment later, moaning loudly as she joins you in climax.";
	WaitLineBreak;
	say "     This new bit of great fun with your husky companion makes you all the more glad that you helped Sarah - first rescuing her from her captors, then with the problematic urges she developed. She really is a nice person to be with, both because her friendly personality and of course the sexy fun to be had. As you lean in for a final kiss before climbing off the bed, Sarah caresses you with a paw and sighs happily, 'I wouldn't mind doing this sometime again...'";
	now lastfuck of Sarah is turns;

to say SarahSex9: [ask for sex]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to fuck her. She lets out a soft sigh as she hears you say it, then gets her hand-paws between the two of you as she steps away a little. 'I - um... we can't do that,' she says in a sad tone, shaking her head.";
	say "     'I hope you'll understand,' Sarah explains in a contrite tone, lowering her hands to cover her lower belly. Then she goes on to say, 'When all of this began... I was on shift in the hospital. One moment, everything is calm and then we got swamped with all sorts of people stumbling in the doors, sporting all sorts of hurts - claw-marks, bites and so on. And in the mix, there were a few women - obviously pregnant ones. One of them waddled up to me with a pretty dazed expression on her face and said she wanted to be checked out. See that the baby was okay.' By this time, Sarah is pacing unruly in front of you, clenching her paws into fists, then forcing herself to relax again.";
	WaitLineBreak;
	say "     'It was total chaos,' the medical student continues, 'the whole hospital was swamped with people and we had to get everyone checked out. So... I took her - that pregnant woman, her name was Olivia - behind a screen to get the basic things out of the way. Put on the stethoscope and listened to her heartbeat - steady, if a bit rapid - then moving it down to her belly... oh god, it was so big. Really bulging. I - I listened in and heard two heartbeats, strong and regular. Told her about it and she was all 'Oh it is twins? How wonderful!' A bit surprised that she didn't know, I proceeded to ask how many months along she was, and... she said hours, not months. That she had sex with a really sexy guy on the backseat of her car - two hours before!'";
	say "     Sarah closes her panting muzzle and swallows nervously, then adds, 'I saw them move then - in her belly. Move and grow visibly, stretching Olivia even more. Moments later her water broke. I helped her lie on the ground and was there for the birth, of... two half-human tiger cubs. She grabbed them right from my arms as I was still staring at the little things and brought them to her breasts to suckle. I told her they weren't human, baffled how such a thing might happen - but she didn't even register what I said. Just happily let them drink at her breasts and murmured that she couldn't wait for her next litter.' Shaking her head as if to throw off the memory, Sarah wipes her brow with the back of a paw-hand.";
	WaitLineBreak;
	say "     'I - I came out behind the divider in a daze after that - and stumbled into the pandemonium that was the emergency check-in right after. Apparently some of the hurt people in the first wave transformed while I was... busy, or already bestial infectees came in after. No matter which - there was a gangbang going on right in front of my eyes! Lots of infected in all sorts of shapes were humping away with our patients, my colleagues, anyone really! I remember a cat-guy with cream-colored fur thrusting into a nurse friend of mine and she actually screamed for him to take her harder. And ran to doctor Miller to get help, but when I touched his shoulder, he... turned around and he had breasts and a pussy, cradling his pregnant belly and talking to it - to his babies. That they would be proud hunters and find their own mates soon after.";
	say "     Sarah shudders visibly and sobs out, 'After that, I just couldn't... couldn't watch any more of it. I ran. Ran out of the hospital and into the streets. I managed to stay free for a while but eventually... you know where you found me.' Turning to look over to you again, she reaches out and gives your shoulder a squeeze, then tries to calm herself and says in a determined tone of voices, 'I like being with you. And... doing things. But I won't become... that. A fast-cooking incubator for more and more babies of some sort or other. Controlled by hormones that make me love and care for something, no matter what species it is.' A bit disappointed that you couldn't get Sarah to have actual sex with you, but nevertheless replying that you of course understand her reasons, you walk away and leave her alone for now.";
	if SarahCured < 7:
		now SarahCured is 7;

to say SarahSex10: [let her ride dick (anal)]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to have sex. Eager to make good of her offer, the anthro canine's tail starts wagging wildly and Sarah gives you a very happy smile before replying with a giggle, 'Come on then, stud.' Sliding her hand-paw into yours, your husky friend guides you over to the next bed, then gestures for you to lay down.";
	say "     After quickly slipping out of your clothes, you climb on the mattress and stretch out on it, then brace yourself on an elbow, watching Sarah start a teasing strip-show. Her jeans are the first to go, with the sexy husky popping their button, then slowly sliding them down those long legs - all the while bending over to show off her perky behind. Now only dressed in some black panties and a shirt tightly stretched over her shapely breasts, the medical student gives you a playful grin and wags her tail, then slowly starts pulling up her shirt. Bit by bit, she reveals the flat abs and supple curves of her body, giving you a sudden flash of her breasts before pulling the fabric down again, then saunters ever closer to the bed. As Sarah arrives next to it, she suddenly pulls her shirt off and playfully tosses it to you.";
	WaitLineBreak;
	say "     Catching the garment from the air, you bring it to your nose and breathe in deeply - it smells just like Sarah, in a fresh, furry way. With only a skimpy bit of fabric left covering her crotch, the aroused husky climbs onto the bed with you and reaches for your crotch. Slender fingers take hold of your manhood, stroking and touching you to tease it to full hardness. Then the pretty canine leans over and runs her floppy tongue up the shaft of your cock, making you grunt in arousal and lightly buck up your hips. 'Easy there tiger, I'm calling the shots right now,' Sarah tells you, licking over your cockhead with exquisite slowness and making you groan. The young woman laughs merrily at your antics, then proceeds to stroke your shaft with a little more energy, pumping her paw up and down on the stiff rod.";
	say "     Enjoying for a little while how easily she can control you with your 'joy-stick', Sarah eventually gets to her feet, moving to stand over you on the bed. She looks down with a beaming grin, shaking her chest a little to make those boobs bounce, then starts pushing her panties down and giving you a glimpse at her crotch. Between those gray and white furred thighs lies her dripping pussy, the fur around it already matted with her juices, and a trembling pucker waiting for your [Cock of Player] shaft. Pulling off the panties and letting them drop to land on your chest, she gyrates her hips a bit more to give you a show, then lowers herself to straddle your hips.";
	WaitLineBreak;
	say "     With the soft hairs of Sarah's wagging tail already brushing against the head of your cock more often than not, you ache to get into her, but Sarah takes her time to revel in the moment. Bracing herself on the bed with both paw-hands, she lowers her upper body over yours, lapping a line from your pecs to your neck, all the while taking a good long huff of your scent. 'This husky nose of mine is something else... you wouldn't believe how wet it makes me to just smell a horny male,' your canine companion tells you in a teasing tone, then rubs a paw-hand against her sex and proceeds to slather your erection in her juices with a few rapid jerks. You see and hear her panting quickly, making it clear that you're not the only one getting quite wound-up from this foreplay.";
	say "     Then finally, it is time - with one hand on your shaft, Sarah holds it up to ease herself back against. She gives a little bark in the moment you pop past the sphincter of her rear end, followed by a pleased sigh as she feels you inside her. 'Mmmhhh - so good,' Sarah sighs as she leans back a little more, then brings a paw to her crotch and rubs her clit. Wanting to please your sexy partner some more, you do move your hands to stroke the sides of her thighs, caressing her legs in sensual strokes while she gets used to your dick in her ass. 'Thank god for college experimentation, hah. Had this one cute guy in my physiology class who... really liked anal, and he got me to try too. Wanna see what I learned from that?' Sarah says in a playful, almost casual tone - then suddenly flexes her inner muscles, making you groan in pleasure.";
	WaitLineBreak;
	say "     'Time for this cowgirl to ride her bucking bronco,' Sarah teases you some more, running a paw-hand down your front and bracing against your chest as she starts to rock back and forth, sliding up and down on your pole. With the husky literally asking for it, you don't hold back anymore and hump your hips upwards to meet her buttocks - making both of you groan in arousal as you bottom out in her. What follows is a wild bout of Sarah fucking herself on your erect cock, all the while you work hard at driving it into her as hard and deep as you can. It feels amazing to have this sexy woman riding your manhood, showing off her clear experience with anal sex. Sarah's warm and tight hole grips you like a vise as she slides up and down your hard length and she never falters in rubbing herself while taking your dick.";
	say "     Between your sexy and eager partner and the arousing foreplay, it doesn't take all that long before you feel the urge to cum rise inside you, and with a grunt, you tell Sarah just that. She just smiles down at you, then speeds up her bouncing all the more and really works your dick with her inner muscles. It feels almost like someone is jerking you off - inside her, all the while she keeps fucking herself on your cock. Just a few heartbeats later, you can't hold back anymore and erupt into her, painting Sarah's inner walls in creamy cum. Pushed to new heights of arousal by feeling your throbbing member inside her, the husky isn't far behind either and soon, Sarah gasps loudly and starts dripping femcum all over your crotch.";
	WaitLineBreak;
	say "     Eventually, when the intense orgasm ebbs off and your cum shots run out, you're left exhausted on the bed, trying to catch your breath. Sarah meanwhile still has your manhood in her ass, humping back against it and churning up all the cum you've blasted into her. When your dick soon gets rather sensitive for further touching as it starts to soften, you plead with her to let up the grinding - and Sarah finally relents, relaxing her muscles and allowing your manhood to slip out. Shifting forward a little to straddle your abs, she says with a grin, 'You've been an amazing bull to ride, sexy. Thanks for showing me such a nice time.'";
	say "     Leaning in over you, the beautiful husky gives you a happy smile, followed by a deep kiss. Tongue-wrestling and making out with Sarah, you have a great time with the anthro husky - though rolling around on a bed with her doesn't exactly allow you the rest you need after the exertion of the orgasm earlier. In the end, she gives you a last peck on the lips, then stands up and saunters away - leaving you with the image of her perky behind and wagging tail, complete with a small trickle of cum running down the inside of her thighs.";
	NPCSexAftermath Sarah receives "AssFuck" from Player;

to say SarahSex11: [fuck doggy style (anal)]
	say "     Sliding an arm around the female husky, you pull Sarah closer to you and soon meet her lips with yours. The two of you share an eager kiss, tongues intermingling and breathing the same air while your hands wander over her shapely form, holding and touching the pretty and smart young woman. Eventually pulling back to allow both of you to catch your breaths, you smile at Sarah and then lean in to whisper in her pointy ear that you want to take her ass - from behind. The anthro canine's tail starts wagging wildly in her eagerness to make good of her offer of anal sex, and she replies with a giggle, 'Doggy style with your husky friend, eh? Now who could have seen that coming...' Sliding her hand-paw into yours, the young woman happily guides you over to the next bed, then gestures for you to sit down for a moment.";
	say "     After quickly slipping out of your clothes, you take a seat on the edge of the mattress - and soon get into the pleasure of having your very own private strip show being performed by the aroused husky. Sarah's jeans are the first to go, with the sexy husky popping their button, then slowly sliding them down those long legs - all the while bending over to show off her perky behind. Now only dressed in some black panties and a shirt tightly stretched over her shapely breasts, the medical student gives you a playful grin and wags her tail, then slowly starts pulling up her shirt. Bit by bit, she reveals the flat abs and supple curves of her body, giving you a sudden flash of her breasts before pulling the fabric down again, then saunters ever closer to the bed. As Sarah arrives next to it, she suddenly pulls her shirt off and playfully tosses it to you.";
	WaitLineBreak;
	say "     Catching the garment from the air, you bring it to your nose and breathe in deeply - it smells just like Sarah, in a fresh, furry way. With only a skimpy bit of fabric left covering her crotch, the aroused husky leans forward to kiss you. While you make out and tongue-wrestle with Sarah for a moment, your hands move over her almost naked body, stroking and caressing until they reach her panties. The young woman moans into your mouth as you slip two fingers under the thin fabric, already a little damp from her excitement, then dip your digits into her honeypot, feeling for and spreading her pussy lips. She literally humps her hips against your hand, really enjoying the teasing touch and moaning, 'Oh god, I need you to fuck me. Right. Now!'";
	say "     With that said, Sarah quickly shoves the panties down, letting them drop to the floor between her slender paws and baring everything for you. Then she climbs on the bed on all fours, tail raised high and presenting her ass to be fucked. Getting into position behind her, you stroke your fingers over her pucker and watch it tremble at the touch. Looks like she's pretty ready and eager to take your dick - but some lube would surely help... so you move a hand further down to rub her pussy, getting its fingers nice and slick with female juices. The stuff works pretty well to lube yourself up with and soon, you hold your slick and shiny erection up to Sarah's back door. Then finally, it is time - with one hand on your shaft, the other gripping the base of Sarah's tail, you ease your dickhead against her pucker. She gives a little bark in the moment you pop past the ring muscle, followed by a pleased sigh as she feels you inside her.";
	WaitLineBreak;
	say "     'Mmmhhh - so good,' Sarah sighs as she pushes her ass towards you a little more, then brings one paw to her crotch and rubs her clit. Wanting to please your sexy partner some more, you do move your hands to stroke the sides of her chest before reaching around to caress her breasts. 'Thank god for college experimentation, hah. Had this one cute guy in my physiology class who... really liked anal, and he got me to try too. Wanna see what I learned from that?' Sarah says in a playful, almost casual tone - then suddenly flexes her inner muscles, making you groan in pleasure. 'Take me, stud!' Sarah groans out for more.";
	say "     With the husky literally asking for it, you don't hold back one more second and start to hump your hips forward to meet her buttocks - making both of you groan in arousal as you bottom out in her. What follows is a wild bout of you pounding into Sarah's butt with your erect cock, all the while she has a hand between her thighs rubbing herself. It feels absolutely amazing to have your way with this smart and sexy woman - even more so because she clearly has experience and affinity to anal sex. Sarah's warm and tight hole grips you like a vise as you slide your hard length in and out she never falters in rubbing herself while taking your dick.";
	WaitLineBreak;
	say "     Between your sexy and eager partner and the arousing foreplay, it doesn't take all that long before you feel the urge to cum rise inside you, and with a grunt, you tell Sarah just that. She groans lustfully in acknowledgment, then calls out, 'Breed my furry ass, bad boy. I wanna feel it inside me.' Just a few heartbeats later, you can't hold back anymore and erupt into her, painting Sarah's inner walls in creamy cum. Pushed to new heights of arousal by feeling your throbbing member inside her, the husky isn't far behind either and soon, Sarah gasps loudly and starts dripping femcum all over the bedding she is kneeling on.";
	say "     Eventually, when the intense orgasm ebbs off and your cum shots run out, you're left leaning exhausted over Sarah, trying to catch your breath. Sarah meanwhile still has your manhood in her ass, humping back against it and churning up all the cum you've blasted into her. When your dick soon gets rather sensitive for further touching as it starts to soften, you plead with her to let up the grinding - and Sarah finally relents, relaxing her muscles and allowing your manhood to slip out. Sinking down on the bed now that she isn't impaled on cock anymore, she rolls over halfway and looks at you. 'That was an amazing time we just had, sexy! Thank you so much for everything.'";
	WaitLineBreak;
	say "     As you lean in over her, the beautiful husky gives you a happy smile, followed by a deep kiss. Tongue-wrestling and making out with Sarah, you have a great time with the anthro husky - though rolling around on a bed with her doesn't exactly allow you the rest you need after the exertion of the orgasm earlier. In the end, the two of you give each other one last peck on the lips, then you doze off pretty much simultaneously.";
	NPCSexAftermath Sarah receives "AssFuck" from Player;

SarahPregnant is a number that varies.
SarahPups is a number that varies.

To say SarahPupstate:
	let otherhuskies be 0;
	if Carl is booked:
		increase otherhuskies by 1;
	if Amy is booked:
		increase otherhuskies by 1;
	if Colleen is bunkered:
		increase otherhuskies by 1;
	if SarahPups > 11:
		say "Sarah is surrounded by her large brood of [SarahPups] puppies, several of them vying for her attention at any one second in time. Fortunately this seems to make your little husky breeder happier than ever as she smiles at your and her puppies and rubs her belly in anticipation of many more litters to come.";
	else if SarahPups > 0:
		say "Sarah is happily playing with your [SarahPups] husky puppies, keeping them happy and occupied while you explore the city, although from the looks the slutty husky is giving you even as she plays with the pups, she is already anticipating the next litter to come...";
	else if SarahSlut > 0:
		say "She seems slightly lonely [if otherhuskies is 0]as the only husky around[else if otherhuskies is 1]when her other husky friend isn't around[else]when her other husky friends aren't around[end if], making you want to comfort her.";

An everyturn rule:
	if Sarah is in the bunker and player is in the bunker and SarahCured is 7:
		say "     As you wait around in the bunker, ";
		say "[SarahOffersAnal]";
	if SarahPregnant is 1:
		say "     [bold type]You have a strange feeling in your body, as if you somehow just know that more of your offspring have entered this world. Maybe you should go back and check on Sarah in the bunker... and make sure she is filled with your fertile seed again.[roman type]";
		increase SarahPups by a random number between 1 and 4;
		increase score by a random number between 5 and 10;
		if "Proud Parent" is listed in feats of Player:
			increase SarahPups by a random number between 0 and 1;
			increase score by a random number between 0 and 2;
		else if SarahPups > 11:
			say "Having sired so many puppies, you feel buoyed with happiness and a greater urge to get through this ordeal to protect them.";
			say "You and Sarah have earned the [']Proud Parent['] feat, making her more fertile and you more eager to protect your growing kennel.";
			FeatGain "Proud Parent";
			increase Morale of Player by 5;
			increase score by 12;
		now SarahPregnant is 0;
	if SarahPregnant > 1:
		decrease SarahPregnant by 1;
		if "Proud Parent" is listed in feats of Player and a random chance of 1 in 3 succeeds and SarahPregnant > 1:
			decrease SarahPregnant by 1;

after going down from Grey Abbey Library while (Sarah is in Bunker and SarahCured is 7):
	if debugactive is 1:
		say "     DEBUG: SARAH OFFERS ANAL - SaraCured: [SarahCured][line break]";
	say "     As you enter the bunker, ";
	say "[SarahOffersAnal]";

to say SarahOffersAnal:
	project the Figure of Sarah_clothed_icon;
	say "you find yourself suddenly approached by Sarah, who bears an apologetic expression and wags her tail softly as she walks up to you. 'I wanted to talk to you. Sorry if I... squashed your idea of sex a bit too... energetically. With the story and all. It is just something that kinda freaks me out. Getting pregnant, here and now.' Stopping herself from rambling again, the young woman throws her arms around you and gives a tight hug, then goes on to say, 'It's not your fault that things are like this, and I really like being with you - doing stuff together too. So... I hope you can forget me being a buzz-kill earlier. You know - there is another option that I know for a fact can't get me pregnant...'";
	say "     Taking your hands in hers, she pulls them down behind her and places them on her perky behind. As her by now more quickly wagging tail brushes against your fingers, she says, 'I think you get my drift, don't you? Just... putting it out there that we can still do stuff. No need to treat me like a wallflower just because of certain hangups.' And with that, the young woman slips out of your grasp and walks back over to her bunk - all the while wiggling her ass at you a few times and demonstratively bending over to pick something up from the ground at the end.";
	now SarahCured is 8;

Section 4 - Library Encounter Events

Section 4.1 - Shower Events

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Sarah_Shower_Thanks"	Sarah_Shower_Thanks	"[EventConditions_Sarah_Shower_Thanks]"	Bunker	2500	2	100

to say EventConditions_Sarah_Shower_Thanks:
	if (Sarah is in Bunker and SarahCured > 3 and SarahShower is 0 and library computer is powered): [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Shower_Thanks	"Sarah_Shower_Thanks"

Sarah_Shower_Thanks is a situation.
ResolveFunction of Sarah_Shower_Thanks is "[ResolveEvent Sarah_Shower_Thanks]".
Sarea of Sarah_Shower_Thanks is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Shower_Thanks:
	if debugactive is 1:
		say "     DEBUG: Sarah thanks the player for the showers working - SaraCured: [SarahCured][line break]";
	project the Figure of Sarah_clothed_icon;
	say "     As you enter the central area of the bunker, Sarah the husky is already waiting there for you, a big smile on her face. 'Hey there,' she says happily and walks up to you, then throws her arms around you and gives you a big hug. 'I wanted to thank you - a lot - for getting the power going down here. The showers are working again!' The last words are said in a happy squeal, after which she does her best to calm herself down again. 'Ooh, just to feel clean again and not so hot and sticky...' The young woman sighs with contentment and gives you another squeeze, then wanders back over to her own bed to sit down on it.";
	now SarahShower is 1;
	now Sarah_Shower_Thanks is resolved;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
4	"Sarah_Showering"	Sarah_Showering	"[EventConditions_Sarah_Showering]"	Bunker	2500	8	50

to say EventConditions_Sarah_Showering:
	if (Sarah is in Bunker and SarahCured > 3 and SarahShower > 0 and library computer is powered and (lastShowerUse - turns > 4)): [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Showering	"Sarah_Showering"

Sarah_Showering is a situation.
ResolveFunction of Sarah_Showering is "[ResolveEvent Sarah_Showering]".
Sarea of Sarah_Showering is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Showering:
	if debugactive is 1:
		say "     DEBUG: Shower Scene with Sarah - SaraCured: [SarahCured][line break]";
	say "     As you enter the communal shower-area, you see a small pile of clothing (a pair of jeans, a red shirt and no-frills black panties) and a towel sitting on the bench at the entrance. The spray of water is audible from the actual shower cabin through a door. Looks like someone is making use of the running water, now that you've turned the power back on...";
	say "     [bold type]Do you want to have a look at who it may be?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - A quick glance shouldn't be a problem.";
	say "     ([link]N[as]n[end link]) - Nah, peeping on someone showering isn't nice.";
	if Player consents:
		LineBreak;
		project the Figure of Sarah_naked_icon;
		say "     Glancing around the corner into the actual shower room, you see the gray and white furred shape of Sarah standing under one of the big spraying nozzles. Her fur is thoroughly wet and plastered to the slender canine's body, leaving absolutely nothing to the imagination. Reveling in the pleasure to get clean, the young woman has her eyes closed and head leaned back, letting her hands wander over her own body as she rubs in a generous helping of shampoo. Gaze drawn by Sarah's naked form, you enjoy the show for a moment, then eventually pull back from peeking around the corner. Best not to get caught, peeking at her like this...";
	else:
		LineBreak;
		say "     Shrugging off the temptation to throw a glance into the shower room itself, you wander out into the bunker again. A little while later, Sarah emerges from the shower section, fully dressed and with her head-fur still somewhat wet. She looks fairly relaxed and happy - it's amazing how simple pleasures like feeling clean and fresh can affect someone's mood.";

Section 4.2 - Carl

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Carl_Encounter1"	Sarah_Carl_Encounter1	"[EventConditions_Sarah_Carl_Encounter1]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Carl_Encounter1"	Sarah_Carl_Encounter1	"[EventConditions_Sarah_Carl_Encounter1]"	Grey Abbey Library	2500	2	100

to say EventConditions_Sarah_Carl_Encounter1:
	if (Sarah is in Bunker and Carl is in Grey Abbey 2F and CarlSarahInteraction is 0 and SarahCured > 3) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Carl_Encounter1	"Sarah_Carl_Encounter1"

Sarah_Carl_Encounter1 is a situation.
ResolveFunction of Sarah_Carl_Encounter1 is "[ResolveEvent Sarah_Carl_Encounter1]".
Sarea of Sarah_Carl_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Carl_Encounter1:
	project the Figure of Sarah_clothed_icon;
	if debugactive is 1:
		say "     DEBUG -> SARAH & CARL MEET - CarlSarahInteraction: [CarlSarahInteraction] <- DEBUG[line break]";
	say "[LibraryEntry_NavOrWalk]";
	say "your arrival coincides with someone opening the door to the subterranean bunker below from the inside. A flash of white-furred paw-hands lets you guess it is Sarah even before you see the young woman fully, stepping into the open library in her jeans and t-shirt. She notices you in turn and gives a friendly smile and a little wave, then walks over to a nearby bookshelf and starts browsing. Looks like she got bored down in the bunker and needs something new to read. Closing the entrance door securely, you set down your pack and mentally go through what you want to do next - during which you glimpse Carl at the edge of your vision, jogging through the library as part of his exercise regime.";
	say "     A moment later, you hear the canine soldier say, 'Oh hey there. Nice to meet such a pretty - OOFFHH!' Following a choked whimper by the friendly husky and a loud thump, Sarah runs out between the bookshelves, panting breathlessly and in fright. 'There's a stranger back there, a husky man and he - he,' she falters a little at your baffled expression, then hurries after you as you go to check out the row she just came from. Carl is lying on the ground there, groaning and holding his crotch. 'Nggghhhh. You got... great aim... lady,' he gets out between clenched teeth, still in too much pain to do anything but lie in a curled ball.";
	WaitLineBreak;
	say "     'Uhm...' Sarah stammers, terribly embarrassed as you introduce them to one another. This was clearly the first time they met - due to a little oversight on your end of not actually telling either of them the other existed. Thus the transformed medical student... overreacted to seeing an unknown male husky up close, coming around the corner all of a sudden. She kneels down next to Carl and shyly places a paw on his arm, squeezing it as she says, 'I'm really sorry for hitting you - especially... down there.' Carl groans in reply but nods, showing that he accepts her apology. The anthro canine waves Sarah and yourself off as you ask if you can do anything to help after that - looks like he just wants to be alone in his pain for a while now.";
	say "     Taking Sarah by the arm, you lead her away from the curled-up soldier, quietly giving her a short summary of Carl's story - being a member of the military and then getting betrayed and transformed by his former squad leader, fleeing and finally finding refuge with you. As you explain that he actually holds watch most of the time up by the windows on the upper floor, making sure that no hostile creature can move in on the library without being spotted, your husky companion grimaces in embarrassment at having hurt a good man who is protecting her. 'I'll have to apologize to him once Carl has had some time to... get over the pain,' she says in almost a whisper, then quickly grabs a more or less random book and hurries downstairs. Seems like she wants to make sure she doesn't run into Carl again too soon.";
	now CarlSarahInteraction is 1;
	now lastCarlSarahInteraction is turns;
	now Sarah_Carl_Encounter1 is resolved;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Carl_Encounter2"	Sarah_Carl_Encounter2	"[EventConditions_Sarah_Carl_Encounter2]"	Grey Abbey 2F	2500	2	100

to say EventConditions_Sarah_Carl_Encounter2:
	if (Sarah is in Bunker and Carl is in Grey Abbey 2F and CarlSarahInteraction > 0 and CarlSarahInteraction < 3 and (lastCarlSarahInteraction - turns > 2)) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Carl_Encounter2	"Sarah_Carl_Encounter2"

Sarah_Carl_Encounter2 is a situation.
ResolveFunction of Sarah_Carl_Encounter2 is "[ResolveEvent Sarah_Carl_Encounter2]".
Sarea of Sarah_Carl_Encounter2 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Carl_Encounter2:
	if CarlSarahInteraction is 1:
		if debugactive is 1:
			say "     DEBUG -> CARL & SARAH SPEND TIME TOGETHER 1 - CarlSarahInteraction: [CarlSarahInteraction] <- DEBUG[line break]";
		say "[SarahCarlScene1]";
	else if CarlSarahInteraction is 2:
		if debugactive is 1:
			say "     DEBUG -> CARL & SARAH SPEND TIME TOGETHER 2 - CarlSarahInteraction: [CarlSarahInteraction] <- DEBUG[line break]";
		say "[SarahCarlScene2]";
		now Sarah_Carl_Encounter2 is resolved;
	now lastCarlSarahInteraction is turns;

to say SarahCarlScene1:
	project the Figure of Carl_face_icon;
	say "     As you walk up the stairs to the upper floor of the library, your attention is drawn by a pair of wagging tails over near the street-side windows. Next to the little camp that Carl has made for himself here, the husky soldier and Sarah are standing at an open window, leaning on the windowsill as they have a friendly chat with one another. Of course, this doesn't mean Carl isn't also keeping an eye out for trespassers - he sweeps the street with his gaze regularly, in between trading comments with Sarah. The two of them seem to have gotten over their somewhat tumultuous first meeting and now are on friendly terms, chatting away.";
	say "     Straining your ears a bit, you overhear some words that tell you they're talking about his time in the military boot camp and her studies at university. They look pretty content and happy to just talk to another transformed (yet sane) human, so you decide against walking up and joining the conversation. Best to just let them have this peaceful moment...";
	now CarlSarahInteraction is 2; [talked]

to say SarahCarlScene2:
	project the Figure of Carl_face_icon;
	say "     As you walk up the stairs to the upper floor of the library, your attention is drawn by a pair of wagging tails over near the street-side windows. Carl and Sarah are sitting at a table of the study area over there, and from the looks of it, they're having fun playing poker. The table between them holds the stacks of cards as well as several piles of colorful chocolate-covered nuts. Looks like Carl went out scavenging sometime and found a bag or two of them. Your anthro husky friends are using the candy as play-money now, betting some and from time to time throwing one in their mouths.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Join them for a round or three.";
	say "     ([link]N[as]n[end link]) - Let them play their game in peace.";
	if Player consents:
		say "     Walking up to the two of them, you are readily welcomed by Carl and Sarah and join them at the poker table. The three of you play for a while, having a nice and relaxing time while eating some candy on the side.";
		SanBoost 10;
		PlayerEat 5;
	else:
		say "     Not wanting to disturb their play, you turn your attention to other things. Still, it is good to see that the people you saved are getting along nicely.";
		SanBoost 5;
	now CarlSarahInteraction is 3; [played poker]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Carl_Encounter3"	Sarah_Carl_Encounter3	"[EventConditions_Sarah_Carl_Encounter3]"	Grey Abbey 2F	2500	2	100

to say EventConditions_Sarah_Carl_Encounter3:
	if (Sarah is in Bunker and Carl is in Grey Abbey 2F and CarlSarahInteraction > 2 and CarlSarahSex is 0 and SarahCured > 4 and (lastCarlSarahInteraction - turns > 2)) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Carl_Encounter3	"Sarah_Carl_Encounter3"

Sarah_Carl_Encounter3 is a situation.
ResolveFunction of Sarah_Carl_Encounter3 is "[ResolveEvent Sarah_Carl_Encounter3]".
Sarea of Sarah_Carl_Encounter3 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Carl_Encounter3:
	if debugactive is 1:
		say "     DEBUG -> SARAH TALKS TO THE PLAYER ABOUT CARL (S/C SCENE 3) - CarlSarahInteraction: [CarlSarahInteraction] <- DEBUG[line break]";
	say "     Going up the stairs to the second floor of the library, you do notice Sarah and Carl hanging out on a nearby sofa. They're having a friendly conversation, leaning back relaxedly on the sofa. Then Sarah notices you and jumps to her feet, coming over to give her hero a hug in greeting. 'Hey there, Carl and I were just trading stories about the funniest things from when we were kids,' she tells you with a smile and nods over to Carl. The muscular soldier moves his arm as if to push himself up from the sofa, but then pauses almost imperceptibly, glancing down to the army jacket laying over his crotch. A heartbeat later, he clears his throat and instead of standing up waves at you, calling out in greeting.";
	say "     Sarah smiles impishly as she focuses on the male husky, then says to him, 'Listen Carl, I gotta talk about something with our friend here, so let's continue another time, okay?' Carl gives her a friendly nod and leans back a little bit more in what seems almost like... relief? Before you can do too much wondering about it, Sarah has taken your hand and guided you downstairs, across the floor and to the bunker door, then into its well-protected depths. Down in the bunker, the medical student finally opens up and asks, 'Can you tell me what kind of guy Carl is? I mean he has been very nice in all the time I've known him, but... I don't trust my instincts in such matters. Not with another husky and everything.'";
	WaitLineBreak;
	say "     Wary of the soldier possibly succumbing to his infection, you ask Sarah if Carl has made any moves on her - but the young woman shakes her head pretty energetically and grips your upper arm. 'No no, that's not it! Believe me, he's been nothing but a gentleman since the start. And with the libido suppressant freeing up my mind, I think I'm more than capable of stopping any macho man wanting to get into my panties cold,' Sarah tells you, then raises a hand stroke the short fur on the underside of her muzzle. 'It is just that...' she smiles and giggles, 'Hah, he's been popping a boner almost all the time I've been with him. Doing his best to hide them too, I barely caught a glimpse of his pants tenting out - but you just can't hide such a thing from one of these.'";
	say "     With that said, Sarah gently taps the side of her nose and continues, 'To be honest, it winds me up more than a little bit to smell him. Kinda makes me want to... let off some steam. And I bet poor Carl has a monstrous case of blue balls by now. So - what kind of man is he? Is it gonna be fine to have a little casual fun, or do I have to worry about him pushing me down to 'tame himself a bitch'? I know what I think of him, but... I just wanna be sure, you see?'";
	LineBreak;
	say "     [bold type]What do you reply?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Carl is a good man, she can trust him.";
	say "     ([link]N[as]n[end link]) - She shouldn't tempt him. He's also having to fight with his own husky nanites to stay in control, Sarah should respect that.";
	if Player consents: [encourage her]
		LineBreak;
		say "     Smiling, Sarah gives you an embrace and says, 'I knew it! He couldn't have been such a nice guy all the time otherwise. Guess I was just imagining problems where there never were any. Man, I got the husky urges under control now, but the doubts... those stay with you.' Shaking her head as if to clear it from such thoughts, Sarah squeezes your arm for a second, then glances over at the bunker door. 'I think I'll give a certain doggie a treat now...' With that said, she light-footedly saunters over there and starts climbing the stairs, her tail wagging wildly.";
		LineBreak;
		say "     [bold type]Do you want to follow and watch[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - That'll be one sexy show if you know your huskies. Of course you'll have a look.";
		say "     ([link]N[as]n[end link]) - Let them have their fun without spectators.";
		if Player consents:
			LineBreak;
			project the Figure of Carl_knot_icon;
			say "     Hurrying after the husky, you find Sarah and Carl on the sofa together - but this time she is sitting on his lap and giving the male husky a doggie kiss with lots and lots of tongue. Pulling away from the breathless and panting man a moment later, Sarah puts her hands on his shoulders and looks him in the eyes, then says, 'Okay soldier - here's what's what. You can smell me and know that I'm in heat and I can smell how tightly wound you are. Your dick's been throbbing out precum since I climbed on top of you. So... wanna do something about it? Just some casual fun. Oral, you know.' Meanwhile, Carl's nostrils have been flaring wide, taking in deep breaths of Sarah being so very close to himself.";
			say "     Almost high from huffing Sarah's pheromones, Carl doesn't notice that she asked him a question for several seconds, then blinks and replies, 'Oh god, YES! Couldn't help but pant after you, to be honest.' Sarah grins as she says, 'I noticed.' Then she shimmies back on the sofa to get into position kneeling between Carl's legs and pulls down his zipper with a quick tug. The male husky's red-skinned shaft springs up to stand up straight, the pointy top of it glistening with pre-cum. 'Ngghh,' Carl moans as Sarah closes her hand around his member, feeling its warmth between her fingers. She moves down to touch the little bulge of what will swell up to be his knot, then even further downwards to his sheath.";
			WaitLineBreak;
			say "     Stroking along the rim of the furry sack, Sarah says in a playful tone, 'Hard to believe all that was in here. But then again, your dick was soft and this is really stretchy...' With that said, the medical student slips a finger under the rim of Carl's sheath, probing the inside with a careful touch. 'Man, that feels weird. Not bad, but... definitely weird. Never thought I'd have a pretty woman finger-fuck a hole I didn't even have a short while ago,' Carl replies, then grunts in arousal as Sarah rubs her finger against the very base of his erection, inside the flexible sheath. A thick throb of pre-cum comes out of his cum-slit at that moment, then starts to run down the canine's cock.";
			say "     It doesn't get far, as Sarah leans forward to lick Carl's pre off, slurping his whole dick with her floppy tongue. Humming in pleasure at the nice taste, she grins up at the panting male, then slides her muzzle over his manhood and starts to suck on it. Carl enjoys her oral service immensely and is more than ready to tell the world about it - moaning, barking and grunting loudly and calling out how good his dick feels in her mouth. He puts a hand on her head too, but not to control her, but rather just touch and stroke the female husky, caressing her and rubbing behind her ears. Happily suckling on his cock, Sarah soon pulls her finger out of his sheath too and instead wraps a hand tightly around the base of his cock, giving Carl the feeling of having his knot resting inside a partner's tightly stretched insides.";
			WaitLineBreak;
			say "     With everything that Sarah is doing to him, it is no big surprise that Carl soon starts to give more and more urgent grunts and the knot in Sarah's hand starts to swell up rapidly. Then the point of no return is reached - he reflexively bucks his hips upwards, rubbing the head of his shaft against the ribbed roof of her mouth as it erupts with a first big splash of cum, covering the back of her throat with creamy goodness. Sarah is prepared for this and swallows immediately, gulping down his seed without hesitation, just as she does for the next and the next blast. The female husky stays leaning over her partner for quite a long moment, tail beating wildly left and right as she drinks the heavy load pent up in his full balls.";
			say "     When Sarah eventually pulls away from the exhausted husky's crotch, she licks her lips in satisfaction, then grins at Carl and says, 'So, soldier boy - what did you think of that?' Carl just pants for a few more seconds, stretched out on the sofa as he now is, giving Sarah the time to crawl forward and soon straddle his body on all fours. Looking directly into the other anthro canine's eyes, she plants a peck of a kiss on his nose. 'Amazing,' he pants, still totally out of breath, then goes on to say, 'That was so good. I feel completely drained right now.' Raising an arm weakly to caress the underside of Sarah's muzzle, he starts to say, 'Give me... a second... and I'll -' But then Sarah shushes him with a finger on the front of his muzzle. 'It's alright. Get your rest now. You can pay me back next time.'";
			WaitLineBreak;
			say "     With that said, Sarah gives Carl a playful lick, then stands up again and walks towards the stairs. Carl is left lying on the sofa, worn out from the big load he pumped out - but his tail is nevertheless wagging in a steady beat that started when she said 'next time'. He obviously is more than happy that Sarah seems to want to make this a regular thing. The beautiful female husky grins broadly as she passes the spot from which you were watching them go at it, brushing her hand along your side in passing.";
		else: [don't watch]
			LineBreak;
			say "     Grinning at the antics of the young woman, you imagine how surprised Carl will be when she gets her hands on him. Hopefully it'll allow the two of them to indeed let off some steam.";
		NPCSexAftermath Sarah receives "OralCock" from Carl;
		now CarlSarahSex is 1; [oral between Carl and Sarah]
	else: [discourage her]
		LineBreak;
		say "     Sarah lets out a shocked breath and puts a hand in front of her muzzle, then says, 'Oh god! I never even thought of that?! The poor guy, it must be so hard on him to... sniff my scent all the time. And yet, he's been just a normal friend - no, a good friend! Pushing aside urges just like the ones I had isn't an easy matter. I - I'm a bit ashamed at thinking I'm the only one with problems and seeing him as someone to just get my rocks off. And his, of course, but... yeah.' Her tail droops a bit and Sarah mulls over the situation with Carl, nodding to you in thanks. 'I'll have to make sure I don't overtax his self-control then. Carl is a really nice guy to hang out with and I don't want to break him accidentally.'";
		now CarlSarahSex is 100; [no sex between Carl and Sarah]
	now lastCarlSarahInteraction is turns;
	now Sarah_Carl_Encounter3 is resolved;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
4	"Sarah_Carl_Oral_Repeat"	Sarah_Carl_Oral_Repeat	"[EventConditions_Sarah_Carl_Oral_Repeat]"	Grey Abbey 2F	2500	16	50

to say EventConditions_Sarah_Carl_Oral_Repeat:
	if (Sarah is in Bunker and Carl is in Grey Abbey 2F and CarlSarahInteraction > 2 and CarlSarahSex is 1 and SarahCured > 4 and (lastCarlSarahInteraction - turns > 2)): [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Carl_Oral_Repeat	"Sarah_Carl_Oral_Repeat"

Sarah_Carl_Oral_Repeat is a situation.
ResolveFunction of Sarah_Carl_Oral_Repeat is "[ResolveEvent Sarah_Carl_Oral_Repeat]".
Sarea of Sarah_Carl_Oral_Repeat is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Carl_Oral_Repeat:
	if debugactive is 1:
		say "     DEBUG -> SARAH + CARL ORAL - CarlSarahInteraction: [CarlSarahInteraction] <- DEBUG[line break]";
	say "     As you are walking up the stairs to the second floor of the library, you hear an excited bark from above and hasten your steps, curious what you'll find there. On the upper level, there at first is no one apparent who could have made the sound - until you spot a gray and white tail sticking up behind the backrest of a sofa at the back, between some bookshelves. It clearly belongs to a husky and is wagging happily, so you know what you heard wasn't a bark of alarm - but rather joy. Groans and slurping noises make it obvious that someone is having a good time, and the camo pattern shorts lying on the ground next to the sofa tell you that one of them is Carl - which makes it more than likely that he's getting it on with Sarah again.";
	LineBreak;
	say "     [bold type]Do you want to quietly walk up to them and watch the action?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - That'll be one sexy show if you know your huskies. Of course you'll have a look.";
	say "     ([link]N[as]n[end link]) - Let them have their fun without spectators.";
	if Player consents:
		LineBreak;
		project the Figure of Carl_knot_icon;
		say "     Getting closer, it soon becomes obvious to you that Carl is on all fours on the sofa, his tail raised high and wagging as he has his muzzle between Sarah's legs. Lapping away at the young woman's folds, he teases her clit with great enthusiasm while pumping two fingers in and out of her vagina. 'Yeaahh! Just like that,' the medical student groans in lust and wraps her slender legs around Carl's torso, pulling him even closer against her crotch. You don't know how long they've been at it already, but one thing is clear - the soldier really knows what he's doing as he makes Sarah yip and moan in lust. Before much longer, her sounds of arousal build to an almost shouted crescendo, accompanying a breathtaking orgasm for the young woman.";
		say "     Carl just keeps his muzzle buried between Sarah's legs, never wavering in his licking as she trembles in lust. The female husky moans and pants loudly as she rides out her climax, clearly the sounds of a very well-satisfied woman. When Sarah calms down a bit, Carl shows off his muscles by doing an effortless push-up and then crawls on top of the other canine to give her an intimate kiss. After a long moment of sharing each other's breath and exploring their mouths with floppy tongues, Sarah says, 'You're good with that tongue of yours, soldier boy. Now that is what I call letting off some steam! But speaking of which... better watch out where you're poking that thing. A litter of puppies isn't part of my plans for the foreseeable future.'";
		WaitLineBreak;
		say "     Stiffening a little in his position on top of Sarah, Carl clears his throat and reaches down to adjust his erect manhood away from where it was rubbing her crotch. 'Oh, err - sorry,' the man adds in a genuine tone, a little bit shameful about his instinctive move to mount her. 'It's alright. Actually felt pretty nice... too nice, and that's the rub of it. I - I'm pretty freaked out by the effects of this infection on a pregnancy.' Starting to pull away from Sarah to give her room, Carl is stopped by her paw-hand on his arm a heartbeat later. 'Wait. I didn't mean to push you away. Just... turn around and sit the other way, okay?' Sarah says to the other husky, and he complies, followed by her sliding up behind him, wrapping her arms around his midriff and burying her muzzle in the fur on his broad back.";
		say "     Sarah's paw-hands search out the hard and erect cock between Carl's legs, then start to fondle it, sliding up and down the hot shaft and feeling for every little bump and vein on its nonhuman shape. Soon, the young woman is jerking the other husky off in earnest, squeezing and stroking his manhood and wrapping the fingers of her other hand around the quickly swelling knot at the base of it. As wound up as Carl is, it doesn't take all that long for her efforts to push him over the edge. Accompanied by a lusty grunt from the handsome husky, his shaft spurts out a first long string of cum that lands on the library floor, followed by another, and another. It is actually quite a sight to see just how much of a load the soldier pumps out - he definitely is a virile male...";
		WaitLineBreak;
		say "     Eventually when the spurts of more cum ebb off, Carl is left panting and exhausted, leaning back against Sarah. You can tell from the smile on his muzzle that he enjoys the feeling of her pressed against his back more than just a little - especially with her perky breasts as a soft cushion. 'That was fun,' Sarah says to him in a playful tone, stretching her neck a bit to look over Carl's shoulder. Holding up her hand, she looks at the matted fur where one or two spurts of Carl's cum landed and whispers something into his ear. The soldier laughs in reply, then gently takes her arm by the wrist and pulls it closer, followed by licking his cum off her fingers.";
		say "     Sarah chuckles and leans her head against Carl's back. A moment later, she takes a deep breath and says, 'Can't believe how lucky I am, really. Being saved from that husky pack... then from myself. And now, I'm hanging out with a sweet soldier boy that only occasionally tries to mount me.' Craning his neck to glance over his shoulder, Carl says, 'Hey, I told you I'm...' His words dissolve into laughter as Sarah tickles the muscular male. 'Kidding! No, it's really great to have you. Someone who understands the feelings of being a husky like myself. Even if we drive each other another half-crazy with the scents.'";
		WaitLineBreak;
		say "     With their urges satisfied for the moment, the two of them stay sitting like that for a long while, just talking. Interestingly, it is more a question of comfort than sexuality, despite the fact that they're both naked in nothing more than their own fur and Sarah's breasts pretty much stay pressed against Carl's back. Being able to let off some pent-up arousal with one another without having to worry (too much) about their partner going wild has created a definite bond between the two of them. Two humans in anthro husky bodies, they trust one another quite a bit now, and you sense that each of them is relieved to no longer be along in their fate.";
	else:
		LineBreak;
		say "     Grinning at the antics of the two lovers, you silently wish them a good time and turn your attention elsewhere.";
	if CarlSarahSex is 1:
		now CarlSarahSex is 2;
	now lastCarlSarahInteraction is turns;

Section 4.3 - Colleen

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Colleen_Encounter1"	Sarah_Colleen_Encounter1	"[EventConditions_Sarah_Colleen_Encounter1]"	Bunker	2500	2	100

to say EventConditions_Sarah_Colleen_Encounter1:
	if (Sarah is in Bunker and Colleen is in Bunker and ColleenSarahInteraction < 2 and SarahCured > 1 and (lastColleenSarahInteraction - turns > 6)): [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Colleen_Encounter1	"Sarah_Colleen_Encounter1"

Sarah_Colleen_Encounter1 is a situation.
ResolveFunction of Sarah_Colleen_Encounter1 is "[ResolveEvent Sarah_Colleen_Encounter1]".
Sarea of Sarah_Colleen_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Colleen_Encounter1:
	if ColleenSarahInteraction is 0:
		if debugactive is 1:
			say "     DEBUG -> Colleen & SARAH SPEND TIME TOGETHER 1 - ColleenSarahInteraction: [ColleenSarahInteraction] <- DEBUG[line break]";
		say "[SarahColleenScene1]";
	else if ColleenSarahInteraction is 1:
		if debugactive is 1:
			say "     DEBUG -> Colleen & SARAH SPEND TIME TOGETHER 2 - ColleenSarahInteraction: [ColleenSarahInteraction] <- DEBUG[line break]";
		say "[SarahColleenScene2]";
		now Sarah_Colleen_Encounter1 is resolved;
	now lastColleenSarahInteraction is turns;

to say SarahColleenScene1:
	say "     As you enter the bunker, you see Sarah sitting cross-legged on her bed, with Colleen one row over on another. The two women smile and laugh as they chat with one another. Looks like the female soldier opened up a bit to her fellow bunker-dweller, now that Sarah has her sexual urges under control. Still, it is clear that she does keep her distance from the anthro husky - not wanting to risk infection even though she's become friends with the other woman.";
	now ColleenSarahInteraction is 1;

to say SarahColleenScene2:
	say "     As you enter the bunker, you see Sarah sitting cross-legged on her bed, with Colleen one row over on another. The two women each have an open MRE on their laps, sharing a meal and chatting with one another. Looks like the female soldier opened up a bit to her fellow bunker-dweller, now that Sarah has her sexual urges under control. Still, it is clear that she does keep her distance from the anthro husky - not wanting to risk infection even though she's become friends with the other woman.";
	now ColleenSarahInteraction is 2;

Section 4.4 - Alexandra

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Sarah_Alexandra_Encounter1"	Sarah_Alexandra_Encounter1	"[EventConditions_Sarah_Alexandra_Encounter1]"	Bunker	2500	2	100

to say EventConditions_Sarah_Alexandra_Encounter1:
	if (Sarah is in Bunker and Alexandra is in library and (HP of Alexandra > 0 and HP of Alexandra < 50) and AlexandraSarahInteraction is 0 and SarahCured > 1): [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Alexandra_Encounter1	"Sarah_Alexandra_Encounter1"

Sarah_Alexandra_Encounter1 is a situation.
ResolveFunction of Sarah_Alexandra_Encounter1 is "[ResolveEvent Sarah_Alexandra_Encounter1]".
Sarea of Sarah_Alexandra_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Alexandra_Encounter1:
	if debugactive is 1:
		say "     DEBUG -> Alexandra & SARAH MEET - AlexandraSarahInteraction: [AlexandraSarahInteraction] <- DEBUG[line break]";
	project the Figure of Alexandra_clothed_icon;
	say "     You're just about to step into the main room of the bunker when you hear someone call out, 'Hey! Ow! What are you doing?!' Alarmed, you take the last few steps down in a jump and burst through the door into the underground. The scene that awaits you is interesting, to say the least - it was Alexandra who came down here, and the former cop is standing just a short distance from the entrance, holding Sarah pinned against the concrete bunker wall with a paw-hand to her chest. 'Thought I'd properly introduce myself, and find out what's what with you,' the doberwoman says in a belligerent tone and sniffs at the anthro husky's body. 'Lady, let go of-' Sarah starts, only to be interrupted by a low growl from Alexandra, who draws her lips back from sharp canine teeth. 'Listen, you stupid mutt! I wanna make one thing clear to you - I'm Alexandra and this pack's alpha bitch! You'd better remember that, or we'll have a problem with each other.'";
	WaitLineBreak;
	say "     In a move that speaks of her having taken some self-defense classes in the past, Sarah suddenly gives a sideways shove to the doberwoman's elbow and ducks under Alexandra's follow-up grab, bringing at least a little distance between them. The medical student raises her paw-hands in a passable fighting pose, although the tremble in her voice as she speaks makes it clear that Sarah is far from used to physical confrontations. 'I don't know what you're on about, lady! We're not animals, fighting for dominance, and I'm in no pack! Least of all with a crazy bitch like you!'";
	if SarahCured > 4: [Sarah had sex with the player]
		say "     Alexandra lets out a mocking bark and replies, 'I can smell the boss all over you, whore! But maybe you're right - [if Player is female]she[else]he[end if] might just have brought you in as a stray to fuck around for a bit and discard. Fine, you're not in the pack then, and with that attitude I'd only let you join and become even omega if you begged and lapped my pussy!' ";
	else: [no sex with the player]
		say "     Alexandra lets out a mocking bark and replies, 'Yeah right! Tell me another one, husky slut! I know what type of needy bitches your kind are. But maybe you're right - [if Player is female]she[else]he[end if] might just have brought you in as a stray to fuck around for a bit and discard - if not now, then soon. Fine, you're not in the pack then, and with that attitude I'd only let you join and become even omega if you begged and lapped my pussy!' ";
	say "Despite her words, Alexandra still seems ready to lay into Sarah at a moment's notice. The two female canines stand facing each other with growls vibrating in their throats - right until you put two fingers in your mouth and give a sharp whistle, drawing all attention to you.";
	WaitLineBreak;
	say "     'Oh, hey boss,' Alexandra calls out, her tail giving a little wag as she looks over to you. 'Just about done telling this slut what's what. Did you come down to pound her like the whore she is? I'll leave you to it then.' With that said, the doberwoman strolls up to you and leans in to lap your cheek in a show of devotion, then goes upstairs again. Sarah watches her leave and blows out her breath as the door closes behind Alexandra. 'Good god, that was intense. These damn nanites sure can mess with people. She's really internalized the whole dog thing - pack behavior and all. I - um, guess I should have tried more to de-escalate, but something about her behavior really raised my hackles...'";
	say "     'So - you're Alexandra's... boss?' the young husky woman asks you, still rather disturbed about the confrontation. Clearing your throat, you do explain how you took in Alexandra after she succumbed to her infection (wisely leaving out that you were the one who pushed her that far). She pretty much declared herself the top bitch of your pack after that. Nodding thoughtfully, Sarah says, 'I'll do my best to keep my distance and not to trigger her. Thank god that you helped me before I was as far gone as that!' After giving you a hug, the young woman walks over to her bed and pulls out a notebook, adding more observations to her ongoing report about what the nanite infection can do.";
	now AlexandraSarahInteraction is 1;
	now Sarah_Alexandra_Encounter1 is resolved;

Section 4.5 - Eric

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Eric_Encounter1"	Sarah_Eric_Encounter1	"[EventConditions_Sarah_Eric_Encounter1]"	Bunker	2500	2	100

to say EventConditions_Sarah_Eric_Encounter1:
	if (Sarah is in Bunker and Eric is in Bunker and HP of Eric < 90 and EricSarahInteraction < 3 and SarahCured > 1 and (lastEricSarahInteraction - turns > 2)) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Eric_Encounter1	"Sarah_Eric_Encounter1"

Sarah_Eric_Encounter1 is a situation.
ResolveFunction of Sarah_Eric_Encounter1 is "[ResolveEvent Sarah_Eric_Encounter1]".
Sarea of Sarah_Eric_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Eric_Encounter1:
	if EricSarahInteraction is 0:
		if debugactive is 1:
			say "     DEBUG -> Eric & SARAH SPEND TIME TOGETHER 1 - EricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahEricScene1]";
	else if EricSarahInteraction is 1:
		if debugactive is 1:
			say "     DEBUG -> Eric & SARAH SPEND TIME TOGETHER 2 - EricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahEricScene2]";
	else if EricSarahInteraction is 2:
		if debugactive is 1:
			say "     DEBUG -> Eric & SARAH SPEND TIME TOGETHER 3 - EricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahEricScene3]";
		now Sarah_Eric_Encounter1 is resolved;
	now lastEricSarahInteraction is turns;

to say SarahEricScene1:
	project the Figure of Eric_clothed_icon;
	say "     As you enter the main room of the bunker, you see Eric sitting cross-legged on his bed, totally focused on a book on his lap - so much so that he doesn't even look up as you come in. And neither does he notice Sarah, who walks up to him on her slender paws moments later. Her tail gives a slow and friendly beat as she clears her throat and says, 'Hello there. Nice to meet another human down here... err, you know what I mean.' After the last words, she raises her paw-hand and looks down at it thoughtfully, almost as if she had forgotten that she can't quite count herself as human anymore. Dropping a bookmark between the pages and setting his novel aside, Eric rises from the bed with the grace of a natural gymnast and steps right up to Sarah, taking her paw to shake it in greeting.";
	say "     'Hey, I'm Eric,' the college athlete greets Sarah with a shy smile. She is momentarily baffled at the nonchalant greeting and the fact that he didn't hesitate one moment to touch her. 'I - I'm Sarah. Aren't you concerned about... catching something? Fur, for example.' Eric shakes his head slowly and replies, 'I don't think that'll be a problem. This... thing that is going on doesn't seem to affect me. That much.' He pauses at that and blushes a little bit, then quickly adds, 'And I'm really happy that you seem like a normal person. Not trying to tear someone's clothes off and mount them, like some of my former classmates at college.'";
	WaitLineBreak;
	say "     The two of them look at each other for a few seconds, distracted by their own thoughts, then Sarah starts up the conversation again with a nod at Eric's t-shirt with the logo of his college. 'So... you're enrolled Tenvale, eh?' she asks, smiling at the slender athlete, and wags her tail. 'I went to college there too - 'Go Gorillas!' and all. Tell me, do they still do that thing on campus each year where...' Getting the ball rolling like that (and each of them distracted from their individual hangups), Eric and Sarah have a friendly conversation about college life and their studies.";
	say "     You decide to give them some privacy to just chat, their thoughts for once far away from the troubles of the devastated city all around you. After a last look over your shoulder at the human and anthro husky sitting next to each other on a bed and talking, you turn your attention elsewhere.";
	now EricSarahInteraction is 1;

to say SarahEricScene2:
	project the Figure of Eric_clothed_icon;
	say "     Coming down the stairs from the library, you open the door leading from the stairwell into the main bunker room - and suddenly, two people flash past the opening at a full sprint. Looking through the door and after them you see that it was Eric and Sarah, apparently having a friendly race along the long side of the room. The college athlete arrives at the far wall several steps before Sarah, slapping one hand against it and turning to her with a grin. Tongue hanging out as she reaches the end and loudly pants, Sarah tells him, 'Wow, you're really are good at this! I mean... I was no slouch before, and the muscle density in the new body this infection has saddled me with is kinda amazing. But you still beat me. Oh well, at least it was close.'";
	say "     In reply to her comment, Eric's cheeks redden a bit and he rubs the back of his neck. 'Well, umm... about that,' he starts to say, but Sarah interrupts him with the words, 'No way! Really? You were going easy on me?! Oh my god!' Her paw-hands grab Eric and pull him into a hug, then she gives his cheek a friendly lick and looks at him with a grin. 'That's so sweet. Thanks for not just making me eat your dust in a roadrunner kind of way, hah. But all kidding aside - you can color me impressed.' Walking back towards the rows of beds where they started their little race, the two of them keep chatting with one another about athletics. Sarah keeps her arm around Eric the whole way and with the topic being something close to his heart, she gets the usually rather shy guy to open up more and more.";
	LineBreak;
	say "     Eric doesn't actually notice you standing at the door as they pass by, being too concentrated on recounting a story for Sarah, but the female husky gives you a friendly nod and wag of her tail. You decide not to step forward and draw attention to yourself, instead allowing for some undisturbed bonding time between the two refugees from the nanite apocalypse that you've brought into your bunker.";
	now EricSarahInteraction is 2;

to say SarahEricScene3:
	project the Figure of Eric_clothed_icon;
	say "     Coming into the bunker, you see Sarah and Eric hanging out together. They are sitting cross-legged on Eric's bed, chatting about this and that. Between them, there is a small pile of oranges that both pick from and happily eat while they talk. Looks like one of them - or both together - went out to find some supplies and now they're enjoying the literal fruits of that labor with one another. It is nice to see that your rescuees from out in the chaos-ridden city get along so well. With a smile on your face, you wander over and say hello, earning you happy smiles and an excitedly wagging tail from Sarah. 'Hey there my hero,' the female husky calls out to you and tosses you an orange that you easily catch. As you exchange some words with them, you peel and munch on the orange fruit, finding it nice and juicy.";
	PlayerEat 5;
	now EricSarahInteraction is 3;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Eric_Encounter2"	Sarah_Eric_Encounter2	"[EventConditions_Sarah_Eric_Encounter2]"	Bunker	2500	2	100

to say EventConditions_Sarah_Eric_Encounter2:
	if (Sarah is in Bunker and Eric is in Bunker and EricSarahInteraction > 2 and cboyEricSarahInteraction is 0 and HP of Eric > 9 and HP of Eric < 21 and SarahCured > 3 and (lastEricSarahInteraction - turns > 6)) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Eric_Encounter2	"Sarah_Eric_Encounter2"

Sarah_Eric_Encounter2 is a situation.
ResolveFunction of Sarah_Eric_Encounter2 is "[ResolveEvent Sarah_Eric_Encounter2]".
Sarea of Sarah_Eric_Encounter2 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Eric_Encounter2:
	if cboyEricSarahInteraction is 0:
		if debugactive is 1:
			say "     DEBUG -> SARAH & ERIC TALK ABOUT TRANS THINGS 1 - EricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahCboyEricScene0]";
	else: [option for situation more events between them in the library]
		say ""; [currently not used]
	now lastEricSarahInteraction is turns;

to say SarahCboyEricScene0:
	project the Figure of Eric_clothed_icon;
	say "     Coming into the library after braving the dangerous streets outside, you take a moment to catch your breath and calm down. The quiet and peaceful surroundings of this former abbey do tempt you to take a stroll between the shelves, letting your gaze wander over the books as you go along. One or another title tickles your interest, but not enough to actually pull the book from its place. Then suddenly, you hear voices - there is someone behind the shelf on your left. Leaning forward a little, you glance through the small gap above the books and see that Sarah and Eric had a similar idea to your own, strolling along between the bookshelves and talking about things to read.";
	say "     You go keep walking, quietly moving along on the other side of the bookshelf and listen to the two of them chatting in a friendly tone. Seems like they have gotten fairly comfortable with one another - both relieved to have someone to keep them company down in the bunker. But then, as they're about to reach the end of the row, Sarah pulls Eric aside a little, putting a paw on his arm, 'Listen, I wanted to ask you about... um. How long have you known that you were - you know, trans? I hope I'm not going too far in asking this... seeing how you dress, it's obvious that you don't want to appear... girly. And you have the whole act down really well.'";
	WaitLineBreak;
	say "     Eric pales and starts panting, almost hyperventilating and looking like he wants to run away. Then the anthro husky reaches out to gently grab his shoulder. 'It's alright, I totally support your right to choose who you want to be. Didn't want to freak you out. I just... wanted to give my support and all that,' Sarah tells him hurriedly, which calms the red-headed student down at least a little bit. 'How - how did you know?' he says in a bit of a forlorn tone, looking into the young woman's eyes. 'As I said - you've got all the right mannerisms and one can't really spot a difference, but... the nose tells a different story. Pheromones and all,' Sarah replies, patting the side of her long muzzle with a finger.";
	say "     'Oh,' Eric lets out a little sigh, then lowers himself on the ground and sits with his back against the end of a long bookshelf. 'I'm not, actually. A trans-guy. Just a regular one... and shortly after all this started, one of my college friends bit me. He was a huge furry thing by that time,' the young man recounts, rubbing the bandage on his arm. Sarah sits down right next to him, keeping a supportive hand on her friend's shoulder and nodding for him to go on. 'Other than just about anyone out there, I didn't become something else. It is just... this,' Eric gives a little wave at his crotch.";
	WaitLineBreak;
	say "     'Wow, that is... I didn't even know that was possible!' the medical student says in a suddenly excited tone, with Eric answering glumly, 'What? That I'm a freak? Great!' He starts to tear up and look away, but Sarah puts a paw-hand on his cheek and turns his head to look him right in the eyes. 'No silly,' she says with a smile and a wag of her tail, 'You're at least partially immune. This could be big! There might be a cure somewhere in that. We really need to get you out of the city and to a doctor!' Gaping a little at the revelation, Eric opens his mouth a few times but nothing comes out, at least until he manages to say, 'You - you really mean that?'";
	say "     This earns Eric a friendly lick from the anthro husky, with her leaning in to hold him tight. 'It'll be alright, Eric. You might just be the savior of all of us in this city.' Sarah holds on to her friend and keeps talking to him in a soft tone, quelling his fears and doubts about himself. After a minute or two, you decide that it'd be best not to disturb such an intimate conversation - or indeed let them know that you listened in until now - and quietly turn around, walking away without being seen by either of the two.";
	now cboyEricSarahInteraction is 1; [Sarah knows about Eric and has talked with him about it]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Eric_Encounter3"	Sarah_Eric_Encounter3	"[EventConditions_Sarah_Eric_Encounter3]"	Bunker	2500	2	100

to say EventConditions_Sarah_Eric_Encounter3:
	if (Sarah is in Bunker and Eric is in Bunker and EricSarahInteraction > 2 and cboyEricSarahInteraction > 0 and cboyEricSarahInteraction < 2 and HP of Eric > 9 and HP of Eric < 21 and SarahCured > 3 and (lastEricSarahInteraction - turns > 6)) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Eric_Encounter3	"Sarah_Eric_Encounter3"

Sarah_Eric_Encounter3 is a situation.
ResolveFunction of Sarah_Eric_Encounter3 is "[ResolveEvent Sarah_Eric_Encounter3]".
Sarea of Sarah_Eric_Encounter3 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Eric_Encounter3:
	if cboyEricSarahInteraction is 1:
		if debugactive is 1:
			say "     DEBUG -> Trans Eric & SARAH SPEND TIME TOGETHER 1 - cboyEricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahCboyEricScene1]";
	else if cboyEricSarahInteraction is 1:
		if debugactive is 1:
			say "     DEBUG -> Trans Eric & SARAH SPEND TIME TOGETHER 2 - cboyEricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahCboyEricScene2]";
	else if cboyEricSarahInteraction is 2:
		if debugactive is 1:
			say "     DEBUG -> Trans Eric & SARAH SPEND TIME TOGETHER 3 - cboyEricSarahInteraction: [EricSarahInteraction] <- DEBUG[line break]";
		say "[SarahCboyEricScene3]";
	now lastEricSarahInteraction is turns;

to say SarahCboyEricScene1:
	say "     Coming into the bunker, you see Sarah and Eric hanging out together. They are sitting cross-legged on Eric's bed, with her talking about what she thinks is going on with the nanites. As she lays out theory after theory, Eric nods wide-eyed, clearly impressed by her medical knowledge and ideas. She spins a tale about some diseases and plagues being cured, hinting that there might be a similar way possible for the nanites, then ends on, '...and in most of those cases, finding someone who was infected but immune really brought research forward a lot.' As she says this and looks him into the eye, Eric blushes a little and starts to turn away his head - only to have her gently stroke his cheek and pull him back to looking right at her. 'There really is no need to be ashamed about what you are, Eric. We're friends and you trust me, right?'";
	say "     The slender trans athlete lets out an indrawn breath, then bites his lips silently before finally giving a shy nod. 'Come on, let me examine you then. Any little detail I can gather could be the key to solving this thing.' Eric gulps at her request and seems on the verge of pushing himself back on the bed, but Sarah keeps a gentle hand on his arm and speaks quietly to him some more. You recognize that the determined young woman will convince Eric to play along - sooner rather than later - which means that you should decide quickly what you want to do while they're still distracted.";
	LineBreak;
	say "     [bold type]You decide on...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Casually sauntering closer and taking a position from which you can observe what is going on without being too obvious about it.";
	say "     ([link]N[as]n[end link]) - Quietly walking away, leaving them to finish their business in peace.";
	if Player consents: [watch]
		LineBreak;
		project the Figure of Eric_naked_icon;
		say "     You're just in time getting into position before Eric quietly tells Sarah, 'O-okay then, we - erm, you - can do it.' With that, the shy young man starts to lift his t-shirt, pulling it off to reveal a lithe and slim upper body. His husky friend wags her tail and nods supportively, prompting him to keep going with his shorts. A pair of skimpy black panties is revealed as he slips the garment down his legs, leaving the college student almost naked as he sits on the bed. Then he lifts his hips, allowing for the last shred of fabric to be pushed down over his small and firm buttocks. As Sarah helps pull the last garment off, she says, 'Just lay back and relax.'";
		say "     Eric leans back, stretching his upper body out on the bed, while his legs still hang over the edge of it. He pants a little, trying but not quite managing to be calm. Meanwhile, Sarah slides a paw-hand into the pocket of her jeans, withdrawing a slim audio recorder from it. She presses a button to record, then speaks into the microphone, 'Continuing my observations about the effects of the nanite contagion, I am just examining an affected patient. The subject is a college-age male, Caucasian, of slender build. Secondary sexual characteristics are clearly male, although body hair appears minimal.'";
		WaitLineBreak;
		say "     Clicking off the recording function, the female husky pats the side of Eric's thigh lightly and gives him a friendly smile. 'Can I ask if you were always looking like this? Just that little bit of hair on your body...' With that, she reaches out and brushes a finger over the thin trail of red pubic hair starting at his navel and leading towards the slender student's crotch. Eric lets out a sigh at the feather-light touch, losing a bit of the tension in his form, but then Sarah draws her paw-hand back and starts the recorder again. 'Patient confirmed that the amount of body hair is unchanged to before nanite infection. In terms of primary sexual characteristics, he exhibits a distinct alteration to the normal human body plan. Replacing the previously existent penis and balls, fully formed lips of the labia majora are visible, including a small clitoral hood.";
		say "     Holding her tail still - a clear sign of her being 'at attention' and concentrated on her examination, Sarah clears her throat and continues, 'It is of note that the transgender characteristics fit smoothly to the rest of the body, without any obvious signs of a transformation. Fascinating, how seamless the nanites work.' Focused on checking out Eric, she doesn't even pause before reaching out to gently pull his nether lips apart with her fingers. Then she comments, 'Labia minor are fully formed too, and further between those...' The medical student stretches Eric's lips a bit further while intently looking at his crotch, adding, [if HP of Eric is 1 or HP of Eric is 10]a hymen is visible. The patient apparently hasn't had intercourse since his transformation[else if HP of Eric > 10]lies the vaginal opening. The stretched remains of a hymen point to recent sexual intercourse[end if].'";
		WaitLineBreak;
		say "     With his intimate details being described so clinically, Eric starts getting rather antsy, and a deep blush rapidly spreads over his face. Pushing himself up on his elbows, he looks down at his husky friend and says, 'I - I'm sorry Sarah. Maybe this was a bad idea and-' She reacts by gently stroking the inside of his thighs with the soft-furred back of her paw-hand and tells him in a calm tone, 'Shhh, it's alright. You don't have to be ashamed.' The slight tremble in Eric's legs vanishes at her touch, yet he clearly is still unsure about the matter and says, 'I don't know if I can do this.' Sarah looks at her hand against his thigh, the naked young trans-man stretched out on the bed before her, and smiles at him, her tail starting to wag.";
		say "     'I know a way to make your worries go away. Just trust me with this,' she says and leans forward, lowering her canine head. Then the female husky's long tongue comes into play as she runs it over Eric's nether lips, taking a long lick over his crotch. All tension seems to leave Eric as he lets out a loud moan and flops back on the bed, then even tries to push his hips up a little. After lapping over Eric's a few more times, Sarah raises her head and looks down at Eric, lying back with eyes closed and a beatific expression on his face. She starts sliding her paw-hand into a jeans pocket to retrieve her recorder again, then stops and smiles at her transgender friend. Thinking better of it, she instead puts her hand on the inside of Eric's thigh, patting and stroking him gently.";
		WaitLineBreak;
		say "     'That feels soo nice,' the college athlete says in a happy little sigh, followed by an aroused gasp as Sarah starts teases his clit with the tip of her tongue. The anthro husky takes care of her friend with eager attention, licking and slurping, even lightly nibbling on his clitoris. As a woman, she knows almost better than Eric himself what feels best - and the floppy canine tongue her new form provides works wonders with that knowledge. Selflessly going down on the slender student, Sarah makes this all about him - stroking Eric with her hands and using her mouth to give him ever greater pleasure.";
		say "     With the husky medical student going at him with full force, it doesn't take all that long before Eric's breathing comes faster and faster. Just moments later, his soaring arousal culminates in an almost shouted moan, with Eric bucking and twisting on the bed as he orgasms. Sarah is quick to lap up his femcum, tracing her tongue over his nether lips to get more she can swallow. She keeps at it until Eric finally winds down from his orgasmic high, then raises her canine head and looks at him with a grin. 'Not so bad to be part woman now, is it?' Sarah asks in a teasing voice, prompting Eric to reply, 'You're right... about that... phew, that was amazing.'";
		WaitLineBreak;
		say "     Letting his head fall back on the mattress, Eric is content to just pant and catch his breath after that, leaving Sarah free to pull out her recorder and make more observations. She turns a little bit away from Eric as not to disturb him too much, then speaks into the microphone again. 'Um... experimentation shows that the changed physiology is as sensitive as with any naturally born female. The transformed body parts seem to be fully functional and even produce femcum, which... admittedly tastes very nice.' The medical student wags her tail wildly as she says that and also licks her lips, then seems to 'catch' herself being a bit less than professional for the recording and quickly turns it off.";
		say "     'Anyways, I think I'm a bit too... wound up, myself, to go on right now. So - another time, okay? I hope you're realized that there's nothing to be ashamed off in your very nice body... and that spending time with your doctor in training can be fun.' Eric pushes himself up on an elbow, and chuckles in post-coital satisfaction. He tells her, 'That was so amazing. Thank you!' Right after that, he curls up on the bed to take a nap.";
		NPCSexAftermath Sarah receives "OralPussy" from Eric;
	else: [don't watch]
		LineBreak;
		say "     Using the fact that they're distracted, you steal yourself away, avoiding making things even more difficult for Eric. Best to give them the privacy to get through Sarah's 'examination' alone.";
	now cboyEricSarahInteraction is 2; [Sarah talked Eric into letting her examine him]

to say SarahCboyEricScene2:
	say "";

to say SarahCboyEricScene3:
	say "";
[
Idea: Make Sarah ask Eric if she can... study him a bit. A little sexy examination, with her asking him to strip, maybe making observations into a little recorder - commenting about him being a virgin (or the evidence of 'previous sexual activity' - making Eric blush), ...

Idea: Interaction with Alexandra and/or Korvin - the bad girl/boy dogs
One of them could be all "Yo bitch!" to Sarah, with her getting miffed at Alexandra or being all "What do you want asshole? Can't be anything with sex - in my experience losers with big mouths have the smallest dicks. Or do you need help opening a can of dog food that you're too stupid to get the hang of?"
]

Section 4.6 - Fang

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Fang_Encounter1"	Sarah_Fang_Encounter1	"[EventConditions_Sarah_Fang_Encounter1]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Fang_Encounter1"	Sarah_Fang_Encounter1	"[EventConditions_Sarah_Fang_Encounter1]"	Grey Abbey Library	2500	2	100

to say EventConditions_Sarah_Fang_Encounter1:
	if (Sarah is in Bunker and Fang is in Grey Abbey Library and Fang is Male and (HP of Fang < 5 and HP of Fang > 1) and FangSarahInteraction is 0 and SarahCured > 3) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Fang_Encounter1	"Sarah_Fang_Encounter1"

Sarah_Fang_Encounter1 is a situation.
ResolveFunction of Sarah_Fang_Encounter1 is "[ResolveEvent Sarah_Fang_Encounter1]".
Sarea of Sarah_Fang_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Fang_Encounter1:
	project the figure of Sarah_clothed_icon;
	if debugactive is 1:
		say "     DEBUG -> SARAH & FANG MEET - FangSarahInteraction: [FangSarahInteraction], HP of Fang: [HP of Fang] <- DEBUG[line break]";
	say "[LibraryEntry_NavOrWalk]";
	if HP of Fang < 3: [Omega Fang]
		say "you see your pet wolf Fang moving towards the back of the ground floor shelves in a moderately fast trot, his long rope leash trailing behind him on the ground. While that in and of itself isn't too surprising (he is clever enough to loosen and tie the leash from its anchoring point with his at least part-anthro paws) you get curious what he's on about right now. The straight-up way he is holding his tail does show that the gray wolf is at attention because of something and he is moving with some determination in his strides. Walking after the feral beast, you soon spot the target of his interest - the husky girl Sarah is back there, currently crouched down before a bookshelf and checking out some new stuff to read.";
		say "     Fang is upon her before you can do much more to register the situation, pushing his muzzle against the back of her jeans and sniffing excitedly. Letting out a bark of surprise at the sudden touch, Sarah turns around to look at Fang. Her first reaction is a smile and the tail behind her back starts to wag in a slow beat as the medical student says, 'Oh, hey boy. What are you doing here? Did your leash come undone?' She reaches out to pet Fang's head, earning her a lick as she strokes over the thick fur over his neck. 'Such a strong and good doggie,' she coos as she pets him some more and Fang leans into her touch. 'It is good to know that you're protecting us here. Keeping the beasts out and... hey!'";
		WaitLineBreak;
		say "     In her stroking of the gray wolf, Sarah finally noticed that the feral animal is sporting a full-on erection dangling between his legs. He barks at her in a confident, self-assured manner, as if to tell his new bitch that foreplay is over and she should get ready to be bred now... which clearly doesn't resonate well with the young woman. Her hand-paw stroking his furred side instantly moves to grab the wolf's neck, really digging into the loose fur of it to get a good grip. Despite this, Fang's gaze is still locked in on her t-shirt and the firm breasts stretching it out tightly - until Sarah closes her hand around his muzzle to pull it up and look right into his eyes.";
		say "     In a tone that shows she is less than amused, Sarah tells the feral wolf, 'Now listen to me good, pooch. I've always liked dogs and might even feel some attraction now that I am one myself - but that doesn't mean I'm your bitch!' A low growl begins to rise in Fang's throat, then is quickly quelled as Sarah gives his neck-fur a sudden pull to show she means business. 'Don't you even start that way with me! This husky right here isn't just a slut to be bred. I'm still human in everything that counts - so you better get that into your thick head right now! Do we understand each other, pooch?!' The staring contest between the two of them continues for a few seconds more, then Fang finally gives a whine and clenches in his tail in submission.";
		WaitLineBreak;
		say "     'That's more like it,' Sarah says with a satisfied nod, then lets go of Fang. His nostrils flare as he seems to take in a last deep sniff of Sarah's enticing scent, then the gray wolf starts to turn and slink away with tucked tail - only to be stopped by Sarah's hand-paw on his back. 'Hey furball, you're a bit dense sometimes, aren't you? Told ya, I actually do like dogs. Just not in a mindless humping way.' Running her paw up his body, she pats his neck and starts rubbing behind his ears, making Fang pant in pleasure and his tail start to rise, wagging slowly. 'That's a good boy. Now come on - sit over here and keep me a bit of company. There - might - be a belly rub in it for you if you behave.'";
		LineBreak;
		say "     Seeing that Sarah seems to have the situation with Fang well in hand, you stay in the spot from which you silently observed for a few moments more, then quietly walk away.";
	else if HP of Fang > 2: [Alpha Fang]
		say "you see your alpha wolf Fang moving towards the back of the ground floor shelves in a moderately fast trot. Curious what the strong canine is up to, you decide to follow and check it out. The straight-up way he is holding his tail does show that the gray wolf is at attention because of something and he is moving with a determined stride. Walking after the feral beast, you soon spot the target of his interest - the husky girl Sarah is back there, currently crouched down before a bookshelf and checking out some new stuff to read.";
		say "     Fang is upon her before you can do much more to register the situation, pouncing to hit her in the back with his paws and knock her over. With a lusty growl, he pushes his muzzle against the back of her jeans sniffs excitedly. Clearly, he's horny and wants to mount the bitch whose fertility he can smell so clearly. Letting out a bark of surprise at the sudden ambush, Sarah starts to turn around - only to be hampered by Fang biting at the material of her jeans, trying to hold her down and rip the pants off. The two of them struggle for a moment or two, both of them growling like dogs, then Sarah shouts, 'Get off me you stupid mutt!' The exclamation is underlined by a kick to Fang's side, which actually does get him off her, although he snaps at her leg and just narrowly misses.";
		WaitLineBreak;
		say "     Now turning around to sit with her back to the bookshelf, Sarah exchanges hostile stares and growls with Fang. She barks out, 'I am NOT your bitch, fleabag! Don't you think that I'll just bend over for you just because I'm a husky now!' The tension between them rises more and more as Fang ignores Sarah's words and just circles her to find the best angle of attack to subdue his resistant bitch. The wolf's pointy cock is hard and dangles below his crotch, ready to breed her full of his puppies once he's on top of Sarah. The next few seconds almost play out in slow-motion for you, watching silently from behind a nearby bookshelf - Fang pounces on the young woman, growling loudly. But this time, Sarah is ready for him - she swings an almost two-inch thick volume of 'Anatomy and Physiology' at the wolf as he jumps her, smacking him full in the head with the weighty tome.";
		say "     Time catches up in a rush with you as you see your alpha deflected to crash into the ground with a whine, while at the same time Sarah gets her feet under her, now standing tall with her improvised weapon in hand. As Fang starts to get up from face-planting into the floor, Sarah kicks him hard - that'll leave an impression for sure. The two of them move away from each other some more, again growling and staring - but this time, Fang seems less confident of his superiority over the young woman. She proceeds to bark at him, 'Listen well now, mutt! I know you're smarter than the usual fucking pooch out there - or you wouldn't be here in this sweet crib, playing nice most of the time. So... while you'll likely win if you jump me full force - if not now, then the next time - I won't just submit. Think about it... is one more bitch really worth the beating you'll get before you fuck me? And all the noise might even attract something else looking from outside, for easy pickings.'";
		WaitLineBreak;
		say "     The stalemate continues for a few moments longer, then eventually Fang gives a frustrated growl and starts to back away a little from Sarah. 'That's right. Go away you furry bastard!' Sarah snarls at him, in reply to which Fang makes a beeline to the spot the young woman was originally browsing books at - to raise his leg and pee all over the lowest two shelves of medical books. After doing his business, he gives a last aggressive growl, then trots away.";
	now FangSarahInteraction is 1;
	now lastFangSarahInteraction is turns;
	now Sarah_Fang_Encounter1 is resolved;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Fang_Encounter2"	Sarah_Fang_Encounter2	"[EventConditions_Sarah_Fang_Encounter2]"	Courtyard	2500	2	100

to say EventConditions_Sarah_Fang_Encounter2:
	if (HP of Fang is 3 or HP of Fang is 4) and FangSarahInteraction is 1 and SarahCured > 3 and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and a random chance of 1 in 2 succeeds and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Fang_Encounter2	"Sarah_Fang_Encounter2"

Sarah_Fang_Encounter2 is a situation.
ResolveFunction of Sarah_Fang_Encounter2 is "[ResolveEvent Sarah_Fang_Encounter2]".
Sarea of Sarah_Fang_Encounter2 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Fang_Encounter2:
	project the figure of Sarah_clothed_icon;
	say "     As you enter the courtyard, you catch sight of Sarah sitting on the edge of the fountain with her back to you, softly humming to herself. Figuring that you might go and have a conversation with her, you begin to approach but someone barges past you as you take a step forward. Annoyed that someone would be so rude, you turn to give them a piece of your mind but stifle any retort as you discover that is Fang and he looks intent on sneaking up the husky, giving you a firm look to communicate that you should remain quiet. Despite the knowledge that this is unlikely to end well, and any desire that you have to warn Sarah of his approach, you submit to your Alpha's will and step back silently to allow him to proceed unhindered. With a grateful nod, the wolf resumes stalking forward, the female canine oblivious to his presence. You only hope that she'll understand and forgive you, or even better not know that you stood by and did nothing.";
	say "     Maybe she caught his scent, heard his claws on the path, or merely sensed that something was wrong, but as Fang gets within a couple of meters of her, Sarah turns her head and sees the advancing wolf. Her eyes widen as she hurriedly begins to rise, but as she turns her foot-paws get tangled and she sprawls face-first onto the ground, leaving her exposed as the wolf closes the gap. Before she can recover, Fang is atop her, pressing a paw against her back while remaining clear of her fiercely kicking legs, learning from the last time the force that she can put behind them. 'Be still,' the Alpha snarls, putting more pressure on his paw to hold her down. 'Fuck you. Get off me you flea-ridden mutt. I will never submit to you,' Sarah spits back, wriggling desperately in a futile attempt to get free.";
	WaitLineBreak;
	say "     Given Fang's larger size and the position of strength over her, no matter how she struggles, Sarah is unable to escape Fang's hold on her. Tiring of her wriggling and cursing, your Alpha crouches down and grasps the back of her neck hard enough to draw blood, but not enough to cause any further harm, marking her as his own. The husky falls silent and goes stiff, making you unsure as to whether this is due to shock, instinct, or fear. It would seem to be the latter as the medical student begins to cry, taking deep, terrified gulps of air as tears stream over her muzzle and trickle onto the ground. 'P-p-please let me go. I d-don't want to get p-p-p-pregnant. I don't want to be just another breeding bitch in the city, just a fast-cooking incubator for more and more babies. I don't w-w-want to lose who I am. PLEASE?' Sarah begs between sobs, almost shouting at the end before tears overwhelm her again.";
	say "     To your surprise, Fang releases his grip on the scruff of her neck, briefly licking the few spots of blood from her fur before circling around in front of her and licking at her face to, salty tears being washed away by his tongue as she raises her head and looking at him with a little more humility than during their encounter in the library. 'I'm sorry.' You are shocked to hear an apology from your Alpha, and Sarah seems to be too, but before she can speak, Fang continues. 'I will not rape you. You are scared. Reason behind refusing me. I shall respect this.' While the husky seems unsure how to process this, her sniffling subsides and she relaxes a little against the larger wolf, likely due to a mixture of exhaustion and relief. The two of them lie together like this for several minutes before, considering Sarah to have recovered enough, Fang stands up and begins to leave.";
	WaitLineBreak;
	say " 	Strangely, the husky reaches out and attempts to grab Fang's waist as he departs, making him pause and turn back to her. 'Thank you. Despite your forcefulness and how you scared me, you seemed to care in your own way, and for that I am grateful. You may be less feral-minded than I had thought. While I am unlikely to ever willingly have sex with you, getting to know you so that you can earn my trust isn't beyond the realm of impossibility,' she hesitantly says as she stiffly rolls over and sits up. Fang lets out an acknowledging snort and returns back inside to the library. It may be a while before Sarah recovers from this, but considering your Alpha didn't forcefully violate her, there may yet be hope for the two of them to become something like friends, if Fang is willing to accept her willfulness and she, his more animalistic nature. With that, you sneak away.";
	move Player to Courtyard;
	now FangSarahInteraction is 2;
	now lastFangSarahInteraction is turns;
	now Sarah_Fang_Encounter2 is resolved;


Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Fang_Encounter3"	Sarah_Fang_Encounter3	"[EventConditions_Sarah_Fang_Encounter3]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_Fang_Encounter3"	Sarah_Fang_Encounter3	"[EventConditions_Sarah_Fang_Encounter3]"	Grey Abbey Library	2500	2	100

to say EventConditions_Sarah_Fang_Encounter3:
	if (HP of Fang is 3 or HP of Fang is 4) and Fang is in Grey Abbey Library and Fang is Male and Sarah is in Bunker and SarahSlut is 4 and FangSarahInteraction < 1 and lastfuck of Fang - turns > 7 and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and a random chance of 1 in 2 succeeds and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_Fang_Encounter3	"Sarah_Fang_Encounter3"

Sarah_Fang_Encounter3 is a situation.
ResolveFunction of Sarah_Fang_Encounter3 is "[ResolveEvent Sarah_Fang_Encounter3]".
Sarea of Sarah_Fang_Encounter3 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_Fang_Encounter3:
	project the figure of Sarah_clothed_icon;
	if debugactive is 1:
		say "     DEBUG -> SARAH & FANG MEET - FangSarahInteraction: [FangSarahInteraction], HP of Fang: [HP of Fang] <- DEBUG[line break]";
	say "[LibraryEntry_NavOrWalk]";
	project the figure of Sarah_naked_icon;
	say "you are comforted to see your Alpha in his usual position by the front door, protecting his pack and their home from any creature roaming the city that might take an interest in claiming the library for its own. You also notice Sarah peering around the corner of a bookshelf, the slutty husky outside of the bunker for once and gazing lustfully at the wolf stud by the entrance. You would smirk at her infatuation, but you understand the attraction that she has towards the majestic, dark-furred guardian as you too feel that way. While you consider whether or not to encourage her to make herself available to him, you realize that he will be fully aware of her living in the library and should he be interested in her, that he will take her as is his prerogative as Alpha. It is up to the two of them to make this happen.";
	say "     Seemingly coming to a similar conclusion, or more likely having had her caution overwhelmed by horniness, Sarah creeps out from behind the shelf and approaches the wolf, copious fluids leaking from her canine spade, the engorged lips almost throbbing with need and splattering her scent onto the floor behind her. She barely spares you a glance as she passes by you, only halting when she is beside Fang where she rolls on to her back and nuzzles up against his side. With a final glance out the door to ensure that nothing is approaching, the Alpha turns his attention to the display of submission before him, leaning down to sniff at her throat and puffy vulva, his tongue slipping from his mouth to lick at it for a moment before continues to inhale the husky's scent. You can see his crimson shaft beginning to emerge beneath him, the soft skin of his shaft stretching as finally his knot slips free, already partially inflated despite the wolf not having yet begun mating. The effect that this has on Sarah is obvious, the excitement of having such an effect on the pack leader visible on her face as well as her body language.";
	WaitLineBreak;
	say "     As she attempts to roll over again to assume a more typical position, Fang firmly places a paw on her chest and halts her, the husky's eyes widening in worry that she has displeased her Alpha. This fear is soon dispelled when the larger wolf circles around until he is standing over her with his cock hovering just in front of her swollen spade, the tip dribbling precum over the lips and adding to the already copious lubrication around the entrance. Instead, she looks up at him and whines needily, keeping her hindquarters still so as not to hinder penetration but tossing her head around impatiently. She doesn't have to wait long before Fang thrusts down forcefully, her vulva spreading with ease around his girthy shaft as he spears into her. Neither of them in the mood for foreplay or going slow, the two canines engage in a very vigorous and lust-driven mating, Sarah yipping and moaning, the volume of which increases each time the wolf's knot slaps against her entrance with a very wet sounding smack.";
	say "     Unsure whether it is due to the thick scent of sex that is filling the room or just the carnal sight in front of you, you are momentarily tempted to pleasure yourself as you watch but decide against it so as not to miss any of the passion of their coupling as well as wishing to avoid distracting either of the lusty canines, instead settling for watching hungrily as your Alpha claims another willing bitch for his pack. While Fang's thrusts may have been forceful before, his movements are becoming rougher and rougher, short snarls and growls bursting from his throat as he exerts himself, and you can only assume that he is approaching climax and determinedly trying to ram his swollen knot into the warmth of the husky's cunt. Sarah reacts to the extra vigor with unconstrained enthusiasm, a continuous euphoric whine issuing from her open mouth until, at last, her Alpha slams his groin flush with hers and releases a howl as he ejaculates into her womb.";
	WaitLineBreak;
	say "     Given the size of the wolf's cock, the tip must be tightly pressed against the slutty husky's cervix, the nanites playing their part to convert pain to additional nerve-tingling pleasure as jet after jet of hot, virile sperm is shot into her and causing her to orgasm too, the walls of her vagina aiding and encouraging an increasingly sizeable load of cum to fill her womb. Fang slowly settles atop his newest pack-mate, body pressing Sarah against the floor and smothering her in the potent scent of his thick fur, the scent of an Alpha, even as he marks her as his with his seed. From the way that her tongue lolls from the side of her mouth and the shine in her eyes, she is very pleased with herself for enticing such a virile male and being claimed as his, though you wouldn't put it past her to find other males too, but for now she directs her gratitude and affection towards the wolf atop her, licking at his muzzle and throat while the two of them wait for his knot to deflate and the inevitable flood of cum that will follow it. With a contented smile you leave them to savor this moment together and continue with your day.";
	move Player to Grey Abbey Library;
	NPCSexAftermath Sarah receives "PussyFuck" from Fang;
	now FangSarahInteraction is 1;
	now lastFangSarahInteraction is turns;
	now Sarah_Fang_Encounter3 is resolved;

Section 4.7 - David


Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Sarah_David_Encounter1"	Sarah_David_Encounter1	"[EventConditions_Sarah_David_Encounter1]"	Bunker	2500	2	100

to say EventConditions_Sarah_David_Encounter1:
	if (Sarah is in Bunker and David is in Bunker and DavidSarahInteraction < 3 and SarahCured > 1 and (lastDavidSarahInteraction - turns > 6)) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Sarah_David_Encounter1	"Sarah_David_Encounter1"

Sarah_David_Encounter1 is a situation.
ResolveFunction of Sarah_David_Encounter1 is "[ResolveEvent Sarah_David_Encounter1]".
Sarea of Sarah_David_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Sarah_David_Encounter1:
	if DavidSarahInteraction is 0:
		if debugactive is 1:
			say "     DEBUG -> David & SARAH SPEND TIME TOGETHER 1 - DavidSarahInteraction: [DavidSarahInteraction] <- DEBUG[line break]";
		say "[SarahDavidScene1]";
	else if DavidSarahInteraction is 1:
		if debugactive is 1:
			say "     DEBUG -> David & SARAH SPEND TIME TOGETHER 2 - DavidSarahInteraction: [DavidSarahInteraction] <- DEBUG[line break]";
		say "[SarahDavidScene2]";
	else if DavidSarahInteraction is 2:
		if debugactive is 1:
			say "     DEBUG -> David & SARAH SPEND TIME TOGETHER 3 - DavidSarahInteraction: [DavidSarahInteraction] <- DEBUG[line break]";
		say "[SarahDavidScene3]";
		now Sarah_David_Encounter1 is resolved;
	now lastDavidSarahInteraction is turns;

to say SarahDavidScene1:
	project the Figure of David_clothed_icon;
	say "     As you walk into the main room of the bunker, you come upon an interesting scene. Sarah is sitting cross-legged on her bed, reading a book, as the human soldier David walks up to her with a friendly smile on his face. Holding out a hand to her, he says, 'Hey there ma'am. Since I guess we're in the same boat - holed up down here and all that - I wanted to say introduce myself. David Jackson, private first class, US army.' Looking up from her book, Sarah gives him a smile in return and her tail starts wagging. She is already halfway to taking his hand before she suddenly hesitates, pulling her hand-paw back a little. 'Um... are you sure you want to do that? I mean - you're still human and I'm... a dog. Aren't you worried it'll rub off on you? These nanites are pretty easy to transmit from what I've seen.'";
	say "     David gives a little shrug, then enthusiastically slides her hand into his and shakes Sarah's furred appendage. 'Well, it's only polite to treat you like any other person. My grandma always said you should be friendly when meeting someone - no matter what they look like. Of course she only meant our Latino neighbors, but I think one can apply that to anyone. As for the other thing... haven't had any problems so far, and I've been here a while. Guess eating all your greens does pay off in the end, eh?' The canine medical student is almost blown away by her new friend's very open demeanor, and soon they're sitting side by side on her bed together, happily chatting with one another.";
	now DavidSarahInteraction is 1;

to say SarahDavidScene2:
	project the Figure of David_clothed_icon;
	say "     As you walk into the main room of the bunker, you pull open the door leading into its main chamber... and see David sprint past the opening all of a sudden. Stepping into the room, you look after him with a curious expression. Looks like the man has decided to jog a bit, down here in the bunker. The athletic soldier soon reaches the end of the room, slaps the wall lightly and turns around, then sprints back towards you. You hear a friendly, 'Hey there,' as he passes you without stopping, going on with his run till he arrives next to Sarah. The young husky female stands waiting for him, a stopwatch in hand and with a stethoscope around her neck. As you watch, she writes down David's time on a small notepad, then puts her hand on his neck to feel his pulse.";
	say "     Casually strolling over to the two of them, you ask what's going on, and the somewhat sweaty soldier replies, 'Oh, I'm just helping the doc here with her project.' Sarah's tail wags happily as she hears him say that, but she does raise a finger to clarify, 'I'm not a doctor yet - but I'm getting there, especially if I can figure out why David here has such a high resistance to the nanite infection. Other people seem to transform with the slightest touch, but he's... well, human through and through. And that is after being out on the streets for days and weeks.' She gives her soldier friend a smile and pats his arm - and you notice her hand lingering just a little bit long there, feeling and squeezing his firm bicep.";
	WaitLineBreak;
	say "     'So - er... while I don't have all the equipment that I'd like to, I can check our soldier boy out the traditional way. Gathering information about his vitals and all that. From what I can tell so far, he's healthy as a horse.' David stands up a bit straighter and runs a hand through his hair, then says with a chuckle, 'Too bad I'm not hung like one. Wouldn't that be a sight, eh.' The three of you chuckle at his joke, then Sarah turns back to examining him - listening to his heartbeat and breathing, then making David flex and stretch while taking notes. After a little while, you walk away from them again, leaving the two to their research project.";
	now DavidSarahInteraction is 2;

to say SarahDavidScene3:
	project the Figure of David_clothed_icon;
	say "     As you walk into the main room of the bunker, you spot David and Sarah standing a bit off to the side, in a far corner of the room - with the soldier just in his underwear and standing at attention as Sarah examines him. She strokes gently over the claw-marks marring the left side of his chest and left thigh, her tail stiff in attention. 'How long ago did you say you got wounded here?' the medical student says, puzzlement audible in her voice. David replies and gives a short accounting of the events in the bar, with the captured demon breaking free and then you coming in and saving his ass. Eyebrows raised, Sarah looks at him as if she expects him to correct himself, then glances down at the scars again, tracing them with the tip of a finger.";
	say "     'There is no way these should be healed this well. Or at all - these slashes here, right over your heart... they're life-threatening. I'm sorry to tell you this, but without medical attention - and I'm talking an ambulance here - you should have bled out in that bar,' the anthro husky tells her friend in a somber tone. David swallows visibly, putting a hand on the healed wounds on his chest - as if to make sure he's not imagining being healthy. 'Hey, calm down. It's alright,' Sarah tells him, lifting the man's head with a finger under his chin so he's looking at her, not himself. 'I've got a theory... You see, you might not actually be resistant or immune to the nanites. It could be that you're just lucky enough to actually have caught a strain that simply wants to... make you whole. You know, not mess with anything else, only heal. Fascinating.'";
	WaitLineBreak;
	say "     David keeps standing there for a long moment while Sarah gets a bit of a far-away expression, apparently thinking about the implications of her idea. Finally, he clears his throat and says, 'So then, doc. Can I get dressed again? Getting a bit drafty in just my skivvies.' His husky friend shakes her head as if to clear it from far too many ideas popping up right now, then focuses on David again. 'Oh, erm - sorry. Yeah of course. You can put on your stuff again. And thank you so much for letting me examine you. This might help research even more than I thought.'";
	now DavidSarahInteraction is 3;

Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Sarah's Epilogue"	"NPC"	""	Sarah's Epilogue rule	900	false

This is the Sarah's Epilogue rule:
	if humanity of Player < 10 and the Player left:
		make no decision; [Skip this, if the player succumbed to the infection and has left (everything behind).]
	if Sarah is in the bunker:
		trigger ending "Sarah's Epilogue";
		if SarahCured > 3: [fully cured]
			if humanity of Player < 10: [player succumbed]
				say "     Returning to the bunker, you waste no time in pouncing on the little husky you left there earlier - but Sarah actually manages to slip from your grasp. Distraught at seeing her hero and friend in such a state, she runs towards the exit out of the bunker, slamming the door in front of your nose with only a second to spare. Bouncing off the heavy steel door in your haste, Sarah is gone by the time you've picked yourself up from the ground again. You soon give up searching for her, shrugging off any further thought of the young woman as your body's lusts push other priorities aside...";
			else: [sane player]
				say "     Sarah is taken in to a quarantine center when the military arrives to rescue those that don't actively resist being saved from the city. The doctors who examine her are pleasantly surprised at having a husky who (for once) doesn't try to get them to fuck her immediately. Being a medical student herself, Sarah gives them valuable insights about the infection, sharing everything she has observed and lived through. Presenting the carefully packed satchel with her remaining supplies of libido suppressant, the young woman even manages to talk her way into joining the research team - first as a knowledgeable insider giving the perspective of an infected person, then eventually as a full medical researcher as her contributions over the following months put her into high regard. Those who were suffering from being left in an over-sexed state due to their transformations benefit greatly thanks to the resulting production of fresh libido suppressant. Encouraged by the first successes, Sarah keeps working tirelessly to improve the serum further and further after that, eventually making her one of the top scholars for the nanite infection and possibilities of treating it.";
				if SarahCured > 4: [player + Sarah had sex]
					say "     Remembering the intimate time you spent with one another in the bunker, the young woman keeps you near and dear to her heart. You will always be her hero, the one who saved her again and again - then gave her the confidence to open up again to the natural urges of her body. When Sarah sees you, her tail will inevitably start beating in a quick wag and the pretty husky typically follows up with a hug or even a friendly lick. As close friends in the modern, post-nanite era, the two of you end up enjoying each other's bodies more often than not, resulting in many a night cuddled up in bed with a warm, soft-furred husky - in her place or yours.";
		else if SarahCured is 3 or SarahCured is 2: [had a single dose of libido suppressant]
			if humanity of Player < 10: [player succumbed]
				say "     Returning to the bunker, you waste no time in pouncing on the little husky you left there earlier - but Sarah actually manages to slip from your grasp. Distraught at seeing her hero and friend in such a state, she runs towards the exit out of the bunker, slamming the door in front of your nose with only a second to spare. Bouncing off the heavy steel door in your haste, Sarah is gone by the time you've picked yourself up from the ground again. You soon give up searching for her, shrugging off any further thought of the young woman as your body's lusts push other priorities aside...";
			else: [sane player]
				say "     Sarah is taken in to a quarantine center when the military arrives to rescue those that don't actively resist being saved from the city. The doctors who examine her are pleasantly surprised at having a husky who (for once) doesn't try to get them to fuck her immediately. Being a medical student herself, Sarah gives them valuable insights about the infection, sharing everything she has observed and lived through. Soon, she is released from the holding center and given some support to get her life back on track.";
				say "     Having used up all of the libido suppressant you found for her before the soldiers arrived, managing her hyperbolic libido isn't all that easy, but the knowledge that it can be done gives her the strength to last through it - at first day by day, then working up to weeks and months without any embarrassing outbursts. Confident in her success, Sarah then even creates a support group for those who suffer from over-active libidos due to their new body plans, which quickly gains numerous new members as word spreads through the population of infected people.";
		else if SarahCured < 2 and SarahSlut < 4: [basic or slut Sarah]
			if humanity of Player < 10: [player succumbed]
				say "     Returning to the bunker, you waste no time in pouncing on the little husky you left there earlier, her moans as she fully succumbs to the infection are music to your ears. Before long she has been properly tamed, and all her pretense of clinging to her sanity and morals has vanished, helplessly stolen away under your powerful sexual assault. Enjoying your conquest, but still feeling as if it isn't enough, you soon head out into the city, knowing that some new destiny awaits you out there, you and your faithful pet husky following behind you...";
			else if coonstatus is 0 or coonstatus > 100: [incomplete conversion and no Candy]
				say "     Sarah comes with you after the rescue, glad to finally see the military arrive and eager to get back to her normal life. Acclimating to civilized life is particularly hard for her and her hyperbolic libido, resulting in a few embarrassing breakdowns in public.";
				say "     Ultimately, though, she manages to get by with your help, cobbling together a reasonably dignified way of living. Against the advice of similarly infected, she seems very adamant about not receiving 'relief' for her lingering lust, which puts her in a precarious position of avoiding her kin while also being alienated by the uninfected. At the very least, she seems glad to have you for company.";
		if SarahSlut is 4: [collared slut Sarah]
			if humanity of Player < 10: [player succumbed]
				say "     Returning to the bunker, you waste no time in pouncing on your little slut husky, her happy moans and begging are music to your ears as you indulge yourself with your slut. You find yourself grinning as you enjoy some private time with her, instinctively knowing how best to dominate and control the submissive bitch. Soon though, she becomes less and less a husky bitch, perhaps due to your dominance as she begins to take on a form more like your own. The changes are small at first, though they grow more and more prominent as your strong dominant infection overwhelms her own, making her into a more suitable breeder for your needs.";
				if Player is male: [male/herm]
					say "     You grin as her body becomes an even better match for your own. Its form better able to take your powerful [Cock of Player] cock again and again, so she can breed you lots of little babies. And you waste no time testing this as you sink yourself into her warm wetness over and over, enjoying your dominance over your little pet. Eventually though, it is time to leave the small little bunker, a whole city waiting for you out there for you and your little slut, and you lead your newly changed submissive mate out into the world, you to find your destiny, and her to service your every whim and bear your offspring...";
					if SarahPups > 0: [Player bred Sarah]
						say "     Her pups succumb to the changes even faster than their mother, her newly changed milk running through their vulnerable bodies and altering them as well. Soon her offspring are properly representative of your new forms, and looking at them you are proud to see them as proof of your own virility and the start of the many, many young you plan to sire with your lovely little breeding slut.";
				else: [female]
					say "     You find yourself smiling as her body becomes a proper match for your own, her female form soon matching yours as you both lick and tease each other in a pleasurable orgy of sex. You find yourself feeling even more needy and slutty as your pet demonstrates her submission to you over and over again, until soon you are panting with almost as much need as she has. Realizing that you are not going to find the mate you both so desperately need while remaining here in the bunker, you turn to the city outside, leading your new slutty sister along with you as you head out into the city to find your destiny, and if possible, find you both a nice strong mate to share...";
					if SarahPups > 0:
						say "     Her pups succumb to the changes even faster than their mother, her newly changed milk running through their vulnerable bodies and altering them as well. Soon her offspring are properly representative of your new forms, and looking at them you are proud to see them as proof of your own virility and as an example of the offspring you soon hope to be bearing from your own fertile body as well. You are soon helping her feed and care for the young, even as you both prowl the streets together looking for a proper male to fill both of your needy wombs up with their virile seed, so you can bear them even more little kits...";
			else: [player sane]
				say "     Finally rescued by the military with your mind intact, you bring Sarah along with you, and while some of the military are worried about her obvious feral tendencies, you manage to reassure them that she is properly in hand. It doesn't hurt that they have bigger concerns than a personal pet of a survivor, and so you make your way out into the world with the slutty husky at your side. You soon find out that having your own personal bitch is an even better thing now that you are in the outside world again, as she welcomes you home eagerly every night and takes care of all the chores. Being a good little pet, she is more than happy to help you out as you meet new people and bring some of them home to 'meet' her.";
				say "     Eventually you feel like rewarding her with a companion and pick up a normal husky dog to keep her company - a nice strong male both for her pleasure and your own, as you find yourself enjoying watching the formerly bright medical student eagerly going down on all fours for a purebred husky stud, moaning and yipping underneath the dog like a proper bitch as she is fucked, knotted and bred. She seems even happier as her belly grows round with husky puppies again and again. While you sell some of them to breeders, you enjoy keeping several of them around the house, looking forward to when they grow up and you can have a full pack of slutty huskies at your disposal.";
				if SarahPups > 0:
					say "     You were able to smuggle your pups with Sarah out of the city under the military's nose, and while they grow up quickly and become somewhat of a strain to keep fed, you enjoy watching them become strong little huskies. Making sure to train them all properly when they are young, both the males as well as the females, you ensure they know their proper roles as well-trained husky sluts for anyone who wants them. Soon you have a number of good homes lined up for them to go live in, where they can serve their own masters and owners just as loyally as your own husky bitch serves you. Your slutty 'kennel service' does well and helps cover the expenses of your busy household.";

Sarah ends here.
