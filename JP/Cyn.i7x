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

[    Depravity of Cyn   ] [counter towards boss]
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
				say "     Perhaps guessing your intentions, the creature's clothes suddenly start radically changing color with a loud, sudden, static hiss as they vanish, revealing her rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, delicate C-cup breasts swaddled in a lurid black pelt broken by an adorable white patch of fur on her underbelly. That gracefully draws your eyes to her angular onyx vulpine cunt, dripping with anticipation and primal need as she flexes her toned digitigrade paws before you with an odd jerking motion. Even in the oppressive gloom engulfing the Ghost Fair, her glossy obsidian claws and plush gray toe beans manage to catch your eye as she seems to lean into your inquisitive gaze. Her face glowing bright red through her silky sable hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves. Eliciting a cute, if bestial whimper laced with discordant tenor as if her voice were echoing through a worn-down microphone as you grope her plush furry butt before gliding your hand back up to her supple breasts.";
				say "     Indulging your tactile senses upon her round, soft, pillowy breasts, delighting at the sensation of pelt and the tender heft of her shapely c-cups playing across your [BodyName of Player] palms, while the creature looks on with a questioning or bored look, perhaps a bit of both, till its mouth turns to a twisted smile, showing a long row of sharp teeth. You suddenly feel something cold and wet grab and restrain your legs and arms with superhuman strength. Reality seems to shatter right in front of your [Cock Size desc of Player] cock as the area resounds with the sound of breaking glass, and you start to panic as it slowly swallows it completely. Unable to see anything beyond the salubrious umbral borders of the tear, you find yourself moaning with muted delight as the inviting, velvety embrace of wet, fleshy walls pulsate about the contours of your [cock size desc of Player] member quickly stills any sense of dread you may have had."; [add a bit out the rift being colorless like wound in the reality bleeding away all visible hues]
				WaitLineBreak;
				say "     The tentacles restraining you continue to expand over your body till they cover most of your body, grabbing and groping your [bodydesc of Player] body; ";
				if Player is impreg_now or Player is mpreg_now:
					say "they reach for your expectant [BodyName of Player] belly, fondling your supple curves with surprisingly deliberate care, as the unseen tendrils tenderly pamper your growing bump in their pleasingly cool coils. A part of you can't help but coo happily at their supportive caress as the soothing chill washes over your taut [skinname of Player] skin like a tranquil balm.";
				else if CockName of Player is not listed in infections of InternalBallsList:
					say "they carefully hold and fondle your cum containers, their cold touch sending you shivers through your lower half, while others reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain.";
				else if Cunt Count of Player >= 1:
					say "they caress your already dripping feminine petals, some of them taking a step forward and penetrating it, adding to your excitement even further, as they reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain.";
				else if Nipple Count of Player >= 2 and Breast Size of Player >= 2:
					say "they grope and squeeze your [Breast Size desc of Player] chest, as another group of them reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain.";
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
				say "     Enthused by the sight of the exotic vulpine form, you coyly trace your [bodyname of Player] fingers along the silky border of her toned pelt decorating her animalistic leg, delighting in the pleasant chill dancing along your digits as you carefully spread her legs apart. All the while, the anomalous creature fixes with a stare of profound indifference, though as you delicately draw your hands about the plush, dewy folds of her puddling puppy pussy, her demeanor seems to soften as a gentle ruby blush simmers about jet-black sex. Smirking, you languidly brush your fingers along the silky border of her puffy vixen clit, eliciting a pleasant whimper from her thin onyx lips as her voluminous tail teasingly coils itself around your leg. Though a brief flicker of alarm flashes through your mind like sparks of fresh napped flint at the oddly strong grip of her tail, the enthralling caress of her fur and placid yet intrigued expression on the otherworldly feral stills such thoughts as she tenderly warps your [bodytype of Player] and [breast size desc of Player] chest in her preternatural embrace.";
				WaitLineBreak;
				say "     While you run a hand along the sides of her [one of]slender[or]lithe[or]willowy[at random] belly, delight at the feeling of her smooth, soft, cold fur playing across your digits as you caress her pelt. A cute little moan issues from her, as she pulls your [facename of Player] face to her breasts with an indulgent flex of her lengthy tail. Acquiescing to her touch alongside the smoldering, flirtatious glance of the shadowy fox, you lovingly drape yourself atop her [one of]slender[or]lithe[or]willowy[or]lissome[or]svelte[at random] body and lavish her succulent ebony nips with a gentle series kisses, while your hands sensuously pamper her canine-cunt with long-drawn stroke of your experienced digits. Earning you an endearing yip from the once vicious creature as she shamelessly quivers in your grasp. Such a needy girl, you snicker, lightly nibbling her cool perky teat while her strangely lengthy tail playfully snakes its way up your [bodydesc of Player] body, to teasingly caressing your [facename of Player] chin.";
				say "     Purring happily at the sensation of her silky pelt waltzing about your visage, you can't resist nuzzling your face against her foxy fur as you kiss your way down her velvety treasure trail as the lucid wisps of your hot breath flicker about her [one of]ghostly[or]ethereal[or]willowy[or]eldritch[at random] body. The creature regards you with a curious look, she lifts her head to look at you, you notice her once milky white eyes have turned a light blue color. Her expression, though, borders on boredom, though this to seems to melt away into a look of unbound delight as your lips brush the bracing chill of her flush vulpine petals as you sensuously dip a pair the fingers into her welcome bestial muff while you caringly stroke her inner thigh with your left hand. Despite the unusual cold creeping up your arm, you find an unusual dissonant pleasure in the tight fold of canine flower as you, slowly at first, lavish her lust flushed folds hugging your digits with a hardy tweak of your far-traveled mitts.";
				WaitLineBreak;
				say "     Rumbling in a desperate trill, she lovingly wraps her legs about your head as she lewdly presses you against her bestial petals, while her scything claws almost playfully stroke the side of your head as if to encourage you. Despite the danger, the feeling of her oddly soft pads and lightly tickle of her talons gracing your [skinname of Player] hide only spurs you on as you tuck your lip to hers with a well-pleased hum. Ha-ha such a needy fox, never been touched before? You tease, lovingly lapping at her glistening obsidian flower as the sweet, sapid taste of fresh, icy strawberries greets your palate, as you slip your oral muscle between her plump decadently puffy cunt, reveling in the sumptuous fruity flavor greeting your lips as you alternate between the lurid pass of your tongue and the heavenly thrusts of your digits. All the while, your free hand roams her cushy bubble butt and trim waist as you glut yourself on the foxy feast before you.";
				say "     Not that they seem to mind, as their tail and elongated limbs roil about your own [bodyname of Player] form. Albeit in more crude and rough fashion, as she'd never before felt the warmth of another, still the eclectic mix of sensations of her satin pelt and razor talons flickering across your [bodydesc of player] body has a certain aplomb to it, you muse, as the ghostly fox writhes under your expert care. You can feel an all-too-familiar tightness welling her needy body as the vulpine cunt spasms about your tongue and with each artful pass of your oral muscle. 'Pl$@s&, m-m*r$,' she mews, her voice cracking with desperate need as she claps her legs roughly against your neck while her claws gently rack your back. Of course, you murmur between laps, cheekily working your digits about her bestial button and playfully caressing the inviting folds of her foxy clit with your thumb and pointer finger.";
				WaitLineBreak;
				say "     '^eS, y-^@s,!' she pants as, with one final allure kiss of your dexterous tongue as she cums, loosing a sumptuous gush of strawberry honey across your lips and collapses into a spent, happy heap at your feet. 'A#, s*, w&rm...,' she smiles in pleasure as she gently runs her talons across her blushing pelt. She fixes you with a welcome look, cooing, 'Wa^t, W@rm+h?' as she gestures to her well-fucked with an inviting wave of her tail. Hmm, warmth, huh? Perhaps she's asking for cuddles, and if so, you are more than obliged to do so, smirking at her tired face as you position yourself on top of her like a warm blanket and place your arms around her in a hug. You stay like this for a while, resting while sharing your warmth with the cold, cute fox-like creature, till you eventually feel recovered enough to leave, hearing a little sight of disappointment from the foxy as you get up. You gather your things and turn around to leave, giving the creature one last glance before leaving. However, she is no longer there, as if she just disappeared while you weren't looking.";
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
			say "     Falling to your knees, you watch as a wicked smirk blossoms on the creature's lips and its eyes become hollow black, as seems to ripple and dissolve into the ambient mist. For a brief moment, warm, comforting echoes of relief flicker about your core at its sudden disappearance. You begin to rise, and make ready to dash to the entrance of the fair grounds before it comes back. Only to feel a sharp weight coalescing on the side of your [FaceName of Player] head as the fog seems to writhe about you and the crisp floral scent of rose petals nips at your senses as inky mist whorls about you and pressure builds about your throat. Your breath catches and shadows pool into twin hollow, unfeeling pits that wink into being as the leering vulpine visage of your umbral foe materializes before you, its face staring at you sideways as if its neck were broken. At once fear and bone chill frost cut at your [skinname of Player] hide as its neck suddenly cracks back into place and the harsh touch of its talons cutting into your vitals, and supernatural strength of its hold pushes you to the ground."; 
			say "  Its eyes are now completely glowing red. It regards you with a manic, predatory look, of primal hunger, and an odd twinge of... envy, where such a thing as it watches you squirm helplessly in its grasp as its unblinking eyes drift over your [bodydesc of Player] as if appraising you. Why though, you can't be certain, nor does the willowy, crooked vulpine allow you the luxury of such musing as it leans towards you and touches its thin, canine lips to your forehead in perverse mockery of a kiss. You feel the heat drain from your body and pronounce tightness just on the edge of pain simmering about the edges of your awareness as the chill spreads and limbs fall limply to your side. Only the brutal hold of the creature's unnaturally stretched arms keeps you standing as your vision dims and your senses deaden, as the world fades to little more than the voracious vulpine's gaze, and the coiling of the scent of rose petals along the sweet notes of ancient decay.";
			WaitLineBreak;
			say "     Then those too soon bleed into the omnipresent fog as the creature's expression softens to one of predatory satiation as it releases its hold, and allows your numb form to fall at its paws like a marionette whose strings have been cut. Seemingly satisfied with its [']meal['], the shadowy vulpine makes a show of licking chops while a hollow static laced purr issues from their muzzle. Her body briefly, violently flickers and twitches as its eyes return to their usual hollow white color. She stares at you for a moment, her expression waxing between indifference and regret? Before turning around and stepping back into the mist, its giant claws grind against the floor as it walks away, leaving you there cold, numb, spent, and unerringly lightheaded from the encounter. Minutes pass, and soon the feeling returns to your limbs. Yet you can't shake a feeling of profound lightness roiling in the back of your gloom-touched psyche, as if the foxy terrors took more than just your warmth but something far dearer. What, you can't say, as the lingering tendrils of its touch befuddled your thoughts, for the moment at least. Perhaps in time you'll recover, but you can't shirk the notion that you're somehow diminished.";
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
	say "     Putting your hand up to show no ill intent, you start telling the creature to Calm down and that you don't mean you any harm, you are simply curious about it, and wish to talk. It seems to have worked, the unnatrual stasis holding her and the opressive gloom seems to fade and the bits that were slowly floating about her drift back into place. 'T-th@t's ffuunnnnyy, I-I-I am curious a-about you uuuuuu too.' The creature says while its head and arms violently glitch. 'M-my name is Cyn.. What-t would y0u want to to aaaaaaaaaaaaask about me?'";
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
			say "     Satisfied, you tell Cyn that it's her turn to ask questions, but she says, 'No need, I already have my answer, and, I h@-have to say... You are a very interesting-ing (entity) yourself, being REDACTED's doll and all.' Confused by her strange statement, you begin to ask what she means only to stop as you realize her form has suddenly shifted in the blink of an eye. Where once stood milky eyed lanky vulpine girl, now stands a foxy herm with [one of]hollow[or]abyssal[or]jet[or]umbral[at random]-black eyes and red glowing slitted vulpine pupils. She has two big furry ears on top of long, dark, ghostly hair, two fluffy, long, dark tails swinging behind her, and sizable e-cup breasts on her chest. Her usual elongated arms now have a more normal structure, and her hand paws have long, sharp, shadowy claws instead of the giant sword-like talons. Not only that, but she appears to be wearing a damaged black cloak with multiple tears and cuts draped over a thread-bare blouse as if its original owner got attacked by a violent beast with black panties visible thru its tears that just barely conceal her cute little sheath's bulge and adorable plush fuzzy balls. Alongside a dark-purple scarf that also has some cuts, and some cosmetic bandages on her left thigh... But when did she, how did she? You ruminate, yet, before you can give voice to these thoughts, the creature interrupts you, saying. 'By-the-by, you wouldn't mi-mind helping me g&th#r, c0rrel@te, c0mpile, v!v!sect information about the world, right?'";
			say "     So it's information she wants, well good thing you're sheltering a library, some of the books there could be of use to her. You think to yourself, motioning to the general direction of the abbey, you regale her with a rough idea of where the abbey is and how to get there. Nodding along, Cyn scribbles her talons into the fog, in their wake you watch as everything you say is somehow written in the air in a yellow, glowy text. When she's done, Cyn abruptly claps her hands around the edges of the text, smashing it flat between her paws with a low static knell, balling it up, she carefully tucks the luminescent scrawl between the supple swell of her cute e-cup breasts, saying. 'Perfect, see ya at, location_nav_point_room_Sarea_outside: library then,' before vanishing into the fog, leaving you with more questions than answers. But still, you have things to do, so you shake your head and make ready to leave as well.";
			now HP of Cyn is 2;
			now Walking AnomalieTwo is resolved;
			wait for any key;
		else:
			say "TH-that's an Inval1d Opt1on-t1on. P1ck between 1 andd number of f (the number of f1lled rows 1n the table of fuck1ng opt1ons) fuck1ng opt1ons.";
	clear the screen and hyperlink list;

to say QuestionOneN:
	say "     Her neck cracks to the side as her eyes and mouth start glowing yellow, her mouth stretching into a crooked smile, as she says with a demonic, glitchy voice, 'Cyn.' 'someone.' 'your friend.' 'The Limbo.' '[Name of Player].' 'Something.' 'Null.' 'Error.' 'Nothing.' 'THE END.' 'No one,' at the same time, as if her very voice lagged and released all of her words at once. She then glitches back to her normal self, saying, 'sorry @b0ut that, I got a b1t excited, l-let's try again, shall we?' 'What aaaaaaaaa-am I? Hmm, I have been so focused-d-d on learning about others that I never stopped to think about myself... Give me some time to revisit some meeeeeeeeeeemories.' Her body goes limp as she finishes talking, as if whatever was controlling it just left. Perplexed and more than a hair worried, your mind starts making up the worst scenarios. As you wait for a while, her body starts moving again. It looks like a scene straight out of a horror movie as her body contorts and stretches into unnatural shapes and twisted proportions.";
	say "     Only for her body to reform seconds later as she continues in a rather cute girly voice, saying, 'Sorry, for the wait, from what I-I learned, I am the personification of a world named Limbo, which is a separate-te, non-existing space from reality where nothing is supposed to exist. However, because of someone's e-e-experiments with world travel, where they forced a portal with no destination open_set_viable_secured_error_room_name_missing or not set to private, so they ended up creating the first rrrrrrrrrrift_portal_ aperture and prey//food=true, and with it, the end of th@t w0rld_sph%r#_meal_>=1 is true, became food=false_// is zer0. As the world was pulled into meeee_u$_th^m this non-existing space, it ceased to be no-nothing_null//false=0, and I woke up, finally freeeeeeeeeeee fr0m that et£rn@l sleep... Does this answer your qu-question?' It takes some time to process what you just heard, but not wanting to appear rude, you give a thumbs up.";


to say QuestionTwoN:
	say "     'After gaining sentience, I became emotion na m eeeee- envious of other worlds. I wanted to learn as m-mmu-much as possible about everything, I wanted to create the- humm-, life? Rules? I was missing, and since your WORLD was unstable and in the process-ess of merging, I t#ou6ht I could learn a lo7 about it' She says with a neutral look.";


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
				say "     Perhaps guessing your intentions, the creature's clothes suddenly start radically changing color with a loud, sudden, static hiss as they vanish, revealing her rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, delicate C-cup breasts swaddled in a lurid black pelt broken by an adorable white patch of fur on her underbelly. That gracefully draws your eyes to her angular onyx vulpine cunt, dripping with anticipation and primal need as she flexes her toned digitigrade paws before you with an odd jerking motion. Even in the oppressive gloom engulfing the Ghost Fair, her glossy obsidian claws and plush gray toe beans manage to catch your eye as she seems to lean into your inquisitive gaze. Her face glowing bright red through her silky sable hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves. Eliciting a cute, if bestial whimper laced with discordant tenor as if her voice were echoing through a worn-down microphone as you grope her plush furry butt before gliding your hand back up to her supple breasts.";
				say "     Indulging your tactile senses upon her round, soft, pillowy breasts, delighting at the sensation of pelt and the tender heft of her shapely c-cups playing across your [BodyName of Player] palms, while the creature looks on with a questioning or bored look, perhaps a bit of both, till its mouth turns to a twisted smile, showing a long row of sharp teeth. You suddenly feel something cold and wet grab and restrain your legs and arms with superhuman strength. Reality seems to shatter right in front of your [Cock Size desc of Player] cock as the area resounds with the sound of breaking glass, and you start to panic as it slowly swallows it completely. Unable to see anything beyond the salubrious umbral borders of the tear, you find yourself moaning with muted delight as the inviting, velvety embrace of wet, fleshy walls pulsate about the contours of your [cock size desc of Player] member quickly stills any sense of dread you may have had.";
				WaitLineBreak;
				say "     The tentacles restraining you continue to expand over your body till they cover most of your body, grabbing and groping your [bodydesc of Player] body; ";
				if Player is impreg_now or Player is mpreg_now:
					say "they reach for your expectant [BodyName of Player] belly, fondling your supple curves with surprisingly deliberate care, as the unseen tendrils tenderly pamper your growing bump in their pleasingly cool coils. A part of you can't help but coo happily at their supportive caress as the soothing chill washes over your taut [skinname of Player] skin like a tranquil balm.";
				else if CockName of Player is not listed in infections of InternalBallsList:
					say "they carefully hold and fondle your cum containers, their cold touch sending you shivers through your lower half, while others reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain.";
				else if Cunt Count of Player >= 1:
					say "they caress your already dripping feminine petals, some of them taking a step forward and penetrating it, adding to your excitement even further, as they reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain.";
				else if Nipple Count of Player >= 2 and Breast Size of Player >= 2:
					say "they grope and squeeze your [Breast Size desc of Player] chest, as another group of them reach for your [Bodyname of Player] belly, giving you a small discomfort from their sudden cold touch but still somewhat pleasing in a way you can't quite explain.";
				else:
					say "they reach for your [Bodyname of Player] belly, giving you a small sense of discomfort from their sudden cold touch, yet somewhat pleasing caress.";
				say "Looking back at the creature, you find her lying on the ground, moaning while rubbing her thighs against one another, as her toned digitigrade paws twitch with desire. One of her hand paws gropes at her white, furred underbelly, while the other leisurely massages her soft breasts, sinking their obsidian, sword-like claws into them, creating subtle folds in their bosom.";
				say "     One final clench from her eager passage brings you to release, basting her vulpine cunt in molten sheen of your pearly seed, pushes her over the edge with an ear-piercing cry. As the rift vanishes and the tentacles retract into their spacial fractures, loosing its supportive hold on you and your member. You lay panting on the floor, blissfully spent as the mix of emotions and the strange touch of the shadowy vulpine has left you completely drained. You almost don't mind having been technically topped, even if you are the one who won the fight. Looking around for your anomalous partner, you notice she seems to have disappeared along with the rift, strange, you didn't even see or hear her leave, as if she had simply bled into the gloom. Was she even real in the first place, though? You think to yourself as you feel something tickling at the back of your head. Why, though you can't be certain, but you feel... lighter, as if some piece of you had been worn away and a fragment of the pallid fog had wormed its way inside you. Shrugging, you decide not to dwell on her sudden disappearance or the unnatural buzz in the back of your mind, merely chalking it up to the unsubtle influences of the nanites playing their usual games with you, and instead focus on more important matters, like survival.";
				CreatureSexAftermath "Hallucination" receives "AssFuck" from "Player";
				decrease Humanity of Player by 5;
				now Depravity of Cyn is 0;
			-- "Play with her.":
				say "     Guessing your intentions, the creature's clothes suddenly, briefly start changing color with a loud, sudden, static knell till they suddenly vanish, showing a rather [one of]slender[or]svelte[or]lithe[at random] body with puffy dark-colored nipples, dainty C-cup breasts wrapped in a lurid black pelt with a captivating patch of white furred swaddling her underbelly, that harmoniously draws your eyes to her umbral vulpine cunt. Dripping with excitement and animalistic need, as she flexes her toned digitigrade and foxy paws before you with strange unnatural jerking motions. Even in the oppressive gloom pervading the Ghost Fair, her glistening obsidian claws and plush gray toe beans still manage to catch your eye as she seems to lean into your inquisitive gaze. Her face bright red through her silky cabal hide as your hands roam over her body as you explore her smooth, soft pelt and [one of]slender[or]lithe[or]willowy[at random] curves.";
				say "     Enthused by the sight of the exotic vulpine form, you coyly trace your [bodyname of Player] fingers along the silky border of her toned pelt decorating her animalistic leg, delighting in the pleasant chill dancing along your digits as you carefully spread her legs apart. All the while, the anomalous creature fixes with a stare of profound indifference, though as you delicately draw your hands about the plush, dewy folds of her puddling puppy pussy, her demeanor seems to soften as a gentle ruby blush simmers about jet-black sex. Smirking, you languidly brush your fingers along the silky border of her puffy vixen clit, eliciting a pleasant whimper from her thin onyx lips as her voluminous tail teasingly coils itself around your leg. Though a brief flicker of alarm flashes through your mind like sparks of fresh napped flint at the oddly strong grip of her tail, the enthralling caress of her fur and placid yet intrigued expression on the otherworldly feral stills such thoughts as she tenderly warps your [bodytype of Player] and [breast size desc of Player] chest in her preternatural embrace.";
				WaitLineBreak;
				say "     While you run a hand along the sides of her [one of]slender[or]lithe[or]willowy[at random] belly, delight at the feeling of her smooth, soft, cold fur playing across your digits as you caress her pelt. A cute little moan issues from her, as she pulls your [facename of Player] face to her breasts with an indulgent flex of her lengthy tail. Acquiescing to her touch alongside the smoldering, flirtatious glance of the shadowy fox, you lovingly drape yourself atop her [one of]slender[or]lithe[or]willowy[or]lissome[or]svelte[at random] body and lavish her succulent ebony nips with a gentle series kisses, while your hands sensuously pamper her canine-cunt with long-drawn stroke of your experienced digits. Earning you an endearing yip from the once vicious creature as she shamelessly quivers in your grasp. Such a needy girl, you snicker, lightly nibbling her cool perky teat while her strangely lengthy tail playfully snakes its way up your [bodydesc of Player] body, to teasingly caressing your [facename of Player] chin.";
				say "     Purring happily at the sensation of her silky pelt waltzing about your visage, you can't resist nuzzling your face against her foxy fur as you kiss your way down her velvety treasure trail as the lucid wisps of your hot breath flicker about her [one of]ghostly[or]ethereal[or]willowy[or]eldritch[at random] body. The creature regards you with a curious look, she lifts her head to look at you, you notice her once milky white eyes have turned a light blue color. Her expression, though, borders on boredom, though this to seems to melt away into a look of unbound delight as your lips brush the bracing chill of her flush vulpine petals as you sensuously dip a pair the fingers into her welcome bestial muff while you caringly stroke her inner thigh with your left hand. Despite the unusual cold creeping up your arm, you find an unusual dissonant pleasure in the tight fold of canine flower as you, slowly at first, lavish her lust flushed folds hugging your digits with a hardy tweak of your far-traveled mitts.";
				WaitLineBreak;
				say "     Rumbling in a desperate trill, she lovingly wraps her legs about your head as she lewdly presses you against her bestial petals, while her scything claws almost playfully stroke the side of your head as if to encourage you. Despite the danger, the feeling of her oddly soft pads and lightly tickle of her talons gracing your [skinname of Player] hide only spurs you on as you tuck your lip to hers with a well-pleased hum. Ha-ha such a needy fox, never been touched before? You tease, lovingly lapping at her glistening obsidian flower as the sweet, sapid taste of fresh, icy strawberries greets your palate, as you slip your oral muscle between her plump decadently puffy cunt, reveling in the sumptuous fruity flavor greeting your lips as you alternate between the lurid pass of your tongue and the heavenly thrusts of your digits. All the while, your free hand roams her cushy bubble butt and trim waist as you glut yourself on the foxy feast before you.";
				say "     Not that they seem to mind, as their tail and elongated limbs roil about your own [bodyname of Player] form. Albeit in more crude and rough fashion, as she'd never before felt the warmth of another, still the eclectic mix of sensations of her satin pelt and razor talons flickering across your [bodydesc of player] body has a certain aplomb to it, you muse, as the ghostly fox writhes under your expert care. You can feel an all-too-familiar tightness welling her needy body as the vulpine cunt spasms about your tongue and with each artful pass of your oral muscle. 'Pl$@s&, m-m*r$,' she mews, her voice cracking with desperate need as she claps her legs roughly against your neck while her claws gently rack your back. Of course, you murmur between laps, cheekily working your digits about her bestial button and playfully caressing the inviting folds of her foxy clit with your thumb and pointer finger.";
				WaitLineBreak;
				say "     '^eS, y-^@s,!' she pants as, with one final allure kiss of your dexterous tongue as she cums, loosing a sumptuous gush of strawberry honey across your lips and collapses into a spent, happy heap at your feet. 'A#, s*, w&rm...,' she smiles in pleasure as she gently runs her talons across her blushing pelt. She fixes you with a welcome look, cooing, 'Wa^t, W@rm+h?' as she gestures to her well-fucked with an inviting wave of her tail. Hmm, warmth, huh? Perhaps she's asking for cuddles, and if so, you are more than obliged to do so, smirking at her tired face as you position yourself on top of her like a warm blanket and place your arms around her in a hug. You stay like this for a while, resting while sharing your warmth with the cold, cute fox-like creature, till you eventually feel recovered enough to leave, hearing a little sight of disappointment from the foxy as you get up. You gather your things and turn around to leave, giving the creature one last glance before leaving. However, she is no longer there, as if she just disappeared while you weren't looking.";
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
			say "  Its eyes are now completely glowing red. It regards you with a manic, predatory look, of primal hunger, and an odd twinge of... envy, where such a thing as it watches you squirm helplessly in its grasp as its unblinking eyes drift over your [bodydesc of Player] as if appraising you. Why though, you can't be certain, nor does the willowy, crooked vulpine allow you the luxury of such musing as it leans towards you and touches its thin, candid lips to your forehead in perverse mockery of a kiss. You feel the heat drain from your body and pronounce tightness, just on the edge of pain simmering about the edges of your awareness as the chill spreads and limbs fall limply to your side. Only the brutal hold of the creature's unnaturally stretched arms keeps you standing as your vision dims and your senses deaden, and your world fades to little more than the voracious vulpine's gaze. The coiling of the scent of rose petals along the sweet notes of ancient decay.";
			WaitLineBreak;
			say "     Then those too soon bleed into the omnipresent fog as the creature's expression softens to one of predatory satiation as it releases its hold, and allows your numb form to fall at its paws like a marionette whose strings have been cut. Seemingly satisfied with its [']meal['], shadowy vulpine makes a show of licking chops while a hollow content purr issues from the muzzle. Her body briefly, violently flickers and twitches as its eyes return to their usual hollow withe color. She stares at you for a moment, lacking emotion-or is that perhaps regret? Before turning around and stepping back into the mist, its giant claws grind against the floor as it walks away, leaving you there cold, numb, spent, and unerringly lightheaded from the encounter. Minutes pass, and soon the feeling returns to your limbs. Yet you can't shake a feeling of profound lightness roiling in the back of your gloom-touched psyche, as if the foxy terrors took more than just your warmth but something far dearer. What, you can't say, as the lingering tendrils of its touch befuddled your thoughts, for the moment at least. Perhaps in time you'll recover, but you can't shirk the notion that you're somehow diminished.";
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
	say "     As you arrive at the Library, you find Cyn at the entrance, waiting for you. When she sees you, she becomes excited, and you can see her tails start waging behind her as you approach her, 'H-hello again friend, I was thinking that since you aaaaaaaaaaaaaccepted to help me, I could move to y0uR base,' before you can even think of rejecting that idea, she says 'I wiLl be in the aTt1c if you need a-anything! Oh, and before I forget-t-t, as payment, I'll give you my §ervIc£s. In s#Ort, I can take s0m£th1Ng you m-mi6ht find useless and change it to something mo-ore interesting... Well that's all, I hope yo-you'll visit,' with that, she vanishes. Looks like you made a rather helpful ally, even if she's not very good with communication. You make a mental note to go visit her in the attic when you can.";
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
		say "     The creature suddenly lets out a loud roar that seems to freeze time around you as it lunges forward and grabs you with one of its many arms before you have the time to react. She looks straight into your eyes, saying, 'You uu @r£ not as F4agiLe as I thought tt, if I ca-can not k-kill you, then I break and this de-de#lect@ble world in$te@d!' as she roughly throws you to the ground with a broken dissonant laugh. 'We will meet again,' she crows, as her body slowly shatters, and disintegrates into a rift with a mix of a manic laughter and many desperate screams that are not her own. When it is gone, the world returns to normal, as if this never happened, and you begin to relax. However, as your eye's drifts toward the former site of the massive rift, you realize the creatures left you a gift before disappearing, as a small, pin-sized hole hovers in the air.";
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
				say "     She looks you up and down for a moment before giving you a funny, if awkward smile, saying, [one of]'You- already are-are-are one.'[or]'Do you ne-need a mirror?'[or]'I-I dddon't thin I can turn y-you into a double Limbo Fox.'[at random]";
			else if location of Player is not Attic:
				say "     Cyn looks around for a moment before saying, 'Sorrrrrrrry I I don't th1nk this is tttttttthe right place or moment for t-that.'";
			else:
				say "     'You wish to look l1ke me? Hmm... alrighty then.' She says, before carefully grabbing your face and staring deep into your eyes. You see her pupils taking the form of red, glowing crosses as you start losing consciousness.";
				LineBreak;
				say "     When you come back to your senses, you find yourself lying on Cyn's lap, covered with one of her fluffy tails as she strokes your forehead. When she sees you are awake, she helps you get up, saying, 'H3re you go, I hope you like y0ur new l-look.' Though you still feel somewhat dizzy, you nevertheless give her the thumbs up.";
				turn the Player into a "Limbo Fox";
				choose a row with Name of "Limbo Fox" in Table of Random Critters;
		-- "Ask about more exotic goods.":
			say "     'Exotic? Hmm...' Cyn says, taking on a thoughtful pose as she slips into silence for a while, and begins looking around the room. Her head and body twisting and swirling at impossible angles while sections of her being phase in then out of existence amid puffs of misty static before snapping back into place as she directs her eyes to her now stretched-out right hand. 'HO! I tH1nk I kn0w how to do 1t! Stay here, I'll be r-rig#t back.' she says as she casually opens a rift with a flick of her wrist and walks through it. With nothing to do but wait patiently a while, you sit yourself beside the rift for what feels like half an hour, listening to the strange electronic crackles and otherworldly squelching sounds emanating from the tear.";
			say "     As the minutes drag on and the unnatural noise begin to grate on your senses, you consider going downstairs to stretch your [bodyname of player] legs, when suddenly a rather pleased looking Cyn comes back through the rift carrying several items that look like they are made out of tentacles and fleshy fabrics, and it is... are they... moving? You think to yourself watching the odd assortment of items squirm in her arms. 'I hope this i-is the k1nd of stuff you were @sking for. Either w&y, I'm adding these to m-m-my shop. Come take a look at my little sh0p of horrors when you wish to see th£m.' she says with a smile as she puts the items inside a random empty box.";
			now Humanity of Cyn is 1;
		-- "Ask about exploring the Limbo.":
			say "     Cyn stops what she was doing, and her ears go on full alert, as she turns slowly to look you in the eyes, with a dark solemn expression. Pinned under the weight of her stare, you feel a sudden biting chill race down your spine as the strange fox girl purses her lip, saying. 'Do you like-ke the idea of being stuck inside an infinite empty space alone? <o> Unable to <O> see<0> ee e, feel, h-hear, or smell a-a-an/thin6 for all eternity and beyond?' As dark-static tears pool about the  edges of her eyes, while her tail completely freezes, and her fingers start violently twitching as she trembles in a primal mix of fear and hate. Before you can reply or though, she continues in a distorted, broken,  dissonant voice, 'TTTTTTTThat... is h-how... I f£7t... Unt1l I ac-c-cumul@ted enoug# knoVVl£dge to create a body... And-d-d walk into a rift... To this wo-world... I don't want (error entity name not valid)- anyone to f3el wh4t I f9lt, especially y-you, so ppppppplease don't... Ask that again.' With that, she cleans up her tears and sits in silence for a while. You feel like you shouldn't bring this up again; after all, you are not a psychologist.";
			now HP of Cyn is 4;
		-- "Nevermind.":
			say "     On second thought, you don't have anything to say to Cyn at the moment. 'Alrighty-ty, no pressure.'";

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
			say "     On second thought, you don't have anything to say to Cyn at the moment. 'Alrighty, no pressure.'";
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
			say "     'Food? I d0n't really need this, but ttthank you an/way.' she says before taking a long look at it and suddenly shoving it in her mouth, swallowing the proffered meal whole without even chewing. 'Hmm, not bad.' she says before licking her lips and shoving the rest through a small rift.";
			ItemLoss food by 10;
			ItemGain Echo of Nihility by 1;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice 10 water bottle --> 1 Echo.":
			say "     'A wa-water b0ttle? I don't really need this, but t-thank you anyway.' She says before slicing off the bottle's top with a quick of her talons, then tilting her head back while stretching her jaws wider than should be possible and pours the bottle's contents then vessel itself down her throat, without swallowing. 'Hmm, yup, it's just re-regular water and plastic.' she says as she shoves the rest of the bottles through a small rift.";
			ItemLoss water bottle by 10;
			ItemGain Echo of Nihility by 1;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice 10 dirty water --> 1 Echo.":
			say "     'Dirty, infected water bottle, I wonder what creature's nanites I'll plaaaaaaaaaaaaaaaaaaaaaa... I mean, study and experiment with today.'";
			ItemLoss dirty water by 10;
			ItemGain Echo of Nihility by 1;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice null essence --> 5 Echo.":
			say "     'A great amount of es-ssence... A Althogh I-I'm not sure what e essence is, thank you for your donation.'";
			ItemLoss null essence by 1;
			ItemGain Echo of Nihility by 5;
			WaitLineBreak;
			say "[CynTrade2]";
		-- "Sacrifice sharp black tusk --> 10 Echo.":
			say "     'Now this is an interesting f-find... Thank you for your donation friend.'";
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
				say "     'Well, l-lets see what we can f-find then,' she says as she tears a hole in reality. She then looks in there for a bit before taking out a big piece of armor that appears to be made out of road signs. 'Here you gogo, friend, this m1ght be one of the strongest yet heaviest @4mors available in this world. kind of rem1nds me of one of my early creations to be honest.' She says this as she drops it at your feet. Then she goes back to what she was doing.";
				ItemLoss Echo of Nihility by 5;
				ItemGain roadsign breastplate by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't eArned enough favor for this (item), why don't you give me m0re sacrifices, and try again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 50 Echos to Infuse your pistol with Cyn's corruption.":
			if carried of Echo of Nihility >= 50:
				say "     She takes your weapon from you before walking into a rift. When she comes back, she gives you back your weapon, saying, 'Here is your new and improved weapon, don't you go losing it now.'";
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
				say "     She takes your weapon from you before walking into a rift. When she comes back, she gives you back your weapon, saying, 'Here is your new and improved weapon, don't you go losing it now.'";
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
				say "     'Oh, that's one of my favorite creations. I hope you'll like it just as much as I do.'";
				ItemLoss Echo of Nihility by 60;
				ItemGain Corrupted cloak by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't earned enough favor for this (item), why don't you give me me more sacrifices, and try again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 25 Echos for a set of Tentacular Negligee.":
			if carried of Echo of Nihility >= 25:
				say "     'I'm not sure how beating someone with lust alone works but I made this piece armor around that idea, hope you l1-like it.'";
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
				say "     'This one is interesting, it c@n be as beautiful as it is useful. Took me some time to find a good equilibrium between bbboth.'";
				ItemLoss Echo of Nihility by 35;
				ItemGain Squirming Gothic Dress by 1;
				WaitLineBreak;
				say "[CynTrade3]";
			else:
				say "     'You haven't earned enough favor for this (item), why don't you give me more sacr1fices, and try again later?'";
				WaitLineBreak;
				say "[CynTrade3]";
		-- "Pay 30 Echos for some Giger Armor.":
			if carried of Echo of Nihility >= 30:
				say "     'This one was made with deFense in mind; it is not my favorite creat1on, but it 1s ce-certain to keep you alive for a lot longer... say goodbye to sOme of your dexterity though.'";
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
	say "     'Sorry, but [one of]t-that option isn't available at the moment[or]fuckscene sexwhitCyn is missing[or]but bu *sudden loud static sound* iiiiiiiits not available yet[at random]'";

[	
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Cock Count of Player >= 1:
		choose a blank row in table of fucking options;
		now title entry is "Mating press on Cyn.";
		now sortorder entry is 1;
		now description entry is "Fuck that eldritch pussy?";
	[]
	if Cunt Count of Player >= 1:
		choose a blank row in table of fucking options;
		now title entry is "Doggy style on you.";
		now sortorder entry is 2;
		now description entry is "Let her fuck your pussy doggy style?";
	[]
	if Cunt Count of Player >= 1 and Cock Count of Player >= 1:
		choose a blank row in table of fucking options;
		now title entry is "double helix.";
		now sortorder entry is 3;
		now description entry is "Fuck her as she fucks you?";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Cyn come up with something.";
	now sortorder entry is 3;
	now description entry is "May envolve tentacles, portals, light body horror, etc...";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Turn her down[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				now sextablerun is 1;
				if (nam is "Mating press on Cyn."):
						say "[CynFuck1]";
				else if (nam is "Doggy style on you."):
						say "[CynFuck2]";
				else if (nam is "double helix."):
						say "[CynFuck3]";
				else if (nam is "???."):
						say "[CynFuck4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You tell Cyn that you have changed your mind and walk away.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to ex. . . But you should already know that, right Friend?";
	clear the screen and hyperlink list;


to say CynFuck1:
	say "     WIP";

to say CynFuck2:
	say "     WIP";

to say CynFuck3:
	say "     WIP";

to say CynFuck4:
	say "     WIP";]


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
	if debugactive is 0, say "[one of]'I hear you, however, you do not have the requirements to summon me.'[or]'It seems you are forgetting something friend.'[at random]" instead;

carry out SummonTheLimbo:
	say "     'Well Well Well, someone was impatient, hehehehehe. I'll be in the attic if you need me.'";
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



Cyn ends here.