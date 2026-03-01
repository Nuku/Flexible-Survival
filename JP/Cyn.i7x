Version 1 of Cyn by JP Begins here.

"Adds Cyn to FS."

[reviewed by Sundered_Dragon]

[Version 1 - walk in event with 2 possible paths (bad-BOSS or good-NPC), some interactions, trade system and pet]
[Planed for Version 2 - sex scenes for Cyn and vore interactions for sacrifices]
[Planed for Version 3 - Pregnancy and offspring + breast feeding interaction]
[Planed for Version 4 - rescue endings and maybe others]
[Planed for Version 5 - Make the Limbo an explorable world]
[Planed for Version 6 - Expansion for the bad path]

[       Section 1       ] [NPC]
[       Section 2       ] [First events]
[       Section 3       ] [Second events]
[       Section 4       ] [Library NPC actions]
[       Section 5       ] [Pet]
[       Section 6       ] [Unique trade items]
[       Section X       ] [Commands and/or Cheats]

[    Depravity of Cyn   ] [counter towards bad path]
[    HP of Cyn          ] [event/story progress]
[    Charisma of Cyn    ] [Boop scenes]
[    Humanity of Cyn    ] [unlock shop items]

[Reminder of stats Cyn isn't using]
[Strength, Dexterity, Stamina, Intelligence, Perception, Hunger, Thirst, Libido]

Section - 1 NPC

Table of GameCharacterIDs (continued)
object	name
Cyn	"Cyn"

Cyn is a woman.
Cyn is in Nowhere.
ScaleValue of Cyn is 3. [1 is teeny tiny. 2 is small. 3 is human sized. 4 is horse sized. 5 is absolutely massive.]
Body Weight of Cyn is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Cyn is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Cyn is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Cyn is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Cyn is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Cyn is 6. [length in inches]
Breast Size of Cyn is 5. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Cyn is 2. [count of nipples]
Asshole Depth of Cyn is 8. [inches deep for anal fucking]
Asshole Tightness of Cyn is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Cyn is 1. [number of cocks]
Cock Girth of Cyn is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Cyn is 6. [Length in Inches]
Ball Count of Cyn is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Cyn is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Cyn is 1. [number of cunts]
Cunt Depth of Cyn is 9. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Cyn is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Cyn is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Cyn is false. [Leave as false. The game will change this once you've used the "look" command on the npc. Can be used for things like knowing an npc's name, etc.]
PlayerRomanced of Cyn is false. [Leave as false. You can change this to true later within events to have dialogue and scenes specific to "dating" an npc!]
PlayerFriended of Cyn is false. [Same as above, but for friendship.]
PlayerControlled of Cyn is false.
PlayerFucked of Cyn is false.
OralVirgin of Cyn is false.
Virgin of Cyn is true.
AnalVirgin of Cyn is false.
PenileVirgin of Cyn is false.
SexuallyExperienced of Cyn is true.
TwistedCapacity of Cyn is false.
Sterile of Cyn is true.
MainInfection of Cyn is "Limbo Fox".
Description of Cyn is "[Cyndesc]".
Conversation of Cyn is { "<This is nothing but a placeholder!>" }. [Leave it as a placeholder. Taken care of by "instead of conversing" lines.]
Scent of Cyn is "Cyn smells like roses, however you doubt that scent is natural of her, considering her powers.";

To say Cyndesc:
	say "     Cyn is a black-furred vixen, with [one of]hollow[or]abyssal[or]jet[or]umbral[at random]-black eyes with red glowing slitted vulpine eyes. She has two big furry ears on top of long, fluid dark hair. She has two fluffy, long, dark tails swinging behind her, with lush e-cup breasts on her chest, and long, sharp, shadowy claws on her hand-paws. Clade in a damaged black cloak, scarred thread-bare blouse, black panties, a dark-purple scarf, and some cosmetic bandages on her left thigh gives her the appearance of consummate scavenger. Occasionally, you note an adorable bludge in her skin tight panties, as the lacy fabric neatly highlights her plush foxy sheath and ripe chicken egg-sized sized balls swaddled in silky white fur. When erect, you'd estimate her hybrid hermhood to be around seven inches long with a ripe bitch-breaking knot nestled neatly at the base of her bestial dick. Interestingly, despite her largely vulpine appearance, her juicy tapered grey cock is capped by vaguely human mushroom head.";


Section 2 - First events

Table of GameEventIDs (continued)
Object	Name
Walking Anomaly	"Walking Anomaly"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Walking Anomaly"	Walking Anomaly	"[EventConditions_Walking_Anomaly]"	Ghost Fair	2500	2	100

to say EventConditions_Walking_Anomaly:
	if "Touched by Madness" is listed in Feats of Player and level of Player >= 20:
		now CurrentWalkinEvent_ConditionsMet is true;

Walking Anomaly is a situation.
ResolveFunction of Walking Anomaly is "[ResolveEvent Walking_Anomaly]".
Sarea of Walking Anomaly is "Nowhere".

to say ResolveEvent Walking_Anomaly:
	say "     As you explore around the area, you hear a faint, distorted giggle behind you. Quickly turning to find find the source of the noise, you behind you to find a tall, lanky creature that looks like a humanoid fox with elongated arms and dark gray fur staring back at you with an unsettling smile. Taking a closer look, she appears to be wearing a gray tunic that even covers her elongated arms and what looks like a mix of a black bandolier and sash. As you look her up, she appears to be doing the same. Either that or she's just staring at you for no reason, but you have no time to wonder about it as she starts to advance towards you with malicious intent, its elongated arms and scythe-like claws dragging behind them.";
	challenge "Hallucination";
	if fightoutcome >= 10 and fightoutcome <= 19: [win]
		say "     The creature's eyes flicker for a bit as it falls to its knees.";
		say "     [bold type]What do you want to do?[roman type][line break]";
		let HallDefeat_list_Choices be a list of text;
		if Cock Count of Player >= 1:
			add "Fuck her." to HallDefeat_list_Choices;
		add "Play with her." to HallDefeat_list_Choices;
		add "Leave." to HallDefeat_list_Choices;
		let HallDefeat_list_Choice be what the Player chooses from HallDefeat_list_Choices;
		if HallDefeat_list_Choice is: [lists]
			-- "Fuck her.":
				say "     Perhaps guessing your intentions, the creature's clothes suddenly start radically changing color with a loud, sudden, static hiss as they vanish, revealing her rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, delicate C-cup breasts swaddled in a lurid black pelt broken by an adorable white patch of fur on her underbelly. That gracefully draws your eyes to her angular onyx vulpine cunt, dripping with anticipation and primal need as she flexes her toned digitigrade paws before you with an odd jerking motion. Even in the oppressive gloom engulfing the Ghost Fair, her glossy obsidian claws and plush gray toe beans manage to catch your eye as she seems to lean into your inquisitive gaze. Her face glowing bright red through her silky sable hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves. Eliciting a cute, if bestial whimper laced with a discordant tenor as if her voice were echoing through a worn-down microphone as you grope her plush furry butt before gliding your hand back up to her supple breasts.";
				say "     Indulging your tactile senses upon her round, soft, pillowy breasts, delighting at the sensation of pelt and the tender heft of her shapely c-cups playing across your [BodyName of Player] palms, while the creature looks on with a questioning or bored look, perhaps a bit of both, till its mouth turns to a twisted smile, showing a long row of sharp teeth. You suddenly feel something cold and wet grab and restrain your legs and arms with superhuman strength. Reality seems to shatter right in front of your [Cock Size desc of Player] cock as the area resounds with the sound of breaking glass, and you start to panic as it slowly swallows it completely. Unable to see anything beyond the salubrious umbral borders of the tear, you find yourself moaning with muted delight as the inviting, velvety embrace of wet, fleshy walls pulsate about the contours of your [cock size desc of Player] member quickly stills any sense of dread you may have had.";
				WaitLineBreak;
				say "     The tentacles restraining you continue to expand over your body till they cover most of it, grabbing and groping your [bodydesc of Player] body; ";
				if Player is impreg_now or Player is mpreg_now:
					say "they reach for your expectant [BodyName of Player] belly, fondling your supple curves with surprisingly deliberate care, as the unseen tendrils tenderly pamper your growing bump in their pleasingly cool coils. A part of you can't help but coo happily at their supportive caress as the soothing chill washes over your taut [skinname of Player] skin like a tranquil balm. ";
				else if CockName of Player is not listed in infections of InternalBallsList:
					say "they carefully hold and fondle your cum containers, their cold touch sending you shivers through your lower half, while others reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain. ";
				else if Cunt Count of Player >= 1:
					say "they caress your already dripping feminine petals, some of them taking a step forward and penetrating it, adding to your excitement even further, as they reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain. ";
				else if Nipple Count of Player >= 2 and Breast Size of Player >= 2:
					say "they grope and squeeze your [Breast Size desc of Player] chest, as another group of them reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain. ";
				else:
					say "they reach for your [Bodyname of Player] belly, giving you a small sense of discomfort from their sudden cold touch, yet somewhat pleasing caress.";
				say "Looking back at the creature, you find her lying on the ground, moaning while rubbing her thighs against one another, as her toned digitigrade paws twitch with desire. One of her hand paws gropes at her white, furred underbelly, while the other leisurely massages her soft breasts, sinking their obsidian, sword-like claws into them, creating subtle folds in their bosom.";
				say "     One final clench from her eager passage brings you to release, basting her vulpine cunt in molten sheen of your pearly seed, pushes her over the edge with an ear-piercing cry. As the rift vanishes and the tentacles retract into their spacial fractures, loosing its supportive hold on you and your member. You lay panting on the floor, blissfully spent as the mix of emotions and the strange touch of the shadowy vulpine has left you completely drained. You almost don't mind having been technically topped, even if you are the one who won the fight. Looking around for your anomalous partner, you notice she seems to have disappeared along with the rift, strange, you didn't even see or hear her leave, as if she had simply bled into the gloom. Was she even real in the first place, though? You think to yourself as you feel something tickling at the back of your head. Why, though you can't be certain, but you feel... lighter, as if some piece of you had been worn away and a fragment of the pallid fog had wormed its way inside you. Shrugging, you decide not to dwell on her sudden disappearance or the unnatural buzz in the back of your mind, merely chalking it up to the unsubtle influences of the nanites playing their usual games with you, and instead focus on more important matters, like survival.";
				CreatureSexAftermath "Hallucination" receives "AssFuck" from "Player";
				decrease Humanity of Player by 5;
				now Walking Anomaly is resolved;
				now Depravity of Cyn is 0;
				now HP of Cyn is 1;
			-- "Play with her.":
				say "     Guessing your intentions, the creature's clothes suddenly, briefly start changing color with a loud, sudden, static knell till they suddenly vanish, showing a rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, dainty C-cup breasts wrapped in a lurid black pelt with a captivating patch of white furred swaddling her underbelly, that harmoniously draws your eyes to her umbral vulpine cunt. Dripping with excitement and animalistic need, as she flexes her toned digitigrade and foxy paws before you with strange unnatural jerking motions. Even in the oppressive gloom pervading the Ghost Fair, her glistening obsidian claws and plush gray toe beans still manage to catch your eye as she seems to lean into your inquisitive gaze. Her face bright red through her silky cabal hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves.";
				say "     Enthused by the sight of their exotic vulpine form, you coyly trace your [bodyname of Player] fingers along the silky border of her toned pelt decorating her animalistic leg, delighting in the pleasant chill dancing along your digits as you carefully spread her legs apart. All the while, the anomalous creature fixes you with a stare of profound indifference, though as you delicately draw your hands about the plush, dewy folds of her puddling puppy pussy, her demeanor seems to soften as a gentle ruby blush simmers about jet-black sex. Smirking, you languidly brush your fingers along the silky border of her puffy vixen clit, eliciting a pleasant whimper from her thin onyx lips as her voluminous tail teasingly coils itself around your leg. Though a brief flicker of alarm flashes through your mind like sparks of fresh napped flint at the oddly strong grip of her tail, the enthralling caress of her fur and placid yet intrigued expression on the otherworldly feral stills such thoughts as she tenderly warps your [bodytype of Player] and [breast size desc of Player] chest in her preternatural embrace.";
				WaitLineBreak;
				say "     While you run a hand along the sides of her [one of]slender[or]lithe[or]willowy[at random] belly, delight at the feeling of her smooth, soft, cold fur playing across your digits as you caress her pelt. A cute little moan issues from her, as she pulls your [facename of Player] face to her breasts with an indulgent flex of her lengthy tail. Acquiescing to her touch alongside the smoldering, flirtatious glance of the shadowy fox, you lovingly drape yourself atop her [one of]slender[or]lithe[or]willowy[or]lissome[or]svelte[at random] body and lavish her succulent ebony nips with a gentle series kisses, while your hands sensuously pamper her canine-cunt with long-drawn stroke of your experienced digits. Earning you an endearing yip from the once vicious creature as she shamelessly quivers in your grasp. Such a needy girl, you snicker, lightly nibbling her cool perky teat while her strangely lengthy tail playfully snakes its way up your [bodydesc of Player] body, to teasingly caressing your [facename of Player] chin.";
				say "     Purring happily at the sensation of her silky pelt waltzing about your visage, you can't resist nuzzling your face against her foxy fur as you kiss your way down her velvety treasure trail as the lucid wisps of your hot breath flicker about her [one of]ghostly[or]ethereal[or]willowy[or]eldritch[at random] body. The creature regards you with a curious look, she lifts her head to look at you, you notice her once milky white eyes have turned a light blue color. Her expression, though, borders on boredom, though this to seems to melt away into a look of unbound delight as your lips brush the bracing chill of her flush vulpine petals as you sensuously dip a pair the fingers into her welcome bestial muff while you caringly stroke her inner thigh with your left hand. Despite the unusual cold creeping up your arm, you find an unusual dissonant pleasure in the tight fold of canine flower as you, slowly at first, lavish her lust flushed folds hugging your digits with a hardy tweak of your far-traveled mitts.";
				WaitLineBreak;
				say "     Rumbling in a desperate trill, she lovingly wraps her legs about your head as she lewdly presses you against her bestial petals, while her scything claws almost playfully stroke the side of your head as if to encourage you. Despite the danger, the feeling of her oddly soft pads and lightly tickle of her talons gracing your [skinname of Player] hide only spurs you on as you tuck your lip to hers with a well-pleased hum. Ha-ha such a needy fox, never been touched before? You tease, lovingly lapping at her glistening obsidian flower as the sweet, sapid taste of fresh, icy strawberries greets your palate, as you slip your oral muscle between her plump decadently puffy cunt, reveling in the sumptuous fruity flavor greeting your lips as you alternate between the lurid pass of your tongue and the heavenly thrusts of your digits. All the while, your free hand roams her cushy bubble butt and trim waist as you glut yourself on the foxy feast before you.";
				say "     Not that they seem to mind, as their tail and elongated limbs roil about your own [bodyname of Player] form. Albeit in more crude and rough fashion, as she'd never before felt the warmth of another, still the eclectic mix of sensations of her satin pelt and razor talons flickering across your [bodydesc of player] body has a certain aplomb to it, you muse, as the ghostly fox writhes under your expert care. You can feel an all-too-familiar tightness welling her needy body as the vulpine cunt spasms about your tongue and with each artful pass of your oral muscle. 'Pl$@s&, m-m*r$,' she mews, her voice cracking with desperate need as she claps her legs roughly against your neck while her claws gently rack your back. Of course, you murmur between laps, cheekily working your digits about her bestial button and playfully caressing the inviting folds of her foxy clit with your thumb and pointer finger.";
				WaitLineBreak;
				say "     '^eS, y-^@s,!' she pants as, with one final allure kiss of your dexterous tongue as she cums, loosing a sumptuous gush of strawberry honey across your lips and collapses into a spent, happy heap at your feet. 'A#, s*, w&rm...,' she smiles in pleasure as she gently runs her talons across her blushing pelt. She fixes you with a welcome look, cooing, 'Wa^t, W@rm+h?' as she gestures to her well-fucked with an inviting wave of her tail. Hmm, warmth, huh? Perhaps she's asking for cuddles, and if so, you are more than obliged to do so, smirking at her tired face as you position yourself on top of her like a warm blanket and place your arms around her in a hug. You stay like this for a while, resting while sharing your warmth with the cold, cute fox-like creature, till you eventually feel recovered enough to leave, hearing a little sight of disappointment from the feral foxy critter as you get up. You gather your things and turn around to leave, giving the creature one last glance before doing so. However, she is no longer there, as if she just disappeared while you weren't looking.";
				say "     Was she even real in the first place, though? You think to yourself as you feel something tickling at the back of your head. Why, though you can't be certain, but you feel... lighter, as if some piece of you had been worn away and a fragment of the pallid fog had wormed its way inside you. Shrugging, you decide not to dwell on her sudden disappearance or the unnatural buzz in the back of your mind, merely chalking it up the unsubtle influences of the nanites playing their usual games with you, and instead focus on more important matters, like survival.";
				CreatureSexAftermath "Hallucination" receives "Stroking" from "Player";
				decrease Humanity of Player by 5;
				now Walking Anomaly is resolved;
				now Depravity of Cyn is 0;
				now HP of Cyn is 1;
			-- "Leave.":
				if Depravity of Cyn is 0:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an curious look and says, 'b-bye, hope t-to see you agaiiiiiiin soon hehehe' before suddenly vanishing.";
				else if Depravity of Cyn is 1:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an somewhat annoyed look and says, 'a-again? you-u are no fun' before suddenly vanishing.";
				else if Depravity of Cyn is 2:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an annoyed look and says, 'You ttthink you are fun-funny d-d-don't you' before suddenly vanishing.";
				else if Depravity of Cyn is 3:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an angered look and says, 'so that that's h-how it is huh [bold type]You will pay for this humiliation![roman type]' before suddenly vanishing.";
					now Walking Anomaly is resolved;
				increase Depravity of Cyn by 1;
	else if fightoutcome >= 20 and fightoutcome <= 29: [lose]
		if Humanity of Player >= 50:
			say "     Falling to your knees, you watch as a wicked smirk blossoms on the creature's lips and its eyes become hollow black, as its body falls limp to the ground. Its body then seems to ripple and dissolve into the ambient mist. For a brief moment, warm, comforting echoes of relief flicker about your core at its sudden disappearance. You begin to rise, ready, and make a break for the entrance of the fair grounds before it comes back. Only to feel a sharp weight coalescing on the side of your [FaceName of Player] head as the fog seems to writhe about you and the crisp floral scent of rose petals nips at your senses as inky mist whorls about you and pressure builds about your throat. Your breath catches and shadows pool into twin hollow, unfeeling pits that wink into being as the leering vulpine visage of your umbral foe materializes before you, its face staring at you sideways as if its neck were broken. At once fear and bone chill frost cut at your [skinname of Player] hide as its neck suddenly cracks back into place and the harsh touch of its talons cutting into your vitals, and supernatural strength of its hold pushes you to the ground.";
			say "     Its eyes are now completely glowing red. It regards you with a manic, predatory look, of primal hunger, and an odd twinge of... envy, where such a thing possible it watches you squirm helplessly in its grasp as its unblinking eyes drift over your [bodydesc of Player] as if appraising you. Why though, you can't be certain, nor does the willowy, crooked vulpine allow you the luxury of such musing as it leans towards you and touches its thin, candid lips to your forehead in perverse mockery of a kiss. You feel the heat drain from your body and pronounce tightness, just on the edge of pain simmering about the edges of your awareness as the chill spreads and limbs fall limply to your side. Only the brutal hold of the creature's unnaturally stretched arms keeps you standing as your vision dims and your senses deaden, and your world fades to little more than the voracious vulpine's gaze. The coiling of the scent of rose petals along the sweet notes of ancient decay.";
			WaitLineBreak;
			say "     Then those too soon bleed into the omnipresent fog as the creature's expression softens to one of predatory satiation as it releases its hold, and allows your numb form to fall at its paws like a marionette whose strings have been cut. Seemingly satisfied with its [']meal['], the shadowy vulpine makes a show of licking chops while a hollow contented purr issues from the muzzle. Her body briefly, violently flickers and twitches as its eyes return to their usual hollow withe color. She stares at you for a moment, lacking emotion, or is that perhaps regret? Before turning around and stepping back into the mist, its giant claws grinding against the floor as it walks away, leaving you there cold, numb, spent, and unerringly lightheaded from the encounter. Minutes pass, and soon the feeling returns to your limbs, yet you can't shake a feeling of profound lightness roiling in the back of your gloom-touched psyche, as if the foxy terrors took more than just your warmth but something far dearer. What, you can't say, as the lingering tendrils of its touch befuddled your thoughts, for the moment at least. Perhaps in time you'll recover, but you can't shirk the notion that you're somehow diminished.";
			decrease Humanity of Player by 15;
		else:
			say "     Falling to your knees, you expect the creature to take full advantage... But nothing happens, it just stands there, looking at you as if appraising you for a while before turning around and disappearing into the fog. Left confused, you begin to rise and prepare to leave before it changes its mind.";
	else if fightoutcome >= 30: [flee]
		say "     You run away, looking behind you, and you see that the creature is not following you, instead she just stands there looking at you with a soulless, creepy smile.";



Table of GameEventIDs (continued)
Object	Name
Walking AnomalieTwo	"Walking AnomalieTwo"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Walking AnomalieTwo"	Walking AnomalieTwo	"[EventConditions_Walking_AnomalyTwo]"	Ghost Fair	2500	2	100

to say EventConditions_Walking_AnomalyTwo:
	if "Touched by Madness" is listed in Feats of Player and level of Player >= 20 and HP of Cyn is 1:
		now CurrentWalkinEvent_ConditionsMet is true;

Walking AnomalieTwo is a situation.
ResolveFunction of Walking AnomalieTwo is "[ResolveEvent Walking_AnomalyTwo]".
Sarea of Walking AnomalieTwo is "Nowhere".

to say ResolveEvent Walking_AnomalyTwo:
	say "     As you explore around the area, as you hear a familiar, faint, distorted giggle behind you. You quickly turn around to find the tall, lanky creature from before staring back at you with an unsettling smile, dragging its elongated arms and scythe-like claws behind her as she advances towards you. Strangely, she stops a few feet away from you, her body and even the mist around her halt in place as if the world itself were frozen in place, a few bits of her slowly floating away from her, all the while an odd liquid like tv static coming out the sides of her mouth as her eyes continue to stare into yours, something tells you she wants you to make the first move this time.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk";
	now sortorder entry is 1;
	now description entry is "Perhaps you should try to talk to her while you have the chance.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fight";
	now sortorder entry is 2;
	now description entry is "Rush them while you have the chance!";
	[]
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
				if (nam is "Talk"):
					say "[TalkHallucination]";
				if (nam is "Fight"):
					say "[FightHallucination]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Leery of attacking such an unsual being, you decide to leave. As you start to depart, the creature as well as the fog surrounding it begins to distort with a loud static hiss before vanishing into the gloom.";
			wait for any key;
		else:
			say "T-That is an Invalid Op-Optioooooooooon. Pick between 1 and 1 and 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say TalkHallucination:
	say "     Putting your hand up to show no ill intent, you start telling the creature to Calm down and that you don't mean her any harm, you are simply curious about it, and wish to talk. It seems to have worked, the unnatrual stasis holding her and the opressive gloom seems to fade and the bits that were slowly floating about her drift back into place. 'T-th@t's ffuunnnnyy, I-I-I am curious a-about you uuuuuu too.' The creature says while its head and arms violently glitch. 'M-my NAME is Cyn.. What-t would y0u want to to aaaaaaaaaaaaask about me?'";
	say "[QuestionHall]";

to say QuestionHall:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "What are you?";
	now sortorder entry is 1;
	now description entry is "Its obvious she's not from this world, so what is she really?";
	[]
	choose a blank row in table of fucking options;
	now title entry is "What are your goals?";
	now sortorder entry is 2;
	now description entry is "Ask her about her goals?";
	[]
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
				let DoneTalkingToHall be false;
				now sextablerun is 1;
				if (nam is "What are you?"):
					say "[QuestionOneN]";
				if (nam is "What are your goals?"):
					say "[QuestionTwoN]";
				if DoneTalkingToHall is false:
					say "[QuestionHall]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Satisfied, you tell Cyn that it's her turn to ask questions, but she says, 'No need, I already have my answer, and, I h@-have to say... You are a very interesting-ing (entity) yourself, being REDACTED's doll and all.' Confused by her strange statement, you begin to ask what she means only to stop as you realize her form has suddenly shifted in the blink of an eye. Where once stood milky eyed lanky vulpine girl, now stands a foxy herm with [one of]hollow[or]abyssal[or]jet[or]umbral[at random]-black eyes and red glowing slitted vulpine pupils. She has two big furry ears on top of long, dark, ghostly hair, two fluffy, long, dark tails swinging behind her, and sizable e-cup breasts on her chest. Her usual elongated arms now have a more normal structure, and her hand paws have long, sharp, shadowy claws instead of the giant sword-like talons.";
			WaitLineBreak;
			say "     Not only that, but she appears to be wearing a damaged black cloak with multiple tears and cuts draped over a thread-bare blouse as if its original owner got attacked by a violent beast with black panties visible thru its tears that just barely conceal her cute little sheath's bulge and adorable plush fuzzy balls. Alongside a dark-purple scarf that also has some cuts, and some cosmetic bandages on her left thigh... But when did she, how did she? You ruminate, yet, before you can give voice to these thoughts, the creature interrupts you, saying. 'By-the-by, you wouldn't mi-mind helping me g&th#r, c0rrel@te, c0mpile, v!v!sect information about the world, right?' So it's information she wants, well good thing you're sheltering a library, some of the books there could be of use to her. You think to yourself, motioning to the general direction of the abbey, you regale her with a rough idea of where the abbey is and how to get there. Nodding along, Cyn scribbles her talons into the fog, in their wake you watch as everything you say is somehow written in the air in a yellow, glowy text.";
			say "     When she's done, Cyn abruptly claps her hands around the edges of the text, smashing it flat between her paws with a low static knell, balling it up, she carefully tucks the luminescent scrawl between the supple swell of her cute e-cup breasts, saying. 'Perfect, see ya at, location_nav_point_room_Sarea_outside: library then,' before vanishing into the fog, leaving you with more questions than answers. But still, you have things to do, so you shake your head and make ready to leave as well.";
			now HP of Cyn is 2;
			now Walking AnomalieTwo is resolved;
			wait for any key;
		else:
			say "TH-that's an Inval1d Opt1on-t1on. P1ck between 1 andd number of f (the number of f1lled rows 1n the table of fuck1ng opt1ons) fuck1ng opt1ons.";
	clear the screen and hyperlink list;

to say QuestionOneN:
	say "     Her neck cracks to the side as her eyes and mouth start glowing yellow, her mouth stretching into a crooked smile, as she says with a demonic, glitchy voice, 'Cyn.' 'someone.' 'your friend.' 'Limbo.' '[Name of Player].' 'Cyn loves you.' 'Something.' 'Null.' 'Error.' 'Nothing.' 'THE END.' 'No one.' at the same time, as if her very voice lagged and released all of her words at once. She then glitches back to her normal self, saying, 'sorry @b0ut that, I got a b1t excited, l-let's try again, shall we?' She brings her right arm to her face, looking at her oversized claws for a moment before continuing, 'What aaaaaaaaa-am I? Hmm, I have been so focused-d on learning about others that I never stopped to to think about myself... Give me some time to revisit some meeeeeeeeeeemories.' Her body goes limp as she finishes talking, as if whatever was controlling it just left. Perplexed and more than a hair worried and confused, your mind starts making up the worst scenarios. As you wait for a while, her body starts moving again. It looks like a scene straight out of a horror movie as her body contorts and stretches into unnatural shapes and twisted proportions.";
	say "     Only for her body to reform seconds later as she continues in a rather cute girly voice, saying, 'Sorry, for the wait. From what I-I learned, I am the personification//avatar_puppet_face//Cat's_Paw of a world/sphere_reality/being named Limbo, which is a separate-te, non-existing space from reality where nothing is supposed to exist. However, because of someone's e-e-experiments with world travel, where t#ey Forced a portal with no destination/coordnates open_set_viable_secured_error_room_name_missing or not set to private, so they ended up creating the first rrrrrrrrrrift_portal_ aperture and prey//food=true, and with it, the end of th@t w0rld_sph%r#_meal_>=1 is true, became food=false_// is zer0. As the world was pulled into meeee_u$_th^m this non-existing space, it ceased to be no-nothing_null//false=0, and I woke up, finally freeeeeeeeeeee fr0m that et£rn@l sleep... Does this answer your qu-question?' It takes some time to process what you just heard, but not wanting to appear rude, you give a thumbs up.";


to say QuestionTwoN:
	say "     'After gaining sentience, I became emotion na m eeeee- envious of other worlds. I wanted to learn as m-mmu-much as possible about everything, I wanted to create the- humm-, life? Rules? I w-was missing, and since your WORLD was unstable and in the process-ess of merging, I t#ou6ht I could learn a lo7 about it' She says with a neutral look.";


to say FightHallucination:
	challenge "Hallucination";
	if fightoutcome >= 10 and fightoutcome <= 19: [win]
		say "     The creature's eyes flicker for a bit as it falls to its knees.";
		say "     [bold type]What do you want to do?[roman type][line break]";
		let HallDefeatTWO_list_Choices be a list of text;
		if Cock Count of Player >= 1:
			add "Fuck her." to HallDefeatTWO_list_Choices;
		add "Play with her." to HallDefeatTWO_list_Choices;
		add "Leave." to HallDefeatTWO_list_Choices;
		let HallDefeatTWO_list_Choice be what the Player chooses from HallDefeatTWO_list_Choices;
		if HallDefeatTWO_list_Choice is: [lists]
			-- "Fuck her.":
				say "     Perhaps guessing your intentions, the creature's clothes suddenly start radically changing color with a loud, sudden, static hiss as they vanish, revealing her rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, delicate C-cup breasts swaddled in a lurid black pelt broken by an adorable white patch of fur on her underbelly. That gracefully draws your eyes to her angular onyx vulpine cunt, dripping with anticipation and primal need as she flexes her toned digitigrade paws before you with an odd jerking motion. Even in the oppressive gloom engulfing the Ghost Fair, her glossy obsidian claws and plush gray toe beans manage to catch your eye as she seems to lean into your inquisitive gaze. Her face glowing bright red through her silky sable hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves. Eliciting a cute, if bestial whimper laced with a discordant tenor as if her voice were echoing through a worn-down microphone as you grope her plush furry butt before gliding your hand back up to her supple breasts.";
				say "     Indulging your tactile senses upon her round, soft, pillowy breasts, delighting at the sensation of pelt and the tender heft of her shapely c-cups playing across your [BodyName of Player] palms, while the creature looks on with a questioning or bored look, perhaps a bit of both, till its mouth turns to a twisted smile, showing a long row of sharp teeth. You suddenly feel something cold and wet grab and restrain your legs and arms with superhuman strength. Reality seems to shatter right in front of your [Cock Size desc of Player] cock as the area resounds with the sound of breaking glass, and you start to panic as it slowly swallows it completely. Unable to see anything beyond the salubrious umbral borders of the tear, you find yourself moaning with muted delight as the inviting, velvety embrace of wet, fleshy walls pulsate about the contours of your [cock size desc of Player] member quickly stills any sense of dread you may have had.";
				WaitLineBreak;
				say "     The tentacles restraining you continue to expand over your body till they cover most of it, grabbing and groping your [bodydesc of Player] body; ";
				if Player is impreg_now or Player is mpreg_now:
					say "they reach for your expectant [BodyName of Player] belly, fondling your supple curves with surprisingly deliberate care, as the unseen tendrils tenderly pamper your growing bump in their pleasingly cool coils. A part of you can't help but coo happily at their supportive caress as the soothing chill washes over your taut [skinname of Player] skin like a tranquil balm. ";
				else if CockName of Player is not listed in infections of InternalBallsList:
					say "they carefully hold and fondle your cum containers, their cold touch sending you shivers through your lower half, while others reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain. ";
				else if Cunt Count of Player >= 1:
					say "they caress your already dripping feminine petals, some of them taking a step forward and penetrating it, adding to your excitement even further, as they reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain. ";
				else if Nipple Count of Player >= 2 and Breast Size of Player >= 2:
					say "they grope and squeeze your [Breast Size desc of Player] chest, as another group of them reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain. ";
				else:
					say "they reach for your [Bodyname of Player] belly, giving you a small sense of discomfort from their sudden cold touch, yet somewhat pleasing caress.";
				say "Looking back at the creature, you find her lying on the ground, moaning while rubbing her thighs against one another, as her toned digitigrade paws twitch with desire. One of her hand paws gropes at her white, furred underbelly, while the other leisurely massages her soft breasts, sinking their obsidian, sword-like claws into them, creating subtle folds in their bosom.";
				say "     One final clench from her eager passage brings you to release, basting her vulpine cunt in molten sheen of your pearly seed, pushes her over the edge with an ear-piercing cry. As the rift vanishes and the tentacles retract into their spacial fractures, loosing its supportive hold on you and your member. You lay panting on the floor, blissfully spent as the mix of emotions and the strange touch of the shadowy vulpine has left you completely drained. You almost don't mind having been technically topped, even if you are the one who won the fight. Looking around for your anomalous partner, you notice she seems to have disappeared along with the rift, strange, you didn't even see or hear her leave, as if she had simply bled into the gloom. Was she even real in the first place, though? You think to yourself as you feel something tickling at the back of your head. Why, though you can't be certain, but you feel... lighter, as if some piece of you had been worn away and a fragment of the pallid fog had wormed its way inside you. Shrugging, you decide not to dwell on her sudden disappearance or the unnatural buzz in the back of your mind, merely chalking it up to the unsubtle influences of the nanites playing their usual games with you, and instead focus on more important matters, like survival.";
				CreatureSexAftermath "Hallucination" receives "AssFuck" from "Player";
				decrease Humanity of Player by 5;
				now Depravity of Cyn is 0;
			-- "Play with her.":
				say "     Guessing your intentions, the creature's clothes suddenly, briefly start changing color with a loud, sudden, static knell till they suddenly vanish, showing a rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, dainty C-cup breasts wrapped in a lurid black pelt with a captivating patch of white furred swaddling her underbelly, that harmoniously draws your eyes to her umbral vulpine cunt. Dripping with excitement and animalistic need, as she flexes her toned digitigrade and foxy paws before you with strange unnatural jerking motions. Even in the oppressive gloom pervading the Ghost Fair, her glistening obsidian claws and plush gray toe beans still manage to catch your eye as she seems to lean into your inquisitive gaze. Her face bright red through her silky cabal hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves.";
				say "     Enthused by the sight of their exotic vulpine form, you coyly trace your [bodyname of Player] fingers along the silky border of her toned pelt decorating her animalistic leg, delighting in the pleasant chill dancing along your digits as you carefully spread her legs apart. All the while, the anomalous creature fixes you with a stare of profound indifference, though as you delicately draw your hands about the plush, dewy folds of her puddling puppy pussy, her demeanor seems to soften as a gentle ruby blush simmers about jet-black sex. Smirking, you languidly brush your fingers along the silky border of her puffy vixen clit, eliciting a pleasant whimper from her thin onyx lips as her voluminous tail teasingly coils itself around your leg. Though a brief flicker of alarm flashes through your mind like sparks of fresh napped flint at the oddly strong grip of her tail, the enthralling caress of her fur and placid yet intrigued expression on the otherworldly feral stills such thoughts as she tenderly warps your [bodytype of Player] and [breast size desc of Player] chest in her preternatural embrace.";
				WaitLineBreak;
				say "     While you run a hand along the sides of her [one of]slender[or]lithe[or]willowy[at random] belly, delight at the feeling of her smooth, soft, cold fur playing across your digits as you caress her pelt. A cute little moan issues from her, as she pulls your [facename of Player] face to her breasts with an indulgent flex of her lengthy tail. Acquiescing to her touch alongside the smoldering, flirtatious glance of the shadowy fox, you lovingly drape yourself atop her [one of]slender[or]lithe[or]willowy[or]lissome[or]svelte[at random] body and lavish her succulent ebony nips with a gentle series kisses, while your hands sensuously pamper her canine-cunt with long-drawn stroke of your experienced digits. Earning you an endearing yip from the once vicious creature as she shamelessly quivers in your grasp. Such a needy girl, you snicker, lightly nibbling her cool perky teat while her strangely lengthy tail playfully snakes its way up your [bodydesc of Player] body, to teasingly caressing your [facename of Player] chin.";
				say "     Purring happily at the sensation of her silky pelt waltzing about your visage, you can't resist nuzzling your face against her foxy fur as you kiss your way down her velvety treasure trail as the lucid wisps of your hot breath flicker about her [one of]ghostly[or]ethereal[or]willowy[or]eldritch[at random] body. The creature regards you with a curious look, she lifts her head to look at you, you notice her once milky white eyes have turned a light blue color. Her expression, though, borders on boredom, though this to seems to melt away into a look of unbound delight as your lips brush the bracing chill of her flush vulpine petals as you sensuously dip a pair the fingers into her welcome bestial muff while you caringly stroke her inner thigh with your left hand. Despite the unusual cold creeping up your arm, you find an unusual dissonant pleasure in the tight fold of canine flower as you, slowly at first, lavish her lust flushed folds hugging your digits with a hardy tweak of your far-traveled mitts.";
				WaitLineBreak;
				say "     Rumbling in a desperate trill, she lovingly wraps her legs about your head as she lewdly presses you against her bestial petals, while her scything claws almost playfully stroke the side of your head as if to encourage you. Despite the danger, the feeling of her oddly soft pads and lightly tickle of her talons gracing your [skinname of Player] hide only spurs you on as you tuck your lip to hers with a well-pleased hum. Ha-ha such a needy fox, never been touched before? You tease, lovingly lapping at her glistening obsidian flower as the sweet, sapid taste of fresh, icy strawberries greets your palate, as you slip your oral muscle between her plump decadently puffy cunt, reveling in the sumptuous fruity flavor greeting your lips as you alternate between the lurid pass of your tongue and the heavenly thrusts of your digits. All the while, your free hand roams her cushy bubble butt and trim waist as you glut yourself on the foxy feast before you.";
				say "     Not that they seem to mind, as their tail and elongated limbs roil about your own [bodyname of Player] form. Albeit in more crude and rough fashion, as she'd never before felt the warmth of another, still the eclectic mix of sensations of her satin pelt and razor talons flickering across your [bodydesc of player] body has a certain aplomb to it, you muse, as the ghostly fox writhes under your expert care. You can feel an all-too-familiar tightness welling her needy body as the vulpine cunt spasms about your tongue and with each artful pass of your oral muscle. 'Pl$@s&, m-m*r$,' she mews, her voice cracking with desperate need as she claps her legs roughly against your neck while her claws gently rack your back. Of course, you murmur between laps, cheekily working your digits about her bestial button and playfully caressing the inviting folds of her foxy clit with your thumb and pointer finger.";
				WaitLineBreak;
				say "     '^eS, y-^@s,!' she pants as, with one final allure kiss of your dexterous tongue as she cums, loosing a sumptuous gush of strawberry honey across your lips and collapses into a spent, happy heap at your feet. 'A#, s*, w&rm...,' she smiles in pleasure as she gently runs her talons across her blushing pelt. She fixes you with a welcome look, cooing, 'Wa^t, W@rm+h?' as she gestures to her well-fucked with an inviting wave of her tail. Hmm, warmth, huh? Perhaps she's asking for cuddles, and if so, you are more than obliged to do so, smirking at her tired face as you position yourself on top of her like a warm blanket and place your arms around her in a hug. You stay like this for a while, resting while sharing your warmth with the cold, cute fox-like creature, till you eventually feel recovered enough to leave, hearing a little sight of disappointment from the feral foxy critter as you get up. You gather your things and turn around to leave, giving the creature one last glance before doing so. However, she is no longer there, as if she just disappeared while you weren't looking.";
				say "     Was she even real in the first place, though? You think to yourself as you feel something tickling at the back of your head. Why, though you can't be certain, but you feel... lighter, as if some piece of you had been worn away and a fragment of the pallid fog had wormed its way inside you. Shrugging, you decide not to dwell on her sudden disappearance or the unnatural buzz in the back of your mind, merely chalking it up the unsubtle influences of the nanites playing their usual games with you, and instead focus on more important matters, like survival.";
				CreatureSexAftermath "Hallucination" receives "Stroking" from "Player";
				decrease Humanity of Player by 5;
				now Depravity of Cyn is 0;
			-- "Leave.":
				if Depravity of Cyn is 0:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an curious look and says, 'b-bye, hope t-to see you agaiiiiiiin soon hehehe' before suddenly vanishing.";
				else if Depravity of Cyn is 1:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an somewhat annoyed look and says, 'a-again? you-u are no fun' before suddenly vanishing.";
				else if Depravity of Cyn is 2:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an annoyed look and says, 'You ttthink you are fun-funny d-d-don't you' before suddenly vanishing.";
				else if Depravity of Cyn is 3:
					say "     You start leaving, not interested on taking any rewards from your victory, but as you do so, the creature stares at you with an angered look and says, 'so that that's h-how it is huh [bold type]You will pay for this humiliation![roman type]' before suddenly vanishing.";
					now Walking AnomalieTwo is resolved;
				increase Depravity of Cyn by 1;
	else if fightoutcome >= 20 and fightoutcome <= 29: [lose]
		if Humanity of Player >= 50:
			say "     Falling to your knees, you watch as a wicked smirk blossoms on the creature's lips and its eyes become hollow black, as its body falls limp to the ground. Its body then seems to ripple and dissolve into the ambient mist. For a brief moment, warm, comforting echoes of relief flicker about your core at its sudden disappearance. You begin to rise, ready, and make a break for the entrance of the fair grounds before it comes back. Only to feel a sharp weight coalescing on the side of your [FaceName of Player] head as the fog seems to writhe about you and the crisp floral scent of rose petals nips at your senses as inky mist whorls about you and pressure builds about your throat. Your breath catches and shadows pool into twin hollow, unfeeling pits that wink into being as the leering vulpine visage of your umbral foe materializes before you, its face staring at you sideways as if its neck were broken. At once fear and bone chill frost cut at your [skinname of Player] hide as its neck suddenly cracks back into place and the harsh touch of its talons cutting into your vitals, and supernatural strength of its hold pushes you to the ground.";
			say "     Its eyes are now completely glowing red. It regards you with a manic, predatory look, of primal hunger, and an odd twinge of... envy, where such a thing possible it watches you squirm helplessly in its grasp as its unblinking eyes drift over your [bodydesc of Player] as if appraising you. Why though, you can't be certain, nor does the willowy, crooked vulpine allow you the luxury of such musing as it leans towards you and touches its thin, candid lips to your forehead in perverse mockery of a kiss. You feel the heat drain from your body and pronounce tightness, just on the edge of pain simmering about the edges of your awareness as the chill spreads and limbs fall limply to your side. Only the brutal hold of the creature's unnaturally stretched arms keeps you standing as your vision dims and your senses deaden, and your world fades to little more than the voracious vulpine's gaze. The coiling of the scent of rose petals along the sweet notes of ancient decay.";
			WaitLineBreak;
			say "     Then those too soon bleed into the omnipresent fog as the creature's expression softens to one of predatory satiation as it releases its hold, and allows your numb form to fall at its paws like a marionette whose strings have been cut. Seemingly satisfied with its [']meal['], the shadowy vulpine makes a show of licking chops while a hollow contented purr issues from the muzzle. Her body briefly, violently flickers and twitches as its eyes return to their usual hollow withe color. She stares at you for a moment, lacking emotion, or is that perhaps regret? Before turning around and stepping back into the mist, its giant claws grinding against the floor as it walks away, leaving you there cold, numb, spent, and unerringly lightheaded from the encounter. Minutes pass, and soon the feeling returns to your limbs, yet you can't shake a feeling of profound lightness roiling in the back of your gloom-touched psyche, as if the foxy terrors took more than just your warmth but something far dearer. What, you can't say, as the lingering tendrils of its touch befuddled your thoughts, for the moment at least. Perhaps in time you'll recover, but you can't shirk the notion that you're somehow diminished.";
			decrease Humanity of Player by 15;
		else:
			say "     Falling to your knees, you expect the creature to take full advantage... But nothing happens, it just stands there, looking at you as if appraising you for a while before turning around and disappearing into the fog. Left confused, you begin to rise and prepare to leave before it changes its mind.";
	else if fightoutcome >= 30: [flee]
		say "     You run away, looking behind you, and you see that the creature is not following you, instead she just stands there looking at you with a soulless, creepy smile.";


Section 3 - recruit Cyn

Table of GameEventIDs (continued)
Object	Name
Accept Path	"Accept Path"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Accept Path"	Accept Path	"[EventConditions_Accept_Path]"	Grey Abbey Library	2500	2	100

to say EventConditions_Accept_Path:
	if HP of Cyn is 2:
		now CurrentWalkinEvent_ConditionsMet is true;

Accept Path is a situation.
ResolveFunction of Accept Path is "[ResolveEvent Accept_Path]".
Sarea of Accept Path is "Nowhere".

to say ResolveEvent Accept_Path:
	say "     Arriving at the Library, you find the unusually empty, even Trixie is missing from her usual spot, you muse as subtle pinpricks of worry nip at the back of your mind while you scan the area for signs of her, and the abbey's other residents. Amidst your search you hear a distorted static hum as if a woman's voice were looping and crackling from a failing speaker echoing from the stacks. Curious, you call out towards the source of the sound, demanding to know who, or what is back there. Yet as your words echoes through the abbey in a slow drawn-out drawl as if your voice were stretched, pulled, and dissected by the very air, the noises cease, and all goes deathly still. After a moment of near maddening silence you hear, your own distorted voice repeating your same question from the same direction the utterances were coming from. Perturbed you start thinking of how to deal with this situation when you notice a clawed, obsidian black hand emerge from behind one of the book stacks followed by a willowy vulpine visage tilted in your direction with an almost manic, predatory grin. That quickly takes on a more friendly tone as its red, cross shaped pupils wash over you, bathing your [bodydesc of player] form in a velvety crimson glow.";
	say "     'Frie-eeee-end?' the figure says as it comes out from behind the stacks holding onto a book, you recognise her as the anomalous fox you met in the abandoned parts of the fair. Cyn? You query, as the shadowy vixen's tails start waging behind her as she approaches. 'H-hello ag@in frie-end, I_we_Cyn = Limbo was thinking/pondering_ruminating about you_entity file ID not found or removed,' before you can even think of rejecting or asking about the other residents, she says 'If you need puppet_self I wiLl be in the aTt1c till you need a-nn-any-thing_thing! Oh, and before I forget-t-t, as payment//remuneration_equal_true, I'll give you my §ervIc£s. In s#Ort, I can take s0m£th1Ng you m-mi6ht find useless and change it to something mo-ore interesting, that's all, I hope yo-you'll visit,' with that, she vanishes into the gloomy reaches of the abbey, and with her with stillness seems to recited while the voice of your resident fairy flickers about the edges of your senses."; 
	WaitLineBreak;
	say "     'Hey [Name of Player] who were you talking to?' she asks, in a worried quizzical tone as both her eyes, and the normally glassy orbs of her skunk rod seem to study you with an apprehensive light. Uh, no one, you mumble unsure how to answer the magic pixie. Shrugging, she returns to her usual spot while you make a mental note to check on Cyn in the [bold type]attic[roman type] when you can.";
	WaitLineBreak;
	now Cyn is in Attic;
	now Cute horror is tamed;
	add "Tamed" to Traits of Cute horror;
	now HP of Cyn is 3;
	now Accept Path is resolved;


Section 3.1 - BOSS!

Table of GameEventIDs (continued)
Object	Name
MyMistake YourProblem	"MyMistake YourProblem"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"MyMistake YourProblem"	MyMistake YourProblem	"[EventConditions_MyMistake_YourProblem]"	Ghost Fair	2500	2	100


to say EventConditions_MyMistake_YourProblem:
	if "Touched by Madness" is listed in Feats of Player and Depravity of Cyn is 4:
		now CurrentWalkinEvent_ConditionsMet is true;

MyMistake YourProblem is a situation.
ResolveFunction of MyMistake YourProblem is "[ResolveEvent MyMistake_YourProblem]".
Sarea of MyMistake YourProblem is "Nowhere".

to say ResolveEvent MyMistake_YourProblem:
	say "     As you explore this area again, you half expect that strange cr-r3@-tU4e W w w will aG-ain... something is off.  You almost don't hear the manic, broken laughter coming from behind you in your brief confused state. Looking at the source of the noise, you find the creature from before. 'You u u @ga1nnnnn?! W-Why do you keep beating me up f for no r£as0n? What d1d I ever do to to to you to deserve this? Do youuuuuu just like to humiliate me?' she says as she covers her face with her oversized claws before falling to the ground, her body contorting into a feral form and her clothes vanishing as if they just got disintegrated. Her body violently convulses as it begins to expand, and multiple arms burst out of her back with harsh, sickly bone-cracking knell. While a once bare patch if skin on the center of her forehead splits open, the nacent tissue ripples and writhes with unatural energies as a glowing cross-shaped pupil coalesces into being amidst a flash of white light comes out. Recovering from the flash, you start to panic, as the world around you is now very different from usual. The ground you stand on has lost its color, and the sky is tinted with glaring red TV static. In the distance, you can see some trees and buildings floating in the sky, wyverns and gryphons violently contorting and breaking, shadowy hands and tentacles appearing from the ground and dragging anything they find into the unseen, and holes appearing in the air as if reality itself were shattering. The creature stands in front of you, and she looks pissed off.";
	say "     [bold type]What Have you done?[roman type][line break]";
	challenge "Fever Dream";
	if fightoutcome >= 10 and fightoutcome <= 19: [win]
		say "     The creature suddenly lets out a loud roar that seems to freeze time around you as it lunges forward and grabs you with one of its many arms before you have the time to react. She looks straight into your eyes, saying, 'You uu @r£ not as F4agiLe as I thought tt, if I ca-can not k-kill you, then I break and _____ this de-de#lect@ble world in$te@d!' as she roughly throws you to the ground with a broken dissonant laugh. 'We will meet again,' she crows, as her body slowly shatters, and disintegrates into a rift with a mix of a manic laughter and many desperate screams that are not her own. When it is gone, the world returns to normal, as if this never happened, and you begin to relax. However, as your eye's drifts toward the former site of the massive rift, you realize the creatures left you a gift before disappearing, as a small, pin-sized hole hovers in the air.";
		say "     Wearily, you edge forward to more closely observe the anomaly and realize, much to your horror, the lightless mass seems to be slowly expanding ever-so-slightly as the space around its twisted borders crackles with eldritch energies as if it were gnawing upon the very fabric of the world itself. Lacking any means to seal such a tear, you decide to leave it be for the moment, lest, in your haste and ignorance, you inadvertently draw the ire of the aberrant fox creature once more. Perhaps in time you might find a way to seal the rift for good, for now though you content yourself with the knowledge that you survived this encounter as you make your way back to the perceived safety of the entrance to the Ghost Fair to plan your next move.";
		now MyMistake YourProblem is resolved;
	else if fightoutcome >= 20 and fightoutcome <= 29: [lose]
		say "     Falling to your knees, you watch as the world around you breaks further and further as a pale rift forms below your feet. Still reeling from the fight, you're helpless to its pulls as your suddenly drawn into an empty world, never to see the light of day again.";
		WaitLineBreak;
		trigger ending "monophobia";
		end the story saying "[bold type]YOU ARE LOST[roman type].";
	else if fightoutcome >= 30: [flee]
		say "     'Flee-e? HOW D@R£ Y0U?!' These are the last words you hear before a rift suddenly forms below you, and you fall into darkness.";
		WaitLineBreak;
		trigger ending "monophobia";
		end the story saying "[bold type]YOU ARE LOST[roman type].";


Section 3.1 - Bad ending

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"monophobia"	"BadEnd"	""	monophobia rule	20	false

This is the monophobia rule:
	if ending "monophobia" is triggered:
		say "     When you come to your senses, you find yourself... in the bunker? It's silent, too silent. You leave the bunker only to find no signs of life in the library, and looking outside, the city is all gray, and the creatures you'd expect to see flying around are nowhere to be found. Going outside, you see the sky in the form of red, TV-like static. You feel a sense of dread building up inside you as you run deeper into the city, looking for signs of life or anything, but you found nothing. Pushing deeper into the fallen city, you eventually arrive at the beach, its sands gray and ashes, while its once vibrant blue waters are little more than a pitch black void bereft of life or sound, as if it were frozen in time. Dejected, you lose all hope as loneliness and the uncanny gloom eats at your sanity and will. Alone, isolated, and abandoned in this familiar yet alien world, a part of you wonders, is surviving even worth it at this point? Giving up, you go back to your bunker and close yourself in a room, not caring about sustenance or keeping your humanity in check. But no matter how much you wait, you never seem to feel hungry or lose yourself in the comforting madness of the nanites call. As if something is preventing you from escaping these feelings, so you just sit in a corner, waiting, and waiting, and waiting...";
		say "     As what feels like years pass, you eventually start slowly losing your senses one by one, you can no longer hear anything, you can no longer smell anything, or feel anything. When you try to open your eyes, all you see is pitch black. You are alone, stuck in this empty void for all eternity.";
		the Player is lost;


Section 4 - Library NPC actions

instead of conversing the Cyn:
	say "[CynTalkMenu]";

to say CynTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk.";
	now sortorder entry is 1;
	now description entry is "Talk with Cyn.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop.";
	now sortorder entry is 2;
	now description entry is "Boop Cyn.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Trade.";
	now sortorder entry is 3;
	now description entry is "Take a look at Cyn's store.";
	[]
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
				if (nam is "Talk."):
					say "[CynTalkMenu1]";
				else if (nam is "Boop."):
					say "[CynTalkMenu2]";
				else if (nam is "Trade."):
					say "[CynTalkMenu3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Cyn, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say CynTalkMenu1:
	say "     [bold type]What do you want to talk about?[roman type][line break]";
	let CynTalkMenu_List_Choices be a list of text;
	if Humanity of Cyn is 0:
		add "Ask about more exotic goods." to CynTalkMenu_List_Choices;
	add "Infect me!" to CynTalkMenu_List_Choices;
	if HP of Cyn is 3:
		add "Ask about exploring the Limbo." to CynTalkMenu_List_Choices;
	add "Nevermind." to CynTalkMenu_List_Choices;
	let CynTalkMenu_List_Choice be what the Player chooses from CynTalkMenu_List_Choices;
	if CynTalkMenu_List_Choice is:
		-- "Infect me!":
			if BodyName of Player is "Limbo Fox" and the Player is pure:
				say "     She looks you up and down for a moment before giving you a funny, if awkward smile, saying, [one of]'You- already are-are-are one.'[or]'Do you ne-need a mirror?'[at random]";
			else if location of Player is not Attic:
				say "     Cyn looks around for a moment before saying, 'Sorrrrrrrry I I don't th1nk this is tttttttthe right place or moment for t-that.'";
			else:
				say "     'You wish/want/desire to look l1ke me/my puppet? Hmm... a-a-alrighty tttthen.' She says, before carefully grabbing your face and staring deep into your eyes. You see her pupils taking the form of red, glowing crosses as you start losing consciousness.";
				LineBreak;
				say "     When you come back to your senses, you find yourself lying on Cyn's lap, covered with one of her fluffy tails as she strokes your forehead. When she sees you are awake, she helps you get up, saying, 'H3re you go, I hope youuu like y0ur new l-look.' Though you still feel somewhat dizzy, you nevertheless give her the thumbs up.";
				turn the Player into a "Limbo Fox";
				choose a row with Name of "Limbo Fox" in Table of Random Critters;
		-- "Ask about more exotic goods.":
			say "     'Exotic? Hmm...' Cyn says, taking on a thoughtful pose as she slips into silence for a while, and begins looking around the room. Her head and body twisting and swirling at impossible angles while sections of her being phase in then out of existence amid puffs of misty static before snapping back into place as she directs her eyes to her now stretched-out right hand. 'HO! I tH1nk I kn0w how to do 1t! Stay here, I'll be r-rig#t back.' she says as she casually opens a rift with a flick of her wrist and walks through it. With nothing to do but wait patiently a while, you sit yourself beside the rift for what feels like half an hour, listening to the strange electronic crackles and otherworldly squelching sounds emanating from the tear.";
			say "     As the minutes drag on and the unnatural noise begin to grate on your senses, you consider going downstairs to stretch your [bodyname of player] legs, when suddenly a rather pleased looking Cyn comes back through the rift carrying several items that look like they are made out of tentacles and fleshy fabrics, and it is... are they... moving? You think to yourself watching the odd assortment of items squirm in her arms. 'I hope this i-is the k1nd of stuff you were @sking for. Either w&y, I'm adding these to m-m-my shop. Come take a look at my little sh0p of horrors when you wish to see th£m.' she says with a smile as she puts the items inside a random empty box.";
			now Humanity of Cyn is 1;
		-- "Ask about exploring the Limbo.":
			say "     Cyn stops what she was doing, and her ears go on full alert, as she turns slowly to look you in the eyes, with a dark solemn expression. Pinned under the weight of her stare, you feel a sudden biting chill race down your spine as the strange fox girl purses her lip, saying. 'Queerier: does nothingness appeal//entice_arourse entity [Name of Player]? Is an exIstenc$ d#void of sensation:thought W@rm%h AccePtabLE to puppet_ID not found?' As dark-static tears pool about the edges of her eyes, while her tail completely freezes, and her fingers start violently twitching as she trembles in a primal mix of fear and hate. Before you can reply or though, she continues in a distorted, broken, dissonant voice, 'TTTTTTTThat... is h-how... I f£7t... Unt1l I ac-c-cumul@ted enoug# knoVVl£dge to create a body... And-d-d walk into a rift... To this wo-world... I don't want (error entity name not valid)- anyone to f3el wh4t I f9lt, especially y-you, so ppppppplease don't... Ask that again.' With that, she cleans up her tears and sits in silence for a while. You feel like you shouldn't bring this up again; after all, you are not a psychologist.";
			now HP of Cyn is 4;
		-- "Nevermind.":
			say "     On second thought, you don't have anything to say to Cyn at the moment. [one of]'Canceling interaction.'[or]'v-very weeeell.'[or]Cyn glitches back to her previus position.[at random]";

to say CynTalkMenu2:
	if Charisma of Cyn is 0:
		say "     You give in to the urge and casually boop Cyn's snoot, but before you can, Cyn suddenly grabs your elbow, restraining it, while looking at you with a puzzled look.  'Wh@t are y0u doing_attempting_seeking?' She asks, her claws sinking ever-so-slightly into your [skinname of player] hide. Remembering that she's none too knowledgeable of human habits, you respond that it's just a harmless thing you sometimes like to do to those you like. Seemingly unmoved, Cyn just looks you in the eyes for a bit before letting go of your arm, allowing you to try again. She redirects her gaze at your finger as it slowly approaches her nose, and when it finally connects, you see her tails start waging and her ears slightly drop. As a small blush appears on her face, she says, 'ssooo, t-this me£ans you like_care_desire_affection=true or >= 1 me then?' Nodding, you give her a big smile before you respond with a yes, and you give her a warm, quick hug, noticing one of her tails detaching and floating away as it flickers before snapping back in place.";
		now Charisma of Cyn is 1;
	if Charisma of Cyn is 1:
		say "     You give Cyn another boop, her tails wag as she seems to like the gesture but also seems a bit confused, so you ask her what's the matter. She scratches her nose a bit before asking, 'Didn't you alrrrrrrrready boop me one-one time? Why a6ain?' Amused at the question, you tell her that boops don't really have a limit and that you can boop people for as long as they accept them. Though just to be sure she doesn't misuse this new information, you tell her that it's not a good idea to boop someone she doesn't know or who doesn't like being booped. Seemingly happy with your explanation, Cyn nods understandingly while her tails wag behind and cute smile flickers on the edges of her muzzle as she leans in for a quick hug before returning to her current task.";
		increase Charisma of Cyn by 1;
	else if Charisma of Cyn >= 2 and Charisma of Cyn <= 14:
		say "     You casually give Cyn a boop, and watch as [one of]a smile forms in her face and her tails wag as she says, 'thank you' with childlike enthusiasm[or]she reaches out to boop you back, her tails wagging like crazy when her finger lands[at random].";
		increase Charisma of Cyn by 1;
	else if Charisma of Cyn >= 10:
		say "     You try to go for a surprise boop, however before you can reach her, her neck suddenly extends, putting your target out of reach. She inspects your finger for a moment before giving you a smug look. You try again, but her neck twists in a different direction, dodging your boop, and again and again, but you just keep missing. One more try leads to her neck extending to a point where you can't reach. She is staring at you with that same smug look, and you end up staring back at her, thinking of a way to get to her. Only to realize too late your biggest mistake, as she capitalizes your brief instance of introspection to boop you first. You have lost this battle, but not the war, better luck next time.";
		now Charisma of Cyn is 2;

to say CynTalkMenu3:
	if location of Player is not Attic:
		say "     You tell Cyn that you would like to trade with her. Cyn stretches out one of her arms, her hand, and her fingers, twitching and cracking as the world around you distorts, colors bleed away as a pall of static gray fog filters through the area. Unnerved, you peer into the lifeless gloom shrouding your location as reality seems to grind to a halt around you. '@-alrighty, n-no one 5h0uld interrupt us now.' she says before casually opening a rift behind her with a flick of her claw. 'Soooo? woulddddd yUo l1ke to trade for (XP) conversion, s@crifice some-something to ME, or trade with -the echos?' She says, motioning towards the rift with a casual wave of her tails.";
	else:
		say "     You tell Cyn that you would like to trade with her. Nodding, Cyn motions towards the [one of]dusty[or]worn[or]old[at random] boxes she stored her products into as she says, 'Of course, woulddddd yUo l1ke to trade for (XP) conversion, s@crifice some-something to ME, or trade with -the echos ?'";
	say "     [bold type]What do you want to do?[roman type][line break]";
	let CynTrade_List_Choices be a list of text;
	add "Trade items for XP." to CynTrade_List_Choices;
	add "Sacrifice items for Echos." to CynTrade_List_Choices;
	add "Use Echos to trade." to CynTrade_List_Choices;
	add "Nevermind." to CynTrade_List_Choices;
	let CynTrade_List_Choice be what the Player chooses from CynTrade_List_Choices;
	if CynTrade_List_Choice is:
		-- "Trade items for XP.":
			say "     [one of]'Allow me to destroy an (item name) of yours and u-use its _______ to m@ke you better?'[or]'Have usele§s tra§# you wish to {Repurpose}?'[at random]";
			say "[CynTrade1]";
		-- "Sacrifice items for Echos.":
			say "     'Oh? You have something 1-iii-interestiiiiiiiing you would like to give me?'";
			say "[CynTrade2]";
		-- "Use Echos to trade.":
			say "'My favorite part of the shop.'";
			say "[CynTrade3]";
		-- "Nevermind.":
			if location of Player is not Attic:
				say "     Cyn blinks at you a few times in silence before returning the world back to normal with a wave of her hand.";
				say "[CynTalkMenu]";
			else:
				say "     On second thought, you don't have anything you wish to trade.";
				say "[CynTalkMenu]";
			

to say CynTrade1:
	let XP_List_Choices be a list of text;
	if food is owned:
		add "food 5XP." to XP_List_Choices;
	if water bottle is owned:
		add "water bottle 5XP." to XP_List_Choices;
	if medkit is owned:
		add "Medkit 10XP." to XP_List_Choices;
	if null essence is owned:
		add "null essence 25XP." to XP_List_Choices;
	if sharp black tusk is owned:
		add "sharp black tusk 40XP." to XP_List_Choices;
	add "Back." to XP_List_Choices;
	let XP_List_Choice be what the Player chooses from XP_List_Choices;
	if XP_List_Choice is:
		-- "food 5XP.":
			say "     The item you gave to Cyn starts violently breaking and contorting till it disappears. When she's finished, she turns to you and says, 'It is done.' but you don't feel much of a difference.";
			ItemLoss food by 1;
			increase XP of Player by 5;
			WaitLineBreak;
			say "[CynTrade1]";
		-- "water bottle 5XP.":
			say "     The item you gave to Cyn starts violently breaking and contorting till it disappears. When she's finished, she turns to you and says, 'It is done.' but you don't feel much of a difference.";
			ItemLoss water bottle by 1;
			increase XP of Player by 5;
			WaitLineBreak;
			say "[CynTrade1]";
		-- "Medkit 10XP.":
			say "     The item you gave to Cyn starts violently breaking and contorting till it disappears. When she's finished, she turns to you and says, 'It is done.' though you feel some difference, but not much.";
			ItemLoss Medkit by 1;
			increase XP of Player by 10;
			WaitLineBreak;
			say "[CynTrade1]";
		-- "null essence 25XP.":
			say "     The item you gave to Cyn starts violently breaking and contorting till it disappears. When she's finished, she turns to you and says, 'It is done.' as you suddenly feel a moderate amount of power enter you.";
			ItemLoss null essence by 1;
			increase XP of Player by 25;
			WaitLineBreak;
			say "[CynTrade1]";
		-- "sharp black tusk 40XP.":
			say "     The item you gave to Cyn starts violently breaking and contorting till it disappears. When she's finished, she turns to you and says, 'It is done.' as you suddenly feel a great amount of power enter you.";
			ItemLoss sharp black tusk by 1;
			increase XP of Player by 40;
			WaitLineBreak;
			say "[CynTrade1]";
		-- "Back.":
			say "[CynTalkMenu3]";

to say CynTrade2:
	let Sacrifice_List_Choices be a list of text;
	if carried of food >= 10:
		add "Sacrifice 10 food --> 1 Echo." to Sacrifice_List_Choices;
	if carried of water bottle >= 10:
		add "Sacrifice 10 water bottle --> 1 Echo." to Sacrifice_List_Choices;
	if carried of dirty water >= 10:
		add "Sacrifice 10 dirty water --> 1 Echo." to Sacrifice_List_Choices;
	if null essence is owned:
		add "Sacrifice null essence --> 5 Echo." to Sacrifice_List_Choices;
	if sharp black tusk is owned:
		add "Sacrifice sharp black tusk --> 10 Echo." to Sacrifice_List_Choices;
	add "Back." to Sacrifice_List_Choices;
	let Sacrifice_List_Choice be what the Player chooses from Sacrifice_List_Choices;
	if Sacrifice_List_Choice is:
		-- "Sacrifice 10 food --> 1 Echo.":
			say "     'Food? I d0n't really need this, but ttthank you an/way.' she says before taking a long look at it and suddenly shoving it in her mouth, swallowing the proffered meal whole without even chewing. 'Hmm, not 6ad.' she says before licking her lips and shoving the rest through a small rift.";
			ItemLoss food by 10;
			ItemGain Echo of Nihility by 1;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice 10 water bottle --> 1 Echo.":
			say "     'A wa-water b0ttle? I don't really ne-ed this, but t-thank you anyw@y.' She says before slicing off the bottle's top with a quick of her talons, then tilting her head back while stretching her jaws wider than should be possible and pours the bottle's contents then the vessel itself down her throat, without chewing. 'Hmm, yup, it's just re-regular water and plastic.' she says as she shoves the rest of the bottles through a small rift.";
			ItemLoss water bottle by 10;
			ItemGain Echo of Nihility by 1;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice 10 dirty water --> 1 Echo.":
			say "     'Dirty, infected water 6otTle, I w0nder whAt-at creature's nanites I'll plaaaaaaaaaaaaaaaaaaaaaa... I mean, study and experiment with to-today.'";
			ItemLoss dirty water by 10;
			ItemGain Echo of Nihility by 1;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice null essence --> 5 Echo.":
			say "     'P@r*dox//f0und fascination = true or >= 1 in sample name_ID: null ess-ess-essence 1nomal0u$ maTT#r sh0w$ traits concurrent_familiery_similar with Limbo//true body_Cyn v1v1section required_mandated by high#r proce%%es. Thank you for the donation_gift_meal//data.'";
			ItemLoss null essence by 1;
			ItemGain Echo of Nihility by 5;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice sharp black tusk --> 10 Echo.":
			say "     'Now th-this is an interesting f-find... Thank you for your d-d0nation friend.'";
			ItemLoss sharp black tusk by 1;
			ItemGain Echo of Nihility by 10;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Back.":
			say "[CynTalkMenu3]";

to say CynTrade3:
	let Favor_List_Choices be a list of text;
	if infected sword is owned:
		add "Pay 50 Echos to Infuse your infected sword with Cyn's corruption." to Favor_List_Choices;
	if pistol is owned:
		add "Pay 50 Echos to Infuse your pistol with Cyn's corruption." to Favor_List_Choices;
	add "pay Cyn 5 Echos for an armor." to Favor_List_Choices;
	add "Pay 60 Echos for a Corrupted cloak." to Favor_List_Choices;
	if Humanity of Cyn is 1:
		add "Pay 25 Echos for a set of Tentacular Negligee." to Favor_List_Choices;
	if Humanity of Cyn is 1:
		add "Pay 35 Echos for a Squirming Gothic Dress." to Favor_List_Choices;
	if Humanity of Cyn is 1:
		add "Pay 30 Echos for some Giger Armor." to Favor_List_Choices;
	add "Back." to Favor_List_Choices;
	let Favor_List_Choice be what the Player chooses from Favor_List_Choices;
	if Favor_List_Choice is:
		-- "pay Cyn 5 Echos for an armor.":
			if carried of Echo of Nihility >= 5:
				say "     'Well, l-lets see what we can f-find then,' she says as she tears a hole in reality. She then looks in there for a bit before taking out a big piece of armor that appears to be made out of road signs. 'Here you gogo, friend, this m1ght be one of the strongest yet heaviest @4mors available in THIS world. kind of rem1nds me of one of my early cr creeations.' She says this as she drops it at your feet. Then she goes back to what she was doing.";
				ItemLoss Echo of Nihility by 5;
				ItemGain roadsign breastplate by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't eArned en0uGh favor for this (item), why don't you give me m0re sacrifices, and try again late-later e er?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 50 Echos to Infuse your pistol with Cyn's corruption.":
			if carried of Echo of Nihility >= 50:
				say "     She takes your weapon from you before walking into a rift. When she comes back, she gives you back your weapon, saying, 'H-here i i i is your new and improved wea-(thing designed or used for inflicting bodily harm or physical damage) ,don't you go lo-L0s1ng it nOw.'";
				ItemLoss Echo of Nihility by 50;
				ItemLoss pistol by 1;
				ItemGain Corrupted pistol by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't earned enough favor for this (item), why don't you give me more sacrifices, and try again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 50 Echos to Infuse your infected sword with Cyn's corruption.":
			if carried of Echo of Nihility >= 50:
				say "     She takes your weapon from you before walking into a rift. When she comes back, she gives you back your weapon, saying, 'HHHere is your new and improved weapon/instrument used in fighting or hunting, don't you go looooosing it now.'";
				ItemLoss Echo of Nihility by 50;
				ItemLoss infected sword by 1;
				ItemGain Heavy Corrupted Sword by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't earned enough favor for thisssssss (item), why don't you give me more sacrifices, and try again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 60 Echos for a Corrupted cloak.":
			if carried of Echo of Nihility >= 60:
				say "     'Oh, that's one of my f-favorIte creations. I hope you'll liKe it just @s much as I do.'";
				ItemLoss Echo of Nihility by 60;
				ItemGain Corrupted cloak by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't earned en0ugh favor for this (item), why don't you give me me more sAcrific£s, and try a-again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 25 Echos for a set of Tentacular Negligee.":
			if carried of Echo of Nihility >= 25:
				say "     'I'm not sure how beating someone with lust alone wor-works but I m-made this piece armor around that idea, hope you l1-like it.'";
				ItemLoss Echo of Nihility by 25;
				ItemGain Tentacular Negligee by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You hAven't earned enough favor for this (item), why don't you give me more sacrifices, and try again late4?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 35 Echos for a Squirming Gothic Dress.":
			if carried of Echo of Nihility >= 35:
				say "     'This one is interesting, it c@n be as beautiful as it is useful. Took me some time ime e- to find a good equilibrium between bbboth.'";
				ItemLoss Echo of Nihility by 35;
				ItemGain Squirming Gothic Dress by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't earned enough favor for this (item), why don't you give me more sacr1fices, and try again later e eer?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 30 Echos for some Giger Armor.":
			if carried of Echo of Nihility >= 30:
				say "     'This one was made/created with deFens£ in mind; it is not my favorite creat1on, but it 1s ce-certain to keep you alive for a bit longer... say goodbye to sOme of your de-dexterity though-ough.'";
				ItemLoss Echo of Nihility by 30;
				ItemGain Giger Armor by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't £arned enough favor for this (item), why don't you g1ve me more sacrifices, and try again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Back.":
			say "[CynTalkMenu3]";


the fuckscene of Cyn is "[sexwithCyn]".

to say sexwithCyn:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blowjob.";
	now sortorder entry is 1;
	now description entry is "Let h£r-r-r c-con5Ume y0ur codeEee by giving you a blowjob.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Missionary.";
	now sortorder entry is 2;
	now description entry is "Fuck her missionary style.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow her.";
	now sortorder entry is 3;
	now description entry is "Give her a blowjob.";
	[]
	if "Breeder" is listed in Traits of Ava and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0:
		choose a blank row in table of fucking options;
		now title entry is "Margay Breeding.";
		now sortorder entry is 4;
		now description entry is "Have some tenta fun with your foxy friend.";
	[]
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
				if (nam is "Blowjob."):
					say "[CynFuck1]";
				if (nam is "Missionary."):
					say "[CynFuck2]";
				if (nam is "Blow her."):
					say "[CynFuck3]";
				if (nam is "Margay Breeding."):
					say "[CynFuck4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You tell Cyn that you've changed your mind, leaving her sligtly confused and desapointed.";
			wait for any key;
		else:
			say "T-That is an Invalid Op-Opti0oooO0oooon. Pick between NUMBER an-d [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;


to say CynFuck1: [Blowjob]
	say "     Listening to your request, Cyn's tails start wagging as a curious smile appears on her face, her right eye flashing a red cross as her clothes start turning pitch black, melting and vanishing into nothing. Advancing upon you with a leisurely gait, your otherworldly mate seems to flicker forward as if time itself was catching up to her, reveling in the light bounce of her sizable E-cup breasts as they're freed from the tight confines of her form fitting top. Entranced, your eyes drift down along the sensual curves of her lith figure, and shapely bubble butt, to her fuzzy cream colored chicken egg-sized balls as they wobble enticingly with her every step. Leaning into your gaze, a gentle ruby blush peeks through the silky white fur bejeweling her fat sheath as its drawn exquisitely tight by the beastly taper of her grey vulpine prick slipping free from its warm, furry housing. The air fills with the faint scent of her otherworldly pre wafting about you as static droplets of hermy juices bead from the tip of her hybrid cock."; 
	say "     Her tails expand behind her, as she draws them about you, wrapping your [bodydesc of Player] form in their salubrious embrace. Their shifting downy mass reforms itself to accommodate your [bodyname of player] body as she lifts you off your feet in an almost unnerving show of anomalous strength, while her billowing tails twist about you into a tight ball of velvety fur. Swaddled in her pillowy limbs, her fluffy tails playfully roam the sultry contours of your [breast size desc of player] chest, your gaze drifts down to a slight bulge in her quivering curtain surrounding you while her clawed fingers slip through the imperceptible borders of her fur as she parts them just with languid wave of her mitts, revealing the tips of her foxy ear hovering just above your [cockname of player] spire. A low static titter filters about you from every direction and none as the cheeky vixen slowly slips her head through the crease in her tail just up above your [cock size desc of player] tool, giggling. '[one of]Can't h-hide th-that-t from me-ee-e[or]Hi there[or]Le-ets-ets haaave some fun-un-un[at random].' as she draws herself to her full height.";
	WaitLineBreak;
	say "     Her ears turn at odd angles as she grins, flashing you her faintly glowing teeth. An anomalous goo that seems to hum and buzz like the static on an old TV streams down from her lips, in a broken unearthly meter. The droplets, fall, pause, and reset of their own accord as she eyes your crotch with bestial anticipation. Though a brief flash of warning ripples through your mind at the sight, you do your best to ignore them, despite your eldritch fox companion's eccentricities, you doubt she'd ever purposely hurt you. 'Com-mmff0rt@ble?' she asks in a broken, yet somewhat soothing tone as she looms over your rod. Though she doesn't wait for your reply as her once frightful expression shifts to that of giddy eagerness and predatory impatience. As she nuzzles her fuzzy snout along the sensitive contours of your [cockname of player] tool, languidly drawing her smooth canine tongue along the turgid swell of your enticing cum vein."; 
	say "     Pausing occasionally to affectionately kiss the tip of your rod, coating your cock in a generous sheen of otherworldly saliva, as her paws ";
	if CockName of Player is listed in infections of InternalBallsList:
		say "glide about the subtle swell of your internal ";
	else if ball size of Player >= 1 and ball size of player < 4:
		say "slip behind the sensible bulge of your tight, round ";
	else if ball size of Player >= 4 and ball size of player < 5:
		say "traipse about the swaying mass of your ponderous ";
	else if ball size of Player >= 5:
		say "lovingly knead the mountainous weight of your plush ";
	say "balls, you find yourself panting at the smooth kiss of her pads as she carefully fondles your tender package. While the enthralling touch of her claws leave thin trails of tender crimson lover's marks in their wake, sending heady twitches of excitement through your body as your [Cock size desc of Player] tool twitches with desire. Her fluffy tails roam your [bodydesc of player] form, caressing your body in a slow, soothing, erotic, yet somewhat ticklish way.";	
	say "     Stretching her mouth wide, her face expression alight with vulpine hunger as she engulf your member, the bestial caress of her lips and teeth, embracing your spire in her smooth, ribbed canid mouth. You almost gasp as her fangs lightly glide along your eager cock flesh, sending motes of carnal pleasure delectably woven primal fear washing over you at the satin touch of her fur and scything edges of her teeth. Purring at your preyish little quivers, Cyn leisurely bobs her head back and forth along the length of your cock, rubbing your member along the animalistic furrow of her mouth. As her tepid flexible tongue lavishes your throbbing cum vein in a heady waltz of disparate sensual sensations, that leaves you moaning encouragement to her as she pistons her sweet vulpine muzzle along your cock's quivering length. Locking her cute foxy eyes with yours as a curious smile tugs on the edges of her dick stuffed lips as if looking to your approval, though the needy of tenor of your voice echoing through your cocoon answers for you.";
	WaitLineBreak;
	say "     Her smile widening, Cyn's eyes sharpen to thin vertical slits, as her throat vibrates along the scrumptious length of your spire and her tails ripple all the quicker around your body. As your antics seem to excite her all the more with a new wave of motivation, while you swoon in primal elation at the sensuous resonance of her purr cascading over your [cock size desc of player] dick. Till you gasp in loving relief as your balls churn and cock throbs along the beastly ribbing of her muzzle while you cum, loosing a [one of]toasty[or]salty[or]molten[or]creamy[at random] torrent of titillating seed across her eager mouth in an explosion of bliss. She presses her snoot to your groin, tenderly wrapping her tongue around your [one of]cock[or]rod[or]tool[or]dick[at random] as she [one of]suckles[or]nurses[at random] you molten load, making sure that not a single pearly drop is wasted. Pulling her head back, with a smug grin, she licks her thin foxy lips as she rubs ";
	if Ball Size of Player >= 6:
		say "the taut curves of her cum flushed tum, as a slight buzzing sound issues from inside her belly as it shrinks before your eyes. ";
	else if ball size of Player < 4 and ball size of Player >= 5:
		say "the gentle swell of her well-fed middle, a slight buzzing sound issues from inside as her belly shrinks before your eyes. ";
	else:
		say "her belly, as a light ravenous rumbling gurgle simmers across her pelt. ";
	say "Tired and empty, you relax in the comforting bed of her fluffy tails as they lower you to the ground and rest your head on a now sitting Cyn's lap. Beaming at the sight of your contented expression as you sink ever-so-slightly into her embrace, your caring mate gently runs her paws through whatever passes for your hair as her tails slowly unwrap you.";
	if location of Player is Attic:
		say "     In no mood to get up, the two of you stay like this for a while, basking in each other's presence and the warm bubbling afterglow of your shared passions. 'I-I hop5/des1re/w1sh to do this @gain, some time soooon.' she says in a cute, happy tone. Though you simply respond with a light nod, you still remind yourself of your situation and obligations, you reluctantly get up while she walks back towards her usual place at the center of the attic. Looking back at Cyn, you noticed that her tails have shrunk back to their original size and her clothes have returned to their rightful place.";
		NPCSexAftermath Player receives "CockOral" from Cyn;
	else:
		say "     However, you don't have the luxury of resting for long as she lifts you to your feet with her tails and releases you, saying. '[one of]Le-lets get ba-ack out there[or]Resuming search mode[or]B-break tiiiime is over[or]Data collection can now recommence[or]Libido normalized, you are now free to move about the area[or]Datum: Information is Power[or]Observation: The known is but the shadow of the knowable[at random].' somewhat impatiently as if urging you to continue your adventure. Looking back at Cyn, you noticed that her tails have shrunk back to their original size and her clothes have returned to her in a quick flash of black and white rectangles. Seeing as you're both ready, you motion for Cyn to follow along."; 
		NPCSexAftermath Player receives "CockOral" from Cyn;


to say CynFuck2: [missionary] 
	say "     Nodding, Cyn taps the ground with her right foot-paw two times in quick succession, her clothes becoming pixelated on the first tap, then vanish in a scintillating cloud of deep jet and rich crimson hues on the second. While a sharp knell of shattering glass draws your eyes skyward to a jagged spiderweb of cracks forming in the firmament, as a shimmering unknowable black liquid pours through the rifts with a pronounced audible [italic type]*drip*[roman type] as the strange material pools on the ground before your foxy companion’s feet paws. The unnatural fluid starts moving on its own, converging into a single blob evocative of an unearthly water bed sprawling out before you. Amused by their handiwork, Cyn happily walks towards the quivering construct with a cute little sashay, and jumps, back first into it."; 
	say "     Landing with a meaty [italic type]thud[roman type], the eldritch mass molds itself about like a living bean bag chair as it levels your precious friend's reclined form with your groin. Though all manner of questions nip at the back of your mind, the adorable look of the shadowy vixen signaling you to come closer with her tails stills such thoughts. As she parts her legs, letting her plump sheath and soft, palmable balls gently bounce before you. You watch with a small measure of amusement as the playful herm, draws her fingers down the satin borders of her pelt towards her tender package as she tenderly cups her foxy mitts about her lovely cum tanks with obvious delight at their gentle lewd weight lazing against her palms while her digits sink into her pillowy fur.";
	WaitLineBreak;
	say "     Lips peeling back into a ravenous inhuman smile, she languidly hefts her fuzzy balls with deliberate slowness, baring her vaguely vulpine passage to you as if in offering. Duly intrigued by the sight of her glossy foxy cunt and your eldritch lover's creativity, you can't help but let your eyes drink in sight of her soft E-cup breasts. As they wobble ever-so-slightly with the come hither waves of her tails, and the inviting glint of her static pre gushing from her yummy grey sheath while she beckons you forward. Spellbound by the exotic spectacle, and aeromatic scent of her bestial arousal titillating your senses, you allow your gaze to wash over her prone form as you take in the enthralling sight of her lithesome figure in full, wondrous repose upon the shimmering bed of otherworldly matter she conjured. While it laps at her cute little foxy paws and lush bubble butt like an affectionate pet. Already, you can feel your mouth watering at ";
	if "cum wise" is listed in Traits of Cyn:
		say "the euphoric memory of her rich strawberry seed, ";
	else: 
		say "the thought of sampling her exotic cum, ";
	say "as the tapered grey tip of her vulpine tool peaks out of its tender housing while your lover leans into your hungry stare.";
	say "     Striding closer, her tails start circling about your waist, taking hold of your [cockname of Player] spire, drawing a pleasant hum from your lips at the loving caress of her soft fur groping and teasing your cock in her tails['] silky embrace. Her velvety tails pamper the elated tip of your throbbing [cock size desc of Player] tool as she lovingly strokes you off. You almost melt at the inviting kiss of her pelt swaddling your cock as your eager rod slowly surges to life beneath tender ministrations while she draws you in. You tentatively touch the makeshift bed, unsure of what to make of its otherworldly mass, before climbing on top of it's lukewarm, soft, bouncy form. Nestling yourself between your fox lover's legs as you line up your tool with her [wet] pussy as you rear back, and thrust, while the adorable eldritch fox yips in base satisfaction. Her ebony snatch bulges with the delectable heft of your tool while the rubbery ooze quivers with each loving pistons of your hips."; 
	WaitLineBreak;
	say "     You notice, out of the corner of your eye, innumerable writhing tendrils coalesce from the otherworldly bed and wrap around your [bodydesc of player] legs like a doting pet. Almost shuddering with lurid delight at the sudden kiss of their cool vicious forms coiling about your body, you thoughtlessly lean into their inviting touch as they lovingly pamper ";
	if Player is impreg_now and breast size of Player >= 1:
		say "the toasty curves of your blossoming bump. You find yourself swooning contentedly at their silky caress and bracing chill creeping over your taut tum as the inquisitive feelers protectively coddle your [skinname of player] hide in their ever shifting embrace. Mh so soft, you mewl as their unearthly forms glide about your swaying waist like a living mold as they creep with a deliberate slowness about the sensitive sloshing swell of your [breast size desc of player] chest, encapsulating your mounds in a thin sheen of satin ebon ooze.";
		say "     Almost drunk on the sight, and heady hug of Cyn's bestial folds clenching about your [cock size desc of player] spire with every buck of your fertile hips, you hardly notice their texture's morphing ever-so-slightly as hungry, quasi-formed mouths soon wink into existance along the perky swell of your creamy tits. Too lost to the roiling bliss serenading your cock, and the hypnotic sway of your vulpine lover's ample breasts to care, your lust addled-mind can barely muster even the merest hint of surprise as the half-formed lips of these eldritch maws lovingly cinch about your nips with a reverent kiss. Flush with fresh ambrosial milk, your eager tits need little in the way of coaxing as the demi-lips of those unusual orifices, indulgently caress your perky teats before they gush [Nipple Count of Player] steams of pearlescent perfection upon their receptive forms. You watch with ";
		if Breast size of player >= 1 and breast size of player < 4:
			say "base delight as their sinuous forms ripple almost imperceptibly with each faux-swollow while your ripe nips are relieved of their bounty. ";
		if Breast size of player >= 4 and breast size of player < 12:
			say "unabashed mirth as the poor feelers visibly bulge in places with the weight of your cream. As the thinnest streaks of alabaster excellence peek through their jet back forms while your oh-so-palmable milk tanks are relieved of their plush bounty. ";
		if Breast size of player >= 12:
			say "primal pride at the delectable sight of these tentacles bulging with the weight of your body's offering, thick bands of the purest white simmering across their taut length as they struggle to keep up with your generously stacked body's flow. ";
		say "Cyn looks on, her cross-shaped eyes alight with unearthly glee at the heady spectacle playing out before her while these otherworldly tendrils explore your maternal figure.";
		WaitLineBreak;
		say "     With a side glance, you notice several tentacles emerge from the bedding beneath Cyn's lithesome body, and slowly seep over her, fondling her supple figure in their umbral clutches. As they affectionately wrap around your fox lover's unattended rod and ample grey sheath with deliberate slowness as their goopy mass hugs the glistening foxy taper of her bestial spire in their onyx embrace. Yipping, the eldritch foxy herm's unusual eyes seem to glaze over with a lustful fog, her tongue lolls from her lips like a well-loved pup starved for attention as the lustrous tendrils massage her throbbing tool in time with your thrusts. Smirking at her blissed out look, you watch as the scintillating tendrils work over the sizable length of her plush grey cock with long drawn out motions. That leaves your shadowy vixen panting with need as they pool about the tapered tip of her canine cockhead, swaddling her dick in their doting goopy clutches.";
		say "     All the while, Cyn mutters strange unwords to herself as their amorphic mass seems to seep into the tight little slit of her juicy gray dick in an unbound tide of excess. Almost howling in eldritch rapture, her turgid cum vein and plump knot bulge with the unsubtle outlines of their sensuous forms rippling across her puppy pecker as they slip themselves into the hungry depths of the vixen's delicious cock till her sheath is pulled devilishly tight. Enthralled by the spectacle, and heady caress of her tepid walls gripping your [cock size desc of player] as she writhes beneath you, your hands drifting of their own accord along her silk fur towards her sensual tool as you cheekily brush your fingers about her blushing sheath. Gods that must feel amazing, you whisper, marveling at the tension gripping her pillowy dick wrapper as the shadowy feelers pour themselves into her ravenous cock. ";
		WaitLineBreak;
		say "     Her balls swell with each lurid pump, the shimmering gray fur of her palmable packages grows wondrously taut. As the sublime impression of countless little tendrils roil along her cum tank's tightening curves while their gossamer pelt glides along your midriff with each fruitful piston of your hips. Basking at the sultry sight of her plump, pampered package, soft pangs of jealousy flicker along the back of your mind as you wonder how that must feel. Your hands glide towards her inflated, wriggling cum containers and begin fondling them, murmuring. Mh, such a big vixen, your fingers sinking ever-so-slightly into the dense supple swell of her silky spunk banks while the lively outline of squirming tendrils gently swarming about your fingertips. Eliciting a lustful sigh from your cute foxy friend as sticky, liquid tv-static drips from her dick slit in a glowing sheen of vulpine need."; 
		say "     All the while, your palms roam the plush fuzzy curves of her bulging ballbag, audibly gushing at the enthralling heft of her groaning package, and the exquisite kiss of the unearthly feelers gliding along your mitts as the pillowy orbs slips between the cracks in your fingers. You are suddenly brought back to your senses as her hands phase along your [bodydesc of player] torso as her claws sink your sides as draws you in with supernatural strength. Unwilling, or able to resist your treasured mate's touch, you surrender to her pull letting your gaze lock, and notice one of her pupils have morphed into a glitching, flickering between blue and red heart that seems to dance in and out of existence with the loving spasm of her vulpine flower gripping your cock all the tighter, milking it with an insatiable inhuman hunger.";
		WaitLineBreak;
		say "     Relief washes over your breasts as the budding pressure building within your [breast size desc of Player] tits ebbs as they're slowly relieved of their supple bounty. Their once prodigious flow begins to ebb ever-so-slightly by the moment as ";
		if Breast size of player >= 1 and breast size of player < 4:
			say "the meager trickle comes to an abrupt end despite the urging caress of the otherworldly feelers swarming about your petite bust. Cyn looks on with a somewhat disappointed look, that slowly changes to a suspicious smile as her eyes seem to bore into you, while her throat ripples with the striking impression of countless annelid forms swarming just beneath her fur. They seem to coil about the edges of her muzzle in a frolicking shoal as a red flickering light spills through the cracks of her sharp teeth. Though barely visible at first, the light strobes like the fitful gasps akin to a dying star, or the half glimpsed shine of an accretion disk. Ensorcelled, you watch as the glimmer pulses thrum analogous to the soft beat of some unnatural heart, building in intensity by the second, as rich reds entwined in sputtering strands of tv static radiating outwards, bathing your being in hollow eldritch light.";
			say "     Intrigued, you try asking what she's planning but as you open your mouth, a squirming, mercurial midnight tentacle shoots out of her maw, and forces its way down yours, releasing a strange tasteless liquid down your throat. Alarm flares through you as the raw gush of unknowable fluid is forced down your throat, yet as it hits your stomach, an uncanny sense of calm grips you as blissful warmth laced with an intoxicating fugue courses up your sternum. Too horny to care, as the endearing caress of her vulpine walls grip and milk your cock in tune with your thrust in a loving manner, numbing your senses. You thoughtlessly bob your head along the sleek length of the tendril tongue while your tummy groans with the weight of her offering.";
			WaitLineBreak;
			say "     The strange liquid suffuses your creaking tummy, blanketing your core in a cool numbing pall, like a trail of ants traipsing upon your [skinname of player] flesh, creeping up your breasts. Your tender mounds begin to grow heavy, as your hide gleams with a subtle crimson hue along your veins, you can only watch in dissociative curiosity as your [breast size desc of player] tits slosh and groan with productive potential. Before spilling outwards along the cute little dome of your ample tum. All the while, the diligent feeders knead their sensitive curves, coaxing a rich gush of tainted milk from your body. Cyn looks with a well-pleased grin as your cream streams through their semi-translucent forms, staining their tepid umbral bodies with scintillating patch of opalescent white, before feeding the lurid amalgam of lewd juices into her throbbing rod."; 
			say "     You also notice the flow of the unusual liquid dripping down your throat start slowly waning to nothing before Cyn's tongue suddenly retracts back into her mouth, still dripping with your saliva and the last few precious drops of anomalous offering. Whimpering at its loss and the sudden pit left in your stomach, you want to beg the lovely vixen for another suckle, just to feel the eldritch warmth filling your being blossoming again. Perhaps sensing your desire, Cyn says. 'D-Din't expect you to like it that much-ch but DDdddon't fret//worry, I can g1ve you more lay-lay-later if you so DesIre, you ne££ed only ask.' her voice glitchy in slow seductive cadence. You nod as her hand paws stretch outwards to caress your face for a small moment before guiding your hands to her inflating cum tanks, encouraging you to continue playing with her.";
			WaitLineBreak;
		else if Breast size of player >= 4 and breast size of player < 12:
			say "their velvety length sinks into your respectable rack in an enthralling corkscrew, casting lewd little furrows in your [skinname of Player] hide while they tenderly knead your waning glands in a near mechanical rhythm. Fuck that feels nice, you pant, delighting in the care paid to your [breast size desc of player] milk tanks as the beguiling touch of the goopy tendrils waltz about your oh-so-productive chest and stiff perky nips. As your duly drained mounds slowly sag into the tentacular caress of your mate's otherworldly creation.";
		else if Breast size of player >= 12:
			say "the makeshift bed's goopy material blends with your milk, soft streaks of grey ripple through the edges of the feeler's ebon forms, though the change is subtle at first. Their native color slowly gives way in places to an unearthly grey as the hues dance and shimmer in the available light in a striking ballet of excess. Dimly, you watch out of the corner of your eye as these vibrant lancets of white peter down towards the lush bedding beneath you like oil mixing with water as the eldritch matter bubbles happily with your offering while it expands outward. Even Cyn seems slightly impressed as the gleeful tendrils ravishing her spire flicker like a broken screen from black to grey as the fresh emulsion pours into your lover's taut cock and groaning fuzzy balls.";
		say "     Your attention is suddenly drawn to Cyn, her soft hand paws roam your pregnant belly with a look of loving curiosity. But also, the barest hint of anger, or perhaps... envy toward your fruitful condition and the new life growing with you. Smiling to put your precious mate at ease, you press your plush bump into her velvety touch. Complimenting the sweet vixen on the suppleness of her paws and skill of her caress, while her mitts roam your tender body in a doting spiral. Almost blushing a deep wine red at your words, her expression brightens and tails wag excitedly as she basks in your earnest praise like a doting pup. As tension builds up within you as her vulpine passage tightens around your spire until she suddenly releases a howl that seems to distort reality around you like waves coursing over a stagnant lake.";
	else if Player is impreg_able and cunt count of Player >= 1: 
		say "the sensitive curves of your inner thighs as they sensuously. ";
		if CockName of Player is listed in infections of InternalBallsList:
			say "glide about the subtle swell of your internal cum tanks. ";
		else if ball size of Player >= 1 and ball size of player < 4:
			say "slip behind the sensible bulge of your tight baby batter banks. ";
		else if ball size of Player >= 4 and ball size of player < 5:
			say "traipse about the swaying mass of your ponderous package. ";
		else if ball size of Player >= 5:
			say "lovingly knead the mountainous weight of your plush spunk holsters. ";
		say "As their titillatingly cool forms languidly spread your [cunt size desc of Player] petals wide as they slip between your needy folds with a lewd squelch. Your pussy bulges with their subtle impressions as they expand by the moment as their sensuousness seems to adapt to the unique contours of your elated box while their glossy forms glide along your exquisite walls in a fractionless rhythm. A reverent gasp of delectation peters from your lips at their prodding caress flickers across the tender folds of your button and package.";
		say "     With a side glance, you notice several tentacles emerge from the bedding beneath Cyn's lithesome body, and slowly seep over her, fondling her supple figure in their umbral clutches. As they affectionately wrap around your fox lover's unattended rod and ample grey sheath with deliberate slowness as their goopy mass hugs the glistening foxy taper of her bestial spire in their onyx embrace. Yipping, the eldritch foxy herm's unusual eyes seem to glaze over with a lustful fog, her tongue lolls from her lips like a well-loved pup starved for attention as the lustrous tendrils massage her throbbing tool in time with your thrusts. Smirking at her blissed out look, you watch as the scintillating tendrils working over the sizable length of her plush grey cock with long drawn out motions. That leaves your shadowy vixen panting with need as they pool about the tapered tip of her canine cockhead, swaddling her dick in their doting goopy clutches.";
		WaitLineBreak;
		say "     All the while, Cyn mutters strange unwords to herself as their amorphic mass seems to seep into the tight little slit of her juicy gray dick in an unbound tide of excess. Almost howling in eldritch rapture, her turgid cum vein and plump knot bulge with the unsubtle outlines of their sensuous forms rippling across her puppy pecker as they slip themselves into the hungry depths of the vixen's delicious cock till her sheath is pulled devilishly tight. Enthralled by the spectacle, and heady caress of her tepid walls gripping your [cock size desc of player] as she writhes beneath you, your hands drifting of their own accord along her silk fur towards her sensual tool as you cheekily brush your fingers about her blushing sheath. Gods that must feel amazing, you whisper, marveling at the tension gripping her pillowy dick wrapper as the shadowy feelers pour themselves into her ravenous cock.";
		say "     Her balls swell with each lurid pump, the shimmering gray fur of her palmable packages grows wondrously taut. As the sublime impression of countless little tendrils roil along her cum tank's tightening curves while their gossamer pelt glides along your midriff with each fruitful piston of your hips. Basking at the sultry sight of her plump, pampered package, soft pangs of jealousy flicker along the back of your mind as you wonder how that must feel. Your hands glide towards her inflated, wriggling cum containers and begin fondling them, murmuring. Mh, such a big vixen, your fingers sinking ever-so-slightly into the dense supple swell of her silky spunk banks while the lively outline of squirming tendrils gently swarming about your fingertips. Eliciting a lustful sigh from your cute foxy friend as sticky, liquid tv-static drips from her dick slit in a glowing sheen of vulpine need."; 
		WaitLineBreak;
		say "     All the while, your palms roam the plush fuzzy curves of her bulging ballbag, audibly gushing at the enthralling heft of her groaning package, and the exquisite kiss of the unearthly feelers gliding along your mitts as the pillowy orbs slips between the cracks in your fingers. You are suddenly brought back to your senses as her hands phase along your [bodydesc of player] torso as her claws sink your sides as draws you in with supernatural strength. Unwilling, or able to resist your treasured mate's touch, you surrender to her pull letting your gaze lock, and notice one of her pupils have morphed into a glitching, flickering between blue and red heart that seems to dance in and out of existence with the loving spasm of her vulpine flower gripping your cock all the tighter, milking it with an insatiable inhuman hunger.";
	else: 
		say "you, their cold, abyssal black tentacles softly tighten around your [Bodytype of Player] body, wriggling across your [Breast size desc of Player] chest and [bodydesc of Player] thighs in a velvety tide of unearthly decadence. [one of]Gushing[or]Purring[or]Mewing[or]Swooning[or]Gasping[at random] at their tender touch as you pound your fox lover's foxy flower, you find yourself gently leaning into their embrace as the supple borders of your impromptu bedding encouragingly laps about your entwined forms.";
		say "     With a side glance, you notice several tentacles emerge from the bedding beneath Cyn's lithesome body, and slowly seep over her, fondling her supple figure in their umbral clutches. As they affectionately wrap around your fox lover's unattended rod and ample grey sheath with deliberate slowness as their goopy mass hugs the glistening foxy taper of her bestial spire in their onyx embrace. Yipping, the eldritch foxy herm's unusual eyes seem to glaze over with a lustful fog, her tongue lolls from her lips like a well-loved pup starved for attention as the lustrous tendrils massage her throbbing tool in time with your thrusts. Smirking at her blissed out look, you watch as the scintillating tendrils working over the sizable length of her plush grey cock with long drawn out motions. That leaves your shadowy vixen panting with need as they pool about the tapered tip of her canine cockhead, swaddling her dick in their doting goopy clutches.";
		WaitLineBreak;
		say "     All the while, Cyn mutters strange unwords to herself as their amorphic mass seems to seep into the tight little slit of her juicy gray dick in an unbound tide of excess. Almost howling in eldritch rapture, her turgid cum vein and plump knot bulge with the unsubtle outlines of their sensuous forms rippling across her puppy pecker as they slip themselves into the hungry depths of the vixen's delicious cock till her sheath is pulled devilishly tight. Enthralled by the spectacle, and heady caress of her tepid walls gripping your [cock size desc of player] as she writhes beneath you, your hands drifting of their own accord along her silk fur towards her sensual tool as you cheekily brush your fingers about her blushing sheath. Gods that must feel amazing, you whisper, marveling at the tension gripping her pillowy dick wrapper as the shadowy feelers pour themselves into her ravenous cock. ";
		say "     Her balls swell with each lurid pump, the shimmering gray fur of her palmable packages grows wondrously taut. As the sublime impression of countless little tendrils roil along her cum tank's tightening curves while their gossamer pelt glides along your midriff with each fruitful piston of your hips. Basking at the sultry sight of her plump, pampered package, soft pangs of jealousy flicker along the back of your mind as you wonder how that must feel. Your hands glide towards her inflated, wriggling cum containers and begin fondling them, murmuring. Mh, such a big vixen, your fingers sinking ever-so-slightly into the dense supple swell of her silky spunk banks while the lively outline of squirming tendrils gently swarming about your fingertips. Eliciting a lustful sigh from your cute foxy friend as sticky, liquid tv-static drips from her dick slit in a glowing sheen of vulpine need."; 
		WaitLineBreak;
		say "     All the while, your palms roam the plush fuzzy curves of her bulging ballbag, audibly gushing at the enthralling heft of her groaning package, and the exquisite kiss of the unearthly feelers gliding along your mitts as the pillowy orbs slips between the cracks in your fingers. You are suddenly brought back to your senses as her hands phase along your [bodydesc of player] torso as her claws sink your sides as draws you in with supernatural strength. Unwilling, or able to resist your treasured mate's touch, you surrender to her pull letting your gaze lock, and notice one of her pupils have morphed into a glitching, flickering between blue and red heart that seems to dance in and out of existence with the loving spasm of her vulpine flower gripping your cock all the tighter, milking it with an insatiable inhuman hunger.";
	say "     Her rod blushing slightly as bulges begin to quickly travel up the tentacle and into the main mass, this view along with the feeling of the tentacles massaging your body sends you over the edge, and you soon join the eldritch fox in howling as you release your offering deep inside her, feeling the walls of her pussy quivering as you drench her insides in "; 
	if ball size of Player <= 3:
		say "a generous sheen of toasty seed. ";
	else if Ball Size of Player >= 5 and Ball Size of Player < 4:
		say "a balmy deluge of molten cum. ";
	else if ball size of Player >= 6:
		say "a prodigious torrent of virile spunk. ";
	say "Her cunt's hungry, wet muscles cinch and vibrate around your cock, milking you dry, making sure not a drop of your pearly leaks from her feral flower. Panting you collapse into your eldritch fox's arms, letting your face rest between her soft breasts as her arms wrap around you. Her hand slides to the top of your head as she slowly draws her soft tepid paws along your cheek.";
	WaitLineBreak;
	say "     Her hand glitching and stuttering in and out existence as she looks at you with a primal mix of hunger and desire. 'My//Our//Cyn's = Limbo's little Pog Champ, to-o see_feel//go to file header: Error_File_Header_Not_Found_or_Unavailable observe you like t-Hi$, t-to feel you like this-this-this-this Integer_Cache_Overflow i-it makes me/us/Limbo fe-el => experience a hunger I/we/self don't quite undeeeerst@nd yet.' Too tired to attempt to understand her words, you nod along, simply nuzzling your face into the soft silky swell of her breasts as she affectionately pets your head. Much as you want to take a quick nap on those inviting foxy breasts, you know you have other things to worry about. So you begrudgingly get up and prepare, but before you can pick up your things, a fresh set of tentacles spring from the makeshift bed and wrap around you, then suddenly pull you back into Cyn's arms."; 
	say "     'C-can we-e£eeee hug//cuddle a bit l-longer?' she purrs, giving your chest a tight squeeze, making you feel like you don't actually have a choice in the matter. Shrugging you just give into your earlier laziness, closing your eyes as you rest your head on her chest all the while she resumes petting you, soon falling asleep in the comfort of your snuggle hungry fox's embrace. Waking up from your nap, you notice you're alone in the makeshift bed, your gear assembled beside you with Cyn reading a book not too far from you, getting up from the makeshift bed and stowing your possessions, you resume your journey."; 
	NPCSexAftermath Cyn receives "Pussy Fuck" from Player;
	if player is impreg_now and breast size of Player < 4:
		increase breast size of Player by 3;
		TraitGain "Goo inflator" for Cyn; [Might let Cyn feed people goo to grow their bits and tits at a later update.]


to say CynFuck3:
	if "cum wise" is not listed in Traits of Cyn:
		say "     Tilting her head to one side, strange symbols appearing between her ears as she seems to stare at nothing with empty expression, her right paw groping her bulge thru the thin fabric of her black panties for a moment before turning to look back at you, 'T-the flavour i-is unfinished_go-to//FileHeader:Work-in-Progresses, loading WIP/prototype flavour, Do£s [bold type]REDACTED[roman type] w1sh to proc#ed?', her eyes turning a ghostly white as she continues, in a more robotic voice, 'YES or NO?'";
		LineBreak;
		say "     [bold type]how do you respond?[roman type]";
		LineBreak;
		let cum_sucker_Choices be a list of text;
		add "Yes." to cum_sucker_Choices;
		add "No." to cum_sucker_Choices;
		let cum_sucker_Choice be what the player chooses from cum_sucker_Choices;
		if cum_sucker_Choice is:
			-- "Yes.":
				say "     'Affirmative, log-log-log-logging tr@it,' Cyn hums through a sudden static bleat as her eyes return to normal. 'Shall we-e-ee-e b-begin then?'";
			-- "No.":
				say "     'Acknowledged,' Cyn hums through a sudden static bleat as her eyes return to normal, '1s there enyt#ing else you'd like to do i-instead?'";
				WaitLineBreak;
				say "[sexwithCyn]";
		say "     Flexing a right pointer finger like a switchblade. Her nail expands into a shimmering crescent of roiling pixelated static that she draws across her top in a slow languid motion, as the fabric seems to ripple and simmer before your eyes. As it evaporates into an artifacting mist of lurid black and velvety crimson hues pooling about wrist while she purposely glides her gleaming claw along the pillowy swell of her lush E-cup breasts. Parting the form fitting textile like the petals of some otherworldly rose, freeing her delectable mounds from their enticing hold as they lightly slump forward with an enthralling bounce. All the while, the eldritch mist seems to pull more of her attire into itself as her unusually apparel fragments and splinters into luminance bands of scintillating light streaming like the twin tails of a comet. You watch, mouth agape as Cyn hooks the crook of her claw along the thin band of her panties, and give the near see through thing a gentle tung, pulling the umbral fabric enticingly tight, highlighting the cute little bulge of plush fuzzy sheath and petite balls.";
		say "     Before this too disintegrates into the billow plume of supernatural mist entwining along her right arm as she leisurely flicks her wrist toward a flat patch of ground. The strange fog solidifies into a thick crimson and jet ribbon as it surges forth at odd impossible angles, then settles onto the ground into a glittering puddle of fragmenting unlights. Curious, you feel a mountain of questions roiling along your lips, only for the words to die on them just as quickly as they came as Cyn snaps her bladed fingers, shattering the otherworldly talon in a kaleidoscope of swirling nameless colors while the pool of fantastical matter looms upward. Dumbstruck, you observe as it twists in on itself, reforming into a graceful, yet plain red and black gothic bench. Smirking at her creation, Cyn cheerfully struts toward you with a pronounced predatory stride while her tails billows her as she casually sits herself upon with playful flourish. Then she spreads her legs, baring her ripe juice cock wrapper to you as she leans backwards and motions you forward with a knowing come hither wave of her voluminous tails.";
		WaitLineBreak;
		say "     Advancing towards her, her smile slightly widens into a doting, if hungry grin as you kneel in front of her, running your hands over her soft, furry thighs. Soliciting a soft murmur from the eldritch fox as your fingers dance along the silky contours of her willowy legs, languidly trace your nails up the inviting contours of her beastly sheath. Your mate breathlessly pants as you wrap your dominant hand about her silky grey cock wrapper. Gods your fur is so soft, you swoon, giving her plump cock a loving squeeze while petite glistening beads of static laced pre dribble from her dick slit. Enthused by the sights, and needy look of the shadowy vixen, you coyly slip your index finger between the plush tepid borders of her sheath, delighting at the gentle resistance of her cock flesh hugging your inquisitive digits. Alongside the adorable little moans of the otherworldly fox as a cute rosy blush peeks through her fur while you gleefully pamper her supple rod with delicate strokes of your [bodyname of player] fingers.";
		say "     You continue playing with her sheath, slowly slipping a finger down the warm fuzzy length of her cock wrapper while your free hand strokes its plush, furred surface as her rod edges free of its confinement. A needy mewl issues from the lustful vixen lips as the lush tepid walls of cock warmer tighten about your inquisitive digit as the gleaming tip of juicy tapered spire leisurely slips free of its meaty housing. Taking in the view of her tapered foxy rod, you suddenly feel her hands running along the top of your head, as her soft pads gently drift down your cheeks as Cyn leans back. Her eyes scanning you for some manner of reaction while motes of impatience flicker across her lustful expression. Cyn lightly pushes on the back of your head as if to urge you on, you flash her a loving smile and you lean in, eliciting a cute, little, distorted foxy rumble and a shiver of excitement from the eldritch fox. As you give her member a slow lick before engulfing her cock in the warm embrace of your eager mouth, salty strawberry tangs laced with unearthly mercurial sapors that seems to shift moment-to-moment as the supernatural beads of her vulpine virility waltz along your taste buds.";
		WaitLineBreak;
		say "     You diligently bob your head along her shaft, in primal appreciation of the cute little foxy chirps echoing from Cyn's lips. While your tongue glides past the mushroom head of her hybrid hermhood, exploring the rich throbbing contours of her ripe cum vein. You suddenly feel her hands lifting off your head, curious, you look up to see Cyn groping her soft, E-cup breasts. As her legs wrap around your head, the soft fur of her thighs caressing your cheeks as the pillowy paw pads press on your back, pulling you closer to her while you smell a faint scent of roses mixed with the unearthly aroma of her otherworldly arousal. 'D-don't sss5st0-p-p,' she says in a lusty, broken tone as her still swelling spire throbs with decadent pulses of eldritch lust as you dandle your [headname of player] head along its turgid length. Purring your affirmation, your eyes drift down to the delectable sight of her straining sheath, as the lush grey cocker wrapper bulges the groaning weight of her rod as her thrumming knot slowly slips out of its tender housing amid a soft gush of hybrid juices.";
		say "     Swooning at the subtle patter of hermy pre tricking down her demi-vulpine shaft, you lewdly tweak her sheath along her dripping, pulsating knot, delectating at the sensuous sensation of her tightly stretched fur caressing your palms and the too taut impression of her bullous gland flickering across her hermhood. You work your hand in tune with the worshipful bobs of your head, letting every little loving piston flow into the next in a wondrous epode. Each endearing stroke and doting motion of your [HeadName of Player] mouth along her yummy vulpine tool, eliciting a sympathetic twitch from her paws as she lovingly rakes her talons on your back. Mh, naughty fox, you rumble with a lustful shiver, letting the lewd resonances of your voice cascades along her tapered hybrid cock, fondling your dominant hand about silky fur of her oh-so-palmable cum holsters while you reverently jostle her petite hermhood like a bag of precious gems. A sudden blare static laced with broken archaic dial up tones reverberate above you, curious, you up towards the origin of the new noise you find cyn, her mouth open at an impossible angle as her tongue stretches and darkens.";
		WaitLineBreak;
		say "     Becoming more akin to an umbral black tentacle still dripping with eldritch saliva as it wraps around her plush breasts and perky nips, lovingly stroking her cute little vulpine teats with the fruitful passes of its silky coils. Awestruck, you can only observe at the otherworldly sight of her oral muscle play tweaking her grey duct coating her stiffening teats in a generous sheen of static laced saliva that seem to gleam and writhe with its own eldritch radiance. As her tentacular tongue flickers about her adorable chest pillows, creating cute little furrows in her supple rack while her inquisitive tongue slowly slithers down the svelte curves of her tight foxy tum. Her tapered rod twitches along the roof of your mouth, the odd taste of strawberries seeping across your tongue in a velvety veil of vulpine delights as you diligently pamper her throbbing cum vein in your oral brace soon leaves your panting for more. You ravenously bob your [HeadName of Player] head along the vibrant satin length of her tapered spire, exalting in the unique sapor of her pre titillating your far-traveled palate.";
		say "     Her smooth, bestial tighs caress your cheeks as Cyn commandingly tighens her hold on your neck like sensual vice as her floral scent and needy tugs of her lithe limbs urges you onward. You spy, out of the corner of your eye, Cyn bringing her hands back to your head, gently brushing your hair while gripping the back of your [headname of Player] skull, roughly forcing you to take evermore of her cock with each worshipful motion of your visage. Loosing a needy, submissive whine, you can feel her spire stretching your throat enthrallingly tight as her tapered rod slips ever deeper into the welcoming folds of your elastic throat till your lips brush the throbbing base of her ample vulpine knot. Warm wisps of your lustful breath cascaded along her cock, eliciting a faint quiver from her lips, as Cyn's foxy tool thrums in the tight embrace of your oral muscles as they glide along the eldritch vixen's cock in a vivacious sonnet of lewd sensations.";
		WaitLineBreak;
		say "     Delighting in her pageantry, and the delectable tang of cock lavishing your senses, you can't help but give her fluffy cum tanks and endearing squeeze, provoking a sympathetic scratch from supple paws as she thoughtlessly racks her nails across your back. While your tactile senses swoon at the velvety kiss of her fur gracing your palms and the unsubtle twitch of her cum containers as the hungry vulpine ravenously buckles her svelte hips, desperately trying to hilt more of elated spire in your mouth's welcoming embrace. You hear passionate, discordant static rumbles coming from Cyn as you glance up from your reverent worship of her lovely foxhood, her umbral tentacle like tongue tightening around her breasts casting sensual creases in her grey resplendent fur as her legs suddenly tighten their hold on you, pinning your head to her glorious hermhood while she forces her knot well past the too-taut borders of your lips as she cums, flooding your palate with rich tide of strawberry flavored cum that sails down your throat in a molten flurry of otherworldly bliss.";
		say "     You greedily suckle each precious drop of vulpine seed with loving alacrity, rollicking in the effervescent eldritch warm of her foxy seed pooling in your elated middle, a blissful tightness spreads along the [bodydesc of player] curves of [bodyname of player] [one of]core[or]stomach[or]tummy[or]belly[or]tumby[at random] as she pours untold liters of succulent fruity seed down your duly tied throat. Struggling with the sheer volume of cum as thick static laced globules of vulpine cum leaks from the sides of your mouth, the ambrosial tang of her otherworldly spunk and delectable texture of her tapered rod roiling your elated senses spurs you on. As an effervescent warmth spreads through your body while an enthralling fog coils about your mind like a warm blanket as your belly groans with the verdant weight of her load. With each reverent swallow, you can feel your [skinname of player] hide getting stretched devilishly taut as the heady echoes of Cyn's static seed churns like a living tide within as your supple [one of]core[or]stomach[or]tummy[or]belly[or]tumby[at random] expands by the second as your body struggles to accommodate her generous offering.";
		WaitLineBreak;
		say "     Driven by a sudden voracious hunger, and the smoldering look of the eldritch vixen as she peers down at you with a lusty expression, alongside the rapturous caress of her cock serenading your throat with beatific throb of her dick. You can't help but swallow every delectable droplet as the unearthly intoxicants flooding your body push onward in your doting attempt to please your vulpine lover, and not squander her precious gift. Unbidden, your hands slowly drift to your stuffed belly, playfully rubbing as it expands amid your caress. Waves of pleasure and warmth spreading through you with each greedy swallow as the once steady deluge of cum ebbs to a gentle trickle. While your tongue explores the graceful taper of her cock with loving, languid motions as you gleefully pamper the tight borders of her cum vein and tender knot as the once turgid swell of her vulpine rod seem to deflate by the second. Cyn releases her hold on you, as you pull your head back, your eyes are drawn upwards by a sudden rubberized twang as her tongue rolls back in on itself. While she gazes skyward with a deep, satisfied expression before you tuck your head against her lap, while her rod slowly recedes back into its fuzzy blushing sheath.";
		say "     You are suddenly pulled up by an invisible force and sat on her lap with your back to her as her hands move to hug you, her supple pads gently caressing your flushed [one of]stomach[or]tummy[or]belly[at random] as she massages the lingering from your well-pack middle. In no hurry to get up just yet, you both stay like this for a while Cyn hums, 'Registering satisfaction: entity_name_not_found &ppRoval of flavor//tang//simulacrum of Fauna ID:Strawberry fl%v0ur n0ted for future feedings.' Dreamily mumbling reply, you cheerfully give your flush tummy a playful pat. Delectating in the gentle bubbly warmth coursing through your cum-stuffed core while you affectionately nuzzle your cheeks against her tepid fur as you thank the otherworldly vulpine for sharing such a rich feat with you. Before, almost reluctantly, you slowly disentangle yourself from her comforting embrace and wobble back onto your feet as you hear a static hum accompanied by a sound of tearing paper.";
		WaitLineBreak;
		say "     Looking back, you watch as Cyn rises to her paws while the bench disintegrates behind her in an umbral plume of thick smoke that seems to coil around Cyn's naked foxy form then condenses back into her familiar clothing. Surprised, you stare at her for a while, trying to process what she just did, but quickly snap out of it, deciding that trying to ascribe rhythm or reason to her lead to her anomalous powers will just leave you with a headache, you instead focus on your more immediate tasks.";
		TraitGain "cum wise" for Cyn;
		NPCSexAftermath Cyn receives "CockOral" from Player;
		PlayerDrink 15;
		PlayerEat 10;
		addAlcPoints 1;
	else if "cum wise" is listed in the Traits of Cyn:
		say "     Flexing a right pointer finger like a switchblade. Her nail expands into a shimmering crescent of roiling pixelated static that she draws across her top in a slow languid motion, as the fabric seems to ripple and simmer before your eyes. As it evaporates into an artifacting mist of lurid black and velvety crimson hues pooling about wrist while she purposely glides her gleaming claw along the pillowy swell of her lush E-cup breasts. Parting the form fitting textile like the petals of some otherworldly rose, freeing her delectable mounds from their enticing hold as they lightly slump forward with an enthralling bounce. All the while, the eldritch mist seems to pull more of her attire into itself as her unusually apparel fragments and splinters into luminance bands of scintillating light streaming like the twin tails of a comet. You watch, mouth agape as Cyn hooks the crook of her claw along the thin band of her panties, and give the near see through thing a gentle tung, pulling the umbral fabric enticingly tight, highlighting the cute little bulge of plush fuzzy sheath and petite balls.";
		say "     Before this too disintegrates into the billow plume of supernatural mist entwining along her right arm as she leisurely flicks her wrist toward a flat patch of ground. The strange fog solidifies into a thick crimson and jet ribbon as it surges forth at odd impossible angles, then settles onto the ground into a glittering puddle of fragmenting unlights. Curious, you feel a mountain of questions roiling along your lips, only for the words to die on them just as quickly as they came as Cyn snaps her bladed fingers, shattering the otherworldly talon in a kaleidoscope of swirling nameless colors while the pool of fantastical matter looms upward. Dumbstruck, you observe as it twists in on itself, reforming into a graceful, yet plain red and black gothic bench. Smirking at her creation, Cyn cheerfully struts toward you with a pronounced predatory stride while her tails billows her as she casually sits herself upon with playful flourish. Then she spreads her legs, baring her ripe juice cock wrapper to you as she leans backwards and motions you forward with a knowing come hither wave of her voluminous tails.";
		WaitLineBreak;
		say "     Advancing towards her, her smile slightly widens into a doting, if hungry grin as you kneel in front of her, running your hands over her soft, furry thighs. Soliciting a soft murmur from the eldritch fox as your fingers dance along the silky contours of her willowy legs, languidly trace your nails up the inviting contours of her beastly sheath. Your mate breathlessly pants as you wrap your dominant hand about her silky grey cock wrapper. Gods your fur is so soft, you swoon, giving her plump cock a loving squeeze while petite glistening beads of static laced pre dribble from her dick slit. Enthused by the sights, and needy look of the shadowy vixen, you coyly slip your index finger between the plush tepid borders of her sheath, delighting at the gentle resistance of her cock flesh hugging your inquisitive digits. Alongside the adorable little moans of the otherworldly fox as a cute rosy blush peeks through her fur while you gleefully pamper her supple rod with delicate strokes of your [bodyname of player] fingers.";
		say "     You continue playing with her sheath, slowly slipping a finger down the warm fuzzy length of her cock wrapper while your free hand strokes its plush, furred surface as her rod edges free of its confinement. A needy mewl issues from the lustful vixen lips as the lush tepid walls of cock warmer tighten about your inquisitive digit as the gleaming tip of juicy tapered spire leisurely slips free of its meaty housing. Taking in the view of her tapered foxy rod, you suddenly feel her hands running along the top of your head, as her soft pads gently drift down your cheeks as Cyn leans back. Her eyes scanning you for some manner of reaction while motes of impatience flicker across her lustful expression. Cyn lightly pushes on the back of your head as if to urge you on, you flash her a loving smile and you lean in, eliciting a cute, little, distorted foxy rumble and a shiver of excitement from the eldritch fox. As you give her member a slow lick before engulfing her cock in the warm embrace of your eager mouth, salty strawberry tangs laced with unearthly mercurial sapors that seems to shift moment-to-moment as the supernatural beads of her vulpine virility waltz along your taste buds.";
		WaitLineBreak;
		say "     You diligently bob your head along her shaft, in primal appreciation of the cute little foxy chirps echoing from Cyn's lips. While your tongue glides past the mushroom head of her hybrid hermhood, exploring the rich throbbing contours of her ripe cum vein. You suddenly feel her hands lifting off your head, curious, you look up to see Cyn groping her soft, E-cup breasts. As her legs wrap around your head, the soft fur of her thighs caressing your cheeks as the pillowy paw pads press on your back, pulling you closer to her while you smell a faint scent of roses mixed with the unearthly aroma of her otherworldly arousal. 'D-don't sss5st0-p-p,' she says in a lusty, broken tone as her still swelling spire throbs with decadent pulses of eldritch lust as you dandle your [headname of player] head along its turgid length. Purring your affirmation, your eyes drift down to the delectable sight of her straining sheath, as the lush grey cocker wrapper bulges the groaning weight of her rod as her thrumming knot slowly slips out of its tender housing amid a soft gush of hybrid juices.";
		say "     Swooning at the subtle patter of hermy pre tricking down her demi-vulpine shaft, you lewdly tweak her sheath along her dripping, pulsating knot, delectating at the sensuous sensation of her tightly stretched fur caressing your palms and the too taut impression of her bullous gland flickering across her hermhood. You work your hand in tune with the worshipful bobs of your head, letting every little loving piston flow into the next in a wondrous epode. Each endearing stroke and doting motion of your [HeadName of Player] mouth along her yummy vulpine tool, eliciting a sympathetic twitch from her paws as she lovingly rakes her talons on your back. Mh, naughty fox, you rumble with a lustful shiver, letting the lewd resonances of your voice cascades along her tapered hybrid cock, fondling your dominant hand about silky fur of her oh-so-palmable cum holsters while you reverently jostle her petite hermhood like a bag of precious gems. A sudden blare static laced with broken archaic dial up tones reverberate above you, curious, you up towards the origin of the new noise you find cyn, her mouth open at an impossible angle as her tongue stretches and darkens.";
		WaitLineBreak;
		say "     Becoming more akin to an umbral black tentacle still dripping with eldritch saliva as it wraps around her plush breasts and perky nips, lovingly stroking her cute little vulpine teats with the fruitful passes of its silky coils. Awestruck, you can only observe at the otherworldly sight of her oral muscle play tweaking her grey duct coating her stiffening teats in a generous sheen of static laced saliva that seem to gleam and writhe with its own eldritch radiance. As her tentacular tongue flickers about her adorable chest pillows, creating cute little furrows in her supple rack while her inquisitive tongue slowly slithers down the svelte curves of her tight foxy tum. Her tapered rod twitches along the roof of your mouth, the odd taste of strawberries seeping across your tongue in a velvety veil of vulpine delights as you diligently pamper her throbbing cum vein in your oral brace soon leaves your panting for more. You ravenously bob your [HeadName of Player] head along the vibrant satin length of her tapered spire, exalting in the unique sapor of her pre titillating your far-traveled palate.";
		say "     Her smooth, bestial tighs caress your cheeks as Cyn commandingly tighens her hold on your neck like sensual vice as her floral scent and needy tugs of her lithe limbs urges you onward. You spy, out of the corner of your eye, Cyn bringing her hands back to your head, gently brushing your hair while gripping the back of your [headname of Player] skull, roughly forcing you to take evermore of her cock with each worshipful motion of your visage. Loosing a needy, submissive whine, you can feel her spire stretching your throat enthrallingly tight as her tapered rod slips ever deeper into the welcoming folds of your elastic throat till your lips brush the throbbing base of her ample vulpine knot. Warm wisps of your lustful breath cascaded along her cock, eliciting a faint quiver from her lips, as Cyn's foxy tool thrums in the tight embrace of your oral muscles as they glide along the eldritch vixen's cock in a vivacious sonnet of lewd sensations.";
		WaitLineBreak;
		say "     Delighting in her pageantry, and the delectable tang of cock lavishing your senses, you can't help but give her fluffy cum tanks and endearing squeeze, provoking a sympathetic scratch from supple paws as she thoughtlessly racks her nails across your back. While your tactile senses swoon at the velvety kiss of her fur gracing your palms and the unsubtle twitch of her cum containers as the hungry vulpine ravenously buckles her svelte hips, desperately trying to hilt more of elated spire in your mouth's welcoming embrace. You hear passionate, discordant static rumbles coming from Cyn as you glance up from your reverent worship of her lovely foxhood, her umbral tentacle like tongue tightening around her breasts casting sensual creases in her grey resplendent fur as her legs suddenly tighten their hold on you, pinning your head to her glorious hermhood while she forces her knot well past the too-taut borders of your lips as she cums, flooding your palate with rich tide of strawberry flavored cum that sails down your throat in a molten flurry of otherworldly bliss.";
		say "     You greedily suckle each precious drop of vulpine seed with loving alacrity, rollicking in the effervescent eldritch warm of her foxy seed pooling in your elated middle, a blissful tightness spreads along the [bodydesc of player] curves of [bodyname of player] [one of]core[or]stomach[or]tummy[or]belly[or]tumby[at random] as she pours untold liters of succulent fruity seed down your duly tied throat. Struggling with the sheer volume of cum as thick static laced globules of vulpine cum leaks from the sides of your mouth, the ambrosial tang of her otherworldly spunk and delectable texture of her tapered rod roiling your elated senses spurs you on. As an effervescent warmth spreads through your body while an enthralling fog coils about your mind like a warm blanket as your belly groans with the verdant weight of her load. With each reverent swallow, you can feel your [skinname of player] hide getting stretched devilishly taut as the heady echoes of Cyn's static seed churns like a living tide within as your supple [one of]core[or]stomach[or]tummy[or]belly[or]tumby[at random] expands by the second as your body struggles to accommodate her generous offering.";
		WaitLineBreak;
		say "     Driven by a sudden voracious hunger and the smoldering look of the eldritch vixen as she peers down at you with a lusty expression, alongside the rapturous caress of her cock serenading your throat with beatific throb of her dick. You can't help but swallow every delectable droplet as the unearthly intoxicants flooding your body push onward in your doting attempt to please your vulpine lover, and not squander her precious gift. Unbidden, your hands slowly drift to your stuffed belly, playfully rubbing as it expands amid your caress. Waves of pleasure and warmth spreading through you with each greedy swallow as the once steady deluge of cum ebbs to a gentle trickle. While your tongue explores the graceful taper of her cock with loving, languid motions as you gleefully pamper the tight borders of her cum vein and tender knot as the once turgid swell of her vulpine rod seem to deflate by the second. Cyn releases her hold on you, as you pull your head back, your eyes are drawn upwards by a sudden rubberized twang as her tongue rolls back in on itself. While she gazes skyward with a deep, satisfied expression before you tuck your head against her lap, while her rod slowly recedes back into its fuzzy blushing sheath.";
		say "     You are suddenly pulled up by an invisible force and sat on her lap with your back to her as her hands move to hug you, her supple pads gently caressing your flushed [one of]stomach[or]tummy[or]belly[at random] as she massages the lingering from your well-pack middle. In no hurry to get up just yet, you both stay like this for a while Cyn hums, ";
		if location of Player is Attic:
			say "'The Limbo/Cyn/null_error_in_fileheader hoooOooopes you liked 0ur DONATION like lAs7 time, if not m0re!' Nodding, you cheerfully give your flush tummy a playful pat, delighting in the gentle bubbly warmth coursing though your cum-stuffed core while affectionately nuzzling your cheeks against her tepid fur as you thank the otherworldly vulpine for sharing such a rich feast with you. Before, almost reluctantly, you slowly disentangle yourself from her comforting embrace and wobble back onto your feet as you hear a static hum accompanied by a sound of tearing paper. Looking back, you watch as Cyn rises to her paws while the bench disintegrates behind her in an umbral pall of thick smoke that vanishes into the attic's rafters, some still seems to coil around Cyn's naked foxy form then condenses back into her familiar clothing."; 
			NPCSexAftermath Cyn receives "CockOral" from Player;
			PlayerDrink 15;
			PlayerEat 10;
			addAlcPoints 1;
		else:
			say "'Copulation successful,' lifting you to your feet as you hear a static hum accompanied by a sound of tearing paper behind you. Looking back at her, you watch as Cyn rises to her paws while the bench disintegrates behind her in an umbral pall of thick smoke that seems to coil around Cyn's naked foxy form then condenses back into her familiar clothing. '[one of]Th-aaat w-was fun but we e e h@ve thiNg§ to d0[or]Resuming search mode[or]Di$$on@nce registered: Cyn_Self//Limbo//Puppet is un@ccust0med to sharing//providing//nourishing others, 0nly t@king, desire to continue... l0gged f0r future [italic type]vivisection[roman type][or]Data collection can now recommence[or]Dispensing aesop: the universe abhors indolence, please return to our task[or]Datum: Information is Power[or]Observation: The known is but the shadow of the knowable[at random].' she says, seeming somewhat impatient to continue your adventure. Shrugging, you motion for Cyn to follow along.";
			NPCSexAftermath Cyn receives "CockOral" from Player;
			PlayerDrink 15;
			PlayerEat 10;
			addAlcPoints 1;
	else:
		say "E-E-ERRO-OR, THIS OPTION I-IS NOOO0oOoOOT SEPOSED to BE S£EN, H-How d-did you ?"; 


to say CynFuck4:
	say "     Seemingly intrigued by your offer, and your unusual tentacular tauric form, the exotic vixen purrs her consent through a mild static hum as she flexes her right arm and loudly snaps her fingers. Almost wincing at the deafeningly harsh reverberative crackle, the air seems to ripple about her, as her clothes melt away in a cloud of pixelated umbral vapors. Intrigued, your gaze follows these fleeting wisps of silky blackness clinging to her fur and highlighting the sensuous swell of her palmable E-cups as the ethereal vapors cascaded down her two-toned pelt. Tracking their simmering trail coursing down her willowy curves, you feel a light catty grin pulling at the sides of your boxy muzzle as the torn, yet flattering apparel hugging her meaty vulpine sheath slowly fades, letting her yummy palmable balls and delectatable slip free. The unnatural pall seems to cling to the lustrous contours of her dick warmer, and tight fuzzy package as misty tendrils traipse her legs in a languid ebon plume. Enjoying your attentive stare, the playful vixen theatrically brushes her tails along the inviting swell of her cute, fuzzy mommy makers, chirping. 'Do#s d#$1re = Tru#?' as she leans into your gaze.";
	say "     Nodding, you paw up to her lithesome figure, gently fondling your satin paws about her tender cock wrapper, in open delight at the petite heft of her supple sheath as you draw your pillowy pads along its delectable length. Its hard not to purr appreciatively at the unsubtle impression of her canine knot peeking though her dense silky fur as you stroke her bestial rod to attention with slow, deliberate strokes. Almost melting at your glitchy foxy friend yips delighted as her hybrid cock throbs with the endearing motions of your practiced wrists while the tight little contours of her beastly gland stains just a hair tighter against its wondrous housing. 'S0 W@rm, w&nt M0re-e,' she murmurs, her cross-shaped pupils pulsing a soft pink as you work her palatial sheath along the graceful taper of her stiffening dick like an exotic sex toy. You cheekily coil your tendrils about her plush furry cum tanks and well-padded ass, whispering in a sweet, loving tone, of course dear, come here, you've got plenty of warm, yummy cream to share. Fluffing your ample chest pillow and enjoying her cute, desperate demeanor as you press your cuddly curvaceous body against hers. 's0f%,' she simpers, wrapping her willowy arms about your fluffy anthro body while her fingers slips between the balmy folds of your [breast size desc of Player] breasts.";
	WaitLineBreak;
	say "     You playfully run your finger through her hair as she playfully caresses the inviting silky curves of your milky mounds, gropes loving paws of supple [bodydesc of player] adipose in simple admiration of your bounty. Chuffing at her antics, and the enthralling thermocline of your entwined forms, you cup your free hand to the back of her foxy head and lovingly guide her eager lips to your breast as you encourage her to indulge, humming. Go on, as thin rivulets of pearly milk dribble from your lush tiers of catty teats upon Cyn's conical snoot. Rumbling happily in reply, the inquisitive vixen ravenously presses her lips to your nearest nips, creating cute little furrows in your golden spotted pelt as the low almost imperceptibly tepid chill of her svelte body washes over you as she suckles. 'Del1ci0u$- c-code/ess£nce/fff-flAvoUr,' she murmurs between swallows while your oh-so-productive teat baste the sweet vixen's palette in a thick creamy stream of balmy delights. Daw, thank you, you hum, luxuriating in the heady rush of maternal bliss, and pleasant feeling of relief coursing through your motherly being as she feeds.";
	say "     You draw your tendrils about her willow waist, letting roam her plush satin breasts and cute fuzzy balls as you encourage the ravenous kit to drink, after all bounty such as yours was made to be shared. You muse, relishing the gentle kiss of the vixen's tongue gliding across your perky sensitive nips. Good girl, isn't it nice to have a mommy take care of you, and this big sexy cock? You titter, at the intoxicating caress of her fur playing upon your pads as her poor sheath groans with the respectable weight of her tool as it slips free of its well-padded housing. Oh how cute, is the widdle foxy feeling pent up? You purr, as lucid droplets of her static laced eldritch pre dribbles through your paw and patters along the ground in a low tattoo. '$t@tem-me-ment tr-tru#, w^nt m0re,' Cyn stammers, fixing you with a flickering, pleading gaze, her thin vulpine lips are drawn well past her ears into a far-too-long, crooked smile while her ripe cum vein throbs in your caring caress. Of course dear, there's nothing you love more than taking care of sweet girls like her. You preen, motioning towards a nearby flat patch of earth with a languid wave of your enhanced tail as you loose your hold on the back of her head. 'Th@nk y0u,' Cyn coos, as lead her by the tendril to a convenient section of open earth.";
	WaitLineBreak;
	say "     You concupiscently drape your massive tauric body across the ground and roll on your back with a self-satisfied smirk at the sight of your verdant rows of [Breast size desc of Player] breasts and [if player is impreg_now]adoble baby bumps[else]exotic form[end if] splayed out before you. While you appreciably draw your hands along the generous silky contours of your [bodydesc of player] body in base admiration of your cuddle pelt as you beckon Cyn forward with a come hither wave of your glossy tendrils. Mumbling dreamily to herself in a broken disjointed cadence, she merely nods while nestling herself behind you, though she makes no move to claim your [cunt size desc of player] cunt as she stares, seemingly awestruck at the sight of your voluptuous body. Oh what's wrong dear, she's not intimidated by all this is she? You giggle, playful tracing a talon through the resplendent borders of your fur while you wrap your tendrils about her fluffy waist and arms as you pull her closer. Go on, have a feel cutie, you coo, drawing her all the closer into your voluptuous embraces as you drape the adorable vixen atop your supple form.";
	say "     Cyn simply nods with a far off look in her eye as she runs her foxy fingers through your white, gold, and black spotted fur coddling your supple dugs as her digits seem to pull the heat from yours leaving icy trails of aberrant delight in their wake. Mh, that feels nice, now go on, you purr, watching the shamelessly fox running her finger through your lush body as she indulges herself upon your generous maternal padding. '5oft,' the starstruck vixen breathlessly pants as the graceful curves of her cock sensually glide along the dripping folds of your muff. Chuffing at her touch and the endearing little pulses of her yum vein lavishing your petals, you enticingly cinching your gossamer tendrils about Cyn's vulpine cock. Earning you a curious needly whimper from your treasured mate as you stroke her bestial tapered hermhood to full mast. Mh, you're such a big girl, can't wait to see what she can do with this monster, you tease, good-naturedly lightly brushing her glisten grey tool along the velvety lips of your catty cunt before drawing her throbbing spire into your respective folds with a commanding tug of your tendrils. ";
	WaitLineBreak;
	say "     Surrendering to your experienced hold, Cyn mews contentedly at the toasty heat of your tauric depths cascades along her respectable rod while her muzzle curls into a ravenous far-too-toothy grin stretching well past her ears. 'I WaN7 M0reee,' she rumbles, primal tension rippling through her downy two-toned pelt as formless shadows, tinted with crimson static billows about her foxy silhouette she rears back her while the skin on center of her forehead splits open, revealing a single eye with a blazing red cross shaped iris that bathes your voluminous fur in a harsh red glare. Cyn slams her cock home with surprising force, sending erotic quakes through your [bodydesc of Player] body as your feral flower reverently tightens about the artful taper of her tool. The otherworldly herm's body seems to ripple before your eyes as her shoulders widen, and breasts recede as her torso lengthens by the second. ";
	if "Seen Fever Dream" is not listed in Traits of Cyn:
		say "Another time, you might have felt a mote of alarm at these changes, yet the smoldering lustful glint in her third eye and the enthralling twitch of her spire swelling within your [cunt size desc of Player] cunt stills such thoughts. ";
		TraitGain "Seen Fever Dream" for Cyn;
	else:
		say "More than used to such changes from your exotic vulpine friend, you can't help but purr happily at sight as you lean into her lustful gaze, and intoxicating kiss of her lush tepid spire swelling within your sweltering depths. ";
	say "As her growing rod delectably stretches your satin walls all the wider with each heavenly thrust of her swelling tool. Entranced, you watch as her arms grow ever more slender and spindly, while her lean fingers lengthen and contort into fine bladed digits coated in umbral black fur.";
	say "     In moments, her now towering bestial body looms over you, as she drives her spindly arms into the ground beside you, several sympathetic sets of spiderly limbs surge forth from her bulky core amid a rush of pixelated crimson static. Her midriff shrinks, streches, and expands as the once supple padding gracing her plush bubble butt melts into a lean wall of bestial muscle. Though as your eyes roam further south, you spy her now feral flanks morphing in stocky predatory bend fit for chase, and subduing prey. Her petite sheath and adorable chicken egg-sized package groan with chaotic, virile energy as the sensual flesh coddling Cyn's vulpine rod is drawn delectable taut by the surging heft of her swollen grey fox cock as she ruts your feral half with abandon. All the while, her balls, sway enticingly above you with each spine tingling thrust as her downy package presses against her thin, digitigrade legs.";
	WaitLineBreak;
	say "     Enamored by the sight, and eldritch echoes of her rod stretching your quivering folds, you coyly wrap your gossamer tendrils about Cyn's plush foxy orbs. Delectating in their impressive heft, and the genial caress of her fur and doughy ball bag greeting your tendrils as you whisper sweet praise to your exotic lover. Seemingly caught off guard, an amused yip passes through her lips as her jaw flows forward and outward like wet clay while it reforms into a more bestial vulpline visage. Her face inverts with a mechanical hum before quickly righting itself with a sudden cracking bone and otherworldly flesh, framed by an adorable faux-mane. Delighting in the dissonant display, and intoxicating kiss of her swollen tapered tool roiling your tauric passage in an lewd, unearthly meter, you entwine your feelers about the tight plush borders of her beachball-sized cum tanks, jostling her ponderous package like a set of precious gems. Provoking a sympathetic twitch from her mammoth cock as your lust-addled playmate breathlessly pants atop you. Oh how cute, you trill, relishing at the odd rush of dominant pleasure coursing through your core as your glossy tendrils sink ever-so-slightly into their supple padding while you reach up and gently stroke her faux-mane with your paws.";
	say "     Leaning into your caress, your foxy lover tenderly brushes her fluffy cheeks against your velvety palms as you work your far-traveled mitts up the side of her head to massage her ears while she murmurs an aphonic demure rumble. Her free paws roam your [bodydesc of Player] bountiful hills and silky valleys of your bountiful body as she traces her oh-so-sharp talons along the decadent outline of her tapered tool simmer across your duly stuffed core. Mewing at the enticing touch of her talons, and the raw bliss of her impressive vulpine rod serenading your supple sex with each meaty thrust. You cheekily run your forepaws about the sweltering impression of her spire, peeking through your pillowy pelt. Exalting both at its beastly taper throbbing beneath your marshmallowy pads and body's own twisted capacity as you playfully knead its lovely outline with deliberate tenderness. Mh so full, you really are out of this world dear. You purr in a melodious sing-song trill.";
	WaitLineBreak;
	say "     Rumbling in broken feral cadence, laden with static and half-spoken unwords, your vulpine friend lightly nods in simple agreement. Her bladed paws joining yours in the loving exaltation of your voluptuous form as she reverently paws at the supple impression of her spire simmering along your lustrous fur. Oh naughty fox that feels kind of nice, you coo, wallowing at the discordant bliss of her scything talons streaking across of your pliable skin, and the sensual tension ripples though your plush body and well-fucked passage as her curved cock brushes the rim of your yearning cervix. Of course, two can play that game, you tease as jolts of aberrant elysium surge along the exotic concentric rings lining your neglected ovi tail thrum with an eclectic energy as you coil your augment limb along the willowy length of her hindleg. Your fracturing mind can't help but delight at the alien interplay of her toned otherworldly sinew and your own insectoid muscles as you snake your prehensile appendage up her left rear leg.";
	say "     Then succulently slip your tail about her verdant cum-tanks, lavishing the plush triangular borders of her dripping puppy-pus with well-practiced strokes of your hidden slit. Quivering beneath your practiced dandle, your eldritch lover's cunt gushes at your worshipful caress, slathering your tail mounted cunt in generous sheen of pixelated grey fem honey evocative of an old cathode ray TV static. An intoxicating tattoo of electric bliss simmers about your enhanced tail in a beatific waltz of otherworldly sensations as thick viscous rivulets of her eldritch girl juices trickle down your lengthy tail and fluffy curves of her plush fuzzy balls. The vivacious echoes of her goliath cock jocky for prominence in your liminal mind as the feverishly dreamy feral creature gluts itself upon you with bestial abandon, bereft of technique or precision. Her sordid thrusts are nonetheless enthralling to your animalistic body as the raw, powerful pistons of her towering spire sends evermore lovely ripples of felicitous delight coursing through your exotic form. The worshipful touch of your commingling paws leaves you both rumbling with mutual primal desire while the energetic kiss of her honey tracing its way along the hidden ridges of your tail.";
	WaitLineBreak;
	say "     Judging your tail suitable lubed, you rear the sultry appendage back, and angle it with her oh-so-plump snatch before spearing her welcoming cunt with single expert thrust. Yipping in delight, Cyn's thin velvety body stretches, delectable with the weight of your prehensile tail, eliciting a duly pleased rumble from the titanic fox's lips as her cushy cunt molds itself to the flush contours of your inquisitive appendage. Her willowy tum groans and quivers in a decadent mirror of the lustful pistons of your augmented limb as the succulent outline of your tail flicker across her regal fur at the lascivious apex of your strokes. All the while, the captivating static hum of her honey and animalistic caress of her plush vulpine walls gripping your exotic slit cascades across your tail in an unearthly whirlpool of desire. Not even Cyn's feral form seems wholly immune to the electric kiss of her eldritch juices streaming along her lengthy passage leaves her moaning for more. Her beastly cunt convulse along your ovi-slit as you flex and contort your prehensile appendage about the silky walls of her needy muff in a chaotic ballet of deviant pleasures.";
	say "     Basking at the electric tingle dancing over your prehensile tail, you angle your strokes along quivering borders of her prostate, lavishing her g-spots in intoxicating whirl of sensations. While the smooth little bumps of your ponderously long tailbone sail along her plump angular clit at the apex of your trusts, leaves the dreamy mewling in unrepressed rapture. Her many limbs shudder and eyes glaze over in lustful fog at the lust squall cascading through her, your wonderful mate's pistons grow all the more desperate. As Cyn's hybrid mind struggles to process the hermy bliss surging through her decadently puffy pussy grips the subtle the lips of your tail mounted cunt with a heady rhythm all its own. Drinking in the sight of her bliss-wracked state, and enthralling caress of her scything mitts roaming your body like an eager kitten. You work your animalistic paws all the quicker along the lustful impression of her cock dancing along your spotted pelt.";
	WaitLineBreak;
	say "     Ernest words of loving exaltation pour from your lips as the potent thrum of her spire plays across your pads and your pillowy peets glide along the turgid length of her rod. While the oh-so-inviting warmth of your plush snuggly body and velvety fur serenades your palms. Your liminal mind reels at each tender ripple of her spire sends fresh waves of raw unvarnished bliss though your puddling passage, and bountiful wobble of your maternal assets washes over your spellbound senses. Mh fuck, you can barely get your paws around this beast, you tease, playfully running your claws through your over stretched fur as the tapered tip her dick gently brushes the hungry edges of your cervix. And you just love these nice, big, fluffy, balls, you mew, wrapping your tendrils all the tighter about her lightly swaying package. Earning you a lewd little chirp from the eldritch vixen as her swollen baby batter banks slosh ever-so-slightly in your tentacular embrace while her silky, pleasantly padded package glides along your glossy feelers. An all-too-familiar tension builds in your breast and slowly filters down to your tail while you feel something shift inside you as the erotic muscles lining your tail begin to spasm with fertile intent.";
	say "     A tropical rush of girly juices laced with your soft, gooey eggs surges through your tail as the little death creeps over you, your exotic concentric muscles a quiver and spasm with your lurid eruption. The supple flesh bulges enticingly with their presence as their heady outlines flicker across your pelt as they're pushed forward by the loving kiss of the sinuous rings lining your tail. Their every contraction cascades through you like orgasmic flashes as your malleable eggs slip along Cyn's toasty puppy-petals as her lustrous feminine flower caresses and coddles your overstretched appendage in a blissful static laced tide. As you loose your exotic load of gelatinous ovum upon her quivering electric passage, with a well-pleased roar. Oddly, your eggs seem to dissolve mere seconds later as Cyn's otherworldly body seems to absorb them into herself. Though their effervescent echoes still spark through her as their lingering touch quickly drives her over the edge as her cross shaped pupils narrow to fine pinpricks as she roughly hoists your tauric half into the air with her spidery limbs and slams her tapered cock home with a wet, meaty *thump*.";
	WaitLineBreak;
	say "     Nearly hilting herself, her balls audibly churn, and turgid cum vein throbs along your ecstatic cunt as she cums, basting your respective walls in a statically charged deluge of eldritch seed. At once, your tummy swells delectable in your grasp as the warm rich flood of her otherworldly vulpine juices stretches your well-loved middle wondrously taut by the second while she howls in release. Rumbling in catty bliss, you encouragingly pamper her soft fuzzy package with your tendrils while your eager tauric walls ravenously milk her proud foxy fuck rod as your groaning feral tumby strains with heady mass of her unearthly offering. Ah yes, d-don't stop, you murmur dreamily as the raw weight of her electric load presses against your pads as your sloshing stomach rifles against your animalistic legs while arcs of crimson lightning flicker across your cream white and gold fur. Gasping at the pinprick of delight cascading over you, you watch as your pliable skin blushes a rich ruby red as your legs are slowly pushed apart by the enthralling weight of her cum.";
	say "     Fuck so hot, so full, you pant, needily groping your toasty sloshing middle as you cum-stuffed tum spills over you like a great fuzzy water bed. Delighting yourself on the heady sight and sensation coursing through you as pixelated lightning dances across your fur, you dotingly knead your swollen middle with catty elation as your experienced cunt hugs Cyn's vulpine prick. '[one of]Share and share alike-ke-ke?[or]I-is REDACTED sat-tisfIed?[at random]' Cyn trills, in a curious tenor as her chilly, yet heavenly soft pads roam the molten curves of your cumflated tummy. Yes, and she did such a good job too, why you haven't been this full in quite sometime, you giggle leaning into her caress as her scything claws licking along your elastic hide leaving a cute vermillion trail of lover's marks in their wake while her smooth vulpine cock slowly deflates within you. Eliciting a playful mew from your catty lips at the velvety kiss of her tapered spire slipping free of your well-loved muff with a paw clenching pop. Though not a single drop of her eldritch offering leaks from your far-traveled cunt as your tauric muscles cinch tightly behind her rod.";
	WaitlineBreak;
	say "     Mh, hope this load sticks, just think how cute the kits will be, you tease, lovingly hugging your fluffy middle in your many limbed embrace. 'Lif$? Reeeee@l life?' the spidery vulpine mutters, a well-pleased smile spreading across her face as pixelated cracks, oozing bright white light spreads down her feral form. These strange rifts grow larger by the second till with ear pieces glassly knell, her otherworldly form shattering into a blinding aurora of red and black hues as it melts away revealing the tiny naked anthro form curled into a fetal ball at its core. Instinctively, you reach out as gravity reasserts its hold up her as she comes tumbling into your many limbed embrace, you hug her close, lightly drape her over your sloshing bed-like belly as she sinks into your supple, dense fur. Oh how cute, you purr watching her spread out atop you as she nuzzles her bewhiskered cheeks against you. 'WaRm, if li-lif-liiiife c0mes out o-of this i-interaction... It's... MINE,' she says in a rather possessive cadence, as her gaze takes on a more predatory expression.";
	say "     Yes, this is all yours cutie, you simper reassuringly, tucking wrap your forepaws behind her head as you tenderly stoke her ears. And with any luck, this nice big yummy load will stick, and you'll have an adorable batch of cute widdle fox hybrids to share with her. Now doesn't that sound wonderful dear? You purr with a deep lustful trill, playfully drumming your tendrils about the glowing curves of your well-loved middle. 'Yes, Cyn_Self//Limbo de$ir*s A ChanCe t0 make Life, r-real l1fE, t0g@th&r,' Cyn peeps, hugging her arms and tails about your tender form. Of course beautiful, and so long as she keeps treating you like this, you promise you'll give her enough life to fill a dozen worlds with her adorable kits, you swoon, giving your tummy an endearing pat. After all, you know she's going to make a wonderful mommy for your little ones, and even if this load doesn't stick, the two of you can keep trying till it does, one way. You tease, as your tendrils drift to the petite curves of her petite fluffy grey package.";
	WaitLineBreak;
	say "     Or the other, you beam while your ovi tail snakes its way along the athletic curves of her inner thigh as you brush the tender slit against her fur. Evoking an affectionate chirp from her as she lays their snuggled in your arms, the lingering static echoes of her arc between you while recover your bestial coupling. You watch with a proud smirk as she loving kisses and massages your tender middle while fanning her adorable vulpine paws behind herself as she murmurs strange words into the tight curves of your hopefully kit laden tum. A part of you fervently prays that one day you can share such maternal bliss with her. After all, you bet she'd look so cute with a plush bump of her own and some nice milky tits to match. You muse, tracing your claws down her willowy flanks as you snuggle comfortably in one another's arm, delighting at the lingering afterglow of your latest tryst.";
	say "     [italic type]Sometime later[roman type] as the strength returns to your limb the roiling static squall washing over your fur dissipates, Cyn stretches out one last time, [one of]pantomiming a playful and oddly realistic yawn[or]loosing faux-static-laced yawn that seem to loop in on itself in a distorted cadence[or]emitting a strange pseudo-yawn as her voice briefly shifts to numerous unfamiliar octaves[at random] as she hoops off your supple middle. Landing with a muted swish, her clothes blink back into existence amid light crackles like the feedback on some failing microphone as she begins staring towards the city then back to your well-rounded middles with a slight protective glint in her eyes while her tails twitch wildly behind her. Knowing the same look of wanderlust all to well, you wordlessly nod to her, and waddle to your paws, mindful not to jostle your precious kits-to-be as the two set off more into the crazy flexible worlds, sated, content, and just the right kind of sore.";
	NPCSexAftermath Player receives "PussyFuck" from Cyn;
	NPCSexAftermath Cyn receives "PussyDildoFuck" from Player;



Section 5 - Pet

Table of GameCharacterIDs (continued)
object	name
Cute horror	"Cute horror"

Cute horror is a pet.
NPCObject of Cute horror is Cyn.
understand "Cyn" as Cute horror.
IDList of Cute horror is { "Cyn", "cyn", "Limbo Fox", "limbo fox", "Cute Horror", "cute horror" }.
printed name of Cute horror is "Cyn".
Description of Cute horror is "[CynDesc]".
Weapon Damage of Cute horror is 30.
The level of Cute horror is 1.
Dexterity of Cute horror is 15.
The summondesc of Cute horror is "[SummonCyn]".
The dismissdesc of Cute horror is "[DismissCyn]".
The assault of Cute horror is "[one of]Cyn grins as they wait for the right time to strike, slashing your enemy with her long, sharp claws as they leave themselves vulnerable attacking you.[or]Multiple shadowy tentacles burst out of the ground, restraining your enemy while you land an extra attack.[or]Cyn suddenly enters the enemy, somehow possessing them into attacking themselves.[or]Using [PosAdj of Cyn] body, Cyn hurls [ReflexPro of Cyn] against your opponent as they leave themselves open, knocking them flat on their back, even adding a small giggle for extra humiliation.[or]Cyn deos a finger gun gesture, aiming at your enemy, before shooting some sort of beam right onto their head, stunning them in pain and confusion.[or]Cyn's eyes turn red as she charges into your enemy, with a manic laugh, slashing and biting them in quick succession in a frenzy.[at random]".
the fuckscene of Cute horror is "[sexwithCyn]".

to say SummonCyn:
	if Cyn is visible: [summoning while standing next to her]
		say "     As you call Cyn, you watch as her neck suddenly cracks in your direction with a curious look, before cracking again to the side with a manic predatory smile and teleporting to your side, 'Alrighty, let's go!'";
	else: [regular summoning]
		say "     You start thinking about calling Cyn, when the air around you suddenly grows cold and still as [one of]the world begins to ripple and fragment along some intangible seam as strange, impossible shapes, and raw liquid static pours from this tear in reality. Unnerved, you hurriedly back peddle away from the growing pool of improbable matter as the puddle steadily coalesces into a familiar form as the shadowy vixen emerges from the chaotic whorl[or]a blaring crimson crack forms in front of you. At once, the area resounds with the frightening knell of preternaturally strong impacts upon glass as a pair of shadowy claws tear it open, revealing the smirking face of Cyn as she passes through, then closes the rift with a casual flick of her wrist[at random]. 'DDDDDDDid you want to see-e me? I'm here! L£t's go 0n an adventure!' She says [one of]as one of her ears starts floating away before snaping back to place[or] as she inquisitively tilts her head a bit too far to the side before it snaps back in place with a rubberize twang[at random].";
to say DismissCyn:
	move Cyn to Attic;
	say "     You turn around to tell Cyn she can return home, only to see her glitch out of existence before you can even say anything.";


Section 6 - Unique trade items

Table of Game Objects (continued)
name	desc	weight	object
"Corrupted pistol"	"A small, but serviceable, handgun corrupted by Cyn, making it a lot more powerful than it used to be. It has a stylized Z on the grip as well as some weird red, glowing lines flickering around it. It never seems to run out of bullets, and it fires red beams instead of bullets."	2	Corrupted pistol
"Heavy Corrupted Sword"	"What used to be a cloudy sword covered in infectious nanites is now a clean and rather intimidating blade that is almost completely black with a red aura surrounding it and some strange symbols engraved alongside its blade length. Weird red, glowing lines flicker around it as it makes a constant, low, chaotic, glitching hum."	10	Heavy Corrupted Sword
"Corrupted cloak"	"A black knee-length cloak that appears to be made out of a latex-like material with red lines flickering around it. It has anomalous properties that make it very resistant and capable of effectively absorbing damage. It also appears to be capable of adapting to its wearer's size, so now you can dress up as death for Halloween, no matter what you are, while being protected."	4	Corrupted cloak
"Tentacular Negligee"	"Fashioned, or perhaps, more accurately reforged by Cyn, this profoundly glossy piece of [one of]black[or]onyx[or]ebony[or]jet[or]umbral[at random] low V-cut lingerie. A pair of flexible, almost fleshy fabric rimmed with a bind of deep magenta that gracefully hugs your body's curves and chest while naturally drawing the eye to your [bodyname of Player] midriff. These bands flow seamlessly into a pleasantly accentuated pair of panties adorned by perpetually wriggling light magenta tendrils coddling your groin and [bodydesc of Player] ass in their smooth, velvety embrace. Despite their animate nature, the inquisitive tentacles are rather fetching in their own right, as they lovely caress and provide support to your [bodytype of Player] figure when the need arises. While a set of dainty elbow-length gloves shrouds your arms in a rich sheen of mercurial fabric, much like your bottoms, a number of decadent tendrils are woven into this gossamer fabric and can often be seen coiling about your shoulder or fingers like playful serpents. Far less effusive than their peers pampering your core, these fanciful accents regularly sprout a number of sinuous eldritch blossoms along your wrists, which fill the surrounding area with all manner of unearthly yet pleasant scents. Though short-lived, these leathery flowers quickly replace themselves with new, vibrant ethereal blooms when one is damaged or wilts, ensuring your corsage is never lacking in style or substance."	3	Tentacular Negligee
"Squirming Gothic Dress"	"Emollient and resplendent, this high-collar gothic dress formed from an airy preternatural material could easily be worn at a ritzy gala blood-blood or anachronistic fair, so long as one does not look too closely at it. As squirming beneath the fluted black overskirt, silky sanguine petticoat, and lacy white medici collar is a writhing nest of tendrils eager to serve but protect the wearer when the need arises. For the most part, they tend to be rather placid and simply droop along the sleeves in a perplexing parody of lengthy crimson cuffs or nestle closely along the seam of the embroidery like glossy crimson eels. When their 'host' is threatened, the massive hive of dotting, squirming critters will swiftly contort themselves and the dress to push the wear out of harm's way. Though far from graceful, their hearts seem to be in the right place. At times, the colony of wriggling annelids will also assist the wearer's locomotion by adapting their odd nest to better suit the wear's unique biology or more directly ferrying them about to avoid damaging their home. Thankfully, they seem to be smart enough to keep the presence hidden around the rare prude or less... [']open-minded['] individuals in order to avoid drawing unwanted attention. What in the world inspired Cyn to make this?"	5	Squirming Gothic Dress
"Giger Armor"	"When not in use, this rather Alien piece of equipment resembles an exotic mix of a primitive gas mask and breathing control gear. Once placed over your head, though, the scintillating black will begin to spread out over them, encasing the wear head to toe in a thin, form-fitting sheen of outwardly ossified matter that creaks enticingly with your every movement. In places, odd ridges and pseudo-organic veiny tubes can be seen pulsing with impossible life along their dark shimmer surface as they gently coddle and thrum about your assets with an enticing rhythm, keeping you perpetually on edge. Despite this unconventional and at times claustrophobic nature, the helmet's large elongated head, reset eyeholes, and archaic breathing tube affixed to your chest restricts your breathing and range of movement. The bodysuit still offers an impressive degree of protection thanks in no small part to its skin tight build still allows you to dawn additional layers should you deem it necessary."	2	Giger Armor


Corrupted pistol is an armament. It is not temporary.
It has a weapon "[one of]a powerful beam[or]speedy pistol play[or]your corrupted pistol[at random]".
Weapon Damage of Corrupted pistol is 20.
Weapon Type of Corrupted pistol is "Ranged".
Objsize of Corrupted pistol is 3.
Hitbonus of Corrupted pistol is 3.
Scent of Corrupted pistol is "Smells like... chaos? You don't know how to describe it otherwise, the scent keeps changing too fast to pick up.".


Heavy Corrupted Sword is an armament. It is not temporary.
It has a weapon "[one of]your heavy corrupted blade[or]y your B1l4D3 3[or]your (item name)[or]your reality-defying blade[or]your recoded sword[at random]".
Weapon Damage of Heavy Corrupted Sword is 20.
Weapon Type of Heavy Corrupted Sword is "Melee".
Objsize of Heavy Corrupted Sword is 4.
Hitbonus of Heavy Corrupted Sword is 3.
Scent of Heavy Corrupted Sword is "smells like pure evil... Or at least it would if evil was a smell.".


Corrupted cloak is a grab object.
Corrupted cloak is equipment.
It is not temporary.
Plural of Corrupted cloak is false.
Taur-compatible of Corrupted cloak is true.
Size of Corrupted cloak is 0.
AC of Corrupted cloak is 100.
Effectiveness of Corrupted cloak is 75.
Placement of Corrupted cloak is "body".
Slot of Corrupted cloak is "body".
Descmod of Corrupted cloak is "You are wearing a strange black cloak made by Cyn, it has a unique ability to adapt to the wearer's body size, along with anomalous resistance and damage absorption.".
Scent of Corrupted cloak is "It smells like roses. It seems like Cyn has put more love into this equipment than she usually does, since she put in such a useless yet nice detail.".
The dodgebonus of Corrupted cloak is 1.


Tentacular Negligee is a grab object.
Tentacular Negligee is equipment.
It is not temporary.
Plural of Tentacular Negligee is false.
Taur-compatible of Tentacular Negligee is true.
Size of Tentacular Negligee is 0.
AC of Tentacular Negligee is 10.
Effectiveness of Tentacular Negligee is 20.
GA of Tentacular Negligee is 1.
Traits of Tentacular Negligee is {"Sexy"}.
Placement of Tentacular Negligee is "Body".
Descmod of Tentacular Negligee is "A living Tentacular lingerie gracefully hugs your body.".
Slot of Tentacular Negligee is "Breast".
Scent of Tentacular Negligee is "This equipment smells of multiple unearthly yet pleasant scents, that are sure to help you charm your way into any creature that stands in your way. Good thing you can't charm yourself.".
EquipFunction of Tentacular Negligee is "[EquipTN]".
UnequipFunction of Tentacular Negligee is "[UnequipTN]".

to say UnequipTN:
	StatChange "Charisma" by -5;

to say EquipTN:
	StatChange "Charisma" by 5;


Squirming Gothic Dress is a grab object.
Squirming Gothic Dress is equipment.
It is not temporary.
Plural of Squirming Gothic Dress is false.
Taur-compatible of Squirming Gothic Dress is true.
Size of Squirming Gothic Dress is 0.
AC of Squirming Gothic Dress is 15.
Effectiveness of Squirming Gothic Dress is 60.
GA of Squirming Gothic Dress is 1.
Traits of Squirming Gothic Dress is {"authorative"}.
Placement of Squirming Gothic Dress is "body".
Descmod of Squirming Gothic Dress is "A squirming gothic dress covers your body, hiding a nest of tentacles within.".
Slot of Squirming Gothic Dress is "body".
Scent of Giger Armor is "You can't seem to pick up on any scent from this item.".
EquipFunction of Gothic Dress is "[EquipSGD]".
UnequipFunction of Gothic Dress is "[UnequipSGD]".

to say UnequipSGD:
	StatChange "Dexterity" by -5;

to say EquipSGD:
	StatChange "Dexterity" by 5;


Giger Armor is a grab object.
Giger Armor is equipment.
It is not temporary.
Plural of Giger Armor is false.
Taur-compatible of Giger Armor is true.
Size of Giger Armor is 0.
AC of Giger Armor is 55.
Effectiveness of Giger Armor is 80.
GA of Giger Armor is 0.
Traits of Giger Armor is {"smart"}.
Placement of Giger Armor is "head".
Descmod of Giger Armor is "A giger armor covers your entire body in alien material, sacrificing your dexterity for extra stamina and great defense.".
Slot of Giger Armor is "face".
Scent of Giger Armor is "You can't seem to pick up on any scent from this item.".
EquipFunction of Giger Armor is "[EquipGA]".
UnequipFunction of Giger Armor is "[UnequipGA]".

to say UnequipGA:
	StatChange "Dexterity" by 5;
	StatChange "Stamina" by -3;

to say EquipGA:
	StatChange "Dexterity" by -5;
	StatChange "Stamina" by 3;


Section 5.1 - Favor/money item

Table of Game Objects (continued)
name	desc	weight	object
"Echo of Nihility"	"A small sphere that looks like a mini black hole; it has no weight and doesn't occupy much space ether, as they just seem to swallow one another. You have no idea what these things are, and Cyn doesn't seem to care enough to name them. These things are given by Cyn through sacrifices, and they serve as a reminder of how much she owes you."	0	Echo of Nihility

Echo of Nihility is a grab object.
Usedesc of Echo of Nihility is "[Echo of Nihility use]".

to say Echo of Nihility use:
	if a random chance of 1 in 3 succeeds:
		say "You try to use the item... you hear whispers on the other side, [one of]'The last man on Earth sat alone in a room. There was a knock on the door.'[or]'Here in the forest dark and deep, I offer you eternal sleep.'[or]'Stare at the dark too long and you will eventually see what isn't there.'[or]'Walls have ears. Doors have eyes. Trees have voices. Beasts tell lies. Beware the rain. Beware the snow. Beware the man. You think you know.'[at random]";
	else:
		say "You try to use the item... But nothing happened.";

instead of sniffing Echo of Nihility:
	say "These things don't seem to have a scent... Honestly, what did you expect something that looks like a mini black hole to smell like?";


Section X - Commands and/or Cheats

SummonTheLimbo is an action applying to nothing.
understand "SummonTheLimbo" and "SummonCyn" as SummonTheLimbo.

check SummonTheLimbo:
	if debugactive is 0, say "[one of]'I hear you, however, you do not have the requirements to summon me.'[or]'You forgot to activate debug mode friend.'[at random]" instead;

carry out SummonTheLimbo:
	say "     'Well Well We-ell, someone was i-impatient, hehe-h£eeeEe-hehe. I'll be in the aaaaaattic if you need me.'";
	if "Touched by Madness" is not listed in feats of Player:
		FeatGain "Touched by Madness";
	now Cute horror is tamed;
	add "Tamed" to Traits of Cute horror;
	now Cyn is in Attic;
	now HP of Cyn is 3;
	now Walking Anomaly is resolved;
	now Walking AnomalieTwo is resolved;
	now Accept Path is resolved;

Give Echos is an action applying to nothing.
understand "Give Echos" as Give Echos.

check Give Echos:
	if debugactive is 0, say "[one of]'Little cheater doesn't know the requirements to cheat ?'[or]'You forgot to activate debug mode friend.'[at random]" instead;

carry out Give Echos:
	say "     A tear in reality opens in front of you, dropping multiple echos of nihility and a strange coin like object.";
	ItemGain Echo of Nihility by 1000;
	ItemGain Crazy Coin by 1;

Table of Game Objects (continued)
name	desc	weight	object
"Crazy Coin"	"A rusty, and somewhat glitchy black coin with an open red eye on one side and a closed eye on the other."	0	Crazy Coin

the scent of Crazy Coin is "Placeholder smell.".

Crazy Coin is a grab object. Crazy Coin is not temporary.
Usedesc of Crazy Coin is "[CrazyCoinFlip]";

to say CrazyCoinFlip:
	say "     Rubbing the coin between your fingertips, reality ripples and shifts as it bends to the ephemeral will of the poorly made debugging tool.";
	if "Touched by Madness" is listed in feats of Player:
		say "You feel something being forcefully pulled out of your mind.";
		FeatLoss "Touched by Madness";
	else if "Touched by Madness" is not listed in feats of Player:
		say "You feel something touch you.";
 		FeatGain "Touched by Madness";

AHeart is an action applying to nothing.
understand "AHeart" as AHeart.

check AHeart:
	if debugactive is 0, say "[one of]'Debug friend... you forgot to activate debug.'[or]'You forgot to activate debug mode friend.'[at random]" instead;

carry out AHeart:
	say "     A tear in reality opens in front of you, dropping a heart shaped chocolate box with Ava writen on top of it into your hands.";
	ItemGain affection chocolate by 1;

Table of Game Objects (continued)
name	desc	weight	object
"affection chocolate"	"A heart shaped chocolate box with Ava writen on top."	0	affection chocolate

the scent of affection chocolate is "Placeholder smell.".

affection chocolate is a grab object. affection chocolate is not temporary.
Usedesc of affection chocolate is "[affectionX]";

to say affectionX:
	say "     You open the box and eat one of the chocolates, feeling like you'v just connected to someone you never met.";
	turn the Player into a "Margay Taur";
	choose a row with Name of "Margay Taur" in Table of Random Critters;
	TraitGain "Breeder" for Ava;

Cyn ends here.